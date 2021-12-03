import 'package:app_kos_flutter/pages/home_page.dart';
import 'package:app_kos_flutter/theme.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/404.png',
                width: 300,
              ),
              const SizedBox(
                height: 70,
              ),
              Text(
                'where are you doing',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                ' Seems like the page that you were\nrequested is already gone',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 210,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                        (route) => false);
                  },
                  color: pupleColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      17,
                    ),
                  ),
                  child: Text(
                    'Back To Home',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
