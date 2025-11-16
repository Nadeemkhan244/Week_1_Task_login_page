import 'package:flutter/material.dart';
import 'package:burger_pizza_resturant/Homepage.dart';
import 'package:burger_pizza_resturant/SingUp.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Color(0xFF110F19),

        body: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('imaages/image.png'),
                Center(child: Text('Join us and start your \n  journey to burger \n       perfection.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                SizedBox(height: 23,),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF8D28), // Background color
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter your email",
                        hintStyle: TextStyle(color: Colors.white70),
                        prefixIcon: Icon(Icons.email, color: Colors.white70),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 23,),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xFFFF8D28), // Background color
                borderRadius: BorderRadius.circular(50),
              ),
              child: StatefulBuilder(
                builder: (context, setState) {
                  bool _obscureText = true;

                  return TextField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Password",
                      hintStyle: TextStyle(color: Colors.white70),
                      icon: Icon(Icons.lock, color: Colors.white70),
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
          SizedBox(height: 23,),
                GestureDetector(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 300,
                        child: Center(child: Text('Login',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFFFF8D28),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                GestureDetector(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Singup()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 300,
                        child: Center(child: Text('Create an account  SingUp',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white70),)),


                      ),
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
