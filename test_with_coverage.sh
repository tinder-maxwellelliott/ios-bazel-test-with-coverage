git_root=$(git rev-parse --show-toplevel)

mkdir -p "$git_root/CoverageData"

 bazelisk test \
    --test_env="LLVM_PROFILE_FILE=\"$git_root/CoverageData/Coverage.profraw\"" \
    --collect_code_coverage \
    --experimental_use_llvm_covmap \
    --spawn_strategy=standalone \
    --cache_test_results=no \
    --apple_platform_type=ios \
    --test_env=LCOV_MERGER=/usr/bin/true \
    //Tests:StringGeneratorUnitTests

xcrun llvm-profdata merge "$git_root/CoverageData/Coverage.profraw" -output "$git_root/CoverageData/Coverage.profdata"

xcrun llvm-cov export \
    --instr-profile="$git_root/CoverageData/Coverage.profdata" \
    --format=lcov \
    "$(bazelisk info bazel-bin)/Tests/StringGeneratorUnitTests.__internal__.__test_bundle_archive-root/StringGeneratorUnitTests.xctest/StringGeneratorUnitTests" \
    > "$git_root/CoverageData/info.lcov"

ruby format_lcov.rb
