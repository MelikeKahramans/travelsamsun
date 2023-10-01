import 'dart:math';

Random random = Random();

class Destination {
  final int? id, price, review;
  final List<String>? image;
  final String? name, description, category, location;
  final double? rate;

  Destination(
      {this.name,
      this.price,
      this.id,
      this.category,
      this.description,
      this.review,
      this.image,
      this.rate,
      this.location});
}

List<Destination> destinations = [
  Destination(
      id: 2,
      name: "Kunduz Ormanları",
      category: 'popular',
      image: [
        "samsun1/kunduz.jpg",
      ],
      location: "Vezirköprü, Samsun",
      review: random.nextInt(300) + 25,
      price: random.nextInt(95) + 23,
      description:
          "Samsun'un Vezirköprü ilçe merkezine 50 kilometre uzaklıktaki 1700 rakımlı Kunduz Ormanları'nda gürgen, kayın, sarıçam ve ıhlamur ağaçları hazan mevsiminin tüm güzelliğini yansıtarak ziyaretçilerini büyülüyor. ",
      rate: 4.6),
  Destination(
      id: 7,
      price: random.nextInt(95) + 23,
      name: "Karacaören Şelalesi",
      image: [
        "samsun2/karaca1.jpg",
        "samsun2/karaca2.jpg",
      ],
      review: random.nextInt(300) + 25,
      category: "popular",
      location: "Salıpazarı, Samsun",
      description:
          "Şelale çevresindeki ormanda Kayın, Kızılağaç, Gürgen, Kestane, Taflan, gibi Karadeniz bitki kuşağına ait ağaçlar bulunmaktadır. Karacaören Şelalesinin düşüsü yaklaşık 85 metre olup su miktarı mevsimsel olarak belirgin farklılık göstermektedir.",
      rate: 4),
  Destination(
      id: 3,
      name: "Ladik Gölü",
      review: random.nextInt(300) + 25,
      price: 0,
      category: 'recommend',
      image: [
        "samsun1/ladikgol1.jpg",
        "samsun1/ladikgol2.jpg",
        "samsun1/ladikgol3.jpg",
      ],
      location: "Ladik, Samsun",
      description:
          "Ladik Gölü, Samsun'un Ladik ilçe merkezinin doğusunda bulunan ve 870 hektarlık alana sahip olan bir göl. Ladik Gölü, üzerinde yüzen adacıklarıyla ünlüdür.",
      rate: 4.5),
  Destination(
      id: 8,
      name: "Şahinkaya Kanyonu",
      review: random.nextInt(300) + 25,
      price: random.nextInt(95) + 23,
      category: "popular",
      image: [
        "samsun2/sahin1.jpg",
        "samsun2/sahin2.jpg",
        "samsun2/sahin3.jpg",
      ],
      location: "Vezirköprü, Samsun",
      description:
          "Vezirköprü’nün 17 km. kadar kuzeybatısında bulunan Kanyon, Altınkaya barajının en dar yeri olma özelliği ile de dikkat çeker ve yaklaşık 1500 metre uzunluğundadır.",
      rate: 4),
  Destination(
      id: 1,
      name: "Miliç Sahili",
      review: random.nextInt(300) + 25,
      price: 15,
      category: 'recommend',
      image: [
        "samsun1/milic1.jpg",
        "samsun1/milic2.jpg",
        "samsun1/milic3.jpg",
      ],
      location: "Terme, Samsun",
      description:
          "Terme'nin eşsiz doğası eşliğinde çayınızı yudumlayabileceğniz, doğa ile içiçe bir deneyim yaşayabileceğiniz benzersiz bir mekan. Sahil tesisleri, park ve yürüyüş yolları ile Terme'nin en gözde mekanlarından.",
      rate: 4.4),
  Destination(
      id: 9,
      name: "Tekkeköy Mağaraları",
      review: random.nextInt(300) + 25,
      category: "popular",
      price: random.nextInt(95) + 23,
      image: [
        "samsun2/tmagara1.jpg",
        "samsun2/tmagara2.jpg",
        "samsun2/tmagara3.jpg",
      ],
      location: "Tekkeköy, Samsun",
      description:
          "Tekkeköy Mağaraları Arkeoloji Vadisi, Samsun'un Tekkeköy ilçesinde yer alan ve yerleşim geçmişi Eski Taş Çağına dek uzanan arkeolojik sit alanı.",
      rate: 4),
  Destination(
      id: 12,
      name: "Kabaceviz Şelaleri",
      category: "recommend",
      review: random.nextInt(300) + 25,
      price: 0,
      image: [
        "samsun2/kceviz1.jpg",
        "samsun2/kceviz2.jpg",
        "samsun2/kceviz3.jpg",
      ],
      location: "Tekkeköy, Samsun",
      description:
          "Kabaceviz Şelaleleri, üç aşamadan oluşuyor. Şelalelerin olduğu bölge turizm açısından önemli bir yere sahip. Çünkü burada dağcılık, trekking, foto safari yapılabiliyor. Bunların yanı sıra piknik yapma imkanı da bulunuyor. ",
      rate: 4.4),
  Destination(
      id: 14,
      name: "Fener Plajı",
      review: random.nextInt(300) + 25,
      category: "recommend",
      price: 50,
      image: [
        "samsun1/fener1.jpg",
        "samsun1/fener2.jpg",
      ],
      location: "İlkadım, Samsun",
      description:
          "Samsun’un batısında yer alan, Cenevizliler zamanında liman olarak kullanılanve adını buradan alan Fener Plajı şehir merkezine 2 km, havaalanına ise 26 km uzaklıktadır.",
      rate: 4.4),
  Destination(
      id: 13,
      review: random.nextInt(300) + 25,
      price: 0,
      name: "Amazon Tabiat Parkı",
      category: "recommend",
      image: [
        "samsun2/amazon1.jpg",
        "samsun2/amazon2.jpg",
        "samsun2/amazon3.JPG",
      ],
      location: "Terme, Samsun",
      description:
          "Amazon Tabiat Parkı Samsun ilinin Terme ilçesi mülki sınırlarında bulunan tabiat parkıdır. Samsun merkeze 90, Terme merkeze 20 kilometre uzaklıktadır. ",
      rate: 4.4),
  Destination(
      review: random.nextInt(300) + 25,
      id: 15,
      name: "Kızılırmak-Kuş Cenneti",
      category: "popular",
      image: [
        "samsun1/kcenneti1.jpg",
        "samsun1/kcenneti2.jpg",
        "samsun1/kcenneti3.jpg",
      ],
      price: random.nextInt(95) + 23,
      location: "Bafra, Samsun",
      description:
          "Kızılırmak Deltası, 56 bin hektar genişliğinde irili ufaklı 20 adet göl ile büyük bataklık ve sazlık alanlardan oluşması, çok büyük bir alana sahip olması ve de barındırdığı kuş sayısı bakımından yalnızca Türkiye için değil, aynı zamanda tüm dünya ekolojisi için büyük öneme sahiptir.",
      rate: 4.4),
];
