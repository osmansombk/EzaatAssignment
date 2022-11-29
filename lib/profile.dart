import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        actions: <Widget>[
          Container(
            width: 60,
            height: 60,
            child: const Icon(
              Icons.more_horiz_rounded,
              size: 20,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Color.fromARGB(255, 8, 10, 10)),
          ),
        ],
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: []),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(0), // Border radius
                    child: ClipOval(child: Image.asset('lib/ez.jpeg')),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                child: const Text("Mr. Ezzat"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Column(
                  children: const [
                    Text("200"),
                    Text(
                      "Following",
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: const [Text("52k"), Text("Followers")],
                ),
                const Spacer(),
                Column(
                  children: const [Text("10"), Text("Videos")],
                ),
                const Spacer()
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    height: 30,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      width: 100,
                      height: 40,
                      child: const Icon(
                        Icons.storefront_rounded,
                        size: 20,
                        color: Colors.white10,
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 8, 10, 10)),
                    )),
              ],
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16.0, right: 10, left: 10),
                    child: Container(
                      padding: const EdgeInsets.all(2), // Border radius
                      child: ClipRRect(child: Image.asset('lib/3.jpg')),
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0, right: 10, left: 10),
                    child: Container(
                      padding: const EdgeInsets.all(2), // Border radius
                      child: ClipRRect(child: Image.asset('lib/2.jpeg')),
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0, right: 10, left: 10),
                    child: Container(
                      padding: const EdgeInsets.all(2), // Border radius
                      child: ClipRRect(child: Image.asset('lib/3.jpg')),
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0, right: 10, left: 10),
                    child: Container(
                      padding: const EdgeInsets.all(2), // Border radius
                      child: ClipRRect(child: Image.asset('lib/4.jpg')),
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
