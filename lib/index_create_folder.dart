import 'package:flutter/material.dart';

void main() {
  runApp(const IndexCreateFolder());
}

class IndexCreateFolder extends StatefulWidget {
  const IndexCreateFolder({super.key});

  @override
  State<IndexCreateFolder> createState() => _IndexCreateFolderState();
}

void _onDoneTap() {
  ;
}

class _IndexCreateFolderState extends State<IndexCreateFolder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text(
            'Tạo thư mục',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: InkWell(
                onTap: _onDoneTap,
                child: const Text(
                  'Lưu',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              color: const Color.fromRGBO(240, 240, 240, 1.0),
            ),
            SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            color: Colors.white,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 0, 5, 0),
                                        child: const TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Tiêu đề thư mục ...',
                                            floatingLabelBehavior:
                                                FloatingLabelBehavior.always,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                      child: const Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Tiêu đề'),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 0, 5, 0),
                                        child: const TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Mô tả thư mục ...',
                                            floatingLabelBehavior:
                                                FloatingLabelBehavior.always,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          5, 0, 0, 15),
                                      child: const Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Mô tả'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
