import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: Size.height * 0.5,
      child: Swiper(
          itemCount: 10,
          layout: SwiperLayout.TINDER,
          itemWidth: Size.width * 0.6,
          itemHeight: Size.height * 0.9,
          itemBuilder: (_, int index) {
            return const FadeInImage(
                placeholder: NetworkImage(
                    "https://raw.githubusercontent.com/GMartinUTEQ/UTEQ_T203/master/biografia/fotos/300%20x%20400.png"),
                image: NetworkImage(
                    "https://raw.githubusercontent.com/GMartinUTEQ/UTEQ_T203/master/biografia/fotos/300%20x%20400.png"));
          }),
    );
  }
}
