import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BaeminHomeScreen extends StatelessWidget {
  const BaeminHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar() {
      return SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xFF5EBEBB)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu, color: Colors.white)),
              const SizedBox(width: 50, height: 45),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                      child: Center(
                        child: Text(
                          '서울특별시 영등포구 문래동6가',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down, color: Colors.white),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none,
                      color: Colors.white)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle_outlined,
                      color: Colors.white)),
            ],
          ),
        ),
      );
    }

    Widget _contents() {
      Widget _search() {
        return Container(
          decoration: const BoxDecoration(
            color: Color(0xFF5EBEBB),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 3, 16, 16),
            child: Container(
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.transparent.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.search, color: Colors.grey),
                  ),
                  Expanded(
                    child: Text(
                      '닭발? 순대? 곱창?',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }

      return Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _search(),
              _delivery(),
              _packaging(),
              _commerce(),
              _advertisement(),
              _additional(),
            ],
          ),
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
