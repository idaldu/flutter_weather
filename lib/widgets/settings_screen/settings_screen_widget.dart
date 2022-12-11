import 'package:flutter/material.dart';

class SettingsScreenWidget extends StatefulWidget {
  const SettingsScreenWidget({Key? key}) : super(key: key);

  @override
  _SettingsScreenWidgetState createState() => _SettingsScreenWidgetState();
}

class _SettingsScreenWidgetState extends State<SettingsScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Здесь будет экран настроек приложения'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Назад'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
