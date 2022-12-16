import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addchauf extends StatelessWidget {
  const addchauf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //appBar: AppBar(title: Text('Ajouter Chauffeur'),),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(

            children: [
              SizedBox(height: 20,),
              TextField(
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'Nom',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular((40))),
                  ),


                ),
              ),
              SizedBox(height: 20,),
                  TextField(
                  style: TextStyle(fontSize: 22),
                  decoration: InputDecoration(
                  labelText: ' Email ',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular((40))),),
                  ),
                  ),
              SizedBox(height: 20,),
              TextField(
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'Bus',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular((40))),
                  ),


                ),
              ),

              SizedBox(height: 20,),
              TextField(
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'Telephone',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular((40))),
                  ),


                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){},
                  child: Container(
                    width: double.infinity,
                    child: Icon(Icons.add, size: 22,),//32

                  ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}