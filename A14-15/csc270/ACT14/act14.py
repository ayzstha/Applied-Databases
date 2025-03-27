# Importing the sqlite3 Module
import sqlite3

# Connecting to the Northwind database
conn = sqlite3.connect('Northwind.db')
cur = conn.cursor()  # Create a cursor object to execute SQL commands


def browse_products():
    """Browses through the Products table and their prices"""
    
    cur.execute("SELECT ProductID, ProductName, UnitPrice FROM Products") # Executing SQL commands using the cursor
    products = cur.fetchall()
    for product in products:
        print(f"{product[0]}. {product[1]} - ${product[2]}")

def check_customer_exists(customer_id):
    """Checks if a customer ID exists in the Customers table"""

    cur.execute("SELECT COUNT(*) FROM Customers WHERE CustomerID = ?", (customer_id,))
    count = cur.fetchone()[0]
    return count > 0


def add_customer(customer_id):
    """Adds a new customer to the Customers table"""
    
    company_name = input("Enter Company Name: ")
    contact_name = input("Enter Contact Name: ")
    contact_title = input("Enter Contact Title: ")
    address = input("Enter Address: ")
    city = input("Enter City: ")
    region = input("Enter Region: ")
    postal_code = input("Enter Postal Code: ")
    country = input("Enter Country: ")
    phone = input("Enter Phone: ")
    cur.execute("""
        INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    """, (customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone))
    conn.commit()


def get_purchase_details():
    """Collects purchase details from the user"""
    
    customer_id = input("Enter customer ID: ")
    if not check_customer_exists(customer_id): # Checking if customer with that ID already exists.
        print("Customer ID does not exist. Please enter new customer details.")
        add_customer(customer_id)
    else:
        print(f"Customer ID '{customer_id}' already exists. Previous customer details will be used for this order.")
    product_id = input("Enter product ID to purchase: ")
    quantity = input("Enter quantity: ")
    return customer_id, product_id, quantity


def get_shipment_details():
    """Collects shipment details from the user"""
    
    ship_address = input("Enter Shipping Address Line 1: ")
    ship_city = input("Enter City: ")
    ship_region = input("Enter Region: ")
    ship_postal_code = input("Enter Postal Code: ")
    ship_country = input("Enter Country: ")
    return ship_address, ship_city, ship_region, ship_postal_code, ship_country

def record_purchase(customer_id, product_id, quantity, ship_address, ship_city, ship_region, ship_postal_code, ship_country):
    """Function for recording what the customer purchased in the Order Details Table and the Order Table"""
    
    cur.execute("""
        INSERT INTO Orders (CustomerID, OrderDate, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry) 
        VALUES (?, date('now'), ?, ?, ?, ?, ?)
    """, (customer_id, ship_address, ship_city, ship_region, ship_postal_code, ship_country))
    order_id = cur.lastrowid     # Getting the ID of the newly inserted order
    cur.execute("INSERT INTO 'Order Details' (OrderID, ProductID, Quantity) VALUES (?, ?, ?)", (order_id, product_id, quantity))
    conn.commit()  # Committing changes to the database
    cur.execute("""
        SELECT od.OrderID, p.ProductName, od.Quantity, o.ShipAddress, o.ShipCity, o.ShipRegion, o.ShipPostalCode, o.ShipCountry
        FROM 'Order Details' AS od
        JOIN Products p ON od.ProductID = p.ProductID
        JOIN Orders o ON od.OrderID = o.OrderID
        WHERE od.OrderID = ?
    """, (order_id,))
    last_entry = cur.fetchone()      # Fetching the first row returned by the query
    if last_entry:
        print(f"Customer '{customer_id}' has successfully purchased {last_entry[2]} unit(s) of {last_entry[1]}!")
        print(f"The order will be shipped to: {last_entry[3]}, {last_entry[4]}, {last_entry[5]}, {last_entry[6]}, {last_entry[7]}")
        print("Thank you for your order!")
    else:
        print("Purchase unsuccessful. Please try again.")
        if __name__ == "__main__":
            main()



def main():
    """Executes the workflow"""
    
    browse_products()
    customer_id, product_id, quantity = get_purchase_details()
    ship_address, ship_city, ship_region, ship_postal_code, ship_country = get_shipment_details()
    record_purchase(customer_id, product_id, quantity, ship_address, ship_city, ship_region, ship_postal_code, ship_country)
    conn.close()

# Run the main function
if __name__ == "__main__": # To ensure that the main function runs only when the script is executed directly
    main()
