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
              const SizedBox(width: 50, height: 52),
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
      return Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                decoration: const BoxDecoration(
                  color: Color(0xFF5EBEBB),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: Card(
                      child: Container(height: 200),
                    ),
                  ),
                  Flexible(
                    child: Card(
                      child: Container(height: 200),
                    ),
                  ),
                ],
              ),
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
