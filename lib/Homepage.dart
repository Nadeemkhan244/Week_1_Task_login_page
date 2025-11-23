import 'package:flutter/material.dart';
import 'dart:math';
import 'package:burger_pizza_resturant/Homepage.dart';
import 'package:flutter/rendering.dart';
import 'package:fontresoft/fontresoft.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

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
        ),
      ),
      child: DefaultTabController(
        length: 8,
        child: Scaffold(
          backgroundColor: Colors.transparent, // Important
          appBar: AppBar(
            centerTitle: false,
            backgroundColor: Colors.transparent, // Gradient visible in AppBar
            elevation: 0,
              actions: [
                // Profile Image
                CircleAvatar(
                  backgroundImage: AssetImage('imaages/cv pic.jpg'), // fix path
                  radius: 15,
                ),

                SizedBox(width: 10),

                // Notification Icon with Badge
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Stack(
                    clipBehavior: Clip.none, // prevents clipping of badge
                    children: [
                      Icon(
                        Icons.notifications,
                        size: 30,
                        color: Colors.white,
                      ),

                      // Badge Positioned
                      Positioned(
                        right: -2,
                        top: -2,
                        child: Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],

          ),
          drawer: Drawer(

          ),

          body: Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(right: 70),
    child: Text('Beyond Burgers and Pizzes ',style: TextStyle(
    fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.normal,fontFamily: 'Poppins',),),
    ),
    Padding(
    padding: const EdgeInsets.only(right: 100),
    child: Text('Taste Revolution!',style: TextStyle(fontSize: 18),),
    ),
    SizedBox(height: 15,),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Expanded(
    flex: 0,
    child: TabBar(

    isScrollable: true,
    labelColor: Colors.white70,
    unselectedLabelColor: Colors.white,
    tabs: [
    Tab(text: "All",),
    Tab(text: "Classic"),
    Tab(text: "Gourmet"),
    Tab(text: "Offers"),
    ]
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(right: 10),
    child: IconButton(
    icon: Icon(Icons.filter_list_rounded,color: Colors.white,size: 34,),
    onPressed: (){

    },
    ),
    ),
    ],
    ),
    Expanded(
    child: TabBarView(
    children: [
    ListView(
    children:  [
    Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 10,left: 8),
    child: Container(
    height: 246,
    width: 180,

    decoration: BoxDecoration(
    color: Color(0xFFFF282323),
    border: Border.all(
    color: Color(0xFFFFFF28C13),
    width: 2,
    ),
    borderRadius: BorderRadius.circular(20),
    gradient: LinearGradient(
    colors: [Color(0xFFFF79502D), Colors.black12],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
    child: Column(
    children: [
    Image(image: AssetImage('imaages/image.png'),),
    Text('Big Bang Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.8,color: Colors.white),),
    SizedBox(height: 5,),
    Text('Checken with cheese',style: TextStyle(fontSize: 14.4,color: Colors.white70),),
    SizedBox(height: 25,),

    Row(
    children: [

    Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Text('Rs 239.00',style: TextStyle(fontSize: 17.28,color: Colors.white),),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 50),
    child: Icon(Icons.add_sharp,color: Colors.white,size: 30,),
    ),
    ],
    )
    ],

    ),
    ),
    ),//container 1
    SizedBox(width: 8,),
    Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Container(
    height: 246,
    width: 180,

    decoration: BoxDecoration(
    color: Color(0xFFFF282323),
    border: Border.all(
    color: Color(0xFFFFFF28C13),
    width: 2,
    ),
    borderRadius: BorderRadius.circular(20),
    gradient: LinearGradient(
    colors: [Color(0xFFFF79502D), Colors.black12],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
    child: Column(
    children: [
   // Image(image: AssetImage('imaages/image.png'),),
       Padding(
         padding: const EdgeInsets.only(top: 16),
         child: CircleAvatar(
           radius: 55,
           backgroundColor: Colors.white,
           child: CircleAvatar(
             radius: 100,
             backgroundImage: NetworkImage('https://img.freepik.com/free-photo/top-view-fast-food-mix-mozzarella-sticks-club-sandwich-hamburger-mushroom-pizza-caesar-shrimp-salad-french-fries-ketchup-mayo-cheese-sauces-table_141793-3998.jpg'),
           ),

         ),
       ),
       SizedBox(height: 8,),
    Text('Cheese Pizza',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.8,color: Colors.white),),
    SizedBox(height: 5,),
    Text('Checken with cheese',style: TextStyle(fontSize: 14.4,color: Colors.white70),),
    SizedBox(height: 20,),

    Row(
    children: [

    Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Text('Rs 839.00',style: TextStyle(fontSize: 17.28,color: Colors.white),),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 50),
    child: Icon(Icons.add_sharp,color: Colors.white,size: 30,),
    ),
    ],
    )
    ],

    ),
    ),
    ),
    ],
    ),
    SizedBox(height: 10,),
    Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Text('Menu',style: TextStyle(fontSize: 25,color: Colors.white),),
    ),
    Column(
    children: [
    Card(
    color: Colors.black12,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    ),
    elevation: 5,
    child: Container(
    padding: EdgeInsets.all(12),
    height: 100,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    gradient: LinearGradient(
    colors: [
    Color(0xFFFF79502D),
    Colors.black12,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
    child: Row(
    children: [
    // LEFT SIDE IMAGE
    ClipRRect(
    borderRadius: BorderRadius.circular(12),
      child: Image.network(
           width: 80,
          height: 80,
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0VwVwVVixiwjE7M7z8jCMZVY2czzkYlvizg&s'),
    ),

    SizedBox(width: 12),

    // CENTER → TEXT + STAR
    Expanded(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Drinks And Cuisine",
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),

    SizedBox(height: 6),

    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star_half, color: Colors.orange, size: 20),
    Icon(Icons.star_border, color: Colors.orange, size: 20),
    ],
    ),
    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text('Classic'),
    SizedBox(width: 40,),
    Text('Rs 539.00',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
    ],
    )
    ],
    ),
    ),

    // RIGHT SIDE → ADD BUTTON
    Container(
    width: 100,
    height: 60,
    decoration: BoxDecoration(
    color: Colors.orange,
    shape: BoxShape.circle,
    ),
    child: IconButton(
    icon: Icon(Icons.add, color: Colors.white,size: 40,),
    onPressed: () {},
    ),
    )
    ],
    ),
    ),
    ),

    ],
    ),//first item portion
    SizedBox(height: 10,),
    Column(
    children: [
    Card(
    color: Colors.black12,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    ),
    elevation: 5,
    child: Container(
    padding: EdgeInsets.all(12),
    height: 100,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    gradient: LinearGradient(
    colors: [
    Color(0xFFFF79502D),
    Colors.black12,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
    child: Row(
    children: [
    // LEFT SIDE IMAGE
    ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.network('https://static.tossdown.com/images/e7f4d9f2-57d5-4807-b0d0-abb3d9ab08db.webp'),
    ),

    SizedBox(width: 12),

    // CENTER → TEXT + STAR
    Expanded(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Chicken Tikka ",
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),

    SizedBox(height: 6),

    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star_half, color: Colors.orange, size: 20),
    Icon(Icons.star_border, color: Colors.orange, size: 20),
    ],
    ),
    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text('Classic'),
    SizedBox(width: 40,),
    Text('Rs 850.00',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
    ],
    )
    ],
    ),
    ),

    // RIGHT SIDE → ADD BUTTON
    Container(
    width: 100,
    height: 60,
    decoration: BoxDecoration(
    color: Colors.orange,
    shape: BoxShape.circle,
    ),
    child: IconButton(
    icon: Icon(Icons.add, color: Colors.white,size: 40,),
    onPressed: () {},
    ),
    )
    ],
    ),
    ),
    ),

    ],
    ),// second item portion
    SizedBox(height: 10,),
    Column(
    children: [
    Card(
    color: Colors.black12,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    ),
    elevation: 5,
    child: Container(
    padding: EdgeInsets.all(12),
    height: 100,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    gradient: LinearGradient(
    colors: [
    Color(0xFFFF79502D),
    Colors.black12,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
    child: Row(
    children: [
    // LEFT SIDE IMAGE
    ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.network('https://static.tossdown.com/images/fb6bb606-ecd0-4075-ab0f-326839c72032.webp'),
    ),

    SizedBox(width: 12),

    // CENTER → TEXT + STAR
    Expanded(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Crispy Fried Wings",
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),

    SizedBox(height: 6),

    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star_half, color: Colors.orange, size: 20),
    Icon(Icons.star_border, color: Colors.orange, size: 20),
    ],
    ),
    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text('Classic'),
    SizedBox(width: 40,),
    Text('Rs 200.00',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
    ],
    )
    ],
    ),
    ),

    // RIGHT SIDE → ADD BUTTON
    Container(
    width: 100,
    height: 60,
    decoration: BoxDecoration(
    color: Colors.orange,
    shape: BoxShape.circle,
    ),
    child: IconButton(
    icon: Icon(Icons.add, color: Colors.white,size: 40,),
    onPressed: () {},
    ),
    )
    ],
    ),
    ),
    ),

    ],
    ),//third item portion
    SizedBox(height: 10,),
    Column(
    children: [
    Card(
    color: Colors.black12,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    ),
    elevation: 5,
    child: Container(
    padding: EdgeInsets.all(12),
    height: 100,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    gradient: LinearGradient(
    colors: [
    Color(0xFFFF79502D),
    Colors.black12,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
    child: Row(
    children: [
    // LEFT SIDE IMAGE
    ClipRRect(
    borderRadius: BorderRadius.circular(12),
      child: Image.network('https://static.tossdown.com/images/03488247-7b83-4640-a37e-3924fe6363c1.webp'),
    ),

    SizedBox(width: 12),

    // CENTER → TEXT + STAR
    Expanded(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Finger Chips",
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),

    SizedBox(height: 6),

    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star_half, color: Colors.orange, size: 20),
    Icon(Icons.star_border, color: Colors.orange, size: 20),
    ],
    ),
    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text('Classic'),
    SizedBox(width: 40,),
    Text('Rs 150.00',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
    ],
    )
    ],
    ),
    ),

    // RIGHT SIDE → ADD BUTTON
    Container(
    width: 100,
    height: 60,
    decoration: BoxDecoration(
    color: Colors.orange,
    shape: BoxShape.circle,
    ),
    child: IconButton(
    icon: Icon(Icons.add, color: Colors.white,size: 40,),
    onPressed: () {},
    ),
    )
    ],
    ),
    ),
    ),

    ],
    ),//fouth item portion
    SizedBox(height: 10,),
    Column(
    children: [
    Card(
    color: Colors.black12,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    ),
    elevation: 5,
    child: Container(
    padding: EdgeInsets.all(12),
    height: 100,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    gradient: LinearGradient(
    colors: [
    Color(0xFFFF79502D),
    Colors.black12,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
    child: Row(
    children: [
    // LEFT SIDE IMAGE
    ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.network('https://static.tossdown.com/images/4c6ae0f8-6f85-4211-929a-6e7e34a59d59.webp'),
    ),

    SizedBox(width: 12),

    // CENTER → TEXT + STAR
    Expanded(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Masala Fries",
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),

    SizedBox(height: 6),

    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star_half, color: Colors.orange, size: 20),
    Icon(Icons.star_border, color: Colors.orange, size: 20),
    ],
    ),
    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text('Classic'),
    SizedBox(width: 40,),
    Text('Rs 139.00',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
    ],
    )
    ],
    ),
    ),

    // RIGHT SIDE → ADD BUTTON
    Container(
    width: 100,
    height: 60,
    decoration: BoxDecoration(
    color: Colors.orange,
    shape: BoxShape.circle,
    ),
    child: IconButton(
    icon: Icon(Icons.add, color: Colors.white,size: 40,),
    onPressed: () {},
    ),
    )
    ],
    ),
    ),
    ),
    ],
    ),//fifth item portion
    SizedBox(height: 10,),
    Column(
    children: [
    Card(
    color: Colors.black12,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    ),
    elevation: 5,
    child: Container(
    padding: EdgeInsets.all(12),
    height: 100,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    gradient: LinearGradient(
    colors: [
    Color(0xFFFF79502D),
    Colors.black12,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
    child: Row(
    children: [
    // LEFT SIDE IMAGE
    ClipRRect(
    borderRadius: BorderRadius.circular(12),
   child: Image.network('https://static.tossdown.com/images/66c0668d-520c-4632-b597-9d0ec12df7f2.webp'),
    ),

    SizedBox(width: 12),

    // CENTER → TEXT + STAR
    Expanded(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Malai Tikka ",
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),

    SizedBox(height: 6),

    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star_half, color: Colors.orange, size: 20),
    Icon(Icons.star_border, color: Colors.orange, size: 20),
    ],
    ),
    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text('Classic'),
    SizedBox(width: 40,),
    Text('Rs 239.00',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
    ],
    )
    ],
    ),
    ),

    // RIGHT SIDE → ADD BUTTON
    Container(
    width: 100,
    height: 60,
    decoration: BoxDecoration(
    color: Colors.orange,
    shape: BoxShape.circle,
    ),
    child: IconButton(
    icon: Icon(Icons.add, color: Colors.white,size: 40,),
    onPressed: () {},
    ),
    )
    ],
    ),
    ),
    ),

    ],
    ),//six item portion
    SizedBox(height: 10,),
    Column(
    children: [
    Card(
    color: Colors.black12,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    ),
    elevation: 5,
    child: Container(
    padding: EdgeInsets.all(12),
    height: 100,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    gradient: LinearGradient(
    colors: [
    Color(0xFFFF79502D),
    Colors.black12,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
    child: Row(
    children: [
    // LEFT SIDE IMAGE
    ClipRRect(
    borderRadius: BorderRadius.circular(12),
    // child: Image.asset(
    // 'imaages/image.png',
    // width: 80,
    // height: 80,
    // fit: BoxFit.cover,
    // ),
      child: Image.network('https://static.tossdown.com/images/b15cca07-0d6b-47d2-9837-d174c88cc57e.webp'),
    ),

    SizedBox(width: 12),

    // CENTER → TEXT + STAR
    Expanded(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Fish Crackers",
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),

    SizedBox(height: 6),

    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star, color: Colors.orange, size: 20),
    Icon(Icons.star_half, color: Colors.orange, size: 20),
    Icon(Icons.star_border, color: Colors.orange, size: 20),
    ],
    ),
    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text('Classic'),
    SizedBox(width: 40,),
    Text('Rs 50.00',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
    ],
    )
    ],
    ),
    ),

    // RIGHT SIDE → ADD BUTTON
    Container(
    width: 100,
    height: 60,
    decoration: BoxDecoration(
    color: Colors.orange,
    shape: BoxShape.circle,
    ),
    child: IconButton(
    icon: Icon(Icons.add, color: Colors.white,size: 40,),
    onPressed: () {},
    ),
    )
    ],
    ),
    ),
    ),

    ],
    ),// seventh item portion
    ],
    )
    ],
    ),// All page complete code
    Column(
      children: [
        Text('kdhh'),
      ],
    ),//classic page
    Center(child: Text("Chats Page")),
    Center(child: Text("Status Page")),
    Center(child: Text("Calls Page")),
    ],
    ),
    ),
    ],
    ),
        ),
      ),
    );

  }
}
