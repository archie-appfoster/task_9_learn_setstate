import 'package:flutter/material.dart';

void main(){
  runApp(MyHome());

}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Home(),
      debugShowCheckedModeBanner: false,

    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Widget? image;
   int clickcount=0;



   update(){
         if(clickcount<2){
         image = Image.asset("assets/images/flag.png");}
         else {

         image =Image.network("https://static.toiimg.com/thumb/msid-61100611,width-400,resizemode-4/61100611.jpg");}

   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Guten Morgan"),centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image==null? SizedBox():image!,

            ElevatedButton(
                onPressed:(){

               setState(() {
                 update();
                 clickcount++;
               });
            },

                child: Text("buenos dias",style: TextStyle(
                fontSize: 45,
              ),)
            )],
        ),
      ),
      

    );
  }
}


