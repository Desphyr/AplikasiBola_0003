import 'package:flutter/material.dart';
import 'home.dart';

class DetailPage extends StatefulWidget {
  final String name;
  final String position;
  final int number;
  final String nation;
  final int age;
  final double height;
  final String gender;

  const DetailPage({
    super.key,
    required this.name,
    required this.position,
    required this.number,
    required this.nation,
    required this.age,
    required this.height,
    required this.gender,
  });

  

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late double heightM;

  int get number => widget.number;
  int get age => widget.age;

  @override
  void initState() {
    super.initState();
    heightM = widget.height / 100;
  }

  Widget buildDetailRow(String label, String value) {
    return Row(
      children: [
        Text(
          "$label: ",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            buildDetailRow("Nama", widget.name),
            const SizedBox(height: 10),
            buildDetailRow("Posisi Pemain", widget.position),
            const SizedBox(height: 10),
            buildDetailRow("Nomor Punggung", number.toString()),
            const SizedBox(height: 10),
            buildDetailRow("Kebangsaan", widget.nation),
            const SizedBox(height: 10),
            buildDetailRow("Usia Pemain", age.toString()),
            const SizedBox(height: 10),
            buildDetailRow("Tinggi Pemain", "$heightM Meter"),
            const SizedBox(height: 10),
            buildDetailRow("Jenis Kelamin", widget.gender),

            const SizedBox(height: 30),

            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Kembali"),
              ),
            ),

            const SizedBox(height: 10),

             SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage()), (route) => false);
                },
                child: const Text("Save Data"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}