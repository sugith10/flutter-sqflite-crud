import 'dart:io';

import 'package:flutter/material.dart';

class StudentDetails extends StatelessWidget {
  final stdetails;
  const StudentDetails({super.key, required this.stdetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 400,
          child: SizedBox(
            // margin: const EdgeInsets.all(20),
            // shape:
            // RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            // elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(8), // Adjust the radius as needed
                  child: Image.file(
                    File(stdetails.imagex),
                    width: 160,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name :  ${stdetails.name}',
                        style: TextStyle(fontSize: 23)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Class :  ${stdetails.classname}',
                        style: TextStyle(fontSize: 23)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Parent :  ${stdetails.father}',
                        style: TextStyle(fontSize: 23)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Mobile :  ${stdetails.pnumber}',
                        style: TextStyle(fontSize: 23)),
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
