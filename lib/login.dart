import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_app/home.dart';
import 'package:second_app/register.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _obxText = true;
  String _textEmail = 'a@g.com';
  String _textPassword = '123';

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  CheckPassword() {
    setState(() {
      _obxText = !_obxText;
    });
  }

  checkLogin() {
    if (_textEmail == _email.text) {
      if (_textPassword == _password.text) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Password Anda Salah'),
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Email Anda Salah'),
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.network(
                "https://cloudfront.zekkei-japan.jp/images/articles/0c676259662f7b4c5155bc235d707e21.jpg"),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Welcome Back 👋🏻",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Email",
                style: GoogleFonts.poppins(fontSize: 14),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: _email,
                decoration: InputDecoration(
                  hintText: "Example@gmail.com",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Password",
                style: GoogleFonts.poppins(fontSize: 14),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: _password,
                obscureText: _obxText,
                decoration: InputDecoration(
                    hintText: "********",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () => CheckPassword(),
                        icon: Icon(_obxText ? Icons.remove_red_eye_outlined : Icons.remove_red_eye))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => checkLogin(),
                  child: Text("Sign In"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      foregroundColor: Colors.white),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account?",
                      style: GoogleFonts.poppins(),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                          },
                          child: Text('Sign Up'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white
                          ),
                        ))
                  ]),
            ]),
          )
        ]),
      ),
    );
  }
}
