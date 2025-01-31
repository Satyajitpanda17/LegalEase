import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addAdvocatesToFirestore() async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference advocatesCollection = firestore.collection('advocates');

  try {
    // Load JSON file
    String jsonString = await rootBundle.loadString('assets/advocates_data.json');
    
    // Decode JSON
    List<dynamic> jsonData = json.decode(jsonString);

    // Convert List<dynamic> to List<Map<String, dynamic>>
    List<Map<String, dynamic>> advocates = List<Map<String, dynamic>>.from(jsonData);

    // Upload each advocate to Firestore
    for (var advocate in advocates) {
      await advocatesCollection.add(advocate);
    }

    print("Advocates uploaded successfully!");
  } catch (e) {
    print("Error uploading advocates: $e");
  }
}
