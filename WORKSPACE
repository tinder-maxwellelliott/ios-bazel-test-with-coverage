load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "55f4dc1c9bf21bb87442665f4618cff1f1343537a2bd89252078b987dcd9c382",
    url = "https://github.com/bazelbuild/rules_apple/releases/download/0.20.0/rules_apple.0.20.0.tar.gz",
)

http_archive(
    name = "build_bazel_rules_swift",
    sha256 = "cea22c0616d797e494d7844a9b604520c87f53c81de49613a7e679ec5b821620",
    url = "https://github.com/bazelbuild/rules_swift/releases/download/0.14.0/rules_swift.0.14.0.tar.gz",
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

load(
    "@com_google_protobuf//:protobuf_deps.bzl",
    "protobuf_deps",
)

protobuf_deps()
