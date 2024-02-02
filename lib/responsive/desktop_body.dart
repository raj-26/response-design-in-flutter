import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('L A P T O P',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // 1st column
            Expanded(
              child: Column(
                children: [
                  // u tube video
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 16/9,
                      child: Container(
                        // height: 250,
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
            ),

          //   2nd column
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // child: Text('eee'),
                  width: 200,
                  color: Colors.blue[400],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

