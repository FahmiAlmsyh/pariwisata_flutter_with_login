import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detail extends StatelessWidget {
  const Detail({
    super.key,
    required this.dataDetail,
  });

  final dataDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detail"),
          backgroundColor: const Color(0xfff1f1f1),
        ),
        body: Container(
          color: const Color(0xfff1f1f1),
          child: Container(
            margin: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    dataDetail['foto']!,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(dataDetail['nama']!, style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600
                ),),
                const SizedBox(
                  height: 5,
                ),
                Text(dataDetail['deskripsi']!, style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w300
                ),)
              ],
            ),
          ),
        ));
  }
}
