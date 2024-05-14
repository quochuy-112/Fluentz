import 'package:flutter/material.dart';
import 'index_home.dart';

void main() {
  runApp(const Index());
}

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedBNB = 0;

  static List<Widget> listWidget = <Widget>[
    const IndexHome(),
    const IndexHome(),
    const IndexHome(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: const Color.fromRGBO(240, 240, 240, 1.0),
            ),
            SafeArea(
              child: Column(
                children: [
                  Expanded(child: listWidget.elementAt(_selectedBNB)),
                  SizedBox(
                    height: 70,
                    child: BottomNavigationBar(
                      currentIndex: _selectedBNB,
                      selectedItemColor: Colors.deepPurpleAccent,
                      unselectedItemColor: Colors.blueGrey,
                      backgroundColor: Colors.white,
                      type: BottomNavigationBarType.fixed,
                      selectedLabelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      onTap: (value) {
                        setState(() {
                          _selectedBNB = value;
                        });
                      },
                      items: [
                        const BottomNavigationBarItem(
                          icon: Icon(Icons.home_outlined),
                          label: 'Trang chủ',
                        ),
                        const BottomNavigationBarItem(
                          icon: Icon(Icons.library_books_outlined),
                          label: 'Lời giải',
                        ),
                        BottomNavigationBarItem(
                          icon: PopupMenuButton(
                            color: Colors.white,
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                  onTap: () {
                                    ;
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(vertical: 10),
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color.fromRGBO(192, 192, 192, 0.3),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                            margin: const EdgeInsets.only(left: 10),
                                            child: const Icon(
                                                Icons.library_books_outlined)),
                                        Container(
                                            margin: const EdgeInsets.only(left: 10),
                                            child: const Text(
                                              'Học phần',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                PopupMenuItem(
                                  onTap: () {
                                    ;
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(vertical: 10),
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color.fromRGBO(192, 192, 192, 0.3),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                            margin: const EdgeInsets.only(left: 10),
                                            child: const Icon(
                                                Icons.folder_open_rounded)),
                                        Container(
                                            margin: const EdgeInsets.only(left: 10),
                                            child: const Text(
                                              'Thư mục',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ];
                            },
                            child: const Icon(Icons.add_circle_outline),
                          ),
                          label: 'Tạo mới',
                        ),
                        const BottomNavigationBarItem(
                          icon: Icon(Icons.folder_copy_outlined),
                          label: 'Thư viện',
                        ),
                        const BottomNavigationBarItem(
                          icon: Icon(Icons.account_circle_outlined),
                          label: 'Hồ sơ',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
