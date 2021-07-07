load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

_boost_libs = {
    "accumulators": {
        "strip_prefix": "accumulators-6860679bfbc317e59541d7f8bb24085685cddc7b",
        "urls": ["https://github.com/bazelboost/accumulators/archive/6860679bfbc317e59541d7f8bb24085685cddc7b.zip"],
        "sha256": "533d36b3231c7e09446cc08f5206762769b97cbb82c46075750f8e665b88a1f6",
    },
    "algorithm": {
        "strip_prefix": "algorithm-4e6003614b2938f8ebc8af538c00bc126ddd9529",
        "urls": ["https://github.com/bazelboost/algorithm/archive/4e6003614b2938f8ebc8af538c00bc126ddd9529.zip"],
        "sha256": "89387c146cbc2db7a75f4d6d88ffab41b4164ff2bf2c30606b55b7d6a07a8088",
    },
    "align": {
        "strip_prefix": "align-d3de434b9feb32be5ce8689430d0100c8e1acdf4",
        "urls": ["https://github.com/bazelboost/align/archive/d3de434b9feb32be5ce8689430d0100c8e1acdf4.zip"],
        "sha256": "28f9ab23cbf1da55b3e074874b1fec6b93e0f82da76f560ca0911eb06c5cf10f",
    },
    "any": {
        "strip_prefix": "any-be90c084e4a593c1a5a17e223d6fa05433c9927a",
        "urls": ["https://github.com/bazelboost/any/archive/be90c084e4a593c1a5a17e223d6fa05433c9927a.zip"],
        "sha256": "48efb531345c0a87e8935c65d6dd5c5307b6b9e9055859c5b2cf108792e14bbb",
    },
    "array": {
        "strip_prefix": "array-45804d184a1eeddffb530db44ad22c20a5f40368",
        "urls": ["https://github.com/bazelboost/array/archive/45804d184a1eeddffb530db44ad22c20a5f40368.zip"],
        "sha256": "1b368be63dfa57d744ef336e23c90194f46174e3ecfcf56c53c8c4450372aefc",
    },
    "asio": {
        "strip_prefix": "asio-8279bffb2052b46a8fccd941f0f0ca0b448cbe07",
        "urls": ["https://github.com/bazelboost/asio/archive/8279bffb2052b46a8fccd941f0f0ca0b448cbe07.zip"],
        "sha256": "5de458232181d22773f2386f30260996849156d84cf3f2ab4f8ca624e00bf87f",
    },
    "assert": {
        "strip_prefix": "assert-ab14cce8ddd6f380bbfc01e3dc27c956d40f2c60",
        "urls": ["https://github.com/bazelboost/assert/archive/ab14cce8ddd6f380bbfc01e3dc27c956d40f2c60.zip"],
        "sha256": "02ec978f726c994b70e4bc20a00dc3ce82bf1d553fc329298015f7241d2eec37",
    },
    "assign": {
        "strip_prefix": "assign-015bb11b772f8380f6f036d77bb9f8160fd68571",
        "urls": ["https://github.com/bazelboost/assign/archive/015bb11b772f8380f6f036d77bb9f8160fd68571.zip"],
        "sha256": "388f3d7cb3bb2d30764b9bd3264f0484ecf57baff99a04a86e3d424e2a742242",
    },
    "atomic": {
        "strip_prefix": "atomic-70ea3d33137cb0e152d4dc0af867ba4f7917d9e5",
        "urls": ["https://github.com/bazelboost/atomic/archive/70ea3d33137cb0e152d4dc0af867ba4f7917d9e5.zip"],
        "sha256": "3cb6929deb3e8fb6130634e85ad5ca20c2cf76ee0d0eb312ac6ee6133528a5b4",
    },
    "beast": {
        "strip_prefix": "beast-4c3c68cee7b93aa72f58d8c262cd65a482f31500",
        "urls": ["https://github.com/bazelboost/beast/archive/4c3c68cee7b93aa72f58d8c262cd65a482f31500.zip"],
        "sha256": "71f6a0188574e9c4ed37f64e5475ad03ce18e3a308451498de65ff5891e4c27a",
    },
    "bimap": {
        "strip_prefix": "bimap-be5f247d6b5749764e997f26e47293bd0a55dc49",
        "urls": ["https://github.com/bazelboost/bimap/archive/be5f247d6b5749764e997f26e47293bd0a55dc49.zip"],
        "sha256": "a0df365c2c6f2a1440af26e41e413ea9d2d8a7a42d5372abbcde8a5fa9db8b62",
    },
    "bind": {
        "strip_prefix": "bind-2e4e9828fec893e64070bac1ba597889306e82d5",
        "urls": ["https://github.com/bazelboost/bind/archive/2e4e9828fec893e64070bac1ba597889306e82d5.zip"],
        "sha256": "617a63a05e286ee0f6d85629c99645f0bd8e89ec43e68d3d26e195a8fab17174",
    },
    "chrono": {
        "strip_prefix": "chrono-1fd5e2146b7d57505ca420a2ade398fdf55de8d9",
        "urls": ["https://github.com/bazelboost/chrono/archive/1fd5e2146b7d57505ca420a2ade398fdf55de8d9.zip"],
        "sha256": "7c637fe4bc77908ee8b46ba355346514e7a62dbcbb751f9a8e5df7da8c4d8396",
    },
    "circular_buffer": {
        "strip_prefix": "circular_buffer-fc4f332a1bce65a611466b46b61260f362c3e245",
        "urls": ["https://github.com/bazelboost/circular_buffer/archive/fc4f332a1bce65a611466b46b61260f362c3e245.zip"],
        "sha256": "a69595035989262f346094da19220b99e29e0362c623e60477a92d8fa959ea1a",
    },
    "compatibility": {
        "strip_prefix": "compatibility-0c34ea276f6b06147f08c50f25053f3b73ab1d4d",
        "urls": ["https://github.com/bazelboost/compatibility/archive/0c34ea276f6b06147f08c50f25053f3b73ab1d4d.zip"],
        "sha256": "6448fddda37854a9109d62602d16c2c2de3fea1b400f13c225df1e3980149868",
    },
    "compute": {
        "strip_prefix": "compute-a2656c8650877970286d9b3f6b9fe6190bb6531c",
        "urls": ["https://github.com/bazelboost/compute/archive/a2656c8650877970286d9b3f6b9fe6190bb6531c.zip"],
        "sha256": "1ec55ae4a038bd245a6c33b2824eb4f3b1d379380663c05b1793b2a5e0c2184d",
    },
    "concept_check": {
        "strip_prefix": "concept_check-e924834743bdb3d876b5fb9d29ca084aac0c7ca0",
        "urls": ["https://github.com/bazelboost/concept_check/archive/e924834743bdb3d876b5fb9d29ca084aac0c7ca0.zip"],
        "sha256": "bdf90eb40ca3f8e47806ebe6274f75443f12749667eea36f96385fc9fc284475",
    },
    "config": {
        "strip_prefix": "config-4653216b1ac65fa819336774c15a8453067096fd",
        "urls": ["https://github.com/bazelboost/config/archive/4653216b1ac65fa819336774c15a8453067096fd.zip"],
        "sha256": "6ca299d5f11fcea12fae49ccd56705b08313b1d39d5eb24419ab5c608bef9bd7",
    },
    "container": {
        "strip_prefix": "container-d09f6fc7d55491f46a503e7bc698ab3b4a93c1bf",
        "urls": ["https://github.com/bazelboost/container/archive/d09f6fc7d55491f46a503e7bc698ab3b4a93c1bf.zip"],
        "sha256": "5a3ff0b633ab5d34443210e7560a928bf97521f1ecc3eda87b40f19c60349e71",
    },
    "container_hash": {
        "strip_prefix": "container_hash-28c1488cc29a31455d6eb375b838e98d96cb97d6",
        "urls": ["https://github.com/bazelboost/container_hash/archive/28c1488cc29a31455d6eb375b838e98d96cb97d6.zip"],
        "sha256": "202bff1f44f1ca6fd4e093e51aa2bb156db98f59a5ea8f7c9295f224ca4dc891",
    },
    "context": {
        "strip_prefix": "context-86fb8fb5e714f71a96dd5ca0a4391501cccab020",
        "urls": ["https://github.com/bazelboost/context/archive/86fb8fb5e714f71a96dd5ca0a4391501cccab020.zip"],
        "sha256": "0fabc75d5c23ec721861672068863c28d2991c73b05ff6394a70034e41fe0551",
    },
    "conversion": {
        "strip_prefix": "conversion-d6027ffd37c8f51357accca0a42887d026153e7b",
        "urls": ["https://github.com/bazelboost/conversion/archive/d6027ffd37c8f51357accca0a42887d026153e7b.zip"],
        "sha256": "f87a989c3992788fa973c582542d6cde05b2108ae2e611cf91aab27ef07a1b7f",
    },
    "convert": {
        "strip_prefix": "convert-56272bc58b573b3bf15b3938ccba07f09bebcdfe",
        "urls": ["https://github.com/bazelboost/convert/archive/56272bc58b573b3bf15b3938ccba07f09bebcdfe.zip"],
        "sha256": "e50d54e70be7575a86c0f35042cd43201efff7823253fc034c142fc07be4b16b",
    },
    "core": {
        "strip_prefix": "core-7791cf3bd7e52a52fadb14a9c0aa52f93b49671e",
        "urls": ["https://github.com/bazelboost/core/archive/7791cf3bd7e52a52fadb14a9c0aa52f93b49671e.zip"],
        "sha256": "cd9cd2b3d0c1bd36ebc177c2aead1c5f1921246d3d5846f470722ce68851a0e8",
    },
    "coroutine": {
        "strip_prefix": "coroutine-4e8baa2009dd5a48f1d196c0287f881cf492253a",
        "urls": ["https://github.com/bazelboost/coroutine/archive/4e8baa2009dd5a48f1d196c0287f881cf492253a.zip"],
        "sha256": "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed",
    },
    "coroutine2": {
        "strip_prefix": "coroutine2-532559496383313ea77d6db8bd3fc258b887e72c",
        "urls": ["https://github.com/bazelboost/coroutine2/archive/532559496383313ea77d6db8bd3fc258b887e72c.zip"],
        "sha256": "8ba802215d0bc30c849c8c5a34a136129e61f27b3de9906ce60aa32b9812a3d2",
    },
    "crc": {
        "strip_prefix": "crc-f0794219d3af6d4e66bea0664e8eee82d96b7f5c",
        "urls": ["https://github.com/bazelboost/crc/archive/f0794219d3af6d4e66bea0664e8eee82d96b7f5c.zip"],
        "sha256": "2ef80cc0255afc4d6edb164d5858f589539f7f8c7202ace143f0d2d819fd795b",
    },
    "date_time": {
        "strip_prefix": "date_time-3beb75006da416120e494d79ca257cff48371993",
        "urls": ["https://github.com/bazelboost/date_time/archive/3beb75006da416120e494d79ca257cff48371993.zip"],
        "sha256": "b49c6bdfaf209d514ea2a43eca692946fa18517e73f5404b11b3cfe3c0a88907",
    },
    "detail": {
        "strip_prefix": "detail-6380fc78ea32713579f2d76ea4c21ae7393c91a9",
        "urls": ["https://github.com/bazelboost/detail/archive/6380fc78ea32713579f2d76ea4c21ae7393c91a9.zip"],
        "sha256": "f808d46e2a6e98fb5ccc06b12c854bd1af20e1b5aa048cf44caafabb2d8c9dea",
    },
    "disjoint_sets": {
        "strip_prefix": "disjoint_sets-f1b0f11717d6ae2cea4b353423f2e06c58c5d580",
        "urls": ["https://github.com/bazelboost/disjoint_sets/archive/f1b0f11717d6ae2cea4b353423f2e06c58c5d580.zip"],
        "sha256": "e86b5efcebfbd8e79fbc0c5a22cb8bf7f5179af1c3aad4f954eeb89cfb7c8d60",
    },
    "dll": {
        "strip_prefix": "dll-715eba080365d99bc9d41113fe5db88db5a8a507",
        "urls": ["https://github.com/bazelboost/dll/archive/715eba080365d99bc9d41113fe5db88db5a8a507.zip"],
        "sha256": "4edb7deafdb6be65ee94a77d8cad8afa1067e9b658a164a13ef7be36041a4bcb",
    },
    "dynamic_bitset": {
        "strip_prefix": "dynamic_bitset-20e1844872934a249b5abaeb99092a5aa942b0b7",
        "urls": ["https://github.com/bazelboost/dynamic_bitset/archive/20e1844872934a249b5abaeb99092a5aa942b0b7.zip"],
        "sha256": "6a2d208d83f7d5d06a06502d43a4586d6b3ba2c01101b8b5f92af1fea84675fd",
    },
    "endian": {
        "strip_prefix": "endian-0e7b56db1bc9d1c6145f82a1aef7323580e99115",
        "urls": ["https://github.com/bazelboost/endian/archive/0e7b56db1bc9d1c6145f82a1aef7323580e99115.zip"],
        "sha256": "eb00d52d4e9c2397caa0731e4acf76cbe121463f1b76c68dee73daa0c1c17831",
    },
    "exception": {
        "strip_prefix": "exception-93f16e07b703cb92f0c7b05eda4f1b14aa638319",
        "urls": ["https://github.com/bazelboost/exception/archive/93f16e07b703cb92f0c7b05eda4f1b14aa638319.zip"],
        "sha256": "ccc1cbfcb94f710a1a33e27f6369cefdf42f12de3bdcaef8455642da3ec278cb",
    },
    "fiber": {
        "strip_prefix": "fiber-ade850723ddfbb213b65d021cd959e88f3251236",
        "urls": ["https://github.com/bazelboost/fiber/archive/ade850723ddfbb213b65d021cd959e88f3251236.zip"],
        "sha256": "da3cbfa9fb34700691ef6a9dd874c79b2f3e72f061395eeebd0a27937d1c7658",
    },
    "filesystem": {
        "strip_prefix": "filesystem-ecf64b6d95d3955fb89884d88657607d02a77124",
        "urls": ["https://github.com/bazelboost/filesystem/archive/ecf64b6d95d3955fb89884d88657607d02a77124.zip"],
        "sha256": "5f06e8f3138a802a322f52845b144c8d8c49b6fec606fb1cbd7bcf4c9cf98b9f",
    },
    "flyweight": {
        "strip_prefix": "flyweight-ea803909075d630d9263ed406f418d13ab4e5b64",
        "urls": ["https://github.com/bazelboost/flyweight/archive/ea803909075d630d9263ed406f418d13ab4e5b64.zip"],
        "sha256": "5b92fada244963696fa4428390c0ac60d6a0388914079c744a89fc91c8ccb3b0",
    },
    "foreach": {
        "strip_prefix": "foreach-2ac3e10bbfd2e463c428248c17ccec84d6471124",
        "urls": ["https://github.com/bazelboost/foreach/archive/2ac3e10bbfd2e463c428248c17ccec84d6471124.zip"],
        "sha256": "2e4968c689a73a1bb54009c7400cbf0719732644fb1b712afaab0187d7e0fd16",
    },
    "format": {
        "strip_prefix": "format-eeec8ba44146b6e0b06aded89bf1fea02fa102ff",
        "urls": ["https://github.com/bazelboost/format/archive/eeec8ba44146b6e0b06aded89bf1fea02fa102ff.zip"],
        "sha256": "456aa33a0c79418d7439823627316c50ee17af6a75cd17fe2ec4a977d032b911",
    },
    "function": {
        "strip_prefix": "function-fff124eb767a37dee43a4d65010e417cf3d8a085",
        "urls": ["https://github.com/bazelboost/function/archive/fff124eb767a37dee43a4d65010e417cf3d8a085.zip"],
        "sha256": "8d5b4dbf5820045088a6ac16e8625943c676273581c649e82540fdb36b5289c6",
    },
    "function_types": {
        "strip_prefix": "function_types-90fa2353dce0762961c345c134caa528ade891d3",
        "urls": ["https://github.com/bazelboost/function_types/archive/90fa2353dce0762961c345c134caa528ade891d3.zip"],
        "sha256": "11260dd5ce8bc949ee3b54d481f42b2da3bd8439adeb27d5b609270e77453df9",
    },
    "functional": {
        "strip_prefix": "functional-d9f0222261e9e243417b25c02aa21a9a77028e20",
        "urls": ["https://github.com/bazelboost/functional/archive/d9f0222261e9e243417b25c02aa21a9a77028e20.zip"],
        "sha256": "3007c2e48ce91eea9f82140c3b31abb0daacf8d80885b23f3cf750cc459563e0",
    },
    "fusion": {
        "strip_prefix": "fusion-9fea2347e9e5505fb88f895988848f3e4e1c55de",
        "urls": ["https://github.com/bazelboost/fusion/archive/9fea2347e9e5505fb88f895988848f3e4e1c55de.zip"],
        "sha256": "0fb87b9888f5ba77be1685dc2362483b713898bd511030dd901c6b012a2bf4af",
    },
    "geometry": {
        "strip_prefix": "geometry-a5e70f2912b4b70af69199bb9f8e6f9e032f1ae2",
        "urls": ["https://github.com/bazelboost/geometry/archive/a5e70f2912b4b70af69199bb9f8e6f9e032f1ae2.zip"],
        "sha256": "c73e9bba98c059ee7015a64fe557395055e0768d21dea31a0179a8458a6bb34d",
    },
    "gil": {
        "strip_prefix": "gil-2cad7b04b95bcb1d5e49914541f3e59c2a073f25",
        "urls": ["https://github.com/bazelboost/gil/archive/2cad7b04b95bcb1d5e49914541f3e59c2a073f25.zip"],
        "sha256": "65ef7782718c1cf92ea2a5551bb0c996edf9e29d872082248f55ed3e28331581",
    },
    "graph": {
        "strip_prefix": "graph-e123ef1acf702c923d1cdfc31a3bb6405f572d43",
        "urls": ["https://github.com/bazelboost/graph/archive/e123ef1acf702c923d1cdfc31a3bb6405f572d43.zip"],
        "sha256": "ba890e967b5731ee7cc4340978b6b8785c1f0ba8388ce7cf657c25e907311720",
    },
    "graph_parallel": {
        "strip_prefix": "graph_parallel-e2e639bb6a7deefb4329c5c1da41adaef041e80f",
        "urls": ["https://github.com/bazelboost/graph_parallel/archive/e2e639bb6a7deefb4329c5c1da41adaef041e80f.zip"],
        "sha256": "43d9f616b08439b26cdf25f370f14ac4366f7503250b9006f7d0db84c809591c",
    },
    "hana": {
        "strip_prefix": "hana-61430413eb428d44a87594d728739f56bc6ad7ac",
        "urls": ["https://github.com/bazelboost/hana/archive/61430413eb428d44a87594d728739f56bc6ad7ac.zip"],
        "sha256": "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed",
    },
    "heap": {
        "strip_prefix": "heap-20d4e899b4f59c6d1e42eb99a28c7c4bd777c071",
        "urls": ["https://github.com/bazelboost/heap/archive/20d4e899b4f59c6d1e42eb99a28c7c4bd777c071.zip"],
        "sha256": "9a2b3150a87b4e9ed8f5141bc0f3ceaa042c8e00d2d5cc35eabc1c63b91fd4b4",
    },
    "icl": {
        "strip_prefix": "icl-6dc0207a824158e49a9e47e46847ae4cd49cf73f",
        "urls": ["https://github.com/bazelboost/icl/archive/6dc0207a824158e49a9e47e46847ae4cd49cf73f.zip"],
        "sha256": "d5d397ebf722a52e3c535bf97c4daa1b5f35ebb1c30a66fb25210394dd3f5323",
    },
    "integer": {
        "strip_prefix": "integer-4be9006382111f20632d2b5c429c5d65ba13c115",
        "urls": ["https://github.com/bazelboost/integer/archive/4be9006382111f20632d2b5c429c5d65ba13c115.zip"],
        "sha256": "381f351ed63b4240d4893dfc758d70cf591a98ea47fba1a6d02403639ae6c82c",
    },
    "interprocess": {
        "strip_prefix": "interprocess-2f5e43dbcec8d36ead755f5659c43c9dc554ce19",
        "urls": ["https://github.com/bazelboost/interprocess/archive/2f5e43dbcec8d36ead755f5659c43c9dc554ce19.zip"],
        "sha256": "e9d88c86008452a7cc55d9939f5c9ef571d90502711d17dc92fb76d6e3186f6a",
    },
    "intrusive": {
        "strip_prefix": "intrusive-b26577c512b74e734d8ce4859b5e1592a5a84a86",
        "urls": ["https://github.com/bazelboost/intrusive/archive/b26577c512b74e734d8ce4859b5e1592a5a84a86.zip"],
        "sha256": "2dcd6c81987438c48e2e51edcf0ddc512ac6abbe57222cbe547126b4c2644143",
    },
    "io": {
        "strip_prefix": "io-ba0bde8919e6cc1ef9f8ac109f6ccfb37011ed1e",
        "urls": ["https://github.com/bazelboost/io/archive/ba0bde8919e6cc1ef9f8ac109f6ccfb37011ed1e.zip"],
        "sha256": "8efab49525bf68cb26ba62813e8a011b817293d534502c2824666a0831955342",
    },
    "iostreams": {
        "strip_prefix": "iostreams-2d76d92ba751de4eaca5b05282f4ecc9578c341b",
        "urls": ["https://github.com/bazelboost/iostreams/archive/2d76d92ba751de4eaca5b05282f4ecc9578c341b.zip"],
        "sha256": "d951d840132835fb4d13a4e617d2a2d087610701da5d30d01b344e47e46f25bd",
    },
    "iterator": {
        "strip_prefix": "iterator-d054f296a29cc0e2ede3a0953d534ca46130dd01",
        "urls": ["https://github.com/bazelboost/iterator/archive/d054f296a29cc0e2ede3a0953d534ca46130dd01.zip"],
        "sha256": "58b806241f1fc44f3f499659dc616ac40d680dd42e2c30ab836366ebd95c1a32",
    },
    "lambda": {
        "strip_prefix": "lambda-a861a7e3c03e36fc4ff77f8aa9bb517472de54bc",
        "urls": ["https://github.com/bazelboost/lambda/archive/a861a7e3c03e36fc4ff77f8aa9bb517472de54bc.zip"],
        "sha256": "5be8ba33dd644bceeaafc4ec464be6a8a89469cd68ae91f48f5345fd42dbe45d",
    },
    "lexical_cast": {
        "strip_prefix": "lexical_cast-f82dbd386b28ace1ca1035c2112bbb1d3b107c9a",
        "urls": ["https://github.com/bazelboost/lexical_cast/archive/f82dbd386b28ace1ca1035c2112bbb1d3b107c9a.zip"],
        "sha256": "b1ea4f38f8eabc86892c3586c0eefdab30cd0d05b91ec82e8844820b6be7ee9a",
    },
    "local_function": {
        "strip_prefix": "local_function-dd543965d9f19ec745984430e6ae8729e0f63c67",
        "urls": ["https://github.com/bazelboost/local_function/archive/dd543965d9f19ec745984430e6ae8729e0f63c67.zip"],
        "sha256": "1442d6a1dab5caf199a537b918038640bb453843749bec9985874f84bd473551",
    },
    "locale": {
        "strip_prefix": "locale-2ae5960056d3aae1b527c6a605b9cbf8d6a9eb81",
        "urls": ["https://github.com/bazelboost/locale/archive/2ae5960056d3aae1b527c6a605b9cbf8d6a9eb81.zip"],
        "sha256": "edb88389c78f651b6bc91d8847dbf3ea6330d5f67139b688bb49d6180db4409f",
    },
    "lockfree": {
        "strip_prefix": "lockfree-673f4ba6d02cf5b7cd6de2169285579e6347ecf7",
        "urls": ["https://github.com/bazelboost/lockfree/archive/673f4ba6d02cf5b7cd6de2169285579e6347ecf7.zip"],
        "sha256": "2b80814e2a3a425d1bf6f513a0b44c4c95bb2cd7877c100343bc4db1dac8374b",
    },
    "log": {
        "strip_prefix": "log-20aa8bf9ebfcb99c3ada332985fcb80308540e75",
        "urls": ["https://github.com/bazelboost/log/archive/20aa8bf9ebfcb99c3ada332985fcb80308540e75.zip"],
        "sha256": "e6e87247fb75855bddf1647007e2feac1e6a8472c7659588cfa26fc3474a8fde",
    },
    "logic": {
        "strip_prefix": "logic-5dda33ecd02d70f47a4e8ed77b57eab66a5b02c3",
        "urls": ["https://github.com/bazelboost/logic/archive/5dda33ecd02d70f47a4e8ed77b57eab66a5b02c3.zip"],
        "sha256": "d31e48f147e36677815bd75bead9982a49dc958000d453b1d5be5bdea83881c2",
    },
    "math": {
        "strip_prefix": "math-a578529bc6f058187d1a74973d4fa8c3024eb678",
        "urls": ["https://github.com/bazelboost/math/archive/a578529bc6f058187d1a74973d4fa8c3024eb678.zip"],
        "sha256": "4798bb2e4a31bb07035adf898ff70bdad2b300c2ce74b2952f0a56b3a2cabf9f",
    },
    "metaparse": {
        "strip_prefix": "metaparse-b6ed3281c8e2bcf6a7a8f86cb4f0228059a743fa",
        "urls": ["https://github.com/bazelboost/metaparse/archive/b6ed3281c8e2bcf6a7a8f86cb4f0228059a743fa.zip"],
        "sha256": "b8799e9dabe94c055f591c79e7bf1e895b193d236d98ea2786e018c0d8207183",
    },
    "move": {
        "strip_prefix": "move-31894b3ac9039bf5d8d8ca03203f1510af2ef51d",
        "urls": ["https://github.com/bazelboost/move/archive/31894b3ac9039bf5d8d8ca03203f1510af2ef51d.zip"],
        "sha256": "8c61f3635dfec954621ad7908665bda2885698ac5b8c7c0ddf777615d95df320",
    },
    "mp11": {
        "strip_prefix": "mp11-4bd3ae72b3662840650a3c3cf420c812a0728f0d",
        "urls": ["https://github.com/bazelboost/mp11/archive/4bd3ae72b3662840650a3c3cf420c812a0728f0d.zip"],
        "sha256": "c07a5d9469655a594d201d4020753766cc987b83060b3005b0d1bd242f2e198a",
    },
    "mpi": {
        "strip_prefix": "mpi-18303beb044eb2f22c24bcb140ca617d448db60d",
        "urls": ["https://github.com/bazelboost/mpi/archive/18303beb044eb2f22c24bcb140ca617d448db60d.zip"],
        "sha256": "d6507cd35df02ab2597fe2e357027ddf105ca4186991446aa3c50daa0d805143",
    },
    "mpl": {
        "strip_prefix": "mpl-9843c85630f70f4ed1d92d450c62559b08f90d00",
        "urls": ["https://github.com/bazelboost/mpl/archive/9843c85630f70f4ed1d92d450c62559b08f90d00.zip"],
        "sha256": "d1fbe3e7104e78515a02ba312789fe1630cddbcba46d263fa414f7bb79f56aef",
    },
    "msm": {
        "strip_prefix": "msm-58c3b937dd0ad4ec39d46b2c4cf7a48f14075775",
        "urls": ["https://github.com/bazelboost/msm/archive/58c3b937dd0ad4ec39d46b2c4cf7a48f14075775.zip"],
        "sha256": "705bad2a454a391711a144e0d90654fa1fc19e70fa285405836411952c783cc2",
    },
    "multi_array": {
        "strip_prefix": "multi_array-f7558ed5e2e5ebe7af9028da87e2c1c5ccea30ad",
        "urls": ["https://github.com/bazelboost/multi_array/archive/f7558ed5e2e5ebe7af9028da87e2c1c5ccea30ad.zip"],
        "sha256": "099016b9b4c678a06f11eb54a2e263df12ac684e6ead586972f40e26ab57db7f",
    },
    "multi_index": {
        "strip_prefix": "multi_index-5acccbcda106e9adbb834eafc8d43ed4ef7112de",
        "urls": ["https://github.com/bazelboost/multi_index/archive/5acccbcda106e9adbb834eafc8d43ed4ef7112de.zip"],
        "sha256": "b57201403c01036ea27607c90799ee40cce1e27d54f8c5bcc1dc4380461b413a",
    },
    "multiprecision": {
        "strip_prefix": "multiprecision-711b89797a95151787ad43f4004845be2e445d34",
        "urls": ["https://github.com/bazelboost/multiprecision/archive/711b89797a95151787ad43f4004845be2e445d34.zip"],
        "sha256": "1b8d8f1a6c599c0c5bba7f4372d12b8822fafb6e83ff4680ecbd85867bab6a32",
    },
    "numeric_conversion": {
        "strip_prefix": "numeric_conversion-a704e14b2b8fc1ec72be525e68bc784290231ece",
        "urls": ["https://github.com/bazelboost/numeric_conversion/archive/a704e14b2b8fc1ec72be525e68bc784290231ec.zip"],
        "sha256": "e835457509d3eb62991d28cff115aa0445afd09ce393a2200437c6d732810d57",
    },
    "optional": {
        "strip_prefix": "optional-a221d69dbb9e9da57b6748821f8c39582964b614",
        "urls": ["https://github.com/bazelboost/optional/archive/a221d69dbb9e9da57b6748821f8c39582964b614.zip"],
        "sha256": "d11aa4ab5a6fc8e77c735d24f294bb55436ef5138f5f3ee35e4e77e83ae904b2",
    },
    "parameter": {
        "strip_prefix": "parameter-c553e866aa1f74bf09be837097c097b1582fc055",
        "urls": ["https://github.com/bazelboost/parameter/archive/c553e866aa1f74bf09be837097c097b1582fc055.zip"],
        "sha256": "52be1e59522e31f6a2af561ceabc2f9fab46dce0c2e0a19083d83f9eec5400c7",
    },
    "phoenix": {
        "strip_prefix": "phoenix-5ac47802d1f67e8b155f295dd95cec7070370c4d",
        "urls": ["https://github.com/bazelboost/phoenix/archive/5ac47802d1f67e8b155f295dd95cec7070370c4d.zip"],
        "sha256": "d054c9a02521168b818e8d226bb3bb506ebb54828f13e102b59c411235e87b41",
    },
    "poly_collection": {
        "strip_prefix": "poly_collection-3403b3d65cbdc522d99857c3d046acfb8573d5dd",
        "urls": ["https://github.com/bazelboost/poly_collection/archive/3403b3d65cbdc522d99857c3d046acfb8573d5dd.zip"],
        "sha256": "ad27adfbcc83b35b0efa065e6a1df7cb5340a10782c2b70a1a68807cb24b69f7",
    },
    "polygon": {
        "strip_prefix": "polygon-d85a6b2c392ba086f4781a59daae1a9aaf279829",
        "urls": ["https://github.com/bazelboost/polygon/archive/d85a6b2c392ba086f4781a59daae1a9aaf279829.zip"],
        "sha256": "1266581150ca33721e90a1caaeb1ea8cfc18fd8026f9f2de7b744ef1bc60e2b8",
    },
    "pool": {
        "strip_prefix": "pool-9e77106153a67271cf33ede3e7a426af48f04e12",
        "urls": ["https://github.com/bazelboost/pool/archive/9e77106153a67271cf33ede3e7a426af48f04e12.zip"],
        "sha256": "fdc06a47f98a8e60f442a9117f02c575b7516fe6646b698a0655f72a14f10a28",
    },
    "predef": {
        "strip_prefix": "predef-80dd678d58b6a9b8a05427f8fed76494db596230",
        "urls": ["https://github.com/bazelboost/predef/archive/80dd678d58b6a9b8a05427f8fed76494db596230.zip"],
        "sha256": "02c0a27324040d6e1f3809edbe0537dba8918b8b3bfd0aceeebe4cda02c4e9c1",
    },
    "preprocessor": {
        "strip_prefix": "preprocessor-b8b487b58f0f7fff1360d517f5d5840a04545849",
        "urls": ["https://github.com/bazelboost/preprocessor/archive/b8b487b58f0f7fff1360d517f5d5840a04545849.zip"],
        "sha256": "14696aa98773909bdfdad6df6625fedb48178bf625d8165a8ac0fb5d7bb90712",
    },
    "process": {
        "strip_prefix": "process-df2f1dac07a7f356742221747cd26e94eb5645b4",
        "urls": ["https://github.com/bazelboost/process/archive/df2f1dac07a7f356742221747cd26e94eb5645b4.zip"],
        "sha256": "6eb5d993e189dd6de61d923f3cfa960fe9bd70afe279d54eca05f81beb71359c",
    },
    "program_options": {
        "strip_prefix": "program_options-c5ed81ceef35d763922e5e575b151b55ebc220a3",
        "urls": ["https://github.com/bazelboost/program_options/archive/c5ed81ceef35d763922e5e575b151b55ebc220a3.zip"],
        "sha256": "3cdbdbf7738b2b950e7ee9c0d7eaa2618a9a4a91e906e9f54dec1586ab35c0fd",
    },
    "property_map": {
        "strip_prefix": "property_map-3d81a078df927ca6b40daecd5e418eb2edc78a71",
        "urls": ["https://github.com/bazelboost/property_map/archive/3d81a078df927ca6b40daecd5e418eb2edc78a71.zip"],
        "sha256": "f493c67fb2773e83515ab1bf3059e2ddc03e78321203c23be1ec60c9feef92de",
    },
    "property_tree": {
        "strip_prefix": "property_tree-8f9da1438db1d0d44de187a7ce7617d9db4a9b0d",
        "urls": ["https://github.com/bazelboost/property_tree/archive/8f9da1438db1d0d44de187a7ce7617d9db4a9b0d.zip"],
        "sha256": "571ee9e36266ad056a0163d79af27b7b57aa42f1231a07ef0ad1816ce728e9eb",
    },
    "proto": {
        "strip_prefix": "proto-1c6ef7519c0323e2e67ca1e8f501652a6d9826d9",
        "urls": ["https://github.com/bazelboost/proto/archive/1c6ef7519c0323e2e67ca1e8f501652a6d9826d9.zip"],
        "sha256": "2081858518e7f203dd50373763c405d3c85e25ccb5a85a51e5e909d9ac9aad81",
    },
    "ptr_container": {
        "strip_prefix": "ptr_container-8390b6502bd25332253a63fdfa6cc6314407cd4f",
        "urls": ["https://github.com/bazelboost/ptr_container/archive/8390b6502bd25332253a63fdfa6cc6314407cd4f.zip"],
        "sha256": "e928d831e0ad8454fd94127ee9f0fbca6e2a65ffa986bba333ce4a208cd1bfbb",
    },
    "python": {
        "strip_prefix": "python-9200c1379d2ca37cc8a9b8383811e6edf6cc9d45",
        "urls": ["https://github.com/bazelboost/python/archive/9200c1379d2ca37cc8a9b8383811e6edf6cc9d45.zip"],
        "sha256": "3a425fdb39f83fd7fad56c3cc0f1457137334881c493a84e616114dd25550e39",
    },
    "qvm": {
        "strip_prefix": "qvm-27d33eb056650421637f1429add8a17c4c7bdda5",
        "urls": ["https://github.com/bazelboost/qvm/archive/27d33eb056650421637f1429add8a17c4c7bdda5.zip"],
        "sha256": "e27e7d0cb37237ed21d45b0afec125cb2f6cb0489d8c9db44ebb25f2ee624ba8",
    },
    "random": {
        "strip_prefix": "random-2937db979a878fe032e42d56266315b6685cc4c0",
        "urls": ["https://github.com/bazelboost/random/archive/2937db979a878fe032e42d56266315b6685cc4c0.zip"],
        "sha256": "14e0051623ace5957906d83ea1ef03df628ac28b258395e49e9224e64c31f859",
    },
    "range": {
        "strip_prefix": "range-3f904e692cae81af37fc7ffab04dab26290c9475",
        "urls": ["https://github.com/bazelboost/range/archive/3f904e692cae81af37fc7ffab04dab26290c9475.zip"],
        "sha256": "97badc4d3eb13c8891d6be528bb6a76ceaf82a5a07fa74689fd365f3e9e7236d",
    },
    "ratio": {
        "strip_prefix": "ratio-755eba4d53158bf658aedad35910576f5566602d",
        "urls": ["https://github.com/bazelboost/ratio/archive/755eba4d53158bf658aedad35910576f5566602d.zip"],
        "sha256": "d9e5a82eeabb8deae9a8aa16ba112bb23f9e3d50b034d5ac8f3be4ca55479165",
    },
    "rational": {
        "strip_prefix": "rational-55f192a30b1224180e1ca413ce6391d86bf0b94c",
        "urls": ["https://github.com/bazelboost/rational/archive/55f192a30b1224180e1ca413ce6391d86bf0b94c.zip"],
        "sha256": "13752c554589a3d73768baa1d08590f057309b9e2dff67e5a79606d58c1d155d",
    },
    "regex": {
        "strip_prefix": "regex-7a5d022ad6772295a3b9783427dc88a018bbc067",
        "urls": ["https://github.com/bazelboost/regex/archive/7a5d022ad6772295a3b9783427dc88a018bbc067.zip"],
        "sha256": "a32cd408c5740ff7a7d5bce3c46022466b96cae1d248ec72055faa50d8b37635",
    },
    "scope_exit": {
        "strip_prefix": "scope_exit-5c6072be06d52f4a9cd705c3f9904ebf7e515529",
        "urls": ["https://github.com/bazelboost/scope_exit/archive/5c6072be06d52f4a9cd705c3f9904ebf7e515529.zip"],
        "sha256": "2f0db37f50727022de2e5e132dddec3a45794c6696ce91305eb09076164ff6c8",
    },
    "serialization": {
        "strip_prefix": "serialization-d98e50abc1dd68abee57c4c7d76543c3d5fc0a2e",
        "urls": ["https://github.com/bazelboost/serialization/archive/d98e50abc1dd68abee57c4c7d76543c3d5fc0a2e.zip"],
        "sha256": "016694e84e97ea6d25e5dda445b9315c6792d4ddfc2d70510b53e61095eddd12",
    },
    "signals": {
        "strip_prefix": "signals-76be42a4ba26656d2896b2b8e2f656d9b4bf5a74",
        "urls": ["https://github.com/bazelboost/signals/archive/76be42a4ba26656d2896b2b8e2f656d9b4bf5a74.zip"],
        "sha256": "25af41438bd9f0fcbc2b0da2849c2dd15e0af09d8358b246538fe4df168ea3c5",
    },
    "signals2": {
        "strip_prefix": "signals2-68b47c5fdc36894adefb9ec7e024a1ae87c5ad8e",
        "urls": ["https://github.com/bazelboost/signals2/archive/68b47c5fdc36894adefb9ec7e024a1ae87c5ad8e.zip"],
        "sha256": "5abd67b776b071097937e4b637c8f03c32e86ee1743f8cf03983e934871fa9b3",
    },
    "smart_ptr": {
        "strip_prefix": "smart_ptr-d9ccd97744d85826fc7a80d8ba065fcb7e1c4650",
        "urls": ["https://github.com/bazelboost/smart_ptr/archive/d9ccd97744d85826fc7a80d8ba065fcb7e1c4650.zip"],
        "sha256": "4adc5d2a9ea434ba3051cede3d378fd87f8ee6bccdcc331175ffa2418d8914f5",
    },
    "sort": {
        "strip_prefix": "sort-9881eebc04a77a1e270808330efc79c9ccbda867",
        "urls": ["https://github.com/bazelboost/sort/archive/9881eebc04a77a1e270808330efc79c9ccbda867.zip"],
        "sha256": "ee851603cde4a1f01cb5e2952af0e4cf044ec7beb16f0a9fb600933089d3ee9a",
    },
    "spirit": {
        "strip_prefix": "spirit-872c438daa97b7e892a33925f74ea17f20d4c7ed",
        "urls": ["https://github.com/bazelboost/spirit/archive/872c438daa97b7e892a33925f74ea17f20d4c7ed.zip"],
        "sha256": "3a2b99f268fd35eb5b45fcc8ee53b16f1689610d2073ca7245bca5a216999397",
    },
    "stacktrace": {
        "strip_prefix": "stacktrace-8043612a55758287af20eb438a9592be2a6468d4",
        "urls": ["https://github.com/bazelboost/stacktrace/archive/8043612a55758287af20eb438a9592be2a6468d4.zip"],
        "sha256": "bd8508549a3f90955fc2401be0b6d2732d26683440966d2179467e698edf8081",
    },
    "statechart": {
        "strip_prefix": "statechart-403e4669d4fcb88b933fb9c1b2f66e4bacd5accd",
        "urls": ["https://github.com/bazelboost/statechart/archive/403e4669d4fcb88b933fb9c1b2f66e4bacd5accd.zip"],
        "sha256": "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed",
    },
    "static_assert": {
        "strip_prefix": "static_assert-b079787afeda2e3e5c113bca6590adae8b78bb84",
        "urls": ["https://github.com/bazelboost/static_assert/archive/b079787afeda2e3e5c113bca6590adae8b78bb84.zip"],
        "sha256": "6ea845003430bcbf9d76db8487b86ecbd7fe35c66bec2dec1f5f098b9a5cbe6a",
    },
    "system": {
        "strip_prefix": "system-675d15d8d6b3386f05225950b967bd28d630c9ec",
        "urls": ["https://github.com/bazelboost/system/archive/675d15d8d6b3386f05225950b967bd28d630c9ec.zip"],
        "sha256": "301c4a5e2eac44989aa43316ea958abed1d2d577ccae3ae829887b3e00bf620f",
    },
    "test": {
        "strip_prefix": "test-6d1afb552cfed664d0d05c97eeda78cc225b368e",
        "urls": ["https://github.com/bazelboost/test/archive/6d1afb552cfed664d0d05c97eeda78cc225b368e.zip"],
        "sha256": "dcc1dc05181bfa1215610066bf1843d5e104dfd3296b68e45c011249cc03de2b",
    },
    "thread": {
        "strip_prefix": "thread-1f3552fbcb6408e76f66c8070491ddfb05f50648",
        "urls": ["https://github.com/bazelboost/thread/archive/1f3552fbcb6408e76f66c8070491ddfb05f50648.zip"],
        "sha256": "d7dd8bdb215ed1cb3e735b287aa577b4ac64346acde560644388cf62374847ef",
    },
    "throw_exception": {
        "strip_prefix": "throw_exception-fd2a61f16711c2e286cd5f36cacbe2856404152e",
        "urls": ["https://github.com/bazelboost/throw_exception/archive/fd2a61f16711c2e286cd5f36cacbe2856404152e.zip"],
        "sha256": "0d6302a4333e46d7d30e54bf3d7fcf67998259fee577f29a9a739a7e80574194",
    },
    "timer": {
        "strip_prefix": "timer-cdbcdf16dad70753704ec8526a194aa156593a1e",
        "urls": ["https://github.com/bazelboost/timer/archive/cdbcdf16dad70753704ec8526a194aa156593a1e.zip"],
        "sha256": "7e736f7f10ef74492864a86742da7ac22598e0ec7c684174d0508c8e8470640e",
    },
    "tokenizer": {
        "strip_prefix": "tokenizer-3c9ff01a6d1ba5ddb2823a29b7f0fe3af7ac97d8",
        "urls": ["https://github.com/bazelboost/tokenizer/archive/3c9ff01a6d1ba5ddb2823a29b7f0fe3af7ac97d8.zip"],
        "sha256": "afcf47d7e830451702572a8c3074a5731954a6953b7cceaf456f283ac6a7f300",
    },
    "tti": {
        "strip_prefix": "tti-88113c5629eb1a5ea0f1c2b2d56c47912e0940ec",
        "urls": ["https://github.com/bazelboost/tti/archive/88113c5629eb1a5ea0f1c2b2d56c47912e0940ec.zip"],
        "sha256": "0170c4d1552d76ea7bbf119b2848429e5219aeda3be93a9a0105c2ddb2a971d9",
    },
    "tuple": {
        "strip_prefix": "tuple-be1952797ca740917c182e6972f2916c0db18f4a",
        "urls": ["https://github.com/bazelboost/tuple/archive/be1952797ca740917c182e6972f2916c0db18f4a.zip"],
        "sha256": "ec0af6c52b37a48cdac650a8f9804dcd9b12d50b37b69254e0fa3956244dc346",
    },
    "type_erasure": {
        "strip_prefix": "type_erasure-b69b6b162cd9e14a3eacf10cdef8e51765861b6e",
        "urls": ["https://github.com/bazelboost/type_erasure/archive/b69b6b162cd9e14a3eacf10cdef8e51765861b6e.zip"],
        "sha256": "c63a3763a1c37f47eb432d5c01c95cf03e9533ed709196e42384f05b305d5a1f",
    },
    "type_index": {
        "strip_prefix": "type_index-ce6dcfb5ad2689db70794616c05087f325e4a7fb",
        "urls": ["https://github.com/bazelboost/type_index/archive/ce6dcfb5ad2689db70794616c05087f325e4a7fb.zip"],
        "sha256": "2c7acdaf6e7e00732849b22dba7b1438166488d93f6781f809135468f58c7ea5",
    },
    "type_traits": {
        "strip_prefix": "type_traits-74606d6515efa16f69b1e55408baaa2e8c43dd29",
        "urls": ["https://github.com/bazelboost/type_traits/archive/74606d6515efa16f69b1e55408baaa2e8c43dd29.zip"],
        "sha256": "a6f6d7015ac21cb4c682fc210c5861892b7eb2e4226ad35078a8d86e8d3671b5",
    },
    "typeof": {
        "strip_prefix": "typeof-e7b53c027929e74157f04cdd28b8dd80661797c1",
        "urls": ["https://github.com/bazelboost/typeof/archive/e7b53c027929e74157f04cdd28b8dd80661797c1.zip"],
        "sha256": "5a130d749e55d22c1656c079305ed9a5e299d9f56c29bc2fda9ce0666ad9aa1a",
    },
    "units": {
        "strip_prefix": "units-8d5fcbae9861d5dbe2c96d9219a5b688de11259b",
        "urls": ["https://github.com/bazelboost/units/archive/8d5fcbae9861d5dbe2c96d9219a5b688de11259b.zip"],
        "sha256": "ae5a8e718d861c92f090c97de53ac40aab7bdc7781f2974ea471603d20bfb698",
    },
    "unordered": {
        "strip_prefix": "unordered-9de9009dab519de9a15b26ae542c93613bf16486",
        "urls": ["https://github.com/bazelboost/unordered/archive/9de9009dab519de9a15b26ae542c93613bf16486.zip"],
        "sha256": "9b5e6fb8beba5bfb8d5ebeabebfd5ecba9a888cf45e73acac59124f2a7fdf73a",
    },
    "utility": {
        "strip_prefix": "utility-e0b7828ab20a39527639d0a28a748957d367e208",
        "urls": ["https://github.com/bazelboost/utility/archive/e0b7828ab20a39527639d0a28a748957d367e208.zip"],
        "sha256": "22e9c16108fa13e6b89cf7eb875914db2eb4d9929fd3ff64a1b78504cf58e999",
    },
    "uuid": {
        "strip_prefix": "uuid-810954dc1ad9c43491e88e5111e08ac5af57c72a",
        "urls": ["https://github.com/bazelboost/uuid/archive/810954dc1ad9c43491e88e5111e08ac5af57c72a.zip"],
        "sha256": "a812f57b85b147d91582c0e0f956d183dc0aa47d3c404e22ba64a1c2ce78d8e6",
    },
    "variant": {
        "strip_prefix": "variant-670f4bea861e0b57cb37b22953133c88646927ce",
        "urls": ["https://github.com/bazelboost/variant/archive/670f4bea861e0b57cb37b22953133c88646927ce.zip"],
        "sha256": "8460286e69738f0c7a2c4ad243a812794b1efc9432c173f01b8639fe36ab652c",
    },
    "vmd": {
        "strip_prefix": "vmd-72443ee2b4a21b691e8e6136435d15d7ccd6333f",
        "urls": ["https://github.com/bazelboost/vmd/archive/72443ee2b4a21b691e8e6136435d15d7ccd6333f.zip"],
        "sha256": "984f259993260cd23805de44e9fd1bef3581c70f36129d973590bdecb6a8bbf0",
    },
    "wave": {
        "strip_prefix": "wave-c966712ffd2990264a559cb382e616a85bf723f0",
        "urls": ["https://github.com/bazelboost/wave/archive/c966712ffd2990264a559cb382e616a85bf723f0.zip"],
        "sha256": "fdf599752758cc2709849cfa31665cadb29130ccbd1e9ea9ba814555ca2149a2",
    },
    "winapi": {
        "strip_prefix": "winapi-f34f3fe7ea87a01060cafdd00497efbe066950e0",
        "urls": ["https://github.com/bazelboost/winapi/archive/f34f3fe7ea87a01060cafdd00497efbe066950e0.zip"],
        "sha256": "9984a0f6535f8ee93a67f2a3aa1039a8c15748438a1de2cde4612aeef9b8fe69",
    },
    "xpressive": {
        "strip_prefix": "xpressive-75b2635902b3532f6e0466bb630ee356d1e605c6",
        "urls": ["https://github.com/bazelboost/xpressive/archive/75b2635902b3532f6e0466bb630ee356d1e605c6.zip"],
        "sha256": "4d702a12e1b136e9e19b712a67aa049552e4253c41e8b2b2ed1492a0bace7b51",
    },
}

def _boost_lib_repo_name(lib_name):
    return "com_github_bazelboost_{}".format(lib_name)

def _missing_boost_lib(lib_name):
    return native.existing_rule(_boost_lib_repo_name(lib_name)) == None

def boost_http_archives():
    for lib_name in _boost_libs:
        if _missing_boost_lib(lib_name):
            http_archive(
                name = _boost_lib_repo_name(lib_name),
                urls = _boost_libs[lib_name]["urls"],
                strip_prefix = _boost_libs[lib_name]["strip_prefix"],
                sha256 = _boost_libs[lib_name]["sha256"],
            )

def boost_git_repositories(branch):
    for lib_name in _boost_libs:
        if _missing_boost_lib(lib_name):
            git_repository(
                name = _boost_lib_repo_name(lib_name),
                remote = "https://github.com/bazelboost/{}".format(lib_name),
                branch = branch,
            )

def boost_local_repositories(path_prefix):
    for lib_name in _boost_libs:
        if _missing_boost_lib(lib_name):
            native.local_repository(
                name = _boost_lib_repo_name(lib_name),
                path = path_prefix + lib_name,
            )
