import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'addchauff.dart';


class buslist extends StatelessWidget {
  const buslist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Gestion des chauffeurs'),
          bottom: TabBar(
            tabs:[
              Tab(icon: Icon(Icons.supervised_user_circle_sharp,size: 28,), text: 'Ajouter',),
              Tab(icon: Icon(Icons.edit_attributes,size: 28,), text: 'Chauffeur',),
              Tab(icon: Icon(Icons.search,size: 28,), text: 'Rechercher',),

            ],

          ),
        ),
        body: TabBarView(
          children: const [
            addchauf(),
            Center(child: Text('page2'),),
            Center(child: Text('page3'),),
          ],
        ),

      ),
    );



  }


}