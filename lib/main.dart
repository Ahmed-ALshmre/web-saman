import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web2/home2.dart';
import 'package:flutter_web2/home3.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'home1.dart';



void main() => runApp(MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,

));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SAMAN'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade700,

      ),
      endDrawer:Drawer(
        child: Column(
          children: [
            Container(
            alignment: Alignment.center,
              height: 200,
              color: Colors.deepPurple.shade700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                    child: Image.asset('assets/b1234.png')),
              ],
            ),
           ),
            SizedBox(height: 20,),
            ListTile(
              leading: SizedBox(height: 20,),
              trailing: Icon(Icons.home,size: 40,),
              title: Text(' الصفحه الرىْيسيه',style: TextStyle(color: Colors.grey,fontSize: 22),),

            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

            },),
            ListTile(
              leading: SizedBox(height: 20,),
              trailing: Icon(Icons.assignment,size: 40,),

              title: Text(' سياسة الخصوصية',style: TextStyle(color: Colors.grey,fontSize: 22),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home3()));

            },
            ),
            ListTile(
              leading: SizedBox(height: 20,),
              trailing: Icon(Icons.assignment,size: 40,),
              title: Text('شروط الاستخدام',style: TextStyle(color: Colors.grey,fontSize: 22),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home1()));
            },
            ),
            ListTile(
              leading: SizedBox(width: 90,),
              trailing: Icon(Icons.arrow_forward,size: 40,),
              title: Text(' الخروج',style: TextStyle(color: Colors.grey,fontSize: 22),),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),


      body: Container(
        child: WebView(
          initialUrl: 'https://saman.parts',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
