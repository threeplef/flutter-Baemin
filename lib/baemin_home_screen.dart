import 'package:flutter/material.dart';

class BaeminHomeScreen extends StatelessWidget {
  const BaeminHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar() {
      return SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xFF5EBEBB)),
          child: Row(
            children: [
              Container(width: 50, height: 50, color: Colors.orange),
              Container(width: 50, height: 50, color: Colors.yellow),
              Expanded(child: Container(height: 50)),
              Container(width: 50, height: 50, color: Colors.white),
              Container(width: 50, height: 50, color: Colors.purple),
            ],
          ),
        ),
      );
    }

    Widget _contents() {
      return Expanded(
        child: Container(
          color: Colors.red,
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          _appBar(),
          _contents(),
        ],
      ),
    );
  }
}
