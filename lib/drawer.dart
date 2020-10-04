import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
/*             DrawerHeader(child: Text("Hi, I am Drawer", style: TextStyle(color: Colors.white),),
            decoration: BoxDecoration(color: Colors.purple),
            ), */
            UserAccountsDrawerHeader(
              accountName: Text("Jai Siya Ram"), 
              accountEmail: Text("dev.sam@gmail.com"),
              currentAccountPicture: Image.network("https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"),
              ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            )
          ],            
        ),
      );
  }
}