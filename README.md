# Modular Boost built with Bazel

WORK IN PROGRESS - This is experimental and may not work correctly. Contributions are welcome!

## Progress

| Module | BUILD files | Tests | Examples | CI |
|:------ |:-----------:|:-----:|:--------:|:--:|
| [accumulators](https://github.com/bazelboost/accumulators) | | | | ![accumulators module CI status badge](https://github.com/bazelboost/accumulators/actions/workflows/main.yml/badge.svg) |
| [algorithm](https://github.com/bazelboost/algorithm) | ✔️ | ✔️ | ✔️ | ![algorithm module CI status badge](https://github.com/bazelboost/algorithm/actions/workflows/main.yml/badge.svg) |
| [align](https://github.com/bazelboost/align) | ✔️ | ✔️ | ✔️ | ![align module CI status badge](https://github.com/bazelboost/align/actions/workflows/main.yml/badge.svg) |
| [any](https://github.com/bazelboost/any) | | | | ![any module CI status badge](https://github.com/bazelboost/any/actions/workflows/main.yml/badge.svg) |
| [array](https://github.com/bazelboost/array) | ✔️ | ❌ | ❌ | ![array module CI status badge](https://github.com/bazelboost/array/actions/workflows/main.yml/badge.svg) |
| [asio](https://github.com/bazelboost/asio) | ✔️ | ❌ | ❌ | ![asio module CI status badge](https://github.com/bazelboost/asio/actions/workflows/main.yml/badge.svg) |
| [assert](https://github.com/bazelboost/assert) | ✔️ | ✔️ | N/A | ![assert module CI status badge](https://github.com/bazelboost/assert/actions/workflows/main.yml/badge.svg) |
| [assign](https://github.com/bazelboost/assign) | | | | ![assign module CI status badge](https://github.com/bazelboost/assign/actions/workflows/main.yml/badge.svg) |
| [atomic](https://github.com/bazelboost/atomic) | ✔️ | ❌ | ❌ | ![atomic module CI status badge](https://github.com/bazelboost/atomic/actions/workflows/main.yml/badge.svg) |
| [beast](https://github.com/bazelboost/beast) | ✔️ | ❌ | ❌ | ![beast module CI status badge](https://github.com/bazelboost/beast/actions/workflows/bazel.yml/badge.svg) |
| [bimap](https://github.com/bazelboost/bimap) | | | | ![bimap module CI status badge](https://github.com/bazelboost/bimap/actions/workflows/main.yml/badge.svg) |
| [bind](https://github.com/bazelboost/bind) | ✔️ | ❌ | ❌ | ![bind module CI status badge](https://github.com/bazelboost/bind/actions/workflows/main.yml/badge.svg) |
| [chrono](https://github.com/bazelboost/chrono) | | | | ![chrono module CI status badge](https://github.com/bazelboost/chrono/actions/workflows/main.yml/badge.svg) |
| [circular_buffer](https://github.com/bazelboost/circular_buffer) | ✔️ | ❌ | ❌ | ![circular_buffer module CI status badge](https://github.com/bazelboost/circular_buffer/actions/workflows/main.yml/badge.svg) |
| [compatibility](https://github.com/bazelboost/compatibility) | | | | ![compatibility module CI status badge](https://github.com/bazelboost/compatibility/actions/workflows/main.yml/badge.svg) |
| [compute](https://github.com/bazelboost/compute) | | | | ![compute module CI status badge](https://github.com/bazelboost/compute/actions/workflows/main.yml/badge.svg) |
| [concept_check](https://github.com/bazelboost/concept_check) | ✔️ | ❌ | N/A | ![concept_check module CI status badge](https://github.com/bazelboost/concept_check/actions/workflows/main.yml/badge.svg) |
| [config](https://github.com/bazelboost/config) | | | | ![config module CI status badge](https://github.com/bazelboost/config/actions/workflows/main.yml/badge.svg) |
| [container](https://github.com/bazelboost/container) | | | | ![container module CI status badge](https://github.com/bazelboost/container/actions/workflows/main.yml/badge.svg) |
| [container_hash](https://github.com/bazelboost/container_hash) | | | | ![container_hash module CI status badge](https://github.com/bazelboost/container_hash/actions/workflows/main.yml/badge.svg) |
| [context](https://github.com/bazelboost/context) | | | | ![context module CI status badge](https://github.com/bazelboost/context/actions/workflows/main.yml/badge.svg) |
| [conversion](https://github.com/bazelboost/conversion) | | | | ![conversion module CI status badge](https://github.com/bazelboost/conversion/actions/workflows/main.yml/badge.svg) |
| [convert](https://github.com/bazelboost/convert) | | | | ![convert module CI status badge](https://github.com/bazelboost/convert/actions/workflows/main.yml/badge.svg) |
| [core](https://github.com/bazelboost/core) | ✔️ | ❌ | N/A | ![core module CI status badge](https://github.com/bazelboost/core/actions/workflows/main.yml/badge.svg) |
| [coroutine](https://github.com/bazelboost/coroutine) | | | | ![coroutine module CI status badge](https://github.com/bazelboost/coroutine/actions/workflows/main.yml/badge.svg) |
| [coroutine2](https://github.com/bazelboost/coroutine2) | | | | ![coroutine2 module CI status badge](https://github.com/bazelboost/coroutine2/actions/workflows/main.yml/badge.svg) |
| [crc](https://github.com/bazelboost/crc) | | | | ![crc module CI status badge](https://github.com/bazelboost/crc/actions/workflows/main.yml/badge.svg) |
| [date_time](https://github.com/bazelboost/date_time) | | | | ![date_time module CI status badge](https://github.com/bazelboost/date_time/actions/workflows/main.yml/badge.svg) |
| [detail](https://github.com/bazelboost/detail) | | | | ![detail module CI status badge](https://github.com/bazelboost/detail/actions/workflows/main.yml/badge.svg) |
| [disjoint_sets](https://github.com/bazelboost/disjoint_sets) | | | | ![disjoint_sets module CI status badge](https://github.com/bazelboost/disjoint_sets/actions/workflows/main.yml/badge.svg) |
| [dll](https://github.com/bazelboost/dll) | | | | ![dll module CI status badge](https://github.com/bazelboost/dll/actions/workflows/main.yml/badge.svg) |
| [dynamic_bitset](https://github.com/bazelboost/dynamic_bitset) | | | | ![dynamic_bitset module CI status badge](https://github.com/bazelboost/dynamic_bitset/actions/workflows/main.yml/badge.svg) |
| [endian](https://github.com/bazelboost/endian) | | | | ![endian module CI status badge](https://github.com/bazelboost/endian/actions/workflows/main.yml/badge.svg) |
| [exception](https://github.com/bazelboost/exception) | | | | ![exception module CI status badge](https://github.com/bazelboost/exception/actions/workflows/main.yml/badge.svg) |
| [fiber](https://github.com/bazelboost/fiber) | | | | ![fiber module CI status badge](https://github.com/bazelboost/fiber/actions/workflows/main.yml/badge.svg) |
| [filesystem](https://github.com/bazelboost/filesystem) | ✔️ | ❌ | ✔️ | ![filesystem module CI status badge](https://github.com/bazelboost/filesystem/actions/workflows/main.yml/badge.svg) |
| [flyweight](https://github.com/bazelboost/flyweight) | | | | ![flyweight module CI status badge](https://github.com/bazelboost/flyweight/actions/workflows/main.yml/badge.svg) |
| [foreach](https://github.com/bazelboost/foreach) | | | | ![foreach module CI status badge](https://github.com/bazelboost/foreach/actions/workflows/main.yml/badge.svg) |
| [format](https://github.com/bazelboost/format) | | | | ![format module CI status badge](https://github.com/bazelboost/format/actions/workflows/main.yml/badge.svg) |
| [function](https://github.com/bazelboost/function) | | | | ![function module CI status badge](https://github.com/bazelboost/function/actions/workflows/main.yml/badge.svg) |
| [function_types](https://github.com/bazelboost/function_types) | | | | ![function_types module CI status badge](https://github.com/bazelboost/function_types/actions/workflows/main.yml/badge.svg) |
| [functional](https://github.com/bazelboost/functional) | ✔️ | ✔️ | N/A | ![functional module CI status badge](https://github.com/bazelboost/functional/actions/workflows/main.yml/badge.svg) |
| [fusion](https://github.com/bazelboost/fusion) | | | | ![fusion module CI status badge](https://github.com/bazelboost/fusion/actions/workflows/main.yml/badge.svg) |
| [geometry](https://github.com/bazelboost/geometry) | | | | ![geometry module CI status badge](https://github.com/bazelboost/geometry/actions/workflows/main.yml/badge.svg) |
| [gil](https://github.com/bazelboost/gil) | | | | ![gil module CI status badge](https://github.com/bazelboost/gil/actions/workflows/main.yml/badge.svg) |
| [graph](https://github.com/bazelboost/graph) | | | | ![graph module CI status badge](https://github.com/bazelboost/graph/actions/workflows/main.yml/badge.svg) |
| [graph_parallel](https://github.com/bazelboost/graph_parallel) | | | | ![graph_parallel module CI status badge](https://github.com/bazelboost/graph_parallel/actions/workflows/main.yml/badge.svg) |
| [hana](https://github.com/bazelboost/hana) | | | | ![hana module CI status badge](https://github.com/bazelboost/hana/actions/workflows/main.yml/badge.svg) |
| [heap](https://github.com/bazelboost/heap) | | | | ![heap module CI status badge](https://github.com/bazelboost/heap/actions/workflows/main.yml/badge.svg) |
| [icl](https://github.com/bazelboost/icl) | | | | ![icl module CI status badge](https://github.com/bazelboost/icl/actions/workflows/main.yml/badge.svg) |
| [integer](https://github.com/bazelboost/integer) | | | | ![integer module CI status badge](https://github.com/bazelboost/integer/actions/workflows/main.yml/badge.svg) |
| [interprocess](https://github.com/bazelboost/interprocess) | | | | ![interprocess module CI status badge](https://github.com/bazelboost/interprocess/actions/workflows/main.yml/badge.svg) |
| [intrusive](https://github.com/bazelboost/intrusive) | | | | ![intrusive module CI status badge](https://github.com/bazelboost/intrusive/actions/workflows/main.yml/badge.svg) |
| [io](https://github.com/bazelboost/io) | ✔️ | ✔️ | ❌ | ![io module CI status badge](https://github.com/bazelboost/io/actions/workflows/main.yml/badge.svg) |
| [iostreams](https://github.com/bazelboost/iostreams) | | | | ![iostreams module CI status badge](https://github.com/bazelboost/iostreams/actions/workflows/main.yml/badge.svg) |
| [iterator](https://github.com/bazelboost/iterator) | | | | ![iterator module CI status badge](https://github.com/bazelboost/iterator/actions/workflows/main.yml/badge.svg) |
| [lambda](https://github.com/bazelboost/lambda) | | | | ![lambda module CI status badge](https://github.com/bazelboost/lambda/actions/workflows/main.yml/badge.svg) |
| [lexical_cast](https://github.com/bazelboost/lexical_cast) | | | | ![lexical_cast module CI status badge](https://github.com/bazelboost/lexical_cast/actions/workflows/main.yml/badge.svg) |
| [local_function](https://github.com/bazelboost/local_function) | | | | ![local_function module CI status badge](https://github.com/bazelboost/local_function/actions/workflows/main.yml/badge.svg) |
| [locale](https://github.com/bazelboost/locale) | | | | ![locale module CI status badge](https://github.com/bazelboost/locale/actions/workflows/main.yml/badge.svg) |
| [lockfree](https://github.com/bazelboost/lockfree) | | | | ![lockfree module CI status badge](https://github.com/bazelboost/lockfree/actions/workflows/main.yml/badge.svg) |
| [log](https://github.com/bazelboost/log) | | | | ![log module CI status badge](https://github.com/bazelboost/log/actions/workflows/main.yml/badge.svg) |
| [logic](https://github.com/bazelboost/logic) | | | | ![logic module CI status badge](https://github.com/bazelboost/logic/actions/workflows/main.yml/badge.svg) |
| [math](https://github.com/bazelboost/math) | | | | ![math module CI status badge](https://github.com/bazelboost/math/actions/workflows/main.yml/badge.svg) |
| [metaparse](https://github.com/bazelboost/metaparse) | | | | ![metaparse module CI status badge](https://github.com/bazelboost/metaparse/actions/workflows/main.yml/badge.svg) |
| [move](https://github.com/bazelboost/move) | ✔️ | ❌ | ❌ | ![move module CI status badge](https://github.com/bazelboost/move/actions/workflows/main.yml/badge.svg) |
| [mp11](https://github.com/bazelboost/mp11) | ✔️ | ✔️ | N/A | ![mp11 module CI status badge](https://github.com/bazelboost/mp11/actions/workflows/main.yml/badge.svg) |
| [mpi](https://github.com/bazelboost/mpi) | | | | ![mpi module CI status badge](https://github.com/bazelboost/mpi/actions/workflows/main.yml/badge.svg) |
| [mpl](https://github.com/bazelboost/mpl) | | | | ![mpl module CI status badge](https://github.com/bazelboost/mpl/actions/workflows/main.yml/badge.svg) |
| [msm](https://github.com/bazelboost/msm) | | | | ![msm module CI status badge](https://github.com/bazelboost/msm/actions/workflows/main.yml/badge.svg) |
| [multi_array](https://github.com/bazelboost/multi_array) | | | | ![multi_array module CI status badge](https://github.com/bazelboost/multi_array/actions/workflows/main.yml/badge.svg) |
| [multi_index](https://github.com/bazelboost/multi_index) | | | | ![multi_index module CI status badge](https://github.com/bazelboost/multi_index/actions/workflows/main.yml/badge.svg) |
| [multiprecision](https://github.com/bazelboost/multiprecision) | | | | ![multiprecision module CI status badge](https://github.com/bazelboost/multiprecision/actions/workflows/main.yml/badge.svg) |
| [numeric_conversion](https://github.com/bazelboost/numeric_conversion) | | | | ![numeric_conversion module CI status badge](https://github.com/bazelboost/numeric_conversion/actions/workflows/main.yml/badge.svg) |
| [optional](https://github.com/bazelboost/optional) | | | | ![optional module CI status badge](https://github.com/bazelboost/optional/actions/workflows/main.yml/badge.svg) |
| [parameter](https://github.com/bazelboost/parameter) | | | | ![parameter module CI status badge](https://github.com/bazelboost/parameter/actions/workflows/main.yml/badge.svg) |
| [phoenix](https://github.com/bazelboost/phoenix) | | | | ![phoenix module CI status badge](https://github.com/bazelboost/phoenix/actions/workflows/main.yml/badge.svg) |
| [poly_collection](https://github.com/bazelboost/poly_collection) | | | | ![poly_collection module CI status badge](https://github.com/bazelboost/poly_collection/actions/workflows/main.yml/badge.svg) |
| [polygon](https://github.com/bazelboost/polygon) | | | | ![polygon module CI status badge](https://github.com/bazelboost/polygon/actions/workflows/main.yml/badge.svg) |
| [pool](https://github.com/bazelboost/pool) | | | | ![pool module CI status badge](https://github.com/bazelboost/pool/actions/workflows/main.yml/badge.svg) |
| [predef](https://github.com/bazelboost/predef) | | | | ![predef module CI status badge](https://github.com/bazelboost/predef/actions/workflows/main.yml/badge.svg) |
| [preprocessor](https://github.com/bazelboost/preprocessor) | | | | ![preprocessor module CI status badge](https://github.com/bazelboost/preprocessor/actions/workflows/main.yml/badge.svg) |
| [process](https://github.com/bazelboost/process) | ✔️ | ❌ | ❌ | ![process module CI status badge](https://github.com/bazelboost/process/actions/workflows/main.yml/badge.svg) |
| [program_options](https://github.com/bazelboost/program_options) | | | | ![program_options module CI status badge](https://github.com/bazelboost/program_options/actions/workflows/main.yml/badge.svg) |
| [property_map](https://github.com/bazelboost/property_map) | | | | ![property_map module CI status badge](https://github.com/bazelboost/property_map/actions/workflows/main.yml/badge.svg) |
| [property_tree](https://github.com/bazelboost/property_tree) | | | | ![property_tree module CI status badge](https://github.com/bazelboost/property_tree/actions/workflows/main.yml/badge.svg) |
| [proto](https://github.com/bazelboost/proto) | | | | ![proto module CI status badge](https://github.com/bazelboost/proto/actions/workflows/main.yml/badge.svg) |
| [ptr_container](https://github.com/bazelboost/ptr_container) | | | | ![ptr_container module CI status badge](https://github.com/bazelboost/ptr_container/actions/workflows/main.yml/badge.svg) |
| [python](https://github.com/bazelboost/python) | | | | ![python module CI status badge](https://github.com/bazelboost/python/actions/workflows/main.yml/badge.svg) |
| [qvm](https://github.com/bazelboost/qvm) | | | | ![qvm module CI status badge](https://github.com/bazelboost/qvm/actions/workflows/main.yml/badge.svg) |
| [random](https://github.com/bazelboost/random) | ✔️ | ❌ | ❌ | ![random module CI status badge](https://github.com/bazelboost/random/actions/workflows/main.yml/badge.svg) |
| [range](https://github.com/bazelboost/range) | | | | ![range module CI status badge](https://github.com/bazelboost/range/actions/workflows/main.yml/badge.svg) |
| [ratio](https://github.com/bazelboost/ratio) | | | | ![ratio module CI status badge](https://github.com/bazelboost/ratio/actions/workflows/main.yml/badge.svg) |
| [rational](https://github.com/bazelboost/rational) | | | | ![rational module CI status badge](https://github.com/bazelboost/rational/actions/workflows/main.yml/badge.svg) |
| [regex](https://github.com/bazelboost/regex) | | | | ![regex module CI status badge](https://github.com/bazelboost/regex/actions/workflows/main.yml/badge.svg) |
| [scope_exit](https://github.com/bazelboost/scope_exit) | | | | ![scope_exit module CI status badge](https://github.com/bazelboost/scope_exit/actions/workflows/main.yml/badge.svg) |
| [serialization](https://github.com/bazelboost/serialization) | | | | ![serialization module CI status badge](https://github.com/bazelboost/serialization/actions/workflows/main.yml/badge.svg) |
| [signals](https://github.com/bazelboost/signals) | | | | ![signals module CI status badge](https://github.com/bazelboost/signals/actions/workflows/main.yml/badge.svg) |
| [signals2](https://github.com/bazelboost/signals2) | ✔️ | ✔️ | ❌ | ![signals2 module CI status badge](https://github.com/bazelboost/signals2/actions/workflows/main.yml/badge.svg) |
| [smart_ptr](https://github.com/bazelboost/smart_ptr) | ✔️ | ❌ | ❌ | ![smart_ptr module CI status badge](https://github.com/bazelboost/smart_ptr/actions/workflows/main.yml/badge.svg) |
| [sort](https://github.com/bazelboost/sort) | | | | ![sort module CI status badge](https://github.com/bazelboost/sort/actions/workflows/main.yml/badge.svg) |
| [spirit](https://github.com/bazelboost/spirit) | | | | ![spirit module CI status badge](https://github.com/bazelboost/spirit/actions/workflows/main.yml/badge.svg) |
| [stacktrace](https://github.com/bazelboost/stacktrace) | | | | ![stacktrace module CI status badge](https://github.com/bazelboost/stacktrace/actions/workflows/main.yml/badge.svg) |
| [statechart](https://github.com/bazelboost/statechart) | | | | ![statechart module CI status badge](https://github.com/bazelboost/statechart/actions/workflows/main.yml/badge.svg) |
| [static_assert](https://github.com/bazelboost/static_assert) | ✔️ | ✔️ | ✔️ | ![static_assert module CI status badge](https://github.com/bazelboost/static_assert/actions/workflows/main.yml/badge.svg) |
| [system](https://github.com/bazelboost/system) | | | | ![system module CI status badge](https://github.com/bazelboost/system/actions/workflows/main.yml/badge.svg) |
| [test](https://github.com/bazelboost/test) | ✔️ | ❌ | ❌ | ![test module CI status badge](https://github.com/bazelboost/test/actions/workflows/main.yml/badge.svg) |
| [thread](https://github.com/bazelboost/thread) | ✔️ | ❌ | ❌ | ![thread module CI status badge](https://github.com/bazelboost/thread/actions/workflows/main.yml/badge.svg) |
| [throw_exception](https://github.com/bazelboost/throw_exception) | | | | ![throw_exception module CI status badge](https://github.com/bazelboost/throw_exception/actions/workflows/main.yml/badge.svg) |
| [timer](https://github.com/bazelboost/timer) | ✔️ | ✔️ | ✔️ | ![timer module CI status badge](https://github.com/bazelboost/timer/actions/workflows/main.yml/badge.svg) |
| [tokenizer](https://github.com/bazelboost/tokenizer) | | | | ![tokenizer module CI status badge](https://github.com/bazelboost/tokenizer/actions/workflows/main.yml/badge.svg) |
| [tti](https://github.com/bazelboost/tti) | | | | ![tti module CI status badge](https://github.com/bazelboost/tti/actions/workflows/main.yml/badge.svg) |
| [tuple](https://github.com/bazelboost/tuple) | ✔️ | ✔️ | N/A | ![tuple module CI status badge](https://github.com/bazelboost/tuple/actions/workflows/main.yml/badge.svg) |
| [type_erasure](https://github.com/bazelboost/type_erasure) | | | | ![type_erasure module CI status badge](https://github.com/bazelboost/type_erasure/actions/workflows/main.yml/badge.svg) |
| [type_index](https://github.com/bazelboost/type_index) | | | | ![type_index module CI status badge](https://github.com/bazelboost/type_index/actions/workflows/main.yml/badge.svg) |
| [type_traits](https://github.com/bazelboost/type_traits) | ✔️ | ✔️ | ❌ | ![type_traits module CI status badge](https://github.com/bazelboost/type_traits/actions/workflows/main.yml/badge.svg) |
| [typeof](https://github.com/bazelboost/typeof) | ✔️ | ✔️ | N/A | ![typeof module CI status badge](https://github.com/bazelboost/typeof/actions/workflows/main.yml/badge.svg) |
| [units](https://github.com/bazelboost/units) | | | | ![units module CI status badge](https://github.com/bazelboost/units/actions/workflows/main.yml/badge.svg) |
| [unordered](https://github.com/bazelboost/unordered) | | | | ![unordered module CI status badge](https://github.com/bazelboost/unordered/actions/workflows/main.yml/badge.svg) |
| [utility](https://github.com/bazelboost/utility) | | | | ![utility module CI status badge](https://github.com/bazelboost/utility/actions/workflows/main.yml/badge.svg) |
| [uuid](https://github.com/bazelboost/uuid) | | | | ![uuid module CI status badge](https://github.com/bazelboost/uuid/actions/workflows/main.yml/badge.svg) |
| [variant](https://github.com/bazelboost/variant) | | | | ![variant module CI status badge](https://github.com/bazelboost/variant/actions/workflows/main.yml/badge.svg) |
| [vmd](https://github.com/bazelboost/vmd) | | | | ![vmd module CI status badge](https://github.com/bazelboost/vmd/actions/workflows/main.yml/badge.svg) |
| [wave](https://github.com/bazelboost/wave) | | | | ![wave module CI status badge](https://github.com/bazelboost/wave/actions/workflows/main.yml/badge.svg) |
| [winapi](https://github.com/bazelboost/winapi) | | | | ![winapi module CI status badge](https://github.com/bazelboost/winapi/actions/workflows/main.yml/badge.svg) |
| [xpressive](https://github.com/bazelboost/xpressive) | | | | ![xpressive module CI status badge](https://github.com/bazelboost/xpressive/actions/workflows/main.yml/badge.svg) |

## Installation

```python
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "boost",
    branch = "main",
    remote = "git@github.com:bazelboost/boost.git",
)

load("@boost//:index.bzl", "boost_git_repositories")
boost_git_repositories(branch = "develop")
```
