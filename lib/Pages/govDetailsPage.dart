import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GovDetailsPage extends StatelessWidget {
  const GovDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gov Soludo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 150,
            child: Row(
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Container(
                    child: Image.asset("assets/images/soludo.jpeg"),
                  ),
                ),
                Divider(
                  height: 120,
                  thickness: 7,
                  color: Colors.green,
                  endIndent: 10,
                  indent: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(
                        "Gov. Chukwuma Soludo \n"
                            "1 year in office",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      height: 25,
                      width: 130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(Icons.star),
                          Icon(Icons.star),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GovDetailsPage()),
                        );
                      },
                      child: Text(
                        "Performance Details",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          
        ),
      ),
    );
  }
}