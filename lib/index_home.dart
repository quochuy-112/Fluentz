import 'package:flutter/material.dart';

void main() {
  runApp(IndexHome());
}

class IndexHome extends StatefulWidget {
  const IndexHome({super.key});

  @override
  State<IndexHome> createState() => _IndexHomeState();
}

class _IndexHomeState extends State<IndexHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height - 111.143),
            child: Stack(
              children: [
                Container(
                  color: const Color.fromRGBO(240, 240, 240, 1.0),
                ),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        backgroundColor: Colors.deepPurpleAccent,
                        floating: false,
                        pinned: true,
                        flexibleSpace: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
                              child: Expanded(
                                flex: 1,
                                child: Image(
                                  image: AssetImage('assets/logo.png'),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 1,
                              child: SizedBox(width: 288),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Expanded(
                                flex: 4,
                                child: ElevatedButton(
                                  onPressed: () {
                                    ;
                                  },
                                  style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.yellowAccent),
                                  ),
                                  child: const Text(
                                    'Dùng thử miễn phí',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.notifications_none,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SliverAppBar(
                        toolbarHeight: 80,
                        backgroundColor: Colors.deepPurpleAccent,
                        pinned: true,
                        flexibleSpace: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Tìm kiếm...',
                                contentPadding:
                                    const EdgeInsets.only(right: 40),
                                prefixIcon: const Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SliverAppBar(
                          backgroundColor:
                              const Color.fromRGBO(240, 240, 240, 1.0),
                          pinned: true,
                          flexibleSpace: ClipPath(
                            clipper: MiddleCurveClipper(),
                            child: Container(
                              color: Colors.deepPurpleAccent,
                            ),
                          )),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: const Text(
                                          'Các học phần',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 10, 0),
                                      child: const Text('Xem tất cả',
                                          style: TextStyle(
                                              color: Colors.deepPurpleAccent,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 28),
                                  color:
                                      const Color.fromRGBO(240, 240, 240, 1.0),
                                  height: 130, // Chiều cao của hàng ListView
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 10,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        width: 320,
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: const Color.fromRGBO(
                                                  200, 200, 200, 1.0),
                                              width: 1),
                                          color: Colors.white,
                                        ),
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(left: 30),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Row(
                                                    children: [
                                                      Icon(Icons
                                                          .library_books_outlined),
                                                      SizedBox(width: 10),
                                                      Text('Tên học phần',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    child: const Padding(
                                                        padding:
                                                            EdgeInsets.all(5),
                                                        child: Text(
                                                          '0 thuật ngữ',
                                                          style: TextStyle(
                                                              fontSize: 13),
                                                        )),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color:
                                                          const Color.fromRGBO(
                                                              200,
                                                              150,
                                                              250,
                                                              0.5),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            );
                          },
                          childCount: 1, // Chỉ có một hàng ListView
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: const Text(
                                          'Các thư mục',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 10, 0),
                                      child: const Text('Xem tất cả',
                                          style: TextStyle(
                                              color: Colors.deepPurpleAccent,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 28),
                                  color:
                                      const Color.fromRGBO(240, 240, 240, 1.0),
                                  height: 130,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 10,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        width: 320,
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: const Color.fromRGBO(
                                                  200, 200, 200, 1.0),
                                              width: 1),
                                          color: Colors.white,
                                        ),
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(left: 30),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .folder_open_rounded,
                                                      ),
                                                      SizedBox(width: 10),
                                                      Text('Tên thư mục',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    child: const Padding(
                                                        padding:
                                                            EdgeInsets.all(5),
                                                        child: Text(
                                                          '0 học phần',
                                                          style: TextStyle(
                                                              fontSize: 13),
                                                        )),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color:
                                                          const Color.fromRGBO(
                                                              200,
                                                              150,
                                                              250,
                                                              0.5),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            );
                          },
                          childCount: 1, // Chỉ có một hàng ListView
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MiddleCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final midPoint = size.width / 2;

    path.lineTo(0, 0);

    path.quadraticBezierTo(midPoint, size.height, size.width, 0);

    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
