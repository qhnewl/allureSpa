import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Image.asset('assets/images/menuIcon.png'),
              onPressed: () {
                // Xử lý khi biểu tượng menu được nhấn.
              },
            ),
            Image.asset(
              'assets/images/logoLogin.png',
              width: 65,
              height: 50,
              fit: BoxFit.fill,
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.black,
              onPressed: () {
                // Xử lý khi biểu tượng giỏ hàng được nhấn.
              },
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Your Name'),
              accountEmail: Text('your@email.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/logoLogin.png'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Welcome to Allure Spa!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
