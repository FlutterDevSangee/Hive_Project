import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiveapp/Hivescreen/hivescreen_controller.dart';
import 'package:hiveapp/Util/Hive/boxes.dart';
import 'package:hiveapp/Util/Hive/person.dart';

class HiveScreen extends StatelessWidget {
  HiveScreen({super.key});
  final hiveCntlr = Get.put(HiveController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Hive App"),
          ),
        ),
        body: GetBuilder<HiveController>(
          builder: (_) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    // width: 380,
                    // height: 40,
                    child: TextFormField(
                      controller: hiveCntlr.nameCntrlr,
                      textInputAction: TextInputAction.next,
                      textCapitalization: TextCapitalization.sentences,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.rubik(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                      onFieldSubmitted: (value) {},
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 8),
                          border: const OutlineInputBorder(),
                          hintText: "Name",
                          hintStyle: GoogleFonts.rubik(
                              color: Colors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffc9e0ff)),
                              borderRadius: BorderRadius.circular(6)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffc9e0ff)),
                              borderRadius: BorderRadius.circular(6))),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    // width: 380,
                    // height: 40,
                    child: TextFormField(
                      controller: hiveCntlr.ageCntrlr,
                      textInputAction: TextInputAction.next,
                      textCapitalization: TextCapitalization.sentences,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.rubik(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                      onFieldSubmitted: (value) {},
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 8),
                          border: const OutlineInputBorder(),
                          hintText: "Age",
                          hintStyle: GoogleFonts.rubik(
                              color: Colors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffc9e0ff)),
                              borderRadius: BorderRadius.circular(6)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffc9e0ff)),
                              borderRadius: BorderRadius.circular(6))),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      hiveCntlr.addData();
                    },
                    child: const Text("Add"),
                  ),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Divider(color: Color(0xffc9e0ff)),
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: boxPersonss!.length,
                    itemBuilder: (context, index) {
                      Person person = boxPersonss!.getAt(index);
                      return ListTile(
                        title: Text(person.name),
                        subtitle: Text("Age : ${person.age.toString()}"),
                        trailing: InkWell(
                            onTap: () {
                              hiveCntlr.deletes(index);
                            },
                            child: const Icon(Icons.delete)),
                      );
                    },
                  ))
                ],
              ),
            );
          },
        ));
  }
}
