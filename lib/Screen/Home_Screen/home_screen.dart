import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Bus/buslist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  //Widget singalProducts(){

  //}
  Widget listTile({required IconData icon,  required String title,  required  Function() onTap}){
    return ListTile(
      onTap: onTap,
      leading: Icon(

        icon,
        size: 32,
      ),
      title: Text(title,style: TextStyle(color: Colors.white),
      ),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(
        child: Container(
          color: Color(0xff123456),
        child: ListView(

          children: [
            DrawerHeader(child: Row(
            children: [
                CircleAvatar(
                    backgroundColor: Colors.white54,
          radius: 43,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white54,
          ),


        ),
          SizedBox(
            width : 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("welcom"),
              SizedBox(
                height: 7,
              ),
              Container(
                height: 30,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text("login"),
                  //shape:  RoundedRectangleBorder(
                  //  borderRadius: BorderRadius.circular(15),
                   // side: BorderSide(
                     // width: 2,
                    //),

                ),

              ),
            ],
          ),
          ],
        ),

            ),
            listTile(icon: Icons.home_outlined, title: "Home", onTap: () {  }),
            listTile(icon: Icons.person_outline,
             title: "Chauffeur", onTap: (){
              Navigator.of(context).push(
              MaterialPageRoute(
              builder: (context) =>buslist(),
                 ),
              );

            }),
            listTile(icon: Icons.airport_shuttle_outlined, title: "Bus", onTap: () {  }),
            listTile(icon: Icons.home_work_outlined, title: "Gare", onTap: () {  }),
            listTile(icon: Icons.account_balance_outlined, title: "Ville", onTap: () {  }),
            //listTile(icon: Icons.home_outlined, title: " Gare"),
            //listTile(icon: Icons.home_outlined, title: " Gare"),
            listTile(icon: Icons.account_circle_outlined, title: "Utilisateur", onTap: () {  }),
            listTile(icon: Icons.lock_outlined, title: "Close", onTap: () {  }),



          ],
        ),

    ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Home',
          style: TextStyle(color:
          Colors.white, fontSize: 17,
          ),
        ),
        actions: const [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xff123456),
            child: Icon(Icons.search, size: 17, color: Colors.white,
            ),

          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xff123456),
              child: Icon(Icons.shop, size: 17, color: Colors.white,
              ),
            ),
          ),
        ],
        backgroundColor: const Color(0xff123456),


      ),



    );



  }


}