import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pbm/Navbar.dart';
import 'package:pbm/Register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
              height: mediaQueryHeight * 0.35,
              width: mediaQueryWidth * 0.35,
              child: const Image(
                image: AssetImage("images/logo.png"),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: mediaQueryWidth * 0.8,
              height: mediaQueryHeight * 0.03,
              // color: Colors.amber,
              child: const Text(
                "LOG IN",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0xffBB5A5A),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: mediaQueryWidth * 0.8,
            height: mediaQueryHeight * 0.06,
            child: const Text(
                "Selamat datang kembali, silahkan isi username dan password dengan benar",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                )),
          ),
          Container(
            width: mediaQueryWidth * 0.8,
            height: mediaQueryHeight * 0.03,
            child: const Text("Email",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                )),
          ),
          Container(
            width: mediaQueryWidth * 0.8,
            height: mediaQueryHeight * 0.06,
            // color: Colors.amber,
            child: TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                  hintText: "Masukan Email",
                  prefixIcon: Icon(
                    Icons.person,
                    size: 28,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          Container(
            height: mediaQueryHeight * 0.02,
            color: Color(0x00ffffff),
          ),
          Container(
            width: mediaQueryWidth * 0.8,
            height: mediaQueryHeight * 0.03,
            child: const Text("Password",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                )),
          ),
          Container(
            width: mediaQueryWidth * 0.8,
            height: mediaQueryHeight * 0.06,
            // color: Colors.amber,
            child: TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 28,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          Container(
            height: mediaQueryHeight * 0.05,
            color: Color(0x00ffffff),
          ),
          SizedBox(
            width: mediaQueryWidth * 0.5,
            height: mediaQueryHeight * 0.05,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffBB5A5A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                _doLogin();
              },
              //          {
              //   Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     return BtmNavbar();
              //   }));
              // },
              child: const Text(
                "LOG IN",
                style: TextStyle(
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text(
                  "Belum Memiliki Akun?",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Register();
                    })));
                  },
                  child: const Text(
                    "Daftar",
                    style: TextStyle(
                      color: Color(0xffEC008D),
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _doLogin() async {
    try {
      var email = _emailController.text;
      var passs = _passwordController.text;

      print('sedang login');
      var res = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: passs,
      );

      print('Hasil Login : ');
      print(res);

      final snackBar = SnackBar(
        duration: const Duration(seconds: 5),
        content: Text("Berhasil Login"),
        backgroundColor: Colors.green,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return BtmNavbar();
      }));
    } catch (e) {
      print('exception login');
      print(e.runtimeType);
      if (e is FirebaseAuthException) {
        print(e);
        print(e.message);
      }

      final snackBar = SnackBar(
        duration: const Duration(seconds: 5),
        content: Text("Email atau Password Salah"),
        backgroundColor: Colors.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  // void submit(BuildContext context, String email, String password) {
  //   if (email.isEmpty || password.isEmpty) {
  //     final snackBar = SnackBar(
  //       duration: const Duration(seconds: 5),
  //       content: Text("Email dan Password harus diisi"),
  //       backgroundColor: Colors.red,
  //     );

  //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //     return;
  //   }

  //   AlertDialog alert = AlertDialog(
  //     title: const Text("Login Berhasil"),
  //     content: Container(
  //       child: const Text("Selamat Anda Berhasil Login"),
  //     ),
  //     actions: [
  //       TextButton(
  //           child: const Text("Okay"),
  //           onPressed: () {
  //             Navigator.pushReplacement(context,
  //                 MaterialPageRoute(builder: (context) {
  //               return const BtmNavbar();
  //             }));
  //           })
  //     ],
  //   );

  //   showDialog(context: context, builder: (context) => alert);
  // }
}
