import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'topbar.dart';

class Myappbar extends StatelessWidget {
  const Myappbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TopBar(
              title: 'Dwarf Code',
              subtitle: 'Welcome!! Learn to code',
              color: Colors.amber),
          const SizedBox(
            height: 20,
            width: 30,
          ),
          Text(
            'welcome to Dwarf code',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 2),
            itemBuilder: (ctx, index) => Container(
              child: Image.network(
                'https://images.unsplash.com/photo-1621569899609-e6ca91a72f97?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
                fit: BoxFit.cover,
              ),
            ),
          )
        ]),
      ),
      appBar: AppBar(
          title: const Text(
            'Dwarf code',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.brown[800],
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('this is just a msg')));
              },
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next page',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text(''),
                      ),
                      body: SafeArea(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            TopBar(
                                title: 'Aswin S Seshadri',
                                subtitle: 'Welcome!! Everyone',
                                color: Colors.pink.shade300),
                            const SizedBox(
                              height: 20,
                              width: 30,
                            ),
                            Text(
                              'Let us look through the Pictures',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            )
                          ])),
                    );
                  }),
                );
              },
            )
          ]),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          )
        ],
      ),
    );
  }
}
