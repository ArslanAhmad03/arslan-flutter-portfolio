

import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _desController = TextEditingController();

  bool _nameValidate = false;
  bool _emailValidate = false;
  bool _desValidate = false;

  // Future<void> _uploadData() async {
  //   try {
  //     await FirebaseFirestore.instance.collection('Contacts').add({
  //       'Name': _nameController.text,
  //       'Email': _emailController.text,
  //       'Description': _desController.text,
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: const Text(
            "Contact",
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          width: screenWidth < 900
              ? screenWidth * 0.9
              : ((screenWidth * 0.7) / 2),
          decoration: BoxDecoration(
            color: Color(0xFF1A2036),
          ),
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Name',
                  label: Text('Name'),
                  border: OutlineInputBorder(),
                  errorText: _nameValidate ? 'enter name' : null,
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  label: Text('Email'),
                  border: OutlineInputBorder(),
                  errorText: _emailValidate ? 'enter email' : null,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _desController,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Description',
                  label: Text('Description'),
                  border: OutlineInputBorder(),
                  alignLabelWithHint: true,
                  errorText: _desValidate ? 'enter description' : null,
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () async {
                    if (_nameController.text.isEmpty) {
                      setState(() {
                        _nameValidate = true;
                      });
                    } else if (_emailController.text.isEmpty) {
                      setState(() {
                        _emailValidate = true;
                      });
                    } else if (_desController.text.isEmpty) {
                      setState(() {
                        _desValidate = true;
                      });
                    } else {
                      // _uploadData();

                      _nameController.text = '';
                      _emailController.text = '';
                      _desController.text = '';

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Send Message'),
                        ),
                      );
                    }
                  },
                  child: const Text('Send Message'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
