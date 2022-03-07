import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj1/main.dart';

class morning extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: button2(),
    );
  }

}
class button2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _button2();
  }

}
class _button2 extends State<button2> {
  int count = 0;
  String t = [
    "اللهم انى اصبحت اشهدك واشهد حمله عرشك وملائكتك وجميع خلقك انك انت الله",
    "اللهم عافني فى سمعي لله غ=عافني فى بصري لا اله الا انت",
    "سبحان الل عدد خقه ورضا نفسه و زنه عره و مداد كلامته",
    "بسم الله الذي لا يضر مع اسمه شئ في الارض ولا فى السماء"
  ] as String;

  void click() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        appBar: AppBar(
          actions: [
            Icon(Icons.arrow_back_outlined, textDirection: TextDirection.ltr,),

          ],
          backgroundColor: Colors.amberAccent,
          title: Text("اذكار الصباح", textAlign: TextAlign.right,),


        ),
        body: Container(
          padding: EdgeInsets.all(20),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Layouts/images/proj12.jpeg"),
                  fit: BoxFit.cover)
          ),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Butt_Fun("ggggggg",3)
                ],
              )
          ),
        )
    );
  }


  Widget Butt_Fun(String word, int times) {
    Container container;
    while (times > 0) {
      container = Container(
          child: Column(
            children: <Widget>[
              RaisedButton(
                color: Colors.amberAccent,
                shape: StadiumBorder(),
                onPressed: () {},
                child: Text(" ", style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20), textAlign: TextAlign.right,),


              ),
              ElevatedButton.icon(
                  onPressed: () {

                  }
                  , icon: Icon(Icons.share_outlined,),
                  label: Text("")
              ),
              RaisedButton(onPressed: () {
                times--;
              },
                  child: Text("$times", style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20), textAlign: TextAlign.right,))
            ],
          )
      );
    };
    return container;
  }
}