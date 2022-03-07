import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj1/morning.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: MyHome(),
    );
  }
}
class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
      backgroundColor: Colors.black54,
        title: Text('اذكار المسلم',textAlign: TextAlign.right,),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 40,top: 20),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Layouts/images/proj1.jpeg"),
                fit: BoxFit.cover)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[

            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> morning()));},
              child: Text("اذكار الصباح",style: TextStyle(color: Colors.black,fontSize: 24)),shape:StadiumBorder() ,),
            RaisedButton(onPressed: (){}, child: Text("اذكار المساء",style: TextStyle(color: Colors.black,fontSize: 24),),shape:StadiumBorder()),
            RaisedButton(onPressed: (){}, child: Text("اذكار النوم",style: TextStyle(color: Colors.black,fontSize: 24),),shape:StadiumBorder()),
            RaisedButton(onPressed: (){}, child: Text("سنن منسيه",style: TextStyle(color: Colors.black,fontSize: 24),),shape:StadiumBorder()),
            RaisedButton(onPressed: (){}, child: Text(" التسبيح",style: TextStyle(color: Colors.black,fontSize: 24),),shape:StadiumBorder()),

          ],
        ),
      ),
      drawer:Drawer(
        child: ListView(
          padding: EdgeInsets.all(2),
          children: <Widget>[
            DrawerHeader(child: Text("Settings"),decoration: BoxDecoration(color: Colors.grey),)
            ,  NavigationToolbar(
              trailing: Icon(Icons.warning_amber_rounded),

            )
            ,ListTile(
                title: Text("الوضع الليلي"),onTap: (){})
            ,ListTile(
              title: Text("الوضع النهاري"),onTap: (){},)
            ,ListTile(
                title: Text("الاعدادات"),onTap: (){})
          ],
        ),
      ) ,
    );
  }

}