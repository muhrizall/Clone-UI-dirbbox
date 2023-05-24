import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //Container for Background
          Container(
            width: Get.width,
            child: Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover,
            ),
          ),
          //Layer Body
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 90,
                ),
                Container(
                  // width: Get.width, <- Tidak digunakan karena Get.width digunakan untuk full container
                  // color: Colors.amber, <- Gunakan color untuk mengetahui ukuran container
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    "assets/images/pic-1.png",
                    fit: BoxFit.contain,
                    //BoxFit.cover <- Digunakan jika gambar disesuaikan dengan width dan height dari container dan backgroundnya transparant
                    //BoxFit.contain <- Digunakan jika gambar memenuhi isi dari width dan height container
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome to",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "Dirbbox",
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Container(
                  // color: Colors.amber,
                  width: 250,
                  child: Text(
                    "Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free. ",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/finger.png"),
                          SizedBox(width: 10),
                          Text(
                            "Smart ID",
                            style: TextStyle(color: Color(0xFF567DF4)),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color(0xFF567DF4).withOpacity(0.1),
                        fixedSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(Icons.trending_flat),
                          SizedBox(width: 10),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF567DF4),
                        fixedSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 55),
                Center(
                  child: Text(
                    "Use Social Login",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/instagram.png"),
                    SizedBox(width: 50),
                    Image.asset("assets/icons/twitter.png"),
                    SizedBox(width: 50),
                    Image.asset("assets/icons/instagram.png"),
                  ],
                ),
                SizedBox(height: 50),
                Center(
                    child: Text(
                  "Create an Account",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
