import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AvatarScreen'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 182, 182, 182),
              child: Text('SL'),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 100,
        backgroundImage: NetworkImage(
            'https://ca-times.brightspotcdn.com/dims4/default/b1bd95b/2147483647/strip/true/crop/5311x3541+0+0/resize/1200x800!/quality/80/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F16%2Fa1%2F1403e020bd032298d908b42d9a82%2Fcfdj8kpbg-bz-elgrfd-d-sjiunff9taujxsgoaswdhzic8fr5lvaprlzlmihw7qmgmaw-tctmuw21tcokgv-cucvr-7uuhdirwmmhmuby-xdthh6wkl1qdqvclloowb6een4n3tevfairwzqxu5qs-0zizrzkisoijcyjiowhdmokjzkykadwfvratski3rmuthvtx67ioxu8-22hp2gngzzdse3kuj74e8sqastix6yok4w-ua695zcyxxknf4zm5o3xa2myv6ndbue5xinwk2rlwbrtcczyctxcezdoezal9-5ummh4yrretjnybf9mjs8as3qqwc801as2m7gdljbxb1l7ulyvezroul23xsbok2ht949j6kwn3x5pnd9adcdp-mb9kktg5aydfgbelq7mo'),
      )),
    );
  }
}
