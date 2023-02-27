import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController fnc = TextEditingController();
  TextEditingController lnc = TextEditingController();
  TextEditingController noc = TextEditingController();
  TextEditingController ec = TextEditingController();
  var uri;

  get data => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Add"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            // CircleAvatar(
            //   radius: 100,
            //   backgroundImage: NetworkImage(uri),
            // ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () async {
                    ImagePicker imagePicker = ImagePicker();

                    XFile? xfile =
                    await imagePicker.pickImage(source: ImageSource.camera);
                    setState(() {
                      uri = xfile!.path;
                    });
                  },
                  child: Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black),
                    alignment: Alignment.center,
                    child: Text(
                      "Camera",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    ImagePicker imagePicker = ImagePicker();
                    XFile? xfile = await imagePicker.pickImage(
                        source: ImageSource.gallery);
                    setState(() {
                      uri = xfile!.path;
                    });
                  },
                  child: Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black),
                    alignment: Alignment.center,
                    child: Text(
                      "Gallery",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: fnc,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  label: Text(
                    "Enter the First Name",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: lnc,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  label: Text(
                    "Enter the Last Name",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: noc,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  label: Text(
                    "Enter the Contact NO.",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: ec,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  label: Text(
                    "Enter the Email",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Data data = Data(
                      e: ec.text, fn: fnc.text, ln: lnc.text, no: noc.text);
                  Global.allData.add(data);
                });
                Navigator.pushReplacementNamed(context, '/', arguments: data);
              },
              child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                alignment: Alignment.center,
                child: Text(
                  "Create",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}