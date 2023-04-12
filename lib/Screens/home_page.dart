import 'package:flutter/material.dart';
import 'package:untitled1/Screens/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff7f7f7),
        body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 250.0),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          decoration:  BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(color: Colors.black),

                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(100),
                              ),
                              boxShadow: [
                                BoxShadow(color: Colors.black, blurRadius: 1)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(

                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),

                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/profile.png'),
                                  ),
                                ),
                                ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: SizedBox(
                          width: 120,
                          height: 150,
                          child: Text(
                            " Welcome Mina",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.black87),
                          ),
                        ),
                      ),
                    ]),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
    border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 45,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/8.png'),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              const Text(
                                "Log out",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>LoginPage()));

                      },
                    ),
                    SizedBox(width: 70,),
                    InkWell(
                      child: Container(
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          border: Border.all(color: Colors.black),

                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 45,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/6.png'),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                "Upload",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                content: Container(
                                  padding: const EdgeInsets.all(20),
                                  height: 150,
                                  width: 250,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        child: Container(
                                          height: 40,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 30,
                                                  height: 45,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage('assets/gellary.png'),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Text(
                                                  "Gallery",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        onTap: () {},
                                      ),
                                      InkWell(
                                        child: Container(
                                          height: 40,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 30,
                                                  height: 45,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage('assets/cam.png'),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Text(
                                                  "Camera",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        onTap: () {},
                                      ),
                                    ],
                                  ),
                                ),
                               ));

                      },
                    ),
                  ],),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 800,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/7.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ));
    }
}
