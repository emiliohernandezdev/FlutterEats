import 'package:flutter/material.dart';
import 'package:foodapp/services/auth.dart';


class LoginSignup extends StatefulWidget {
  LoginSignup({this.auth, this.loginCallback});
  final Authentication auth;
  final VoidCallback loginCallback;
  @override
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.red,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network('https://previews.123rf.com/images/ziamary/ziamary1803/ziamary180300027/97657348-barber-shop-elements-and-icons-patchwork-background-vector-grunge-seamless-vintage-wallpaper-pattern.jpg',
           fit: BoxFit.cover,
           color: Colors.black54,
           colorBlendMode: BlendMode.darken),
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               SingleChildScrollView(
                 padding: EdgeInsets.only(top: 50.0),
                 child: Container(
                   decoration: BoxDecoration(
                     shape: BoxShape.rectangle,
                     color: Colors.blue
                   ),
                   height: 300.00,
                   width: 350.00,
                   child: CircleAvatar(
                     child: Image.network('https://cdn3.iconfinder.com/data/icons/barber-shop-set/320/barber_shop_2-512.png'),
                     backgroundColor: Colors.white,
                   ),
                 ),
               )
             ],
           )
        ],
      )
    );
  }
}
