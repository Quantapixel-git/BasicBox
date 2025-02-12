import 'package:ecom2/core/common/widgets/border_button.dart';
import 'package:ecom2/core/common/widgets/news_card.dart';
import 'package:ecom2/core/router/route_name.dart';
import 'package:ecom2/features/events/screens/events_screen.dart';
import 'package:ecom2/features/home/widgets/trending_product_card.dart';
import 'package:ecom2/features/products/screens/product_screen.dart';
import 'package:ecom2/features/search/search_screen.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static final route = "home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 75,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/branding/logo.png",
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              "Basics \n Box",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 6.0,
            ),
            SizedBox(
              height: 34,
              child: VerticalDivider(
                thickness: 3,
                width: 0,
                color: blackColor,
              ),
            ),
            SizedBox(
              width: 11.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order Now & \n Delivered in Minutes",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: AppColors.primary,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 26.0,
                    right: 26.0,
                    bottom: 25,
                    top: 7,
                  ),
                  child: SearchBar(
                    onTap: () {
                      context.pushNamed(SearchScreen.route);
                    },
                    side: WidgetStatePropertyAll(
                      BorderSide(
                        color: Color(0xFF95989A),
                      ),
                    ),
                    hintStyle: WidgetStatePropertyAll(TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.searchHint,
                    )),
                    hintText: "Search 'Eat's ",
                    leading: Icon(
                      Icons.search,
                      color: blackColor,
                      size: 20,
                    ),
                    trailing: [
                      Icon(
                        Icons.mic,
                        color: blackColor,
                        size: 20,
                      )
                    ],
                    elevation: WidgetStatePropertyAll(2),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    backgroundColor: WidgetStatePropertyAll(whiteColor),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    bottom: 36.0, left: 26.0, right: 26.0),
                color: AppColors.primary,
                child: Container(
                  height: 154,
                  decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.circular(17.0),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 14,
                  right: 14,
                  bottom: 31,
                ),
                color: AppColors.primary,
                child: SizedBox(
                  height: 140,
                  child: Row(
                    children: [
                      Container(
                        width: 115,
                        decoration: BoxDecoration(
                          color: blackColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.redeem,
                              color: AppColors.primary,
                              size: 80,
                            ),
                            Container(
                              child: Text(
                                "Quests & Rewards",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: AppColors.primary),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: blackColor.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://img.freepik.com/free-vector/special-offer-modern-sale-banner-template_1017-20667.jpg",
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  height: 155,
                  color: whiteColor,
                  alignment: Alignment.center,
                  child: ListView.separated(
                    padding: const EdgeInsets.only(
                      bottom: 27,
                      top: 35,
                      left: 14,
                      right: 14,
                    ),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 30.0,
                      );
                    },
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          context.pushNamed(ProductScreen.route);
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFFD6EBE4),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 3),
                                    color: blackColor.withValues(alpha: 0.5),
                                    blurRadius: 5,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Icon(
                                Icons.toll_outlined,
                                color: Color(
                                  0xFF539780,
                                ),
                                size: 40,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Eats",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF646869),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  )),
              Container(
                padding: const EdgeInsets.only(
                  bottom: 31.0,
                  left: 25.0,
                  right: 25.0,
                  top: 13.0,
                ),
                color: Color(0xFFE0E0E0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.trending_up,
                          color: Colors.green,
                          size: 32,
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Text(
                          "Trending",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://img.freepik.com/free-vector/world-vegan-day-sale-banner-template_23-2149741503.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 31.0,
                    ),
                    MasonryGridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return TrendingProductCard(
                          onTap: () {},
                        );
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/06/84/57/02/1000_F_684570297_KrUJd4FcKfR7oPq78Ez9NdRF8tVyUYWO.jpg",
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 9.0,
                    ),
                    Text(
                      "Events",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 9.0,
                    ),
                    MasonryGridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return TrendingProductCard(
                          onTap: () {},
                        );
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Special Offers",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    MasonryGridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return TrendingProductCard(
                          onTap: () {},
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "News",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: AppColors.border,
                          thickness: 2,
                          height: 40,
                        );
                      },
                      itemBuilder: (context, index) {
                        return NewsCard(
                          onTap: () {
                            context.pushNamed(EventsScreen.route);
                          },
                        );
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    BorderButton(
                      fullWidth: true,
                      onTap: () {
                        context.pushNamed(EventsScreen.route);
                      },
                      text: "See more News",
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
