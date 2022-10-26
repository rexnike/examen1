import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp ({super. key});

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(179, 56, 124, 214),
        body: Center( 
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(46)),
            color: Colors.white,
            margin: EdgeInsets.only(top:20),
            child: SizedBox(
              width: 390.2,
              height: 630,
              child: Column(  
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 66.0,backgroundColor: Colors.grey,backgroundImage: NetworkImage("https://assets.stickpng.com/thumbs/585e4bf3cb11b227491c339a.png"),),
                  Divider(thickness: 1.5, color: Color.fromARGB(31, 247, 247, 248)),
                Card(
                  margin: EdgeInsets.all(15.0),
                  elevation: 55.0,
                  child: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                          hintText: 'Correo@example.com',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)
                            ), 
                          focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)
                            ), 
                          prefixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        obscureText: true,
                      ),
                      const SizedBox (height: 20,),
                      TextField(
                          decoration: InputDecoration(
                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)
                            ), 
                          focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)
                            ), 
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility_off),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        obscureText: true, 
                      ),
                      SizedBox(height: 20,),
                       Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(onPressed: () {}, child: Text("LOGIN"),
                          style:ElevatedButton.styleFrom(minimumSize:Size(350,40)),
                           )
                      ),
                      Container(
              padding: EdgeInsets.only(left: 20.0,right: 20.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Signup"),
                  Text("Forgot Password"),
                  ],
              )
              ), 
                    ], 
                  )
                )
                ],
              ),
             ),
          ),
        )
      ),
    );
  }
}
