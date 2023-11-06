import 'package:flutter/material.dart';
import 'dart:async';
import 'package:allurespa/Home/Home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final LoginService loginService = LoginService();

  bool isLoading = false;

  Future<void> _loginAction() async {
    if (nameController.text.isEmpty || passwordController.text.isEmpty) {
      // Kiểm tra trường dữ liệu đầu vào.
      return;
    }

    setState(() {
      isLoading = true;
    });

    final success = await loginService.login(nameController.text, passwordController.text);

    setState(() {
      isLoading = false;
    });

    if (success) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      // Xử lý thất bại đăng nhập, hiển thị thông báo lỗi, v.v.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Login._title)),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Allure Spa',
                style: TextStyle(
                  color: Color(0xFF423838),
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),

            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: isLoading
                    ? const CircularProgressIndicator() // Hiển thị biểu tượng tải.
                    : const Text('Login'),
                onPressed: isLoading ? null : _loginAction,
              ),
            ),

            // Các tiện ích giao diện người dùng khác của bạn.
          ],
        ),
      ),
    );
  }
}

class LoginService {
  Future<bool> login(String username, String password) async {
    // Thay thế logic này bằng quá trình đăng nhập thực tế của bạn.
    // Bạn có thể thực hiện các yêu cầu mạng hoặc xác minh người dùng ở đây.
    // Mô phỏng một độ trễ để làm giả một hoạt động bất đồng bộ.
    await Future.delayed(Duration(seconds: 2));

    if (username == 'yourUsername' && password == 'yourPassword') {
      // Đăng nhập thành công.
      return true;
    } else {
      // Đăng nhập thất bại.
      return false;
    }
  }
}
