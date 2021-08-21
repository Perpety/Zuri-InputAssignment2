import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final nameHolder;
  final phoneHolder;
  final locHolder;
  final webHolder;
  final abtHolder;

  const DetailsPage(
      {Key key,
      this.nameHolder,
      this.phoneHolder,
      this.locHolder,
      this.webHolder,
      this.abtHolder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(vertical: _size.height * 0.1),
        // color: Colo,
        child: Column(
          children: [
            Container(
              child: Text(
                'These are my details',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
            ),
            SizedBox(
              height: _size.height * 0.05,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: _size.width * 0.9,
                  height: _size.height * 0.07,
                  padding: EdgeInsets.all(10.0),
                  // color: Colors.deepPurple,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.withOpacity(0.4),
                  ),
                  child: Text(
                    '$nameHolder',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: _size.height * 0.03,
                ),
                Container(
                  width: _size.width * 0.9,
                  height: _size.height * 0.07,
                  padding: EdgeInsets.all(10.0),
                  // color: Colors.deepPurple,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.withOpacity(0.4),
                  ),
                  child: Text(
                    '$phoneHolder',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: _size.height * 0.03,
                ),
                Container(
                  width: _size.width * 0.9,
                  height: _size.height * 0.07,
                  padding: EdgeInsets.all(10.0),
                  // color: Colors.deepPurple,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.withOpacity(0.4),
                  ),
                  child: Text(
                    '$locHolder',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: _size.height * 0.03,
                ),
                Container(
                  width: _size.width * 0.9,
                  height: _size.height * 0.07,
                  padding: EdgeInsets.all(10.0),
                  // color: Colors.deepPurple,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.withOpacity(0.4),
                  ),
                  child: Text(
                    '$webHolder',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: _size.height * 0.03,
                ),
                Container(
                  width: _size.width * 0.9,
                  // height: _size.height * 0.07,
                  padding: EdgeInsets.all(10.0),
                  // height: _size.height * 0.08,
                  // color: Colors.deepPurple,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple.withOpacity(0.4),
                  ),
                  child: Text(
                    '$abtHolder',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: _size.height * 0.05,
            ),
            Container(
              width: _size.width * 0.6,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30)),
              child: MaterialButton(
                  elevation: 2,
                  child: Text(
                    'Return to Input Page',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
