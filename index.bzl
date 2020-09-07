load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def _missing_boost_lib(name):
    return native.existing_rule("com_github_bazelboost_{}".format(name)) == None

def _boost_github_repository(name = None, commit = None, sha256 = ""):
    git_repository(
        name = "com_github_bazelboost_{name}".format(name = name),
        branch = "develop",
        remote = "git@github.com:bazelboost/{name}.git".format(name = name),
    )
    # TODO: Use http_archive
    # http_archive(
    #     name = "com_github_bazelboost_{name}".format(name = name),
    #     strip_prefix = "{name}-{commit}".format(name = name, commit = commit),
    #     url = "https://github.com/bazelboost/{name}/archive/{commit}.zip".format(name = name, commit = commit),
    #     sha256 = sha256,
    # )

# START boost_repositories
def boost_repositories():
    if _missing_boost_lib("assert"):
        _boost_github_repository(
            name = "assert",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("variant"):
        _boost_github_repository(
            name = "variant",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("static_assert"):
        _boost_github_repository(
            name = "static_assert",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("accumulators"):
        _boost_github_repository(
            name = "accumulators",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("algorithm"):
        _boost_github_repository(
            name = "algorithm",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("align"):
        _boost_github_repository(
            name = "align",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("any"):
        _boost_github_repository(
            name = "any",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("array"):
        _boost_github_repository(
            name = "array",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("asio"):
        _boost_github_repository(
            name = "asio",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("assign"):
        _boost_github_repository(
            name = "assign",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("atomic"):
        _boost_github_repository(
            name = "atomic",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("bimap"):
        _boost_github_repository(
            name = "bimap",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("bind"):
        _boost_github_repository(
            name = "bind",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("chrono"):
        _boost_github_repository(
            name = "chrono",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("circular_buffer"):
        _boost_github_repository(
            name = "circular_buffer",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("compatibility"):
        _boost_github_repository(
            name = "compatibility",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("compute"):
        _boost_github_repository(
            name = "compute",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("concept_check"):
        _boost_github_repository(
            name = "concept_check",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("config"):
        _boost_github_repository(
            name = "config",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("container"):
        _boost_github_repository(
            name = "container",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("context"):
        _boost_github_repository(
            name = "context",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("conversion"):
        _boost_github_repository(
            name = "conversion",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("convert"):
        _boost_github_repository(
            name = "convert",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("core"):
        _boost_github_repository(
            name = "core",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("coroutine"):
        _boost_github_repository(
            name = "coroutine",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("coroutine2"):
        _boost_github_repository(
            name = "coroutine2",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("crc"):
        _boost_github_repository(
            name = "crc",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("date_time"):
        _boost_github_repository(
            name = "date_time",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("detail"):
        _boost_github_repository(
            name = "detail",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("disjoint_sets"):
        _boost_github_repository(
            name = "disjoint_sets",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("dll"):
        _boost_github_repository(
            name = "dll",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("dynamic_bitset"):
        _boost_github_repository(
            name = "dynamic_bitset",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("endian"):
        _boost_github_repository(
            name = "endian",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("exception"):
        _boost_github_repository(
            name = "exception",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("fiber"):
        _boost_github_repository(
            name = "fiber",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("filesystem"):
        _boost_github_repository(
            name = "filesystem",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("flyweight"):
        _boost_github_repository(
            name = "flyweight",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("foreach"):
        _boost_github_repository(
            name = "foreach",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("format"):
        _boost_github_repository(
            name = "format",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("function"):
        _boost_github_repository(
            name = "function",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("function_types"):
        _boost_github_repository(
            name = "function_types",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("functional"):
        _boost_github_repository(
            name = "functional",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("fusion"):
        _boost_github_repository(
            name = "fusion",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("geometry"):
        _boost_github_repository(
            name = "geometry",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("gil"):
        _boost_github_repository(
            name = "gil",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("graph"):
        _boost_github_repository(
            name = "graph",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("graph_parallel"):
        _boost_github_repository(
            name = "graph_parallel",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("hana"):
        _boost_github_repository(
            name = "hana",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("heap"):
        _boost_github_repository(
            name = "heap",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("icl"):
        _boost_github_repository(
            name = "icl",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("integer"):
        _boost_github_repository(
            name = "integer",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("interprocess"):
        _boost_github_repository(
            name = "interprocess",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("intrusive"):
        _boost_github_repository(
            name = "intrusive",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("io"):
        _boost_github_repository(
            name = "io",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("iostreams"):
        _boost_github_repository(
            name = "iostreams",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("iterator"):
        _boost_github_repository(
            name = "iterator",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("lambda"):
        _boost_github_repository(
            name = "lambda",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("lexical_cast"):
        _boost_github_repository(
            name = "lexical_cast",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("local_function"):
        _boost_github_repository(
            name = "local_function",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("locale"):
        _boost_github_repository(
            name = "locale",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("lockfree"):
        _boost_github_repository(
            name = "lockfree",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("log"):
        _boost_github_repository(
            name = "log",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("logic"):
        _boost_github_repository(
            name = "logic",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("math"):
        _boost_github_repository(
            name = "math",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("metaparse"):
        _boost_github_repository(
            name = "metaparse",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("move"):
        _boost_github_repository(
            name = "move",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("mpi"):
        _boost_github_repository(
            name = "mpi",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("mpl"):
        _boost_github_repository(
            name = "mpl",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("msm"):
        _boost_github_repository(
            name = "msm",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("multi_array"):
        _boost_github_repository(
            name = "multi_array",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("multi_index"):
        _boost_github_repository(
            name = "multi_index",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("multiprecision"):
        _boost_github_repository(
            name = "multiprecision",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("optional"):
        _boost_github_repository(
            name = "optional",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("parameter"):
        _boost_github_repository(
            name = "parameter",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("phoenix"):
        _boost_github_repository(
            name = "phoenix",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("poly_collection"):
        _boost_github_repository(
            name = "poly_collection",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("polygon"):
        _boost_github_repository(
            name = "polygon",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("pool"):
        _boost_github_repository(
            name = "pool",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("predef"):
        _boost_github_repository(
            name = "predef",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("preprocessor"):
        _boost_github_repository(
            name = "preprocessor",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("process"):
        _boost_github_repository(
            name = "process",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("program_options"):
        _boost_github_repository(
            name = "program_options",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("property_map"):
        _boost_github_repository(
            name = "property_map",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("property_tree"):
        _boost_github_repository(
            name = "property_tree",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("proto"):
        _boost_github_repository(
            name = "proto",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("ptr_container"):
        _boost_github_repository(
            name = "ptr_container",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("python"):
        _boost_github_repository(
            name = "python",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("qvm"):
        _boost_github_repository(
            name = "qvm",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("random"):
        _boost_github_repository(
            name = "random",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("range"):
        _boost_github_repository(
            name = "range",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("ratio"):
        _boost_github_repository(
            name = "ratio",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("rational"):
        _boost_github_repository(
            name = "rational",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("regex"):
        _boost_github_repository(
            name = "regex",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("scope_exit"):
        _boost_github_repository(
            name = "scope_exit",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("serialization"):
        _boost_github_repository(
            name = "serialization",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("signals"):
        _boost_github_repository(
            name = "signals",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("signals2"):
        _boost_github_repository(
            name = "signals2",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("smart_ptr"):
        _boost_github_repository(
            name = "smart_ptr",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("sort"):
        _boost_github_repository(
            name = "sort",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("spirit"):
        _boost_github_repository(
            name = "spirit",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("stacktrace"):
        _boost_github_repository(
            name = "stacktrace",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("statechart"):
        _boost_github_repository(
            name = "statechart",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("system"):
        _boost_github_repository(
            name = "system",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("test"):
        _boost_github_repository(
            name = "test",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("thread"):
        _boost_github_repository(
            name = "thread",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("throw_exception"):
        _boost_github_repository(
            name = "throw_exception",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("timer"):
        _boost_github_repository(
            name = "timer",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("tokenizer"):
        _boost_github_repository(
            name = "tokenizer",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("tti"):
        _boost_github_repository(
            name = "tti",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("tuple"):
        _boost_github_repository(
            name = "tuple",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("type_erasure"):
        _boost_github_repository(
            name = "type_erasure",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("type_index"):
        _boost_github_repository(
            name = "type_index",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("type_traits"):
        _boost_github_repository(
            name = "type_traits",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("typeof"):
        _boost_github_repository(
            name = "typeof",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("units"):
        _boost_github_repository(
            name = "units",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("unordered"):
        _boost_github_repository(
            name = "unordered",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("utility"):
        _boost_github_repository(
            name = "utility",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("uuid"):
        _boost_github_repository(
            name = "uuid",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("vmd"):
        _boost_github_repository(
            name = "vmd",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("wave"):
        _boost_github_repository(
            name = "wave",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("winapi"):
        _boost_github_repository(
            name = "winapi",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("xpressive"):
        _boost_github_repository(
            name = "xpressive",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("numeric_conversion"):
        _boost_github_repository(
            name = "numeric_conversion",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("mp11"):
        _boost_github_repository(
            name = "mp11",
            commit = "",
            sha256 = "",
        )
    if _missing_boost_lib("container_hash"):
        _boost_github_repository(
            name = "container_hash",
            commit = "",
            sha256 = "",
        )
# END boost_repositories
