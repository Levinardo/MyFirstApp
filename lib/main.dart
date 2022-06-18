import 'package:flutter/material.dart';
import 'package:fluttet_login_page/SignUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image.jpg'),
            fit: BoxFit.cover,
          )
        ),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            children: <Widget>[
              Column(
                children: <Widget>[
                  const SizedBox(height: 60,),
                  Image.asset('assets/logo.png',

                      width: 160,
                      height: 150,
                      fit:BoxFit.fill),
                  const SizedBox(height: 10,),
                  const Text('UET PESHAWAR',
                    style: TextStyle(fontSize: 25,
                        color: Colors.deepOrange),),
                ],
              ),
              const SizedBox(height: 80 ,),
               TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Colors.white, width: 1.0
                      )
                  ),
                  fillColor:Colors.black12,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: Colors.white, width: 1.0
                    )
                  ),
                  labelText: "Email",
                  labelStyle: const TextStyle(fontSize: 15,
                      color: Colors.white
                  ),
                  filled: true,
                ),
              ),
              const SizedBox(height: 40,),
              TextField(

                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Colors.white, width: 1.0
                      )
                  ),
                  fillColor:Colors.black12,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Colors.white, width: 1.0
                      )
                  ),
                  labelText: "Password",
                  labelStyle: const TextStyle(fontSize: 15,
                      color: Colors.white
                  ),
                  filled: true,
                ),
              ),
              const SizedBox(height: 5,),
              const Text('Forgot Password?',
              textAlign: TextAlign.right,),

              const SizedBox(height: 40,),

              Column(

                children: <Widget>[

                      ButtonTheme(
                        height: 80,
                        disabledColor: Colors.redAccent,
                        child: const ElevatedButton(
                          onPressed: null,
                          child:  Text('Login',
                            style: TextStyle(fontSize: 20,
                                color: Colors.white),),
                        ),
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  const Text("Don't have an account?",textAlign: TextAlign.center,),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15,color: Colors.black54),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=>const SignUp()),
                      );
                    },
                    child: const Text('Sign Up',
                      style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),
                    ),
                  ),
                  ],
                  )
                ],

    )
    ],
          ),
      ),
    );



  }
}
