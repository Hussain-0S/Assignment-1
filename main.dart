import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: MyApp(),
  ));  // runnApp , runs the class inside it as the app


}
// Main Page = Login class ////////////////////////////////////////////////////
class MyApp extends StatelessWidget{
  const MyApp({Key?Key}): super(key:Key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Login",
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar:AppBar(
          backgroundColor: Colors.green[400],
          centerTitle: true,
          title: const Text("Login"),
        ),


        body: SingleChildScrollView(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children : [

              Container(

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue[200],
                ),
                padding: const EdgeInsets.all(60.0),
                margin: const EdgeInsets.all(30.0),

                alignment: Alignment.center,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Text(
                 "Login using your account or Sign Up Now:" ,
                 style: TextStyle(fontSize: 25.0,),
             ),),
              ),

             const Padding(
               padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
               child: TextField(
               decoration: InputDecoration(
                 icon:Icon(Icons.account_circle) ,
                 border: OutlineInputBorder(),
                 labelText: "User Name",
                 hintText: "User Name",
               ),
             ),),

              const Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon:Icon(Icons.lock) ,
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Password",
                  ),
                ),),

             const SizedBox(height: 10,), // Sized box to have some space between botton and TextField .

             Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: Size(220.0, 50.0)),
                  child : const Text ("Login",style: TextStyle(fontSize: 25.0,),) ,
                  onPressed : () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Confirmation()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: Size(200.0, 50.0)),
                  child : const Text ("Forgot Password",style: TextStyle(fontSize: 25.0,),) ,
                  onPressed : () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChangePassword()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: Size(220.0, 50.0)),
                  child : const Text ("Sign Up",style: TextStyle(fontSize: 25.0,),) ,
                  onPressed : () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10,),
            ]
          ),
        ),

      ),



    );
  }
}


// Confirmation Class /////////////////////////////////////////////////////////////////


class Confirmation extends StatelessWidget {
  const Confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.grey[200],
            appBar: AppBar(
              title: const Text("Confirmation"),
              centerTitle: true,
              backgroundColor: Colors.greenAccent,
            ),

            body: Center(
              child : Wrap(
              children:  [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Login to your account was successful !",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Center(
                  child: Padding(padding: EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: Size(220.0, 50.0)),
                    child : const Text ("Go Back",style: TextStyle(fontSize: 25.0,),) ,
                    onPressed : () {
                      Navigator.pop(context);
                    },
                  ),
                  ),
                )
              ],
            ),
          ),
        ));

  }
}




// The SIGN UP class //////////////////////////////////////////////////////////

class SignUp extends StatelessWidget{
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Sign Up",
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar:AppBar(
          backgroundColor: Colors.green[400],
          centerTitle: true,
          title: const Text("Sign Up"),
        ),


        body: SingleChildScrollView(
          child : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children : [

                Container(

                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue[200],
                  ),
                  padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                  margin: const EdgeInsets.all(25.0),

                  alignment: Alignment.center,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                    child: Text(
                      "Don't have an account ?\n"
                          "Sign Up now below :" ,
                      style: TextStyle(fontSize: 24.0,),
                    ),),
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(55, 15, 15, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "First Name",
                      hintText: "First Name",
                    ),
                  ),),

                const Padding(
                  padding: EdgeInsets.fromLTRB(55, 15, 15, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Second Name",
                      hintText: "Second Name",
                    ),
                  ),),

                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon:Icon(Icons.account_circle) ,
                      border: OutlineInputBorder(),
                      labelText: "User Name",
                      hintText: "User Name",
                    ),
                  ),),

                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon:Icon(Icons.lock) ,
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: "Password",
                    ),
                  ),),

                const SizedBox(height: 10,), // Sized box to have some space between botton and TextField .

                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: Size(220.0, 50.0)),
                    child : const Text ("Create Account",style: TextStyle(fontSize: 25.0,),) ,
                    onPressed : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SuccessfulRegistered()),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: Size(200.0, 50.0)),
                    child : const Text ("Login In",style: TextStyle(fontSize: 25.0,),) ,
                    onPressed : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp()),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10,),
              ]
          ),
        ),

      ),



    );
  }
}



// Creating A New Account Successfully class //////////////////////////////////

class SuccessfulRegistered extends StatelessWidget {
  const SuccessfulRegistered({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: const Text("Successfully Registered"),
            centerTitle: true,
            backgroundColor: Colors.greenAccent,
          ),

          body: Center(
            child : Wrap(
              children:  [
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Text(
                    "Account created successfully !",
                    style: TextStyle(
                      fontSize: 28.0,
                      color: Colors.blue,
                    ),
                  ),
                ),

                const SizedBox(height: 70,),
                Center(
                  child: Padding(padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(minimumSize: Size(220.0, 50.0)),
                      child : const Text ("Go Back",style: TextStyle(fontSize: 25.0,),) ,
                      onPressed : () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(minimumSize: Size(220.0, 50.0)),
                      child : const Text ("Login In",style: TextStyle(fontSize: 25.0,),) ,
                      onPressed : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyApp()),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));

  }
}



// Change Password class ///////////////////////////////////////////////////////

class ChangePassword extends StatelessWidget{
   const ChangePassword({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      title: "Change Password",
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text("Change Password"),
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                decoration:  BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blue[200],
                ),

                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                margin: const EdgeInsets.all(30),
                alignment: Alignment.center,

                child: const Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
                  child: Text(
                    "Enter your old and new passwords",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(15,15,15,0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.password),
                    labelText: "Old password",
                    hintText: "Old Password",
                  ),
                ),
              ),

              const Padding(
                padding : EdgeInsets.fromLTRB(15,15,15,0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.lock),
                    labelText: "New Password",
                    hintText: "New Password",
                  ),
                ),
              ),

               const SizedBox(height: 10,),


               Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: ElevatedButton(
                  child:const Text(
                    "Reset Password",
                    style: TextStyle(fontSize: 25),
                  ) ,

                  onPressed:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> const PasswordChanged()),
                    );
                  },
                ),
              ),

               Padding(
                padding: EdgeInsets.fromLTRB(15,15,15,0),
                child: ElevatedButton(
                  child: const Text(
                    "Go Back",
                    style: TextStyle(fontSize: 25),
                  ),

                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }}



// Password Changed Successfully class//////////////////////////////////////////

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: const Text("Password Changed !!"),
            centerTitle: true,
            backgroundColor: Colors.greenAccent,
          ),

          body: Center(
            child : Wrap(
              children:  [
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Text(
                    "Password Changed successfully !",
                    style: TextStyle(
                      fontSize: 25.1,
                      color: Colors.blue,
                    ),
                  ),
                ),

                const SizedBox(height: 70,),
                Center(
                  child: Padding(padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(minimumSize: Size(220.0, 50.0)),
                      child : const Text ("Go Back",style: TextStyle(fontSize: 25.0,),) ,
                      onPressed : () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(minimumSize: Size(220.0, 50.0)),
                      child : const Text ("Login In",style: TextStyle(fontSize: 25.0,),) ,
                      onPressed : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyApp()),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));

  }
}