import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   List img =[
     'assets/images/Frame 24.png',
     'assets/images/Frame 24.png',
     'assets/images/Frame 24.png',
   ];
   List ch= [
     'Relaxation',
     'Meditation',
     'Berthing',
     'Yoga'
   ];

   List ch_img= [
     'assets/images/Frame.png',
     'assets/images/Frame (1).png',
     'assets/images/Frame (2).png',
     'assets/images/Frame (3).png'
   ];

   bool isSelected = false;

   CarouselController carouselController = CarouselController();

   PageController pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Hello ,',
                  style: TextStyle(fontSize: 18),),
                TextSpan(
                  text: 'Sara Rose',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 12,),
          Text('How are you feeling today ?',style: TextStyle(color: Colors.grey),),
          SizedBox(height: 30,)
          ,const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
      child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/Frame-10.png'),
                ),
                SizedBox(
                  width: 25,
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/Frame 10-(1).png'),
                ),
                SizedBox(
                  width: 25,
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/Frame-8.png'),
                ),
                SizedBox(
                  width: 25,
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/Frame-12.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Feature',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              Text('See more >',style: TextStyle(fontSize: 18,color: Colors.green),),

            ],
          ),
      SizedBox(
      height: 200,
      child: PageView.builder(controller: pageController,itemCount: img.length,itemBuilder: (context, index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
          image: AssetImage(img[index]),
          fit: BoxFit.contain
          )
          ),
          ),),
      ),
          Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SmoothPageIndicator(
        controller: pageController,
        count: img.length,
        effect: const WormEffect(
        dotHeight: 16,
        dotWidth: 16,

        type: WormType.thinUnderground,
          activeDotColor: Colors.green,
        ),
        ),
      ],
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Exercise',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              Text('See more >',style: TextStyle(fontSize: 18,color: Colors.green),),
            ],
          ),
          Expanded(
            child: GridView.count(
              mainAxisSpacing: 0,
              crossAxisCount: 2,
              children: List.generate(4, (index) {
                return ChoiceChip(label: Row(
                  children:
                  [
                    ImageIcon(AssetImage(ch_img[index])),
                    Text(ch[index]),
                  ],
                ), selected: isSelected,onSelected: (_){
                  setState(() {
                    isSelected = _;
                  });
                },);
              }),
            ),
          ),
        ],
      ),
    );
  }
}