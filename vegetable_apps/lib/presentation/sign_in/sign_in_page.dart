import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool? _obscureText;
  IconData? _icon;
  final Dio _dio = Dio();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    _obscureText = true;
    _icon = Icons.visibility_off_rounded;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.black,
                ),
                hintText: "Username",
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              obscureText: _obscureText!,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_open_rounded,
                    color: Colors.black,
                  ),
                  hintText: "Password",
                  suffixIcon: InkWell(
                      onTap: () {
                        _obscureText = !_obscureText!;
                        setState(() {
                          _icon = _obscureText!
                              ? Icons.visibility_off_rounded
                              : Icons.visibility_rounded;
                        });
                      },
                      child: Icon(_icon))),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?  ',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Register here',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.purple[400],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 150,
              height: 50,
              child: TextButton(
                  onPressed: () async {
                    print("Wakawwaw");
                    print(_emailController.text);
                    print(_passwordController.text);
                    dynamic _data = {
                      "email": _emailController.text,
                      "password": _passwordController.text
                    };
                    try {
                      Response _response = await _dio
                          .post('https://reqres.in/api/login', data: _data);
                      print(_response.toString());
                    } on DioError catch (e) {
                      print(e.response!.data['error']);
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Error"),
                              content: Text(e.response!.data['error']),
                              actions: [
                                TextButton(
                                  child: Text("OK"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          });
                    } catch (e) {
                      print(e);
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.black87,
                    ),
                  ),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
