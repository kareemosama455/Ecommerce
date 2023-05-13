import 'package:flutter/material.dart';

class tester extends StatefulWidget {
  const tester({super.key});

  @override
  State<tester> createState() => _testerState();
}

class _testerState extends State<tester> {
  List<TextEditingController> listcontroller = [TextEditingController()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dynamic Text Field",
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              shrinkWrap: true,
              itemCount: listcontroller.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFF2E384E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            controller: listcontroller[index],
                            autofocus: false,
                            style: const TextStyle(color: Color(0xFFF8F8FF)),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Input Text Here",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 132, 140, 155)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      index != 0
                          ? GestureDetector(
                              onTap: () {
                                setState(() {
                                  listcontroller[index].clear();
                                  listcontroller[index].dispose();
                                  listcontroller.removeAt(index);
                                });
                              },
                              child: const Icon(
                                Icons.delete,
                                color: Color(0xFF6B74D6),
                                size: 35,
                              ),
                            )
                          : const SizedBox()
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  listcontroller.add(TextEditingController());
                });
              },
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    listcontroller.add(TextEditingController());
                  });
                  
                },
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                        color: const Color(0xFF444C60),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Add More",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
