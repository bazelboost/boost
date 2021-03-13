load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

_boost_libs = {
    "assert": {

    },
    "variant": {

    },
    "static_assert": {

    },
    "accumulators": {

    },
    "algorithm": {

    },
    "align": {

    },
    "any": {

    },
    "array": {

    },
    "asio": {

    },
    "assign": {

    },
    "atomic": {

    },
    "bimap": {

    },
    "bind": {

    },
    "chrono": {

    },
    "circular_buffer": {

    },
    "compatibility": {

    },
    "compute": {

    },
    "concept_check": {

    },
    "config": {

    },
    "container": {

    },
    "context": {

    },
    "conversion": {

    },
    "convert": {

    },
    "core": {

    },
    "coroutine": {

    },
    "coroutine2": {

    },
    "crc": {

    },
    "date_time": {

    },
    "detail": {

    },
    "disjoint_sets": {

    },
    "dll": {

    },
    "dynamic_bitset": {

    },
    "endian": {

    },
    "exception": {

    },
    "fiber": {

    },
    "filesystem": {

    },
    "flyweight": {

    },
    "foreach": {

    },
    "format": {

    },
    "function": {

    },
    "function_types": {

    },
    "functional": {

    },
    "fusion": {

    },
    "geometry": {

    },
    "gil": {

    },
    "graph": {

    },
    "graph_parallel": {

    },
    "hana": {

    },
    "heap": {

    },
    "icl": {

    },
    "integer": {

    },
    "interprocess": {

    },
    "intrusive": {

    },
    "io": {

    },
    "iostreams": {

    },
    "iterator": {

    },
    "lambda": {

    },
    "lexical_cast": {

    },
    "local_function": {

    },
    "locale": {

    },
    "lockfree": {

    },
    "log": {

    },
    "logic": {

    },
    "math": {

    },
    "metaparse": {

    },
    "move": {

    },
    "mpi": {

    },
    "mpl": {

    },
    "msm": {

    },
    "multi_array": {

    },
    "multi_index": {

    },
    "multiprecision": {

    },
    "optional": {

    },
    "parameter": {

    },
    "phoenix": {

    },
    "poly_collection": {

    },
    "polygon": {

    },
    "pool": {

    },
    "predef": {

    },
    "preprocessor": {

    },
    "process": {

    },
    "program_options": {

    },
    "property_map": {

    },
    "property_tree": {

    },
    "proto": {

    },
    "ptr_container": {

    },
    "python": {

    },
    "qvm": {

    },
    "random": {

    },
    "range": {

    },
    "ratio": {

    },
    "rational": {

    },
    "regex": {

    },
    "scope_exit": {

    },
    "serialization": {

    },
    "signals": {

    },
    "signals2": {

    },
    "smart_ptr": {

    },
    "sort": {

    },
    "spirit": {

    },
    "stacktrace": {

    },
    "statechart": {

    },
    "system": {

    },
    "test": {

    },
    "thread": {

    },
    "throw_exception": {

    },
    "timer": {

    },
    "tokenizer": {

    },
    "tti": {

    },
    "tuple": {

    },
    "type_erasure": {

    },
    "type_index": {

    },
    "type_traits": {

    },
    "typeof": {

    },
    "units": {

    },
    "unordered": {

    },
    "utility": {

    },
    "uuid": {

    },
    "vmd": {

    },
    "wave": {

    },
    "winapi": {

    },
    "xpressive": {

    },
    "numeric_conversion": {

    },
    "mp11": {

    },
    "container_hash": {

    },
}

def _missing_boost_lib(name):
    return native.existing_rule("com_github_bazelboost_{}".format(name)) == None

def boost_http_archives():
    fail("boost_http_archives not yet supported")

def boost_git_repositories(branch):
    for lib_name in _boost_libs:
        if _missing_boost_lib(lib_name):
            git_repository(
                name = "com_github_bazelboost_{}".format(lib_name),
                remote = "git@github.com:bazelboost/{}.git".format(lib_name),
                branch = branch,
            )

def boost_local_repositories(path_prefix):
    for lib_name in _boost_libs:
        if _missing_boost_lib(lib_name):
            native.local_repository(
                name = "com_github_bazelboost_{}".format(lib_name),
                path = path_prefix + lib_name,
            )
