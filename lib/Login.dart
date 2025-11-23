import 'package:flutter/material.dart';
import 'package:burger_pizza_resturant/Homepage.dart';
import 'package:burger_pizza_resturant/SingUp.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool check=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFF79502D),
              Colors.black12,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,

          body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView(
              children : [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
            Center(
            child: CircleAvatar(
            radius: 100, // adjust size
              backgroundImage: AssetImage('imaages/image.png'),
              backgroundColor:  Colors.transparent,
            ),
          ),

                      Center(child: Text('Join us and start your \n  journey to burger \n       perfection.',style: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.bold,),)),
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
                      SizedBox(height: 35,),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Checkbox(
                                    value: check,
                                    onChanged: (val){
                                      setState(() {
                                        check=val!;
                                      });
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:0),
                                child: Text(
                                  "Remember me",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          GestureDetector(
                            onTap: () {
                              print("Forgot password tapped");
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Text(
                                "Forgot password",
                                style: TextStyle(
                                  color: Color(0xFFFF8D28), // Orange color from screenshot
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
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
                              child: Center(child: Text('Login',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white70),)),
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
                            child: Text('Donot have an account? ',style: TextStyle(color: Colors.white70,fontSize: 15),),
                          ),
                          GestureDetector(
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Singup()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Center(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  child: Center(child: Text('SignUp',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFFFF8D28)),)),
                                ),

                              ),
                            ),
                          ),
                        ],
                      )
                    ]
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
