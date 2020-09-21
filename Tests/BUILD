load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_unit_test")

swift_library(
    name = "StringGeneratorTests",
    module_name = "StringGeneratorTests",
    srcs = ["StringGeneratorTests.swift"],
    deps = [
        "//Source:StringGenerator"
    ]
)

ios_unit_test(
    name = "StringGeneratorUnitTests",
    minimum_os_version = "13.0",
    deps = [":StringGeneratorTests"]
)
