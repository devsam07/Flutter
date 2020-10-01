import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatefulWidget { 
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

TextEditingController _nameController = TextEditingController();
var myText = "Change Me";
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Flutter"),
      ),
      body: Padding(padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
              child: Card(
          child: Column(
            children: <Widget>[Image.asset("assets/PC.jpg", height: 400,),
            SizedBox(height: 20,),
            Text(myText),
            SizedBox(height: 20,),

            Padding(padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameController,
              keyboardType: TextInputType.text,
              //obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter something here..",
                border: OutlineInputBorder(),
                labelText: "Name",
                ),
                ),

            )
            ],
          ),
        ),
      ),
      ),
      drawer: Drawer(
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
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {
        myText = _nameController.text;
        setState(() {     
        });
      },
      child: Icon(Icons.refresh),
      ),

      );
  }
}