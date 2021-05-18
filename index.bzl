load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

_boost_libs = {
    "accumulators": {
        "strip_prefix": "accumulators-6860679bfbc317e59541d7f8bb24085685cddc7b",
        "urls": ["https://github.com/bazelboost/accumulators/archive/6860679bfbc317e59541d7f8bb24085685cddc7b.zip"],
        "sha256": "",
    },
    "algorithm": {
        "strip_prefix": "algorithm-d282c8709932aac86f8b7930d37ba6bb5c44b5e3",
        "urls": ["https://github.com/bazelboost/algorithm/archive/d282c8709932aac86f8b7930d37ba6bb5c44b5e3.zip"],
        "sha256": "",
    },
    "align": {
        "strip_prefix": "align-6e416ba0b59ba08312ed197998e35aa08b207ce0",
        "urls": ["https://github.com/bazelboost/align/archive/6e416ba0b59ba08312ed197998e35aa08b207ce0.zip"],
        "sha256": "",
    },
    "any": {
        "strip_prefix": "any-be90c084e4a593c1a5a17e223d6fa05433c9927a",
        "urls": ["https://github.com/bazelboost/any/archive/be90c084e4a593c1a5a17e223d6fa05433c9927a.zip"],
        "sha256": "",
    },
    "array": {
        "strip_prefix": "array-c35e96a56c208dad639798120baad10cfbbdcaf3",
        "urls": ["https://github.com/bazelboost/array/archive/c35e96a56c208dad639798120baad10cfbbdcaf3.zip"],
        "sha256": "",
    },
    "asio": {
        "strip_prefix": "asio-8279bffb2052b46a8fccd941f0f0ca0b448cbe07",
        "urls": ["https://github.com/bazelboost/asio/archive/8279bffb2052b46a8fccd941f0f0ca0b448cbe07.zip"],
        "sha256": "",
    },
    "assert": {
        "strip_prefix": "assert-ab14cce8ddd6f380bbfc01e3dc27c956d40f2c60",
        "urls": ["https://github.com/bazelboost/assert/archive/ab14cce8ddd6f380bbfc01e3dc27c956d40f2c60.zip"],
        "sha256": "",
    },
    "assign": {
        "strip_prefix": "assign-015bb11b772f8380f6f036d77bb9f8160fd68571",
        "urls": ["https://github.com/bazelboost/assign/archive/015bb11b772f8380f6f036d77bb9f8160fd68571.zip"],
        "sha256": "",
    },
    "atomic": {
        "strip_prefix": "atomic-aaba85602f880138a738b8ab772d0eefb189e823",
        "urls": ["https://github.com/bazelboost/atomic/archive/aaba85602f880138a738b8ab772d0eefb189e823.zip"],
        "sha256": "",
    },
    "beast": {
        "strip_prefix": "beast-4c3c68cee7b93aa72f58d8c262cd65a482f31500",
        "urls": ["https://github.com/bazelboost/beast/archive/4c3c68cee7b93aa72f58d8c262cd65a482f31500.zip"],
        "sha256": "",
    },
    "bimap": {
        "strip_prefix": "bimap-be5f247d6b5749764e997f26e47293bd0a55dc49",
        "urls": ["https://github.com/bazelboost/bimap/archive/be5f247d6b5749764e997f26e47293bd0a55dc49.zip"],
        "sha256": "",
    },
    "bind": {
        "strip_prefix": "bind-2e4e9828fec893e64070bac1ba597889306e82d5",
        "urls": ["https://github.com/bazelboost/bind/archive/2e4e9828fec893e64070bac1ba597889306e82d5.zip"],
        "sha256": "",
    },
    "chrono": {
        "strip_prefix": "chrono-1fd5e2146b7d57505ca420a2ade398fdf55de8d9",
        "urls": ["https://github.com/bazelboost/chrono/archive/1fd5e2146b7d57505ca420a2ade398fdf55de8d9.zip"],
        "sha256": "",
    },
    "circular_buffer": {
        "strip_prefix": "circular_buffer-37b6d69265b96f4ab91867e8ec07a831db2f5f7c",
        "urls": ["https://github.com/bazelboost/circular_buffer/archive/37b6d69265b96f4ab91867e8ec07a831db2f5f7c.zip"],
        "sha256": "",
    },
    "compatibility": {
        "strip_prefix": "compatibility-0c34ea276f6b06147f08c50f25053f3b73ab1d4d",
        "urls": ["https://github.com/bazelboost/compatibility/archive/0c34ea276f6b06147f08c50f25053f3b73ab1d4d.zip"],
        "sha256": "",
    },
    "compute": {
        "strip_prefix": "compute-a2656c8650877970286d9b3f6b9fe6190bb6531c",
        "urls": ["https://github.com/bazelboost/compute/archive/a2656c8650877970286d9b3f6b9fe6190bb6531c.zip"],
        "sha256": "",
    },
    "concept_check": {
        "strip_prefix": "concept_check-a94a221c86d3e901fdacaf516093359975eba3ec",
        "urls": ["https://github.com/bazelboost/concept_check/archive/a94a221c86d3e901fdacaf516093359975eba3ec.zip"],
        "sha256": "0ec9cc329e1276ed3fe3512f797352d3d6d004414e671247c197e95131958b9b",
    },
    "config": {
        "strip_prefix": "config-4653216b1ac65fa819336774c15a8453067096fd",
        "urls": ["https://github.com/bazelboost/config/archive/4653216b1ac65fa819336774c15a8453067096fd.zip"],
        "sha256": "",
    },
    "container": {
        "strip_prefix": "container-d09f6fc7d55491f46a503e7bc698ab3b4a93c1bf",
        "urls": ["https://github.com/bazelboost/container/archive/d09f6fc7d55491f46a503e7bc698ab3b4a93c1bf.zip"],
        "sha256": "5a3ff0b633ab5d34443210e7560a928bf97521f1ecc3eda87b40f19c60349e71",
    },
    "container_hash": {
        "strip_prefix": "container_hash-28c1488cc29a31455d6eb375b838e98d96cb97d6",
        "urls": ["https://github.com/bazelboost/container_hash/archive/28c1488cc29a31455d6eb375b838e98d96cb97d6.zip"],
        "sha256": "",
    },
    "context": {
        "strip_prefix": "context-86fb8fb5e714f71a96dd5ca0a4391501cccab020",
        "urls": ["https://github.com/bazelboost/context/archive/86fb8fb5e714f71a96dd5ca0a4391501cccab020.zip"],
        "sha256": "",
    },
    "conversion": {
        "strip_prefix": "conversion-d6027ffd37c8f51357accca0a42887d026153e7b",
        "urls": ["https://github.com/bazelboost/conversion/archive/d6027ffd37c8f51357accca0a42887d026153e7b.zip"],
        "sha256": "",
    },
    "convert": {
        "strip_prefix": "convert-56272bc58b573b3bf15b3938ccba07f09bebcdfe",
        "urls": ["https://github.com/bazelboost/convert/archive/56272bc58b573b3bf15b3938ccba07f09bebcdfe.zip"],
        "sha256": "",
    },
    "core": {
        "strip_prefix": "core-7791cf3bd7e52a52fadb14a9c0aa52f93b49671e",
        "urls": ["https://github.com/bazelboost/core/archive/7791cf3bd7e52a52fadb14a9c0aa52f93b49671e.zip"],
        "sha256": "",
    },
    "coroutine": {
        "strip_prefix": "coroutine-4e8baa2009dd5a48f1d196c0287f881cf492253a",
        "urls": ["https://github.com/bazelboost/coroutine/archive/4e8baa2009dd5a48f1d196c0287f881cf492253a.zip"],
        "sha256": "",
    },
    "coroutine2": {
        "strip_prefix": "coroutine2-532559496383313ea77d6db8bd3fc258b887e72c",
        "urls": ["https://github.com/bazelboost/coroutine2/archive/532559496383313ea77d6db8bd3fc258b887e72c.zip"],
        "sha256": "",
    },
    "crc": {
        "strip_prefix": "crc-f0794219d3af6d4e66bea0664e8eee82d96b7f5c",
        "urls": ["https://github.com/bazelboost/crc/archive/f0794219d3af6d4e66bea0664e8eee82d96b7f5c.zip"],
        "sha256": "",
    },
    "date_time": {
        "strip_prefix": "date_time-3beb75006da416120e494d79ca257cff48371993",
        "urls": ["https://github.com/bazelboost/date_time/archive/3beb75006da416120e494d79ca257cff48371993.zip"],
        "sha256": "",
    },
    "detail": {
        "strip_prefix": "detail-6380fc78ea32713579f2d76ea4c21ae7393c91a9",
        "urls": ["https://github.com/bazelboost/detail/archive/6380fc78ea32713579f2d76ea4c21ae7393c91a9.zip"],
        "sha256": "f808d46e2a6e98fb5ccc06b12c854bd1af20e1b5aa048cf44caafabb2d8c9dea",
    },
    "disjoint_sets": {
        "strip_prefix": "disjoint_sets-f1b0f11717d6ae2cea4b353423f2e06c58c5d580",
        "urls": ["https://github.com/bazelboost/disjoint_sets/archive/f1b0f11717d6ae2cea4b353423f2e06c58c5d580.zip"],
        "sha256": "",
    },
    "dll": {
        "strip_prefix": "dll-715eba080365d99bc9d41113fe5db88db5a8a507",
        "urls": ["https://github.com/bazelboost/dll/archive/715eba080365d99bc9d41113fe5db88db5a8a507.zip"],
        "sha256": "",
    },
    "dynamic_bitset": {
        "strip_prefix": "dynamic_bitset-20e1844872934a249b5abaeb99092a5aa942b0b7",
        "urls": ["https://github.com/bazelboost/dynamic_bitset/archive/20e1844872934a249b5abaeb99092a5aa942b0b7.zip"],
        "sha256": "",
    },
    "endian": {
        "strip_prefix": "endian-0e7b56db1bc9d1c6145f82a1aef7323580e99115",
        "urls": ["https://github.com/bazelboost/endian/archive/0e7b56db1bc9d1c6145f82a1aef7323580e99115.zip"],
        "sha256": "",
    },
    "exception": {
        "strip_prefix": "exception-93f16e07b703cb92f0c7b05eda4f1b14aa638319",
        "urls": ["https://github.com/bazelboost/exception/archive/93f16e07b703cb92f0c7b05eda4f1b14aa638319.zip"],
        "sha256": "ccc1cbfcb94f710a1a33e27f6369cefdf42f12de3bdcaef8455642da3ec278cb",
    },
    "fiber": {
        "strip_prefix": "fiber-ade850723ddfbb213b65d021cd959e88f3251236",
        "urls": ["https://github.com/bazelboost/fiber/archive/ade850723ddfbb213b65d021cd959e88f3251236.zip"],
        "sha256": "",
    },
    "filesystem": {
        "strip_prefix": "filesystem-ecf64b6d95d3955fb89884d88657607d02a77124",
        "urls": ["https://github.com/bazelboost/filesystem/archive/ecf64b6d95d3955fb89884d88657607d02a77124.zip"],
        "sha256": "",
    },
    "flyweight": {
        "strip_prefix": "flyweight-ea803909075d630d9263ed406f418d13ab4e5b64",
        "urls": ["https://github.com/bazelboost/flyweight/archive/ea803909075d630d9263ed406f418d13ab4e5b64.zip"],
        "sha256": "",
    },
    "foreach": {
        "strip_prefix": "foreach-2ac3e10bbfd2e463c428248c17ccec84d6471124",
        "urls": ["https://github.com/bazelboost/foreach/archive/2ac3e10bbfd2e463c428248c17ccec84d6471124.zip"],
        "sha256": "",
    },
    "format": {
        "strip_prefix": "format-eeec8ba44146b6e0b06aded89bf1fea02fa102ff",
        "urls": ["https://github.com/bazelboost/format/archive/eeec8ba44146b6e0b06aded89bf1fea02fa102ff.zip"],
        "sha256": "",
    },
    "function": {
        "strip_prefix": "function-fff124eb767a37dee43a4d65010e417cf3d8a085",
        "urls": ["https://github.com/bazelboost/function/archive/fff124eb767a37dee43a4d65010e417cf3d8a085.zip"],
        "sha256": "",
    },
    "function_types": {
        "strip_prefix": "function_types-90fa2353dce0762961c345c134caa528ade891d3",
        "urls": ["https://github.com/bazelboost/function_types/archive/90fa2353dce0762961c345c134caa528ade891d3.zip"],
        "sha256": "",
    },
    "functional": {
        "strip_prefix": "functional-d9f0222261e9e243417b25c02aa21a9a77028e20",
        "urls": ["https://github.com/bazelboost/functional/archive/d9f0222261e9e243417b25c02aa21a9a77028e20.zip"],
        "sha256": "",
    },
    "fusion": {
        "strip_prefix": "fusion-9fea2347e9e5505fb88f895988848f3e4e1c55de",
        "urls": ["https://github.com/bazelboost/fusion/archive/9fea2347e9e5505fb88f895988848f3e4e1c55de.zip"],
        "sha256": "0fb87b9888f5ba77be1685dc2362483b713898bd511030dd901c6b012a2bf4af",
    },
    "geometry": {
        "strip_prefix": "geometry-a5e70f2912b4b70af69199bb9f8e6f9e032f1ae2",
        "urls": ["https://github.com/bazelboost/geometry/archive/a5e70f2912b4b70af69199bb9f8e6f9e032f1ae2.zip"],
        "sha256": "",
    },
    "gil": {
        "strip_prefix": "gil-2cad7b04b95bcb1d5e49914541f3e59c2a073f25",
        "urls": ["https://github.com/bazelboost/gil/archive/2cad7b04b95bcb1d5e49914541f3e59c2a073f25.zip"],
        "sha256": "",
    },
    "graph": {
        "strip_prefix": "graph-e123ef1acf702c923d1cdfc31a3bb6405f572d43",
        "urls": ["https://github.com/bazelboost/graph/archive/e123ef1acf702c923d1cdfc31a3bb6405f572d43.zip"],
        "sha256": "",
    },
    "graph_parallel": {
        "strip_prefix": "graph_parallel-e2e639bb6a7deefb4329c5c1da41adaef041e80f",
        "urls": ["https://github.com/bazelboost/graph_parallel/archive/e2e639bb6a7deefb4329c5c1da41adaef041e80f.zip"],
        "sha256": "",
    },
    "hana": {
        "strip_prefix": "hana-61430413eb428d44a87594d728739f56bc6ad7ac",
        "urls": ["https://github.com/bazelboost/hana/archive/61430413eb428d44a87594d728739f56bc6ad7ac.zip"],
        "sha256": "",
    },
    "heap": {
        "strip_prefix": "heap-20d4e899b4f59c6d1e42eb99a28c7c4bd777c071",
        "urls": ["https://github.com/bazelboost/heap/archive/20d4e899b4f59c6d1e42eb99a28c7c4bd777c071.zip"],
        "sha256": "",
    },
    "icl": {
        "strip_prefix": "icl-6dc0207a824158e49a9e47e46847ae4cd49cf73f",
        "urls": ["https://github.com/bazelboost/icl/archive/6dc0207a824158e49a9e47e46847ae4cd49cf73f.zip"],
        "sha256": "",
    },
    "integer": {
        "strip_prefix": "integer-4be9006382111f20632d2b5c429c5d65ba13c115",
        "urls": ["https://github.com/bazelboost/integer/archive/4be9006382111f20632d2b5c429c5d65ba13c115.zip"],
        "sha256": "381f351ed63b4240d4893dfc758d70cf591a98ea47fba1a6d02403639ae6c82c",
    },
    "interprocess": {
        "strip_prefix": "interprocess-2f5e43dbcec8d36ead755f5659c43c9dc554ce19",
        "urls": ["https://github.com/bazelboost/interprocess/archive/2f5e43dbcec8d36ead755f5659c43c9dc554ce19.zip"],
        "sha256": "",
    },
    "intrusive": {
        "strip_prefix": "intrusive-b26577c512b74e734d8ce4859b5e1592a5a84a86",
        "urls": ["https://github.com/bazelboost/intrusive/archive/b26577c512b74e734d8ce4859b5e1592a5a84a86.zip"],
        "sha256": "2dcd6c81987438c48e2e51edcf0ddc512ac6abbe57222cbe547126b4c2644143",
    },
    "io": {
        "strip_prefix": "io-ba0bde8919e6cc1ef9f8ac109f6ccfb37011ed1e",
        "urls": ["https://github.com/bazelboost/io/archive/ba0bde8919e6cc1ef9f8ac109f6ccfb37011ed1e.zip"],
        "sha256": "",
    },
    "iostreams": {
        "strip_prefix": "iostreams-2d76d92ba751de4eaca5b05282f4ecc9578c341b",
        "urls": ["https://github.com/bazelboost/iostreams/archive/2d76d92ba751de4eaca5b05282f4ecc9578c341b.zip"],
        "sha256": "",
    },
    "iterator": {
        "strip_prefix": "iterator-d054f296a29cc0e2ede3a0953d534ca46130dd01",
        "urls": ["https://github.com/bazelboost/iterator/archive/d054f296a29cc0e2ede3a0953d534ca46130dd01.zip"],
        "sha256": "",
    },
    "lambda": {
        "strip_prefix": "lambda-a861a7e3c03e36fc4ff77f8aa9bb517472de54bc",
        "urls": ["https://github.com/bazelboost/lambda/archive/a861a7e3c03e36fc4ff77f8aa9bb517472de54bc.zip"],
        "sha256": "",
    },
    "lexical_cast": {
        "strip_prefix": "lexical_cast-f82dbd386b28ace1ca1035c2112bbb1d3b107c9a",
        "urls": ["https://github.com/bazelboost/lexical_cast/archive/f82dbd386b28ace1ca1035c2112bbb1d3b107c9a.zip"],
        "sha256": "",
    },
    "local_function": {
        "strip_prefix": "local_function-dd543965d9f19ec745984430e6ae8729e0f63c67",
        "urls": ["https://github.com/bazelboost/local_function/archive/dd543965d9f19ec745984430e6ae8729e0f63c67.zip"],
        "sha256": "",
    },
    "locale": {
        "strip_prefix": "locale-2ae5960056d3aae1b527c6a605b9cbf8d6a9eb81",
        "urls": ["https://github.com/bazelboost/locale/archive/2ae5960056d3aae1b527c6a605b9cbf8d6a9eb81.zip"],
        "sha256": "",
    },
    "lockfree": {
        "strip_prefix": "lockfree-673f4ba6d02cf5b7cd6de2169285579e6347ecf7",
        "urls": ["https://github.com/bazelboost/lockfree/archive/673f4ba6d02cf5b7cd6de2169285579e6347ecf7.zip"],
        "sha256": "",
    },
    "log": {
        "strip_prefix": "log-5dda33ecd02d70f47a4e8ed77b57eab66a5b02c3",
        "urls": ["https://github.com/bazelboost/log/archive/5dda33ecd02d70f47a4e8ed77b57eab66a5b02c3.zip"],
        "sha256": "",
    },
    "logic": {
        "strip_prefix": "logic-2434cfd9cbf91d53211a2cfe084f58c523ee01f9",
        "urls": ["https://github.com/bazelboost/logic/archive/2434cfd9cbf91d53211a2cfe084f58c523ee01f9.zip"],
        "sha256": "fe0ee5636e7e43d93d303d392a41c5b23571e26e5259e7e74c58c56b1584a9d4",
    },
    "math": {
        "strip_prefix": "math-a578529bc6f058187d1a74973d4fa8c3024eb678",
        "urls": ["https://github.com/bazelboost/math/archive/a578529bc6f058187d1a74973d4fa8c3024eb678.zip"],
        "sha256": "",
    },
    "metaparse": {
        "strip_prefix": "metaparse-b6ed3281c8e2bcf6a7a8f86cb4f0228059a743fa",
        "urls": ["https://github.com/bazelboost/metaparse/archive/b6ed3281c8e2bcf6a7a8f86cb4f0228059a743fa.zip"],
        "sha256": "",
    },
    "move": {
        "strip_prefix": "move-31894b3ac9039bf5d8d8ca03203f1510af2ef51d",
        "urls": ["https://github.com/bazelboost/move/archive/31894b3ac9039bf5d8d8ca03203f1510af2ef51d.zip"],
        "sha256": "",
    },
    "mp11": {
        "strip_prefix": "mp11-4bd3ae72b3662840650a3c3cf420c812a0728f0d",
        "urls": ["https://github.com/bazelboost/mp11/archive/4bd3ae72b3662840650a3c3cf420c812a0728f0d.zip"],
        "sha256": "c07a5d9469655a594d201d4020753766cc987b83060b3005b0d1bd242f2e198a",
    },
    "mpi": {
        "strip_prefix": "mpi-18303beb044eb2f22c24bcb140ca617d448db60d",
        "urls": ["https://github.com/bazelboost/mpi/archive/18303beb044eb2f22c24bcb140ca617d448db60d.zip"],
        "sha256": "",
    },
    "mpl": {
        "strip_prefix": "mpl-9843c85630f70f4ed1d92d450c62559b08f90d00",
        "urls": ["https://github.com/bazelboost/mpl/archive/9843c85630f70f4ed1d92d450c62559b08f90d00.zip"],
        "sha256": "",
    },
    "msm": {
        "strip_prefix": "msm-58c3b937dd0ad4ec39d46b2c4cf7a48f14075775",
        "urls": ["https://github.com/bazelboost/msm/archive/58c3b937dd0ad4ec39d46b2c4cf7a48f14075775.zip"],
        "sha256": "",
    },
    "multi_array": {
        "strip_prefix": "multi_array-f7558ed5e2e5ebe7af9028da87e2c1c5ccea30ad",
        "urls": ["https://github.com/bazelboost/multi_array/archive/f7558ed5e2e5ebe7af9028da87e2c1c5ccea30ad.zip"],
        "sha256": "",
    },
    "multi_index": {
        "strip_prefix": "multi_index-5acccbcda106e9adbb834eafc8d43ed4ef7112de",
        "urls": ["https://github.com/bazelboost/multi_index/archive/5acccbcda106e9adbb834eafc8d43ed4ef7112de.zip"],
        "sha256": "",
    },
    "multiprecision": {
        "strip_prefix": "multiprecision-711b89797a95151787ad43f4004845be2e445d34",
        "urls": ["https://github.com/bazelboost/multiprecision/archive/711b89797a95151787ad43f4004845be2e445d34.zip"],
        "sha256": "",
    },
    "numeric_conversion": {
        "strip_prefix": "numeric_conversion-a704e14b2b8fc1ec72be525e68bc784290231ece",
        "urls": ["https://github.com/bazelboost/numeric_conversion/archive/a704e14b2b8fc1ec72be525e68bc784290231ece.zip"],
        "sha256": "",
    },
    "optional": {
        "strip_prefix": "optional-a221d69dbb9e9da57b6748821f8c39582964b614",
        "urls": ["https://github.com/bazelboost/optional/archive/a221d69dbb9e9da57b6748821f8c39582964b614.zip"],
        "sha256": "",
    },
    "parameter": {
        "strip_prefix": "parameter-c553e866aa1f74bf09be837097c097b1582fc055",
        "urls": ["https://github.com/bazelboost/parameter/archive/c553e866aa1f74bf09be837097c097b1582fc055.zip"],
        "sha256": "",
    },
    "phoenix": {
        "strip_prefix": "phoenix-5ac47802d1f67e8b155f295dd95cec7070370c4d",
        "urls": ["https://github.com/bazelboost/phoenix/archive/5ac47802d1f67e8b155f295dd95cec7070370c4d.zip"],
        "sha256": "",
    },
    "poly_collection": {
        "strip_prefix": "poly_collection-3403b3d65cbdc522d99857c3d046acfb8573d5dd",
        "urls": ["https://github.com/bazelboost/poly_collection/archive/3403b3d65cbdc522d99857c3d046acfb8573d5dd.zip"],
        "sha256": "",
    },
    "polygon": {
        "strip_prefix": "polygon-d85a6b2c392ba086f4781a59daae1a9aaf279829",
        "urls": ["https://github.com/bazelboost/polygon/archive/d85a6b2c392ba086f4781a59daae1a9aaf279829.zip"],
        "sha256": "",
    },
    "pool": {
        "strip_prefix": "pool-9e77106153a67271cf33ede3e7a426af48f04e12",
        "urls": ["https://github.com/bazelboost/pool/archive/9e77106153a67271cf33ede3e7a426af48f04e12.zip"],
        "sha256": "",
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
        "sha256": "",
    },
    "program_options": {
        "strip_prefix": "program_options-c5ed81ceef35d763922e5e575b151b55ebc220a3",
        "urls": ["https://github.com/bazelboost/program_options/archive/c5ed81ceef35d763922e5e575b151b55ebc220a3.zip"],
        "sha256": "",
    },
    "property_map": {
        "strip_prefix": "property_map-3d81a078df927ca6b40daecd5e418eb2edc78a71",
        "urls": ["https://github.com/bazelboost/property_map/archive/3d81a078df927ca6b40daecd5e418eb2edc78a71.zip"],
        "sha256": "",
    },
    "property_tree": {
        "strip_prefix": "property_tree-8f9da1438db1d0d44de187a7ce7617d9db4a9b0d",
        "urls": ["https://github.com/bazelboost/property_tree/archive/8f9da1438db1d0d44de187a7ce7617d9db4a9b0d.zip"],
        "sha256": "",
    },
    "proto": {
        "strip_prefix": "proto-1c6ef7519c0323e2e67ca1e8f501652a6d9826d9",
        "urls": ["https://github.com/bazelboost/proto/archive/1c6ef7519c0323e2e67ca1e8f501652a6d9826d9.zip"],
        "sha256": "",
    },
    "ptr_container": {
        "strip_prefix": "ptr_container-8390b6502bd25332253a63fdfa6cc6314407cd4f",
        "urls": ["https://github.com/bazelboost/ptr_container/archive/8390b6502bd25332253a63fdfa6cc6314407cd4f.zip"],
        "sha256": "",
    },
    "python": {
        "strip_prefix": "python-9200c1379d2ca37cc8a9b8383811e6edf6cc9d45",
        "urls": ["https://github.com/bazelboost/python/archive/9200c1379d2ca37cc8a9b8383811e6edf6cc9d45.zip"],
        "sha256": "",
    },
    "qvm": {
        "strip_prefix": "qvm-27d33eb056650421637f1429add8a17c4c7bdda5",
        "urls": ["https://github.com/bazelboost/qvm/archive/27d33eb056650421637f1429add8a17c4c7bdda5.zip"],
        "sha256": "",
    },
    "random": {
        "strip_prefix": "random-2937db979a878fe032e42d56266315b6685cc4c0",
        "urls": ["https://github.com/bazelboost/random/archive/2937db979a878fe032e42d56266315b6685cc4c0.zip"],
        "sha256": "",
    },
    "range": {
        "strip_prefix": "range-3f904e692cae81af37fc7ffab04dab26290c9475",
        "urls": ["https://github.com/bazelboost/range/archive/3f904e692cae81af37fc7ffab04dab26290c9475.zip"],
        "sha256": "",
    },
    "ratio": {
        "strip_prefix": "ratio-755eba4d53158bf658aedad35910576f5566602d",
        "urls": ["https://github.com/bazelboost/ratio/archive/755eba4d53158bf658aedad35910576f5566602d.zip"],
        "sha256": "",
    },
    "rational": {
        "strip_prefix": "rational-55f192a30b1224180e1ca413ce6391d86bf0b94c",
        "urls": ["https://github.com/bazelboost/rational/archive/55f192a30b1224180e1ca413ce6391d86bf0b94c.zip"],
        "sha256": "",
    },
    "regex": {
        "strip_prefix": "regex-7a5d022ad6772295a3b9783427dc88a018bbc067",
        "urls": ["https://github.com/bazelboost/regex/archive/7a5d022ad6772295a3b9783427dc88a018bbc067.zip"],
        "sha256": "b38cd7b628f2acabdb5a4b552c7168f086de5999909de9eb53310a7bcab7ccc5",
    },
    "scope_exit": {
        "strip_prefix": "scope_exit-5c6072be06d52f4a9cd705c3f9904ebf7e515529",
        "urls": ["https://github.com/bazelboost/scope_exit/archive/5c6072be06d52f4a9cd705c3f9904ebf7e515529.zip"],
        "sha256": "",
    },
    "serialization": {
        "strip_prefix": "serialization-d98e50abc1dd68abee57c4c7d76543c3d5fc0a2e",
        "urls": ["https://github.com/bazelboost/serialization/archive/d98e50abc1dd68abee57c4c7d76543c3d5fc0a2e.zip"],
        "sha256": "",
    },
    "signals": {
        "strip_prefix": "signals-76be42a4ba26656d2896b2b8e2f656d9b4bf5a74",
        "urls": ["https://github.com/bazelboost/signals/archive/76be42a4ba26656d2896b2b8e2f656d9b4bf5a74.zip"],
        "sha256": "",
    },
    "signals2": {
        "strip_prefix": "signals2-68b47c5fdc36894adefb9ec7e024a1ae87c5ad8e",
        "urls": ["https://github.com/bazelboost/signals2/archive/68b47c5fdc36894adefb9ec7e024a1ae87c5ad8e.zip"],
        "sha256": "",
    },
    "smart_ptr": {
        "strip_prefix": "smart_ptr-d9ccd97744d85826fc7a80d8ba065fcb7e1c4650",
        "urls": ["https://github.com/bazelboost/smart_ptr/archive/d9ccd97744d85826fc7a80d8ba065fcb7e1c4650.zip"],
        "sha256": "",
    },
    "sort": {
        "strip_prefix": "sort-9881eebc04a77a1e270808330efc79c9ccbda867",
        "urls": ["https://github.com/bazelboost/sort/archive/9881eebc04a77a1e270808330efc79c9ccbda867.zip"],
        "sha256": "",
    },
    "spirit": {
        "strip_prefix": "spirit-872c438daa97b7e892a33925f74ea17f20d4c7ed",
        "urls": ["https://github.com/bazelboost/spirit/archive/872c438daa97b7e892a33925f74ea17f20d4c7ed.zip"],
        "sha256": "",
    },
    "stacktrace": {
        "strip_prefix": "stacktrace-064edb28903b84626d75d84f3a599699f5115634",
        "urls": ["https://github.com/bazelboost/stacktrace/archive/064edb28903b84626d75d84f3a599699f5115634.zip"],
        "sha256": "",
    },
    "statechart": {
        "strip_prefix": "statechart-403e4669d4fcb88b933fb9c1b2f66e4bacd5accd",
        "urls": ["https://github.com/bazelboost/statechart/archive/403e4669d4fcb88b933fb9c1b2f66e4bacd5accd.zip"],
        "sha256": "",
    },
    "static_assert": {
        "strip_prefix": "static_assert-b079787afeda2e3e5c113bca6590adae8b78bb84",
        "urls": ["https://github.com/bazelboost/static_assert/archive/b079787afeda2e3e5c113bca6590adae8b78bb84.zip"],
        "sha256": "",
    },
    "system": {
        "strip_prefix": "system-675d15d8d6b3386f05225950b967bd28d630c9ec",
        "urls": ["https://github.com/bazelboost/system/archive/675d15d8d6b3386f05225950b967bd28d630c9ec.zip"],
        "sha256": "",
    },
    "test": {
        "strip_prefix": "test-6d1afb552cfed664d0d05c97eeda78cc225b368e",
        "urls": ["https://github.com/bazelboost/test/archive/6d1afb552cfed664d0d05c97eeda78cc225b368e.zip"],
        "sha256": "",
    },
    "thread": {
        "strip_prefix": "thread-ceffc31b55e93f32259e5e15c993ca86f63fa695",
        "urls": ["https://github.com/bazelboost/thread/archive/ceffc31b55e93f32259e5e15c993ca86f63fa695.zip"],
        "sha256": "",
    },
    "throw_exception": {
        "strip_prefix": "throw_exception-fd2a61f16711c2e286cd5f36cacbe2856404152e",
        "urls": ["https://github.com/bazelboost/throw_exception/archive/fd2a61f16711c2e286cd5f36cacbe2856404152e.zip"],
        "sha256": "0d6302a4333e46d7d30e54bf3d7fcf67998259fee577f29a9a739a7e80574194",
    },
    "timer": {
        "strip_prefix": "timer-cdbcdf16dad70753704ec8526a194aa156593a1e",
        "urls": ["https://github.com/bazelboost/timer/archive/cdbcdf16dad70753704ec8526a194aa156593a1e.zip"],
        "sha256": "",
    },
    "tokenizer": {
        "strip_prefix": "tokenizer-51b2c5e1456f12d5e6da173fac849745e6626a66",
        "urls": ["https://github.com/bazelboost/tokenizer/archive/51b2c5e1456f12d5e6da173fac849745e6626a66.zip"],
        "sha256": "64b36935d8ceb63907f4203b3e7a42ea08f26103b2ec38fe4419c13d1d47701f",
    },
    "tti": {
        "strip_prefix": "tti-88113c5629eb1a5ea0f1c2b2d56c47912e0940ec",
        "urls": ["https://github.com/bazelboost/tti/archive/88113c5629eb1a5ea0f1c2b2d56c47912e0940ec.zip"],
        "sha256": "",
    },
    "tuple": {
        "strip_prefix": "tuple-be1952797ca740917c182e6972f2916c0db18f4a",
        "urls": ["https://github.com/bazelboost/tuple/archive/be1952797ca740917c182e6972f2916c0db18f4a.zip"],
        "sha256": "",
    },
    "type_erasure": {
        "strip_prefix": "type_erasure-b69b6b162cd9e14a3eacf10cdef8e51765861b6e",
        "urls": ["https://github.com/bazelboost/type_erasure/archive/b69b6b162cd9e14a3eacf10cdef8e51765861b6e.zip"],
        "sha256": "",
    },
    "type_index": {
        "strip_prefix": "type_index-ce6dcfb5ad2689db70794616c05087f325e4a7fb",
        "urls": ["https://github.com/bazelboost/type_index/archive/ce6dcfb5ad2689db70794616c05087f325e4a7fb.zip"],
        "sha256": "",
    },
    "type_traits": {
        "strip_prefix": "type_traits-74606d6515efa16f69b1e55408baaa2e8c43dd29",
        "urls": ["https://github.com/bazelboost/type_traits/archive/74606d6515efa16f69b1e55408baaa2e8c43dd29.zip"],
        "sha256": "",
    },
    "typeof": {
        "strip_prefix": "typeof-e7b53c027929e74157f04cdd28b8dd80661797c1",
        "urls": ["https://github.com/bazelboost/typeof/archive/e7b53c027929e74157f04cdd28b8dd80661797c1.zip"],
        "sha256": "",
    },
    "units": {
        "strip_prefix": "units-8d5fcbae9861d5dbe2c96d9219a5b688de11259b",
        "urls": ["https://github.com/bazelboost/units/archive/8d5fcbae9861d5dbe2c96d9219a5b688de11259b.zip"],
        "sha256": "",
    },
    "unordered": {
        "strip_prefix": "unordered-9de9009dab519de9a15b26ae542c93613bf16486",
        "urls": ["https://github.com/bazelboost/unordered/archive/9de9009dab519de9a15b26ae542c93613bf16486.zip"],
        "sha256": "",
    },
    "utility": {
        "strip_prefix": "utility-e0b7828ab20a39527639d0a28a748957d367e208",
        "urls": ["https://github.com/bazelboost/utility/archive/e0b7828ab20a39527639d0a28a748957d367e208.zip"],
        "sha256": "",
    },
    "uuid": {
        "strip_prefix": "uuid-810954dc1ad9c43491e88e5111e08ac5af57c72a",
        "urls": ["https://github.com/bazelboost/uuid/archive/810954dc1ad9c43491e88e5111e08ac5af57c72a.zip"],
        "sha256": "",
    },
    "variant": {
        "strip_prefix": "variant-670f4bea861e0b57cb37b22953133c88646927ce",
        "urls": ["https://github.com/bazelboost/variant/archive/670f4bea861e0b57cb37b22953133c88646927ce.zip"],
        "sha256": "",
    },
    "vmd": {
        "strip_prefix": "vmd-72443ee2b4a21b691e8e6136435d15d7ccd6333f",
        "urls": ["https://github.com/bazelboost/vmd/archive/72443ee2b4a21b691e8e6136435d15d7ccd6333f.zip"],
        "sha256": "",
    },
    "wave": {
        "strip_prefix": "wave-c966712ffd2990264a559cb382e616a85bf723f0",
        "urls": ["https://github.com/bazelboost/wave/archive/c966712ffd2990264a559cb382e616a85bf723f0.zip"],
        "sha256": "",
    },
    "winapi": {
        "strip_prefix": "winapi-f34f3fe7ea87a01060cafdd00497efbe066950e0",
        "urls": ["https://github.com/bazelboost/winapi/archive/f34f3fe7ea87a01060cafdd00497efbe066950e0.zip"],
        "sha256": "",
    },
    "xpressive": {
        "strip_prefix": "xpressive-75b2635902b3532f6e0466bb630ee356d1e605c6",
        "urls": ["https://github.com/bazelboost/xpressive/archive/75b2635902b3532f6e0466bb630ee356d1e605c6.zip"],
        "sha256": "",
    }
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
