import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_app/detail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var gambarGunungFuji = [
    "https://www.blibli.com/friends-backend/wp-content/uploads/2023/08/B800788-Cover-Pantai-yang-Ada-di-Kalimantan.jpg",
    "https://www.blibli.com/friends-backend/wp-content/uploads/2024/06/B151685-Cover-kegiatan-di-pantai.jpg",
    "https://www.blibli.com/friends-backend/wp-content/uploads/2023/03/B200447-Cover-pantai-yang-terkenal-di-thailand.jpg",
    "https://nagantour.com/wp-content/uploads/2023/06/Pantai-Terindah-Di-Yogyakarta.jpg",
    "https://haluoleonews.id/wp-content/uploads/2023/12/WhatsApp-Image-2023-12-10-at-19.40.46.jpeg"
  ];

  List<Map<String, dynamic>> dataPariwisata = [
    {
      "foto":
          "https://kebudayaan.kemdikbud.go.id/bkborobudur/wp-content/uploads/sites/12/2016/07/budur1.jpg",
      "nama": "Candi Borobudur",
      "deskripsi":
          "Candi Borobudur adalah candi Buddha terbesar di dunia yang terletak di Magelang, Jawa Tengah. Dibangun pada abad ke-9, candi ini merupakan salah satu situs warisan dunia UNESCO."
    },
    {
      "foto":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/TanahLot_2014.JPG/1200px-TanahLot_2014.JPG",
      "nama": "Tanah Lot",
      "deskripsi":
          "Tanah Lot adalah pura Hindu yang terletak di atas batu karang di tepi pantai di Tabanan, Bali. Pura ini terkenal dengan pemandangan matahari terbenamnya yang spektakuler."
    },
    {
      "foto":
          "https://awsimages.detik.net.id/community/media/visual/2019/03/08/96d60356-f54f-4b9d-a5af-4cbc8c24f3c7_43.jpeg?w=1200",
      "nama": "Gunung Bromo",
      "deskripsi":
          "Gunung Bromo adalah gunung berapi aktif yang berada di Jawa Timur. Gunung ini terkenal dengan pemandangan matahari terbitnya yang memukau dan lautan pasir yang luas."
    },
    {
      "foto":
          "https://v1.indonesia.travel/content/dam/indtravelrevamp/en/trip-ideas/10-alasan-kenapa-kamu-harus-mengunjungi-taman-nasional-komodo/10.jpg",
      "nama": "Taman Nasional Komodo",
      "deskripsi":
          "Taman Nasional Komodo adalah kawasan konservasi yang melindungi habitat komodo, kadal terbesar di dunia. Taman ini terletak di Nusa Tenggara Timur dan juga dikenal dengan keindahan alam bawah lautnya."
    },
    {
      "foto":
          "https://upload.wikimedia.org/wikipedia/commons/a/ae/Indonesia_-_Lake_Toba_%2826224127503%29.jpg",
      "nama": "Danau Toba",
      "deskripsi":
          "Danau Toba adalah danau vulkanik terbesar di dunia, terletak di Sumatera Utara. Di tengah danau ini terdapat Pulau Samosir, yang menjadi salah satu daya tarik wisata utama di kawasan ini."
    },
    {
      "foto":
          "https://asset.kompas.com/crops/7-0zX9IZsHSzcZZz3bMTdMZq-oE=/0x0:1200x800/750x500/data/photo/2021/08/19/611e162fed8b4.jpg",
      "nama": "Kawah Ijen",
      "deskripsi":
          "Kawah Ijen adalah gunung berapi yang terkenal dengan fenomena api biru yang langka. Kawah ini juga memiliki danau asam terbesar di dunia, dengan pemandangan yang menakjubkan."
    },
    {
      "foto":
          "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcSv1XKQjb6brI5MeRymNstjwBzh6sITI3byS-TUrtuRztGwTkw55laucPqywAz-MOpcba9wD5W5NOGpcItz1cJmFsAEdfvhUaq3PidNQw",
      "nama": "Pura Ulun Danu Bratan",
      "deskripsi":
          "Pura Ulun Danu Bratan adalah pura air yang terletak di tepi Danau Bratan di Bali. Pura ini menjadi salah satu ikon pariwisata Bali dengan latar belakang pegunungan dan danau yang indah."
    },
    {
      "foto":
          "https://lp-cms-production.imgix.net/2022-03/500pxRF_99970715.jpg",
      "nama": "Tana Toraja",
      "deskripsi":
          "Tana Toraja di Sulawesi Selatan terkenal dengan adat dan budayanya yang unik, termasuk upacara pemakaman dan rumah adat Tongkonan yang khas."
    },
    {
      "foto":
          "https://upload.wikimedia.org/wikipedia/commons/8/88/Raja_Ampat%2C_Mutiara_Indah_di_Timur_Indonesia.jpg",
      "nama": "Kepulauan Raja Ampat",
      "deskripsi":
          "Kepulauan Raja Ampat di Papua Barat dikenal sebagai salah satu destinasi menyelam terbaik di dunia. Kepulauan ini memiliki keanekaragaman hayati laut yang luar biasa "
    },
    {
      "foto":
          "https://assets-a1.kompasiana.com/items/album/2023/11/16/adi-2-65552ce0ee794a0e3f102ec2.jpg",
      "nama": "Ngarai Sianok",
      "deskripsi":
          "Ngarai Sianok adalah ngarai yang terletak di Sumatera Barat. Tempat ini menawarkan pemandangan lembah yang hijau dengan tebing-tebing curam yang menakjubkan."
    }
  ];

  List<Map<String, dynamic>> dataHotel = [
    {
      "nama": "The Ritz-Carlton",
      "foto":
          "https://cache.marriott.com/content/dam/marriott-renditions/JKTRZ/jktrz-grand-lobby-3002-hor-feat.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1920px:*",
      "lokasi": "Jakarta, Indonesia",
      "rating": 4.8,
    },
    {
      "nama": "Four Seasons Hotel",
      "foto":
          "https://media.cntraveler.com/photos/5f625441b364bbb06632741d/16:9/w_2560,c_limit/four-seasons-las-vegas.jpg",
      "lokasi": "Paris, France",
      "rating": 4.9,
    },
    {
      "nama": "The Plaza",
      "foto":
          "https://cf.bstatic.com/xdata/images/hotel/max1024x768/496718760.jpg?k=608ceb5268219094ffb5f99c00dd1b869daf59485ca2ce071c49a9bd2feeba4f&o=&hp=1",
      "lokasi": "New York, USA",
      "rating": 4.7,
    },
    {
      "nama": "Marina Bay Sands",
      "foto":
          "https://www.visitsingapore.com/content/dam/desktop/global/see-do-singapore/recreation-leisure/marina-bay-sands-carousel01-rect.jpg",
      "lokasi": "Singapore",
      "rating": 4.6,
    },
    {
      "nama": "Burj Al Arab",
      "foto":
          "https://www.kayak.co.id/rimg/himg/74/05/e4/leonardo-12863-177478294-689353.jpg?width=1366&height=768&crop=true",
      "lokasi": "Dubai, UAE",
      "rating": 4.9,
    },
    {
      "nama": "Hotel de Crillon",
      "foto":
          "https://www.rosewoodhotels.com/content/dam/rosewoodhotels/property/hotel-de-crillon/en/images/gallery/htel-de-crillon-suite-duc-de-crillon-209-living-by-reto-guntli.jpg",
      "lokasi": "Paris, France",
      "rating": 4.8,
    },
    {
      "nama": "Mandarin Oriental",
      "foto":
          "https://media.cnn.com/api/v1/images/stellar/prod/190412120305-london-2017-exterior-facade-dusk.jpg?q=w_3034,h_1707,x_0,y_0,c_fill",
      "lokasi": "London, England",
      "rating": 4.7,
    },
    {
      "nama": "The Peninsula",
      "foto":
          "https://www.hshgroup.com/-/media/images/hsh/siteimages/propertyimages/projects/peninsulahkjpg.jpeg",
      "lokasi": "Hong Kong",
      "rating": 4.8,
    },
    {
      "nama": "Hotel Majestic",
      "foto":
          "https://www.abercrombiekent.co.uk/-/media/abercrombieandkent/images/accommodation/asia/malaysia/majestic-hotel-kuala-lumpur-1.jpg?w=1920&h=940",
      "lokasi": "Kuala Lumpur, Malaysia",
      "rating": 4.6,
    },
    {
      "nama": "Taj Mahal Palace",
      "foto":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Mumbai_Aug_2018_%2843397784544%29.jpg/1200px-Mumbai_Aug_2018_%2843397784544%29.jpg",
      "lokasi": "Mumbai, India",
      "rating": 4.9,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color(0xfff1f1f1),
        child: Column(
          children: [
            // Carousel
            FlutterCarousel(
              items: gambarGunungFuji.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Card(
                      child: Container(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          item,
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                          alignment: Alignment.center,
                        ),
                      )),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 200,
                showIndicator: true,
                autoPlay: true,
                enableInfiniteScroll: true,
              ),
            ),

            // About
            Container(
              padding: const EdgeInsets.symmetric(vertical: 18),
              decoration: const BoxDecoration(color: Color(0xfff1f1f1)),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 15),
                    child: Center(
                      child: Text(
                        "Tentang Aplikasi",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typeset"
                      "ting industry. Lorem Ipsum has been the industry's standard "
                      "dummy text ever since the 1500s,",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            // Pariwisata
            Container(
              decoration: const BoxDecoration(color: Color(0xfff1f1f1)),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 6),
                    child: Center(
                      child: Text(
                        "Pariwisata",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    height: 210,
                    child: ListView.builder(
                      itemCount: dataPariwisata.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Detail(
                                  dataDetail: dataPariwisata[index],
                                ),
                              ),
                            );
                          },
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: Image.network(
                                    dataPariwisata[index]['foto']!,
                                    height: 150,
                                    width: 300,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17),
                                  child: Text(
                                    dataPariwisata[index]['nama']!,
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Hotel
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 6),
                    child: Text(
                      "Hotel",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    height: 230,
                    child: ListView.builder(
                        itemCount: dataHotel.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Stack(children: [
                            Card(
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: Image.network(
                                      dataHotel[index]['foto']!,
                                      height: 150,
                                      width: 300,
                                      fit: BoxFit.cover,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 300,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 17),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              dataHotel[index]['nama']!,
                                              style: GoogleFonts.poppins(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              dataHotel[index]['lokasi']!,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        Row(children: [
                                          const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 18,
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            dataHotel[index]["rating"]
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ]),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Positioned(
                              top: 10,
                              right: 12,
                              child: Icon(
                                Icons.bookmark_outline_outlined,
                                color: Colors.white,
                                size: 28,
                              ),
                            )
                          ]);
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
