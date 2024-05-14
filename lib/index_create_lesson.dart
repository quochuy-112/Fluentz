import 'package:flutter/material.dart';

void main() {
  runApp(const IndexCreatLesson());
}

class IndexCreatLesson extends StatefulWidget {
  const IndexCreatLesson({super.key});

  @override
  State<IndexCreatLesson> createState() => _IndexCreatLessonState();
}

class _IndexCreatLessonState extends State<IndexCreatLesson> {
  String _selectedOption = 'Chọn ngôn ngữ';

  List<DropdownMenuItem<String>> dropdownItems = <String>[
    'Chọn ngôn ngữ',
    'Vietnam',
    'Laos',
    'Cambodia',
    'Thailand',
    'Singapore'
  ].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList();

  List<Widget> listItem = [];

  Widget _buildItem() {
    return Container(
      key: UniqueKey(),
      margin: const EdgeInsets.all(5),
      color: Colors.white,
      child: Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.endToStart,
        background: Container(
          alignment: Alignment.centerRight,
          color: Colors.red,
          child: const Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
        onDismissed: (direction) {
          setState(() {
            listItem.removeWhere((element) => element.key == Key(direction.index.toString()));
          });
        },
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: const TextField(
                      decoration: InputDecoration(),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Thuật ngữ'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: const TextField(),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 0, 15),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Định nghĩa'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    listItem.add(_buildItem());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text(
            'Tạo học phần',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.settings_outlined,
            color: Colors.white,
          ),
          actions: [
            Container(
                margin: const EdgeInsets.only(right: 16),
                child: const Text(
                  'Xong',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: const Color.fromRGBO(240, 240, 240, 1.0),
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height - 111.143),
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
                                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Chủ đề, chương, đơn vị ...',
                                        floatingLabelBehavior: FloatingLabelBehavior.always,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
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
                                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Mô tả học phần ...',
                                        floatingLabelBehavior: FloatingLabelBehavior.always,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(5, 0, 0, 15),
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
                      Container(
                        color: Colors.white,
                        margin: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: DropdownButtonFormField<String>(
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                value: _selectedOption,
                                onChanged: (newValue) {
                                  ;
                                },
                                items: dropdownItems,
                                decoration: const InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                                  ),
                                ),
                                validator: (value) {
                                  if (_selectedOption == dropdownItems.first.value) {
                                    return 'Please choose a country!';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text('Thuật ngữ'),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: DropdownButtonFormField<String>(
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                value: _selectedOption,
                                onChanged: (newValue) {
                                  ;
                                },
                                items: dropdownItems,
                                decoration: const InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                                  ),
                                ),
                                validator: (value) {
                                  if (_selectedOption == dropdownItems.first.value) {
                                    return 'Please choose a country!';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5, 0, 0, 15),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text('Định nghĩa'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        child: ListView.builder(
                          itemCount: listItem.length,
                          itemBuilder: (context, index) {
                            return listItem[index];
                          },
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
