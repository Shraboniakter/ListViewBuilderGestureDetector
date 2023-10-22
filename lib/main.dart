import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(app());
}
class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home:Myapp(),
      debugShowCheckedModeBanner: false,


    );
  }

}
class Myapp extends StatelessWidget{
  //Json Array__
  var MYItems=[
    {"img":"https://rabbil.com/files/rabbilVai.png","title":"Shrabon"},
    {"img":"https://rabbil.com/files/rabbilVai.png","title":"Kotha"},
    {"img":"https://rabbil.com/files/rabbilVai.png","title":"Beacon"},
    {"img":"https://rabbil.com/files/rabbilVai.png","title":"Riad"},
    {"img":"https://rabbil.com/files/rabbilVai.png","title":"Mitu"},
    {"img":"https://rabbil.com/files/rabbilVai.png","title":"Shrabon"},
    {"img":"https://rabbil.com/files/rabbilVai.png","title":"Kotha"},
    {"img":"https://rabbil.com/files/rabbilVai.png","title":"Beacon"},
    {"img":"https://rabbil.com/files/rabbilVai.png","title":"Riad"},
    {"img":"https://rabbil.com/files/rabbilVai.png","title":"Mitu"},



  ];
  sncakbar(context,message){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Builder With Gesture Detector'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          childAspectRatio:1.1
        ),
        itemCount: MYItems.length,
        itemBuilder:(context,index){
          return GestureDetector(
            onTap: (){sncakbar(context, MYItems[index]['title']);},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 300,
              child: Image.network(MYItems[index]["img"]!,fit: BoxFit.fill,),
            ),

          );
        },


      ),

    );
  }

}