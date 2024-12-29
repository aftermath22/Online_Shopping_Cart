# Online Shopping Cart

A Java web application that implements a basic e-commerce shopping cart system with user and admin functionalities.

## Features

### User Features
- User registration and authentication
- Browse available items
- Add items to shopping cart
- Modify cart quantities
- Remove items from cart
- Complete checkout process

### Admin Features
- Secure admin login (ID: -1, Password: 1234)
- Manage inventory (add/remove/edit items)
- View and manage registered users
- Monitor item quantities
- Add new items to the system
- Edit item details (name, price)

## Technical Architecture

### Backend
- Java Servlets for handling HTTP requests
- JDBC for database operations
- MySQL database for data persistence

### Data Models
1. **User**
   - uid (User ID)
   - uname (Username)
   - pass (Password)

2. **Item**
   - itid (Item ID)
   - itname (Item Name)
   - quantity
   - price

3. **Cart**
   - cid (Cart ID)
   - uid (User ID)
   - itid (Item ID)
   - itname (Item Name)
   - price
   - quantity

### Key Components

#### DAO Classes
- `Userdao.java`: Handles user-related database operations
- `Itemdao.java`: Manages item inventory operations
- `Cartdao.java`: Handles shopping cart operations

#### Controllers
1. **Admin Controllers**
   - `AdminLogin.java`: Handles admin authentication
   - `AdminAddItem.java`: Manages adding inventory
   - `AdminEditItems.java`: Handles item modifications
   - `AdminRemoveItem.java`: Manages inventory removal

2. **User Controllers**
   - `UserLogin.java`: Handles user authentication
   - `UserRegister.java`: Manages user registration
   - `BuyItem.java`: Processes purchase transactions
   - `RemoveItem.java`: Handles cart item removal

## Database Configuration

The application connects to MySQL database with the following configuration:
```java
URL: "jdbc:mysql://localhost:3306/online_shopping"
Username: "root"
Password: "QWERTY"
```

## Setup Instructions

1. **Database Setup**
   - Install MySQL Server
   - Create a database named `online_shopping`
   - Configure the database credentials in DAO classes if needed

2. **Project Dependencies**
   - Java Development Kit (JDK)
   - MySQL Connector/J
   - Java Servlet API
   - JSP Standard Tag Library (JSTL)

3. **Deployment**
   - Deploy the application on a Java web server (e.g., Apache Tomcat)
   - Ensure database connectivity
   - Start the server and access the application

## Usage

1. **Admin Access**
   - Login with admin credentials (ID: -1, Password: 1234)
   - Access admin dashboard at `admintask.jsp`
   - Manage inventory and users

2. **User Access**
   - Register new account at `usereg.jsp`
   - Login at `userlogin.jsp`
   - Browse items at `shopitems.jsp`
   - View cart at `usercart.jsp`

## Security Features

- Session management for user authentication
- Password protection for user accounts
- Separate admin privileges
- Input validation for critical operations

## Error Handling

The application includes comprehensive error handling for:
- Database connectivity issues
- Invalid login attempts
- Inventory management errors
- Cart operation failures

## File Structure

```
+---java
¦   +---demojstl
¦       +---bean
¦       ¦       Cart.java
¦       ¦       Item.java
¦       ¦       User.java
¦       ¦       
¦       +---controller
¦       ¦       AdminAddItem.java
¦       ¦       AdminAddItems.java
¦       ¦       AdminEditItems.java
¦       ¦       AdminLogin.java
¦       ¦       AdminLogout.java
¦       ¦       AdminRemoveItem.java
¦       ¦       BuyItem.java
¦       ¦       Checkout.java
¦       ¦       RemoveItem.java
¦       ¦       RemoveUser.java
¦       ¦       UserLogin.java
¦       ¦       UserLogout.java
¦       ¦       UserRegister.java
¦       ¦       
¦       +---dao
¦       ¦       Cartdao.java
¦       ¦       Itemdao.java
¦       ¦       Userdao.java
¦       ¦       
¦       +---online_shopping_cart
¦           ¦   JakartaRestConfiguration.java
¦           ¦   
¦           +---resources
¦                   JakartaEE8Resource.java
¦                   
+---resources
¦   +---META-INF
¦           persistence.xml
¦           
+---webapp
    ¦   adminlogin.jsp
    ¦   admintask.jsp
    ¦   contact.jsp
    ¦   edititems.jsp
    ¦   index.jpg
    ¦   index.jsp
    ¦   manageitems.jsp
    ¦   manageuser.jsp
    ¦   newitems.jsp
    ¦   publicshoplist.jsp
    ¦   shopitems.jsp
    ¦   thankyou.jsp
    ¦   usercart.jsp
    ¦   usereg.jsp
    ¦   userlogin.jsp
    ¦   usertask.jsp
    ¦   
    +---META-INF
    ¦       context.xml
    ¦       
    +---WEB-INF
            beans.xml
            web.xml
```

## Contributing

To contribute to this project:
1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

[MIT License](https://github.com/aftermath22/Online_Shopping_Cart?tab=MIT-1-ov-file#)

## Author

Keval
