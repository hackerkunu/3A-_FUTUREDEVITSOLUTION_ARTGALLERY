import 'package:flutter/material.dart';
import 'details_page.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'assets/images/1.png',
    price: '',
    photographer: 'Martin Andres',
    title: 'Beginner',
    details:
        '(adj.) Showing that you are both amused and annoyed At least we got one vote, she saidin a wry smile.',
  ),
  ImageDetails(
    imagePath: 'assets/images/2.png',
    price: '',
    photographer: 'Abraham Costa',
    title: 'My Favorites',
    details: 'You don’t have any favorites yet.',
  ),
  ImageDetails(
    imagePath: 'assets/images/3.png',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My own words',
    details: 'You don’t have any Collections yet.',
  ),
  ImageDetails(
    imagePath: 'assets/images/4.png',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My collections',
    details: 'You don’t have any Collections yet. ',
  ),
  ImageDetails(
    imagePath: 'assets/images/5.jpg',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My collections',
    details: 'You don’t have any Collections yet. ',
  ),
  ImageDetails(
    imagePath: 'assets/images/6.jpg',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My collections',
    details: 'You don’t have any Collections yet. ',
  ),
  ImageDetails(
    imagePath: 'assets/images/7.jpg',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My collections',
    details: 'You don’t have any Collections yet. ',
  ),
  ImageDetails(
    imagePath: 'assets/images/8.jpg',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My collections',
    details: 'You don’t have any Collections yet. ',
  ),
  ImageDetails(
    imagePath: 'assets/images/9.jpg',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My collections',
    details: 'You don’t have any Collections yet. ',
  ),
  ImageDetails(
    imagePath: 'assets/images/10.jpg',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My collections',
    details: 'You don’t have any Collections yet. ',
  ),
  ImageDetails(
    imagePath: 'assets/images/11.jpg',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My collections',
    details: 'You don’t have any Collections yet. ',
  ),
  ImageDetails(
    imagePath: 'assets/images/12.jpg',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My collections',
    details: 'You don’t have any Collections yet. ',
  ),
  ImageDetails(
    imagePath: 'assets/images/13.jpg',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My collections',
    details: 'You don’t have any Collections yet. ',
  ),
  ImageDetails(
    imagePath: 'assets/images/13.jpg',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My collections',
    details: 'You don’t have any Collections yet. ',
  ),
  ImageDetails(
    imagePath: 'assets/images/14.jpg',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My collections',
    details: 'You don’t have any Collections yet. ',
  ),
  ImageDetails(
    imagePath: 'assets/images/15.jpg',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My collections',
    details: 'You don’t have any Collections yet. ',
  ),
  ImageDetails(
    imagePath: 'assets/images/16.jpg',
    price: '',
    photographer: 'Jamie Bryan',
    title: 'My collections',
    details: 'You don’t have any Collections yet. ',
  ),
];

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 17, 17),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              'GALLERY FOR ART',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 64, 255, 150),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              title: _images[index].title,
                              photographer: _images[index].photographer,
                              price: _images[index].price,
                              details: _images[index].details,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String price;
  final String photographer;
  final String title;
  final String details;
  ImageDetails({
    required this.imagePath,
    required this.price,
    required this.photographer,
    required this.title,
    required this.details,
  });
}
