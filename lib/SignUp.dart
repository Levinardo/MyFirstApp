import 'package:flutter/material.dart';
import 'package:fluttet_login_page/main.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image.jpg'),
              fit: BoxFit.fill,
            )
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          children: [
            Column(
              children: <Widget>[

                const SizedBox(height: 80 ,),
                const Text("Let's Get Started",
                    textAlign: TextAlign.center,

                style: TextStyle(fontSize: 25,color:
                Colors.black87),
                ),
                const Text("Create an account to get all features",
                    textAlign: TextAlign.center),
                const SizedBox(height: 50,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white, width: 1.0
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: Colors.white, width: 1.0
                        )
                    ),
                    labelText: "Full Name",
                    labelStyle: const TextStyle(fontSize: 15,
                        color: Colors.white
                    ),
                    filled: true,
                  ),
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.white, width: 1.0
                      ),
                    ),
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
                const SizedBox(height: 30,),
                TextFormField(
                  decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color: Colors.white, width: 1.0
                    ),
                  ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: Colors.white, width: 1.0
                        )
                    ),
                    labelText: "Phone",
                    labelStyle: const TextStyle(fontSize: 15,
                        color: Colors.white
                    ),
                    filled: true,
                  ),
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.white, width: 1.0
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
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
                const SizedBox(height: 30,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.white, width: 1.0
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: Colors.white, width: 1.0
                        )
                    ),
                    labelText: "Confirm Password",
                    labelStyle: const TextStyle(fontSize: 15,
                        color: Colors.white
                    ),
                    filled: true,
                  ),
                ),
                const SizedBox(height: 40,),


              ],
            ),
            Column(children: [
              ButtonTheme(
              height: 80,
              minWidth: double.infinity,
              disabledColor: Colors.redAccent,
              child: const ElevatedButton(
                onPressed: null,
                child:  Text('Create',
                  style: TextStyle(fontSize: 20,
                      color: Colors.white),),
              ),
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?',
                    textAlign: TextAlign.center,),
                  Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 15,color: Colors.black54),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context)=>const MyApp()),
                        );
                      },
                      child: const Text('Login here',
                      style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
            ),



          ],

        ),
      ),

    );
  }
}
