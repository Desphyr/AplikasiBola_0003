import 'package:flutter/material.dart';
import 'detail.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  static const String routeName = '/form';

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  
  @override
  void dispose() {
    nameController.dispose();
    positionController.dispose();
    numberController.dispose();
    nationController.dispose();
    ageController.dispose();
    heightController.dispose();
    super.dispose();
  }
  final positionController = TextEditingController();
  final numberController = TextEditingController();
  final nationController = TextEditingController();
  final ageController = TextEditingController();
  final heightController = TextEditingController();
  String genderController = "Pria";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pemain")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: "Nama",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (value) {
                        if (value == null || value.isEmpty) {
                            return 'Mohon masukkan nama pemain';
                        }
                        return null;
                    },
                  ),

                  const SizedBox(height: 10),

                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: positionController,
                    decoration: const InputDecoration(
                      labelText: "Posisi pemain",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (value) {
                        if (value == null || value.isEmpty) {
                            return 'Please enter Position value.';
                        }

                        if(!['Penyerang', 'Gelandang', 'Bek', 'Penjaga Gawang'].contains(value)){
                            return 'Please enter valid Position value. like Penyerang, Gelandang, Bek, Penjaga Gawang';
                        }
                        return null;
                    },
                  ),

                  const SizedBox(height: 10),

                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: numberController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: "Nomor Punggung",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (value) {
                        if (value == null || value.isEmpty) {
                            return 'Please enter Number value.';
                        }
                        final parsed = int.tryParse(value);
                        if (parsed == null) {
                            return 'Please enter a valid number.';
                        }
                        return null;
                    },
                  ),

                  const SizedBox(height: 10),

                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: ageController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: "Usia Pemain",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (value){
                    if (value == null || value.isEmpty) {
                      return 'Please enter Age value.';
                    }
                    final parsed = int.tryParse(value);
                    if (parsed == null) {
                      return 'Please enter a valid number.';
                    }
                    if (parsed < 10 || parsed > 50) {
                      return 'Age must be between 10 and 50.';
                    }
                    return null;
                    },
                  ),

                  const SizedBox(height: 10),

                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: heightController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: "Tinggi (cm)",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (value) {
                        if (value == null || value.isEmpty) {
                            return 'Please enter Height value.';
                        }
                        final parsed = int.tryParse(value);
                        if (parsed == null) {
                            return 'Please enter a valid number.';
                        }
                        return null;
                    },
                  ),

                  const SizedBox(height: 10),

                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: nationController,
                    decoration: const InputDecoration(
                      labelText: "Kebangsaan",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (value) {
                        if (value == null || value.isEmpty) {
                            return 'Masukkan asal negara pemain.';
                        }
                        return null;
                    },
                  ),

                   const SizedBox(height: 10),

                  const Text(
                    "Jenis Kelamin: ",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Row(
                    children: [
                      Checkbox(
                        value: genderController == "Pria",
                        onChanged: (bool? value) {
                          setState(() {
                            genderController = value! ? "Pria" : "Wanita";
                          });
                        },
                      ),
                      const Text("Pria"),
                      const SizedBox(width: 30),
                      Checkbox(
                        value: genderController == "Wanita",
                        onChanged: (bool? value) {
                          setState(() {
                            genderController = value! ? "Wanita" : "Pria";
                          });
                        },
                      ),
                      const Text("Wanita"),
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
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 2,
                      ),
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          final heightInCm = double.parse(heightController.text);
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            DetailPage(name: nameController.text, position: positionController.text, number: int.parse(numberController.text), nation: nationController.text, age: int.parse(ageController.text), height: heightInCm, gender: genderController)
                          ));
                        }
                      },
                      child: const Text("Simpan"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}