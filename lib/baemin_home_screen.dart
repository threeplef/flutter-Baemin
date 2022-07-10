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

      Widget _packaging() {
        return Padding(
          padding: const EdgeInsets.fromLTRB(7, 0, 7, 3),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: SizedBox(
              height: 80,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '포장',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text('가까운 가게는 직접 가지러 가지요'),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 15, 5),
                    child: Image.asset('assets/package.png'),
                  ),
                ],
              ),
            ),
          ),
        );
      }

      Widget _commerce() {
        return Padding(
          padding: const EdgeInsets.fromLTRB(7, 0, 7, 3),
          child: Row(
            children: [
              Flexible(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: SizedBox(
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(26, 10, 26, 0),
                      child: Column(
                        children: [
                          Image.asset('assets/live.png', width: 65, height: 35),
                          const SizedBox(height: 2),
                          const Text('쇼핑라이브',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: SizedBox(
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(27, 10, 27, 0),
                      child: Column(
                        children: [
                          Image.asset('assets/present.png',
                              width: 65, height: 35),
                          const SizedBox(height: 2),
                          const Text('선물하기',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: SizedBox(
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(27, 10, 27, 0),
                      child: Column(
                        children: [
                          Image.asset('assets/special.png',
                              width: 65, height: 35),
                          const SizedBox(height: 2),
                          const Text('전국별미',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget _advertisement() {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 3, 12, 7),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'http://img.woowahan.com/www/common/baemin.jpg',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 18,
              right: 25,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black.withOpacity(0.4),
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(12, 3, 12, 5),
                  child: Text(
                    '4 / 6 모두보기',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        );
      }

      Widget _additional() {
        return Padding(
          padding: const EdgeInsets.fromLTRB(7, 0, 7, 7),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: SizedBox(
              height: 70,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 12, 20, 0),
                    child: Column(
                      children: const [
                        Icon(Icons.check_circle_outline),
                        SizedBox(height: 2),
                        Text('포인트'),
                      ],
                    ),
                  ),
                  const VerticalDivider(color: Colors.grey),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                    child: Column(
                      children: const [
                        Icon(Icons.airplane_ticket_outlined),
                        SizedBox(height: 2),
                        Text('쿠폰함'),
                      ],
                    ),
                  ),
                  const VerticalDivider(color: Colors.grey),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                    child: Column(
                      children: const [
                        Icon(Icons.shopping_bag_outlined),
                        SizedBox(height: 2),
                        Text('선물함'),
                      ],
                    ),
                  ),
                  const VerticalDivider(color: Colors.grey),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 12, 0, 0),
                    child: Column(
                      children: const [
                        Icon(Icons.favorite_border),
                        SizedBox(height: 2),
                        Text('찜'),
                      ],
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
