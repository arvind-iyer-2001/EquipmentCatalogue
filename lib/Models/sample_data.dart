import 'equipmentModels.dart';

const Categories = const [
  Category(
    id: 'mc1',
    title: 'Cables',
  ),
  Category(
    id: 'mc2',
    title: 'Wired Microphones',
  ),
  Category(
    id: 'mc3',
    title: 'Wireless Microphones',
  ),
  Category(
    id: 'mc4',
    title: 'DI Box',
  ),
  Category(
    id: 'mc5',
    title: 'Monitor',
  ),
  Category(
    id: 'mc6',
    title: 'Mic Stand',
  ),
  Category(
    id: 'mc7',
    title: 'Monitors',
  ),
  Category(
    id: 'mc8',
    title: 'Amplifiers',
  ),
  Category(
    id: 'mc8',
    title: 'Sound Mixer',
  ),
  Category(
    id: 'mc9',
    title: 'd-Snake',
  ),
  Category(
    id: 'mc10',
    title: 'Light Mixer',
  ),
  Category(
    id: 'mc11',
    title: '',
  ),
];

const SubCategories = const [
  Category(
    id: 'sc1',
    title: 'XLR Male to Female',
  ),
  Category(
    id: 'sc2',
    title: 'XLR Male to Male',
  ),
  Category(
    id: 'sc3',
    title: 'XLR Female to Female',
  ),
  Category(
    id: 'sc4',
    title: 'TRS-3.5mm to TRS-3.5mm',
  ),
  Category(
    id: 'sc5',
    title: 'TRS-3.5\' to 2 X XLR Female',
  ),
  Category(
    id: 'sc6',
    title: 'TS-5\' to TS-5\'',
  ),
  Category(
    id: 'sc7',
    title: 'TS-5\' to XLR Female',
  ),
  Category(
    id: 'sc8',
    title: 'XLR Male to TS-5\'',
  ),
  Category(
    id: 'sc9',
    title: 'Speak-On',
  ),
  Category(
    id: 'sc10',
    title: 'RCA',
  ),
  Category(
    id: 'sc11',
    title: 'Power Extensions',
  ),
  Category(
    id: 'sc12',
    title: 'HDMI',
  ),
  Category(
    id: 'sc13',
    title: 'VGA',
  ),
  Category(
    id: 'sc14',
    title: 'XLR 5',
  ),
  Category(
    id: 'sc15',
    title: 'Ahuja Wires',
  ),
  Category(
    id: 'sc16',
    title: 'CAT-5',
  ),
  Category(
    id: 'sc17',
    title: 'Cardioid Microphones',
  ),
  Category(
    id: 'sc18',
    title: 'Super-Cardioid Microphones',
  ),
  Category(
    id: 'sc19',
    title: 'Omni-Directional Microphones',
  ),
  Category(
    id: 'sc20',
    title: 'Bi-Directional Microphones',
  ),
  Category(
    id: 'sc21',
    title: 'Hypercardioid Microphones',
  ),
  Category(
    id: 'sc22',
    title: 'Lobar Microphones',
  ),
  Category(
    id: 'sc23',
    title: 'Dynamic Microphones',
  ),
  Category(
    id: 'sc25',
    title: 'Condenser Microphones',
  ),
  Category(
    id: 'sc26',
    title: 'Ribbon Microphones',
  ),
  Category(
    id: 'sc27',
    title: 'Head-Worn Microphones',
  ),
  Category(
    id: 'sc28',
    title: 'Contact Microphone',
  ),
  Category(
    id: 'sc29',
    title: 'Active Monitor',
  ),
  Category(
    id: 'sc30',
    title: 'Passive Monitor',
  ),
  Category(
    id: 'sc31',
    title: '',
  ),
  Category(
    id: 'sc32',
    title: '',
  ),
  Category(
    id: 'sc33',
    title: '',
  ),
  Category(
    id: 'sc34',
    title: '',
  ),
  Category(
    id: 'sc35',
    title: '',
  ),
  Category(
    id: 'sc36',
    title: '',
  ),
  Category(
    id: 'sc37',
    title: '',
  ),
  Category(
    id: 'sc38',
    title: '',
  ),
  Category(
    id: 'sc39',
    title: '',
  ),
];

