import 'package:flutter/material.dart';

class RowsColumnPage
 extends StatelessWidget {
  const RowsColumnPage
  ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rows & Column'
      ),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        width: 400,
        color: Colors.red,
        child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Vertical 1'
                ),
                const Text('Vertical 2'
                ),
                const Text('Vertical 3'
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  height: 200,
                  color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text('Horizontal 1'
                  ),
                  Text('Horizontal 2'
                  ),
                  Text('Horizontal 3'
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