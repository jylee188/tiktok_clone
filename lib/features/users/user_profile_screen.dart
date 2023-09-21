import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('주용'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.gear,
                  size: Sizes.size20,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  foregroundColor: Colors.teal,
                  child: Text('주용'),
                ),
                Gaps.v20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '@주용',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: Sizes.size18,
                      ),
                    ),
                    Gaps.h5,
                    FaIcon(
                      FontAwesomeIcons.solidCircleCheck,
                      size: Sizes.size16,
                      color: Colors.blue.shade500,
                    ),
                  ],
                ),
                Gaps.v24,
                SizedBox(
                  height: Sizes.size48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text(
                            '97',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Sizes.size18,
                            ),
                          ),
                          Gaps.v3,
                          Text(
                            'Following',
                            style: TextStyle(
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        width: Sizes.size32,
                        thickness: Sizes.size1,
                        color: Colors.grey.shade400,
                        indent: Sizes.size14,
                        endIndent: Sizes.size14,
                      ),
                      Column(
                        children: [
                          const Text(
                            '10.5M',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Sizes.size18,
                            ),
                          ),
                          Gaps.v3,
                          Text(
                            'Followers',
                            style: TextStyle(
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        width: Sizes.size32,
                        thickness: Sizes.size1,
                        color: Colors.grey.shade400,
                        indent: Sizes.size14,
                        endIndent: Sizes.size14,
                      ),
                      Column(
                        children: [
                          const Text(
                            '194.3M',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Sizes.size18,
                            ),
                          ),
                          Gaps.v3,
                          Text(
                            'Likes',
                            style: TextStyle(
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Gaps.v14,
                FractionallySizedBox(
                  widthFactor: 0.33,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: Sizes.size12,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          Sizes.size4,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Follow',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Gaps.v14,
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Sizes.size32,
                  ),
                  child: Text(
                    'All highlights and where to watch live matches on FIFA+ I wonder how it would look',
                    textAlign: TextAlign.center,
                  ),
                ),
                Gaps.v14,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.link,
                      size: Sizes.size12,
                    ),
                    Gaps.h4,
                    Text(
                      'https://nomadcoder.co',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Gaps.v20,
                Container(
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: Colors.grey.shade200,
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.symmetric(
                      vertical: Sizes.size10,
                    ),
                    labelColor: Colors.black,
                    tabs: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Sizes.size20,
                        ),
                        child: Icon(Icons.grid_4x4_rounded),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Sizes.size20,
                        ),
                        child: FaIcon(FontAwesomeIcons.heart),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    children: [
                      GridView.builder(
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        padding: const EdgeInsets.symmetric(
                          horizontal: Sizes.size6,
                        ),
                        itemCount: 20,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: Sizes.size10,
                          crossAxisSpacing: Sizes.size10,
                          childAspectRatio: 9 / 20,
                        ),
                        itemBuilder: (context, index) => Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  Sizes.size4,
                                ),
                              ),
                              child: AspectRatio(
                                aspectRatio: 9 / 16,
                                child: FadeInImage.assetNetwork(
                                  fit: BoxFit.cover,
                                  placeholder: "assets/images/placeholder.jpg",
                                  image:
                                      "https://source.unsplash.com/random/200x${355 + index}",
                                ),
                              ),
                            ),
                            Gaps.v10,
                            const Text(
                              'This is a very long caption for my tiktok that im upload just now currently.',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: Sizes.size16 + Sizes.size2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Gaps.v8,
                            DefaultTextStyle(
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w600,
                              ),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 12,
                                    child: Text('주용'),
                                  ),
                                  Gaps.h4,
                                  const Expanded(
                                    child: Text(
                                      'Juyong_Lee_Birth_2001_08_08',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Gaps.h4,
                                  FaIcon(
                                    FontAwesomeIcons.heart,
                                    size: Sizes.size16,
                                    color: Colors.grey.shade600,
                                  ),
                                  Gaps.h2,
                                  const Text(
                                    '2.5M',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Center(
                        child: Text('Page two'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
