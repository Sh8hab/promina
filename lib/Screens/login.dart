import 'package:flutter/material.dart';
import 'package:untitled1/Screens/home_page.dart';

import '../constant/App_Strings.dart';
import '../widgets/frostedglass.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
TextEditingController usercontroller = TextEditingController();
TextEditingController passcontroller = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Container(
          width: double.infinity,
          decoration:  BoxDecoration(
              image: DecorationImage(
            image: AssetImage(AppStrings.background),
            fit: BoxFit.cover,
          )),
        ),
         Positioned(
            top: 20.0,
            left: 60.0,
            child: Image(
              image: AssetImage(AppStrings.camera),
            )),
        Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 145),
          child: Column(
            children: [
               SizedBox(
                height: 120,
                width: 175,
                child: Text(
                  AppStrings.Mygellary,
                  textAlign: TextAlign.center,

                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4b4b4a),
                  ),


                ),
              ),

              const SizedBox(height: 35),
              FrostedGlassBox(
                thewidth: 350,
                theheight: 400,
                thechild: Column(
                  children: [
                    const SizedBox(height: 25),
                     Text(
                      AppStrings.login,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4b4b4a)),
                    ),
                    const SizedBox(height: 14),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.only(right: 20,left: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          controller: usercontroller,
                          decoration:  InputDecoration(
                            hintText: AppStrings.username,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.only(right: 20,left: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          controller: passcontroller,
                          decoration:  InputDecoration(
                            hintText: AppStrings.password,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: InkWell(
                        child: Container(
                          height: 50,
                          width: 320,
                          decoration: BoxDecoration(
                            color: const Color(0xff7ab3fe),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(10),
                          child:  Center(
                              child: Text(
                            AppStrings.submit,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        onTap: () {

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => HomePage(),
                              ));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )),
      ]),
    );
  }
}
