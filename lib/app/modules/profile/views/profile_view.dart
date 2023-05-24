import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF2F2F2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0XFFF2F2F2),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0XFF22215B),
          ),
        ),
        title: const Text(
          'My Profile',
          style: TextStyle(color: Color(0XFF22215B)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz, color: Color(0XFF22215B)),
          ),
        ],
        centerTitle: true,
      ),
      body:
          //Body Container Card Start
          ListView(
        children: [
          //Container Background Card
          Container(
            height: 210,
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0XFFFFFFFF),
              borderRadius: BorderRadius.circular(25),
            ),
            //Stack Berisi Style Didalam Card (Tulisan, Gambar, Label)
            child: Stack(
              children: [
                //Karena Posisi Style Kebawah Maka Yang Kita Gunakan Adalah Column Didalam Stack
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      child: Image.asset(
                        "assets/images/profile.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Neelesh Chaudhary",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color(0XFF22215B),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "UI / UX Designer",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Color(0XFF22215B),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0XFF22215B).withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0XFFFF317B),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "PRO",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          //Body Container Card End

          //Body My Folders Start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "My Folders",
                  style: TextStyle(
                      color: Color(0XFF22215B),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              )
            ],
          ),

          /*Syarat menggunakna GridView didalam ListView yaitu
          1. Harus menggunakan Container dan jangan lupa sebelum children nya pasang heightnya.
          2. Didalam Container harus menggunakan children GridViewnya
          3. Didalam GridView ada Container untuk menampilkan setiap containernya
          **/
          // Container(
          //   height: 300,
          //   child: GridView.count(
          //     physics: ScrollPhysics(),
          //     crossAxisCount: 2,
          //     children: [
          //       Container(
          //         color: Colors.black,
          //         width: 100,
          //         height: 100,
          //       ),
          //       Container(
          //         color: Colors.red,
          //         width: 100,
          //         height: 100,
          //       ),
          //       Container(
          //         color: Colors.yellow,
          //         width: 100,
          //         height: 100,
          //       ),
          //       Container(
          //         color: Colors.purple,
          //         width: 100,
          //         height: 100,
          //       )
          //     ],
          //   ),
          // )
          // Finish Jika menggunakan GridView Didalam ListView (Harus Meenggunakan Container).
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folder.png"),
                  title: "Mobile Apps",
                  date: "December 20.2020",
                  color: Color(0XFF415EB6),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folder1.png"),
                  title: "SVG Icons",
                  date: "December 14.2020",
                  color: Color(0XFFFFB110),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folder2.png"),
                  title: "Prototypes",
                  date: "Novemaber 22.2020",
                  color: Color(0XFFAC4040),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folder3.png"),
                  title: "Avatars",
                  date: "Novemaber 10.2020",
                  color: Color(0XFF23B0B0),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Upload",
                  style: TextStyle(
                      color: Color(0XFF22215B),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.swap_vert),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Container(
                width: 50,
                height: 50,
                child: Image.asset(
                  "assets/images/word.png",
                  fit: BoxFit.cover,
                )),
            title: Text("Projects.docx"),
            subtitle: Text("Novemaber 22.2020"),
            trailing: Text("300kb"),
          )
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  CardFolder({
    super.key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
  });

  final String title;
  final String date;
  final Color color;
  final Image image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: Get.width * 0.4,
      height: 110,
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Gilroy',
              color: color,
            ),
          ),
          // SizedBox(height: 5),
          Text(
            date,
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Gilroy',
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
