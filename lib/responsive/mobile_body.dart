import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('M O B I L E',
        style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [

          // u tube video
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Container(
                height: 250,
                color: Colors.blue[600],
              ),
            ),
          ),

        //    comment section and recommendation videos
          Expanded(
              child: ListView.builder(
                itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120,
                        color: Colors.blue[400],
                      ),
                    );
                  }
              ),
          ),
        ],
      ),
    );
  }
}
