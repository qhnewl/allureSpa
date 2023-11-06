import 'package:allurespa/Welcome/Login.dart';
import 'package:flutter/material.dart';
import 'package:allurespa/Home/Home.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
              height: 310,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bgLogin.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logoLogin.png'),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: 335,
                      height: 100,

                      child: Text(
                        'Allure Spa sẽ đưa làn da về đúng với thời điểm cấu trúc khỏe mạnh nhất',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF423838),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (

                  ) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text(
                "Đăng nhập",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFEDC06C),
                minimumSize: Size(300, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text(
                "Đăng ký",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
              style: TextButton.styleFrom(
                primary: Color(0xFFEDC06C),
                minimumSize: Size(300, 40),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xFFEDC06C), width: 2),
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 5),
                Container(
                  width: 110,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: Color(0xFFF2F1F1),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'hoặc với',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 110,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: Color(0xFFF2F1F1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Căn trái
                      children: [
                        Image.asset('assets/images/ggIcon.png', width: 24, height: 24),
                        SizedBox(width: 14),
                        Text(
                          'Đăng nhập với Google',
                          style: TextStyle(
                            color: Color(0xFF797979),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFFFFF),
                      minimumSize: Size(300, 40),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFF2F1F1)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Căn trái
                      children: [
                        Image.asset('assets/images/fbIcon.png', width: 24, height: 24),
                        SizedBox(width: 14),
                        Text(
                          'Đăng nhập với Facebook',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF4895EF),
                      minimumSize: Size(300, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
