import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:revisaocp1/custom_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('Images/perfil.png'),
              ),
              accountName: Text(
                'Joanzinho',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text('emailsojoaozinho@gmail.com'),
              decoration:
                  BoxDecoration(color: const Color.fromARGB(255, 1, 115, 209)),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Perfil',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.paste,
                color: Colors.white,
              ),
              title: Text(
                'Repositorios',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.star,
                color: Colors.white,
              ),
              title: Text(
                'Favoritos',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 65, 64, 64),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 65, 64, 64),
        title: const Text(
          'GitHub Perfil',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage('Images/perfil.png'),
          ),
          Text(
            'João Pedro Moura Tuneli',
            style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'jsviera',
            style: TextStyle(
              color: const Color.fromARGB(255, 62, 63, 63),
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.map,
                color: Colors.white,
              ),
              SizedBox(width: 2),
              Text(
                'Brazil, São Paulo, SP',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.email,
                color: Colors.white,
              ),
              SizedBox(width: 5),
              Text(
                'jsilvavieira@github.com',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.people,
                color: Colors.white,
              ),
              SizedBox(width: 5),
              Text(
                '32',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 2),
              Text(
                'seguidores',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              SizedBox(width: 10),
              Text(
                '45',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 2),
              Text(
                'seguindo',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('pressed');
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: const Color.fromARGB(255, 29, 248, 142),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
    );
  }
}