const List<EquipmentItem> equipments = [
  EquipmentItem(
    title: "Shure SM58 Wired",
    equipmentId: 'eId01',
    categoryId: [
      "mc2",
      "sc23",
      "sc17",
    ],
    description: [
      "Commonly used in live vocal applications.",
      "Has a low frequency boost when used close to the source.",
      "Internal shock mount to reduce handling noise.",
      "Frequency Response - 50 to 15,000 Hz",
      "Polar Pattern - Cardioid - Reduces pickup from the side and rear, helping to avoid feedback onstage",
      "Connector - Three-pin male XLR",
      "Impedance - Rated impedance is 150 ohms (300 ohms actual) for connection to microphone inputs rated low impedance",
      "Polarity - Positive pressure on diaphragm produces positive voltage on pin 2 with respect to pin 3",
      "Type - Dynamic Microphone",
      "No On-Off Switch"
    ],
    imageUrl: [
      "https://d2dfnis7z3ac76.cloudfront.net/shure_product_db/product_main_images/files/cf1/51c/44-/header_transparent/dc53d07c046536d8b078318e129876f2.png",
      "https://s3.us-east-2.amazonaws.com/shure-pubs-staging/graphics/f_503158fd-2aa5-4035-9fde-f687d47d6c04-ENG.png",
      "https://s3.us-east-2.amazonaws.com/shure-pubs-staging/graphics/f_ad42bed1-f837-4e2d-bb27-726c12c1bcd8-ENG.png",
      "https://s3.us-east-2.amazonaws.com/shure-pubs-staging/graphics/f_7e014e2c-0e64-4316-9359-a69f034adcd0-ENG.png",
      "https://s3.us-east-2.amazonaws.com/shure-pubs-staging/graphics/f_3cfab716-a05c-421a-a897-22f0dbb3418d-ENG.png",
      "https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg"
    ],
  ),
  EquipmentItem(
    title: "Shure SM57 Wired",
    equipmentId: 'eId02',
    categoryId: [
      "mc2",
      "sc23",
      "sc17",
    ],
    description: [
      "Commonly used in live instrument sound reinforcement and studio recording.",
      "Type - Dynamic",
      "Frequency response - 40 to 15,000 Hz",
      "Polar pattern - Cardioid - Reduces the pickup of unwanted background sound and the generation of acoustic feedback.",
      "Impedance - Rated impedance is 150 ohms (300 ohms actual) for connection to microphone inputs rated low impedance",
      "Connector - Three-pin professional audio connector (male XLR type)"
          "The SM57 is a popular choice of musicians due to its sturdy construction and ability to work well with instruments that produce high sound pressure levels, such as percussion instruments and electric guitars. ",
      "SM57s reinforce the sound from guitar amplifiers.",
      "Features a balanced output, which helps to minimize electrical hum and noise pickup",
      // "",
    ],
    imageUrl: [
      "https://d2dfnis7z3ac76.cloudfront.net/shure_product_db/product_main_images/files/218/0f8/9b-/header_transparent/11cc244554e2d3880afecca5d6f63cc3.png",
      "https://d2dfnis7z3ac76.cloudfront.net/shure_product_db/product_images/files/f83/6c8/3c-/header_transparent/434a98f409c257b6eca61ef73795512f.png",
      "https://res.cloudinary.com/powerreviews/image/upload/c_fill,d_portal-no-product-image_ttlfpi.svg,f_auto,g_auto,h_400,q_auto,w_auto,z_0.5/d_portal-no-product-image_ttlfpi.svg/prod/socialCollection/i1nkzrrzbwudoctsfwhy",
      "https://s3.us-east-2.amazonaws.com/shure-pubs-staging/graphics/f_503158fd-2aa5-4035-9fde-f687d47d6c04-ENG.png",
      "https://s3.us-east-2.amazonaws.com/shure-pubs-staging/graphics/f_9cdd9a22-a4a1-4241-a428-f4421ae9973a-ENG.png",
      "https://s3.us-east-2.amazonaws.com/shure-pubs-staging/graphics/f_97d5aa0e-73fa-4584-b577-bc35f5d50fa7-ENG.png",
      "https://s3.us-east-2.amazonaws.com/shure-pubs-staging/graphics/f_d875dc79-861d-4af3-94b2-433b3b8bec5b-ENG.png",
      "https://s3.us-east-2.amazonaws.com/shure-pubs-staging/graphics/f_7acd2a4b-5d58-490c-811f-59403d4f2125-ENG.png"
    ],
  ),
  EquipmentItem(
    title: "Shure PG58 Wired",
    equipmentId: 'eId03',
    categoryId: [
      "mc2",
      "sc23",
      "sc17",
    ],
    description: [
      "Used for Vocals",
      "Polar Pattern - Cardioid - Reduces pickup from the side and rear, helping to avoid feedback onstage",
      "Connector - Three-pin male XLR",
      "Impedance - Rated impedance is 150 ohms (300 ohms actual) for connection to microphone inputs rated low impedance",
      "Polarity - Positive pressure on diaphragm produces positive voltage on pin 2 with respect to pin 3",
      "Type - Dynamic Microphone",
      "Has On-Off Switch"
          "Has an Internal shockmount, Pop filter",
      "Neodymium magnet produces high output"
    ],
    imageUrl: [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQgnCUifNILRiQPu_Xbmxu7o-wjVZ9UGr-8-7NbfvyPgIdjOhYH&usqp=CAU",
      "https://images-na.ssl-images-amazon.com/images/I/71IgqE44dtL._SL1500_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/413E0f5Jt3L._AC_.jpg",
      "https://s3.us-east-2.amazonaws.com/shure-pubs-staging/graphics/f_3cfab716-a05c-421a-a897-22f0dbb3418d-ENG.png",
      "",
      "",
      ""
    ],
  ),
  EquipmentItem(
    title: "XLR 5",
    equipmentId: 'eId04',
    categoryId: ["mc1", "sc14"],
    description: [
      "Five-pin XLR connectors are the standard for DMX512 digital lighting control",
      "Five-Pin XLR is commonly used for DC power in audio equipment",
      "Used for dual-element or stereo microphones (two balanced audio signals with a common ground)",
    ],
    imageUrl: [
      "https://www.bhphotovideo.com/images/images500x500/Neutrik_NC5MX_B_NC5MX_B_5_Pin_XLR_Male_748114.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS4uP61jlKyc0FhjRocxNCECktSbZBkJiqHeRrDLGvrgb207xo7&usqp=CAU",
    ],
  ),
  EquipmentItem(
    title: "XLR 3",
    equipmentId: 'eId05',
    categoryId: ["mc1", "sc1"],
    description: [
      "The XLR connector is a style of electrical connector, primarily found on professional audio, video, and stage lighting equipment",
      "The connectors are circular in design and have between three pins",
      "Three-pin XLR connectors are by far the most common style, and are an industry standard for balanced audio signals",
      "Three-pin XLR connectors are used to interconnect powered speakers with line-level signals",
      " The great majority of professional microphones use the XLR connector",
    ],
    imageUrl: [
      "https://static.bhphotovideo.com/explora/sites/default/files/Main-Single-Cable_0.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/71JmpQSpqNL._AC_SL1374_.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcScn2WhXlvFCrJr8RiuIRZq0wIAQXBVACYghDYV7E_OvK4VfgGv&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTbgDUPiuF9UztV628kRh5zYpqbcvpZHPn9T7Ibq57DeoS-Jf2x&usqp=CAU",
    ],
  ),
  EquipmentItem(
    title: "SpeakOn Connector M-M",
    equipmentId: 'eId06',
    categoryId: ["", "", "", "", "", ""],
    description: ["", "", "", "", "", ""],
    imageUrl: [
      "https://images-na.ssl-images-amazon.com/images/I/81f7%2B0q8nZL._AC_SL1500_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/71PF9I7W6NL._AC_SL1500_.jpg",
      // "",
      // "",
      // "",
      // ""
    ],
  ),
  // EquipmentItem(
  //   title: "",
  //   equipmentId: 'eId07',
  //   categoryId: ["", "", "", "", "", ""],
  //   description: ["", "", "", "", "", ""],
  //   imageUrl: ["", "", "", "", "", ""],
  // ),
  // EquipmentItem(
  //   title: "",
  //   equipmentId: 'eId08',
  //   categoryId: ["", "", "", "", "", ""],
  //   description: ["", "", "", "", "", ""],
  //   imageUrl: ["", "", "", "", "", ""],
  // ),
];
