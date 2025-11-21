import 'package:burger_pizza_resturant/Homepage.dart';
import 'package:burger_pizza_resturant/Login.dart';
import 'package:flutter/material.dart';
import 'package:burger_pizza_resturant/SingUp.dart';
class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  get isChecked => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.black,

        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('imaages/pizza.PNG',height: 231,width: 348,)),
                //Center(child: Text('Wellcome!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                SizedBox(height: 30,),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF8D28), // Background color
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter your full name",
                        hintStyle: TextStyle(color: Colors.white70,fontSize: 17),

                        prefixIcon: Icon(Icons.person, color: Colors.white70),

                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF8D28), // Background color
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter your email",
                        hintStyle: TextStyle(color: Colors.white70,fontSize: 17),

                        prefixIcon: Icon(Icons.email, color: Colors.white70),

                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF8D28), // Background color
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: StatefulBuilder(
                      builder: (context, setState) {
                        bool _obscureText = true;

                        return TextField(
                          textAlign: TextAlign.start,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Password",
                            hintStyle: TextStyle(color: Colors.white70,fontSize: 17),

                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 0),
                              child:  Icon(Icons.lock, color: Colors.white70),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText ? Icons.visibility_off : Icons.visibility,
                                color: Colors.white70,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText; // Toggle password visibility
                                });
                              },
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF8D28), // Background color
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: StatefulBuilder(
                      builder: (context, setState) {
                        bool _obscureText = true;

                        return TextField(
                          textAlign: TextAlign.start,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " Confirm Password",
                            hintStyle: TextStyle(color: Colors.white70,fontSize: 17),

                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 0),
                              child:  Icon(Icons.lock, color: Colors.white70),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText ? Icons.visibility_off : Icons.visibility,
                                color: Colors.white70,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText; // Toggle password visibility
                                });
                              },
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                SizedBox(height: 10,),

                GestureDetector(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 350,
                        child: Center(child: Text('SignUP',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white70),)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFFFF8D28),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text('Already have an account?',style: TextStyle(color: Colors.white70,fontSize: 15),),
                    ),
                    GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Center(
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Center(child: Text('Login',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFFFF8D28)),)),
                          ),

                        ),
                      ),
                    ),
                  ],
                )
              ]
          ),
        ),
      ),
    );
  }
}
