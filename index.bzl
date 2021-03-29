load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

_boost_libs = {
    "accumulators": {
        "strip_prefix": "accumulators-6860679bfbc317e59541d7f8bb24085685cddc7b",
        "urls": ["https://github.com/bazelboost/accumulators/archive/6860679bfbc317e59541d7f8bb24085685cddc7b.zip"],
        "sha256": "",
    },
    "algorithm": {
        "strip_prefix": "algorithm-3a1dcad338f18825d154f4b6acaa7b29f538ffac",
        "urls": ["https://github.com/bazelboost/algorithm/archive/3a1dcad338f18825d154f4b6acaa7b29f538ffac.zip"],
        "sha256": "2246b60d648367deecdad9f3ff64ff1c0e3198ac439fdf1f26b10da9286dbf74",
    },
    "align": {
        "strip_prefix": "align-6e416ba0b59ba08312ed197998e35aa08b207ce0",
        "urls": ["https://github.com/bazelboost/align/archive/6e416ba0b59ba08312ed197998e35aa08b207ce0.zip"],
        "sha256": "",
    },
    "any": {
        "strip_prefix": "any-e3cc1403438df9b513db9c5509ecd0d950e043e2",
        "urls": ["https://github.com/bazelboost/any/archive/e3cc1403438df9b513db9c5509ecd0d950e043e2.zip"],
        "sha256": "",
    },
    "array": {
        "strip_prefix": "array-d1e39842f44e4d5c0afe9b8be92219a646e8775d",
        "urls": ["https://github.com/bazelboost/array/archive/d1e39842f44e4d5c0afe9b8be92219a646e8775d.zip"],
        "sha256": "5023a13675f85d065b0a48f136ac771101af2eb3314d19eb7040d103ebd801f0",
    },
    "asio": {
        "strip_prefix": "asio-26df3a49596440fc98bfc4596b4fa407b99f6180",
        "urls": ["https://github.com/bazelboost/asio/archive/26df3a49596440fc98bfc4596b4fa407b99f6180.zip"],
        "sha256": "c8edc57e2d1fe0e99a257ad99139d7e1a8c885c01c4c27e3bc89b071ac19714a",
    },
    "assert": {
        "strip_prefix": "assert-b6b7938ed92538b9d226c112d8073b80e856ec78",
        "urls": ["https://github.com/bazelboost/assert/archive/b6b7938ed92538b9d226c112d8073b80e856ec78.zip"],
        "sha256": "94c1487a6c31e5ffb1d1a1556d477d853047fef369a9a4f4e20c5baf220cc221",
    },
    "assign": {
        "strip_prefix": "assign-015bb11b772f8380f6f036d77bb9f8160fd68571",
        "urls": ["https://github.com/bazelboost/assign/archive/015bb11b772f8380f6f036d77bb9f8160fd68571.zip"],
        "sha256": "",
    },
    "atomic": {
        "strip_prefix": "atomic-a8a22e83ca794fcf7f466aa2b80944c4b2316c96",
        "urls": ["https://github.com/bazelboost/atomic/archive/a8a22e83ca794fcf7f466aa2b80944c4b2316c96.zip"],
        "sha256": "",
    },
    "bimap": {
        "strip_prefix": "bimap-118397a2ba5998866fbf0cdc09075b6a6a831eb0",
        "urls": ["https://github.com/bazelboost/bimap/archive/118397a2ba5998866fbf0cdc09075b6a6a831eb0.zip"],
        "sha256": "",
    },
    "bind": {
        "strip_prefix": "bind-3964b1e3b6582bb789eed1730524382a18b6baeb",
        "urls": ["https://github.com/bazelboost/bind/archive/3964b1e3b6582bb789eed1730524382a18b6baeb.zip"],
        "sha256": "cf0eea8a18a36363252f605fc18a99098158f8171a0d7e3d0088b89ef9584ca5",
    },
    "chrono": {
        "strip_prefix": "chrono-487ba50789e325a0ed892afc60a73a23daac0f1a",
        "urls": ["https://github.com/bazelboost/chrono/archive/487ba50789e325a0ed892afc60a73a23daac0f1a.zip"],
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
        "strip_prefix": "config-e4dd697ef06cde9e4cbcc1a831f24e4f8384c8cd",
        "urls": ["https://github.com/bazelboost/config/archive/e4dd697ef06cde9e4cbcc1a831f24e4f8384c8cd.zip"],
        "sha256": "e9a023d78f395fea1858fcb67f39e538cc0d799c0e27556f2448117083935044",
    },
    "container": {
        "strip_prefix": "container-d09f6fc7d55491f46a503e7bc698ab3b4a93c1bf",
        "urls": ["https://github.com/bazelboost/container/archive/d09f6fc7d55491f46a503e7bc698ab3b4a93c1bf.zip"],
        "sha256": "5a3ff0b633ab5d34443210e7560a928bf97521f1ecc3eda87b40f19c60349e71",
    },
    "container_hash": {
        "strip_prefix": "container_hash-f90026ac458b622bc3e699328b89efd8692fe502",
        "urls": ["https://github.com/bazelboost/container_hash/archive/f90026ac458b622bc3e699328b89efd8692fe502.zip"],
        "sha256": "22a2d39becc49cd2e603de7be35fc82caf277d3f8e335c31f47b202f3200a195",
    },
    "context": {
        "strip_prefix": "context-3830f13976346b10330e4fad8be19eb2e847a4f6",
        "urls": ["https://github.com/bazelboost/context/archive/3830f13976346b10330e4fad8be19eb2e847a4f6.zip"],
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
        "strip_prefix": "core-d65bde3da03973486d751ad36ddcfeac3233f6ad",
        "urls": ["https://github.com/bazelboost/core/archive/d65bde3da03973486d751ad36ddcfeac3233f6ad.zip"],
        "sha256": "bc70dd08ef5cb989299eba38d16676344c3c5cedc9ad2b1197037639f6c0789c",
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
        "strip_prefix": "date_time-9930341575760d46a55cc13fd29b4fed09e83ff6",
        "urls": ["https://github.com/bazelboost/date_time/archive/9930341575760d46a55cc13fd29b4fed09e83ff6.zip"],
        "sha256": "8b0a10546a64d599abf7349bef4293c0e2b9273136deda74c4cfc977e4e0667f",
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
        "strip_prefix": "dynamic_bitset-e011a1c0a0c6774e39a84b1b359738cd7e0960f9",
        "urls": ["https://github.com/bazelboost/dynamic_bitset/archive/e011a1c0a0c6774e39a84b1b359738cd7e0960f9.zip"],
        "sha256": "",
    },
    "endian": {
        "strip_prefix": "endian-a8304627484f751984b1dd9458f0e6ea16520b05",
        "urls": ["https://github.com/bazelboost/endian/archive/a8304627484f751984b1dd9458f0e6ea16520b05.zip"],
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
        "strip_prefix": "filesystem-5b6baf3c24078878ba9ab0d23c25930737807896",
        "urls": ["https://github.com/bazelboost/filesystem/archive/5b6baf3c24078878ba9ab0d23c25930737807896.zip"],
        "sha256": "bc59aa74b7287a21f07c5aa6ee8706f0ad3271d0a4c9b575c021999852ede2b1",
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
        "strip_prefix": "function-3b231560def2d55d6224ec6c361d2b33610f0bbe",
        "urls": ["https://github.com/bazelboost/function/archive/3b231560def2d55d6224ec6c361d2b33610f0bbe.zip"],
        "sha256": "86e86faf8dbee3cdabf81e4264e464eddbb6b69af5841a2dd8d14660384a1e9e",
    },
    "function_types": {
        "strip_prefix": "function_types-90fa2353dce0762961c345c134caa528ade891d3",
        "urls": ["https://github.com/bazelboost/function_types/archive/90fa2353dce0762961c345c134caa528ade891d3.zip"],
        "sha256": "",
    },
    "functional": {
        "strip_prefix": "functional-b8e22547232819fefd9995c5d7edee8e49763096",
        "urls": ["https://github.com/bazelboost/functional/archive/b8e22547232819fefd9995c5d7edee8e49763096.zip"],
        "sha256": "c9b93527b581e4a63188f25a05b941e75658b9c52fd90597412e7cf1ef400dfd",
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
        "strip_prefix": "intrusive-6b1debfe454935377e0fd9a9f39d084e22e167ed",
        "urls": ["https://github.com/bazelboost/intrusive/archive/6b1debfe454935377e0fd9a9f39d084e22e167ed.zip"],
        "sha256": "",
    },
    "io": {
        "strip_prefix": "io-e1e4521b7e8e91e62cf0d4232fa216cd361d551d",
        "urls": ["https://github.com/bazelboost/io/archive/e1e4521b7e8e91e62cf0d4232fa216cd361d551d.zip"],
        "sha256": "3463f5fc8ccc81fd757dc2a4695a6ced252bf2537284b8da856bee02f87e05c6",
    },
    "iostreams": {
        "strip_prefix": "iostreams-2d76d92ba751de4eaca5b05282f4ecc9578c341b",
        "urls": ["https://github.com/bazelboost/iostreams/archive/2d76d92ba751de4eaca5b05282f4ecc9578c341b.zip"],
        "sha256": "",
    },
    "iterator": {
        "strip_prefix": "iterator-7d5060886fd8abceddf9e936587a1109e8a6cec4",
        "urls": ["https://github.com/bazelboost/iterator/archive/7d5060886fd8abceddf9e936587a1109e8a6cec4.zip"],
        "sha256": "6ba9379c0bfa3d1b0050f403df4142c27ee5cf4c6fe7f7cea4b0cef195c3ec0d",
    },
    "lambda": {
        "strip_prefix": "lambda-a861a7e3c03e36fc4ff77f8aa9bb517472de54bc",
        "urls": ["https://github.com/bazelboost/lambda/archive/a861a7e3c03e36fc4ff77f8aa9bb517472de54bc.zip"],
        "sha256": "",
    },
    "lexical_cast": {
        "strip_prefix": "lexical_cast-cef6ef1255546445f94930e4301b6066b47339ce",
        "urls": ["https://github.com/bazelboost/lexical_cast/archive/cef6ef1255546445f94930e4301b6066b47339ce.zip"],
        "sha256": "c9ef03f7f7f2a43da00eb992f2d711545ccc2083881bd757dd36e25fd5012ce2",
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
        "strip_prefix": "log-35c3065351e5200468e7e4560b1da56a91da1f91",
        "urls": ["https://github.com/bazelboost/log/archive/35c3065351e5200468e7e4560b1da56a91da1f91.zip"],
        "sha256": "",
    },
    "logic": {
        "strip_prefix": "logic-4d4d71072a89ee78f7994efaa6e04409a717e9eb",
        "urls": ["https://github.com/bazelboost/logic/archive/4d4d71072a89ee78f7994efaa6e04409a717e9eb.zip"],
        "sha256": "",
    },
    "math": {
        "strip_prefix": "math-de84f1284ec9da5ef4df6d15e60921d2b0f29ce5",
        "urls": ["https://github.com/bazelboost/math/archive/de84f1284ec9da5ef4df6d15e60921d2b0f29ce5.zip"],
        "sha256": "f64218f7b74722973f40a608e64c83529f1582e27bc3742a99847d7f4ae53f04",
    },
    "metaparse": {
        "strip_prefix": "metaparse-b6ed3281c8e2bcf6a7a8f86cb4f0228059a743fa",
        "urls": ["https://github.com/bazelboost/metaparse/archive/b6ed3281c8e2bcf6a7a8f86cb4f0228059a743fa.zip"],
        "sha256": "",
    },
    "move": {
        "strip_prefix": "move-052da864b899b46e29ff5bb04d2278067fbdad2b",
        "urls": ["https://github.com/bazelboost/move/archive/052da864b899b46e29ff5bb04d2278067fbdad2b.zip"],
        "sha256": "dde1e5f49e918499df72928c214cc4627c5b7e76ed609af61b0793cb558542be",
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
        "strip_prefix": "mpl-651c25c7e7c0fff0557aaa5be0787e765d828030",
        "urls": ["https://github.com/bazelboost/mpl/archive/651c25c7e7c0fff0557aaa5be0787e765d828030.zip"],
        "sha256": "3a414bdf3b687917040fdba0b81c2a67300744292313890ceefd978d2796d51e",
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
        "strip_prefix": "multi_index-dd1b6c5af759351a8b5f1d5b512921ddda99729d",
        "urls": ["https://github.com/bazelboost/multi_index/archive/dd1b6c5af759351a8b5f1d5b512921ddda99729d.zip"],
        "sha256": "",
    },
    "multiprecision": {
        "strip_prefix": "multiprecision-88b925915bb7370afa8450c99f9140e6d9736e78",
        "urls": ["https://github.com/bazelboost/multiprecision/archive/88b925915bb7370afa8450c99f9140e6d9736e78.zip"],
        "sha256": "",
    },
    "numeric_conversion": {
        "strip_prefix": "numeric_conversion-63b9e0cbe0acbfb6252925bf37fd9fcc663aa48d",
        "urls": ["https://github.com/bazelboost/numeric_conversion/archive/63b9e0cbe0acbfb6252925bf37fd9fcc663aa48d.zip"],
        "sha256": "ba4d60176b24d7ed3fb17d13f3708e67f92306b48c3cdcc6453baa47b4bc4b69",
    },
    "optional": {
        "strip_prefix": "optional-d0ae26c59ef8daa02be055c50a9a859b026efd09",
        "urls": ["https://github.com/bazelboost/optional/archive/d0ae26c59ef8daa02be055c50a9a859b026efd09.zip"],
        "sha256": "dd051782ebc2f53dd71978ea84256eb4779736f72d5af327b520ee9e6096d3b2",
    },
    "parameter": {
        "strip_prefix": "parameter-e575f40c8f462152daf34586e6ce4909edb599b2",
        "urls": ["https://github.com/bazelboost/parameter/archive/e575f40c8f462152daf34586e6ce4909edb599b2.zip"],
        "sha256": "dbc5bba0552c08c067439a21e2cf49179267c80f552cbbe61639e792fd1b9dc2",
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
        "strip_prefix": "process-3d4c7ee4726c75f09c40363a781959b9775b9c04",
        "urls": ["https://github.com/bazelboost/process/archive/3d4c7ee4726c75f09c40363a781959b9775b9c04.zip"],
        "sha256": "4d3e1971366a569835a105a5139ef40964a74bb695f06a57dd838f9c528ebaaf",
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
        "strip_prefix": "random-e1ec7f22f125bf9ba44d17af38fa25fba33df589",
        "urls": ["https://github.com/bazelboost/random/archive/e1ec7f22f125bf9ba44d17af38fa25fba33df589.zip"],
        "sha256": "",
    },
    "range": {
        "strip_prefix": "range-a671d7c7a8efd36a9a3bbfcaece0a8e1bf319bb1",
        "urls": ["https://github.com/bazelboost/range/archive/a671d7c7a8efd36a9a3bbfcaece0a8e1bf319bb1.zip"],
        "sha256": "d54233a2f6460206a6ca48ed5af329f8bf8df47c1428271fd9b278eba0e85fd4",
    },
    "ratio": {
        "strip_prefix": "ratio-e109a7580e8660c91594820131fd7a008a75e4e8",
        "urls": ["https://github.com/bazelboost/ratio/archive/e109a7580e8660c91594820131fd7a008a75e4e8.zip"],
        "sha256": "",
    },
    "rational": {
        "strip_prefix": "rational-35a5ecb9739ad993ae50bb2dd5af86437002c934",
        "urls": ["https://github.com/bazelboost/rational/archive/35a5ecb9739ad993ae50bb2dd5af86437002c934.zip"],
        "sha256": "",
    },
    "regex": {
        "strip_prefix": "regex-b4e5fe5916a96188006111e8388e3c09c44f50b6",
        "urls": ["https://github.com/bazelboost/regex/archive/b4e5fe5916a96188006111e8388e3c09c44f50b6.zip"],
        "sha256": "b38cd7b628f2acabdb5a4b552c7168f086de5999909de9eb53310a7bcab7ccc5",
    },
    "scope_exit": {
        "strip_prefix": "scope_exit-5c6072be06d52f4a9cd705c3f9904ebf7e515529",
        "urls": ["https://github.com/bazelboost/scope_exit/archive/5c6072be06d52f4a9cd705c3f9904ebf7e515529.zip"],
        "sha256": "",
    },
    "serialization": {
        "strip_prefix": "serialization-a0813d23aecbddf79bf5598b90fc3ce2b30f5ce9",
        "urls": ["https://github.com/bazelboost/serialization/archive/a0813d23aecbddf79bf5598b90fc3ce2b30f5ce9.zip"],
        "sha256": "",
    },
    "signals": {
        "strip_prefix": "signals-76be42a4ba26656d2896b2b8e2f656d9b4bf5a74",
        "urls": ["https://github.com/bazelboost/signals/archive/76be42a4ba26656d2896b2b8e2f656d9b4bf5a74.zip"],
        "sha256": "",
    },
    "signals2": {
        "strip_prefix": "signals2-7d3980d04d87e304e4bae87cf6454f1a8b3b39ee",
        "urls": ["https://github.com/bazelboost/signals2/archive/7d3980d04d87e304e4bae87cf6454f1a8b3b39ee.zip"],
        "sha256": "a94bdafc3f44cef1bff6033d6c46e2bd45975383eaa92c2c28784e50be29d31e",
    },
    "smart_ptr": {
        "strip_prefix": "smart_ptr-0121354ae20a4f00dcb2b19ff7dc728db2dd2881",
        "urls": ["https://github.com/bazelboost/smart_ptr/archive/0121354ae20a4f00dcb2b19ff7dc728db2dd2881.zip"],
        "sha256": "23c2be0d4159503349bb7e72af2b69ea6d9fe881f3d390cb7d5991ac905b8489",
    },
    "sort": {
        "strip_prefix": "sort-9881eebc04a77a1e270808330efc79c9ccbda867",
        "urls": ["https://github.com/bazelboost/sort/archive/9881eebc04a77a1e270808330efc79c9ccbda867.zip"],
        "sha256": "",
    },
    "spirit": {
        "strip_prefix": "spirit-83b1a9401621547138bd9507f59404d298758073",
        "urls": ["https://github.com/bazelboost/spirit/archive/83b1a9401621547138bd9507f59404d298758073.zip"],
        "sha256": "466a341341405d44b366051353fc8230e00a0488a932fbf069ea6060266664ab",
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
        "strip_prefix": "static_assert-4e0d6b9b5cfced16b63136a37ac9e575e5da7bb5",
        "urls": ["https://github.com/bazelboost/static_assert/archive/4e0d6b9b5cfced16b63136a37ac9e575e5da7bb5.zip"],
        "sha256": "1424bc4beabbf022e04fde8e2eabd126318aa3cd7c833fbb147fdcc599e15c6b",
    },
    "system": {
        "strip_prefix": "system-015dfa7f73ae02b93bf699012f81606cfb80e4fa",
        "urls": ["https://github.com/bazelboost/system/archive/015dfa7f73ae02b93bf699012f81606cfb80e4fa.zip"],
        "sha256": "a5b704252f621954def9908b2716e664d338d24943c71efb49326249318179b6",
    },
    "test": {
        "strip_prefix": "test-8b9c3cc6dc718880fbd43161ed672a6277a92128",
        "urls": ["https://github.com/bazelboost/test/archive/8b9c3cc6dc718880fbd43161ed672a6277a92128.zip"],
        "sha256": "",
    },
    "thread": {
        "strip_prefix": "thread-dd0f1edc8b0d6fa60591c16435488585e66ad0f7",
        "urls": ["https://github.com/bazelboost/thread/archive/dd0f1edc8b0d6fa60591c16435488585e66ad0f7.zip"],
        "sha256": "71df77785f35fac6df71ed59c437f47390a8a72345357db41aa842c57a0ded8e",
    },
    "throw_exception": {
        "strip_prefix": "throw_exception-fd2a61f16711c2e286cd5f36cacbe2856404152e",
        "urls": ["https://github.com/bazelboost/throw_exception/archive/fd2a61f16711c2e286cd5f36cacbe2856404152e.zip"],
        "sha256": "0d6302a4333e46d7d30e54bf3d7fcf67998259fee577f29a9a739a7e80574194",
    },
    "timer": {
        "strip_prefix": "timer-f72548d46f90b3e8c977a5b498a18e060668a49e",
        "urls": ["https://github.com/bazelboost/timer/archive/f72548d46f90b3e8c977a5b498a18e060668a49e.zip"],
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
        "strip_prefix": "tuple-4edb55ed743a338c1f5699b51e6e15e72833641d",
        "urls": ["https://github.com/bazelboost/tuple/archive/4edb55ed743a338c1f5699b51e6e15e72833641d.zip"],
        "sha256": "633b7a5265590e7566611f197d3f4b5643a8fdc34b4bb1c4d382492eb3f1f456",
    },
    "type_erasure": {
        "strip_prefix": "type_erasure-b69b6b162cd9e14a3eacf10cdef8e51765861b6e",
        "urls": ["https://github.com/bazelboost/type_erasure/archive/b69b6b162cd9e14a3eacf10cdef8e51765861b6e.zip"],
        "sha256": "",
    },
    "type_index": {
        "strip_prefix": "type_index-e1ba605ad91f303f2ee7563bfb4469b77a743af8",
        "urls": ["https://github.com/bazelboost/type_index/archive/e1ba605ad91f303f2ee7563bfb4469b77a743af8.zip"],
        "sha256": "287b8aa5f0dd627667952730b7ec3ccbcac225791770c0ca0149848e151cc2b4",
    },
    "type_traits": {
        "strip_prefix": "type_traits-d35233bb338d394759a59bfa5cead2967d98d59c",
        "urls": ["https://github.com/bazelboost/type_traits/archive/d35233bb338d394759a59bfa5cead2967d98d59c.zip"],
        "sha256": "ae2fa483271a5188643273e1d4fe07e8002315e2f988025cfaa3412893f55498",
    },
    "typeof": {
        "strip_prefix": "typeof-467063b27fa6d0a0b6286d6cc332009db5192a5a",
        "urls": ["https://github.com/bazelboost/typeof/archive/467063b27fa6d0a0b6286d6cc332009db5192a5a.zip"],
        "sha256": "c6df4609971484a9d636f7e9629cb6da5f408cded0b0e668d01904d9972725aa",
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
        "strip_prefix": "utility-cbcd9be2de47c02d96af8ce258e4df65afa94651",
        "urls": ["https://github.com/bazelboost/utility/archive/cbcd9be2de47c02d96af8ce258e4df65afa94651.zip"],
        "sha256": "e51c714b9750ca5114dd0288948d8e79001e164f7a9bef3303120867d7a80c28",
    },
    "uuid": {
        "strip_prefix": "uuid-810954dc1ad9c43491e88e5111e08ac5af57c72a",
        "urls": ["https://github.com/bazelboost/uuid/archive/810954dc1ad9c43491e88e5111e08ac5af57c72a.zip"],
        "sha256": "",
    },
    "variant": {
        "strip_prefix": "variant-d1bc9a7577a3616178e0d517a4c4ccf3692c8733",
        "urls": ["https://github.com/bazelboost/variant/archive/d1bc9a7577a3616178e0d517a4c4ccf3692c8733.zip"],
        "sha256": "153b650df7510a203d2e5f14b95f3c137e056eecdf219621187de3423c81c1a8",
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
        "strip_prefix": "winapi-643be2b7d6c978e098d36fc19aa4978b5df55b99",
        "urls": ["https://github.com/bazelboost/winapi/archive/643be2b7d6c978e098d36fc19aa4978b5df55b99.zip"],
        "sha256": "d4a573ffb17d6a16d83ece7570a06e7adbabb3f80d66bdc63dad6a462a81fe20",
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
