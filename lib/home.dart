import 'package:flutter/material.dart';
import 'form.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/persib.png', height: 40),
            const SizedBox(width: 10),
            const Text('Home Page', style: TextStyle(color: Colors.white)),
            const SizedBox(width: 10),
            const Icon(Icons.settings, color: Colors.white),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Jadwal Pertandingan Persib Bandung",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 10),

            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Persib Bandung",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )
                ), Text("VS", 
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )
                ), Text("Arema FC",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )
                )],
              ),
            ),

           const Center(
            child: Column(children: [
              Text("Tanggal: 25 Desember 2024",
                  style: TextStyle(
                    fontSize: 14, 
                  )
              ),
              SizedBox(height: 5),
              Text("Waktu: 19:00 WIB",
                  style: TextStyle(
                    fontSize: 14, 
                  )
              ),
              SizedBox(height: 5),
              Text("Lokasi: Stadion Gelora Bandung Lautan Api",
                  style: TextStyle(
                    fontSize: 14, 
                  )
              ),
            ],),
           ),

            const SizedBox(height: 30),

           const Text("Menu", 
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
           ),

            const SizedBox(height: 10),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.person, size: 40, color: Colors.blue),
                    SizedBox(height: 5),
                    Text("Player", 
                      style: TextStyle(
                        fontSize: 14, 
                      )
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.timer, size: 40, color: Colors.blue),
                    SizedBox(height: 5),
                    Text("Jadwal", 
                      style: TextStyle(
                        fontSize: 14, 
                      )
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.bar_chart, size: 40, color: Colors.blue),
                    SizedBox(height: 5),
                    Text("Klasemen", 
                      style: TextStyle(
                        fontSize: 14, 
                      )
                    ),
                  ],
                ),

                 Column(
                  children: [
                    Icon(Icons.shop, size: 40, color: Colors.blue),
                    SizedBox(height: 5),
                    Text("Merchandise", 
                      style: TextStyle(
                        fontSize: 14, 
                      )
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 45, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                          ),
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const FormPage()));
                },
                child: const Text('Tambah Pemain'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
