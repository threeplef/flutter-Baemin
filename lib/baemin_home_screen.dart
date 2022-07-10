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

      Widget _delivery() {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(7, 7, 7, 3),
              child: Row(
                children: [
                  Flexible(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: SizedBox(
                        height: 190,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('배민1',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 3),
                                  Text('한 번에 한 집만\n빠르게 배달해요!'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: SizedBox(
                        height: 190,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('배달',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 3),
                                  Text('세상은 넓고\n맛집은 많다'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 15,
              right: 5,
              child: Row(
                children: [
                  Image.asset('assets/baemin1.png', width: 105),
                  const SizedBox(width: 90),
                  Image.asset('assets/delivery.png', width: 95),
                  const SizedBox(width: 15),
                ],
              ),
            ),
          ],
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
