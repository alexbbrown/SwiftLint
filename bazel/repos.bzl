load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def swiftlint_repos():
    """Fetches SwiftLint repositories"""
    # https://github.com/jpsim/SourceKitten/pull/749
    http_archive(
        name = "com_github_jpsim_sourcekitten",
        sha256 = "ebce266e1f30d7a96593e7bb884ea702f546ad07d51535c7a1ec91fcd5d2db02",
        strip_prefix = "SourceKitten-a9e6df65d8e31e0fa6e8a05ffe40ecd54a645871",
        url = "https://github.com/jpsim/SourceKitten/archive/a9e6df65d8e31e0fa6e8a05ffe40ecd54a645871.tar.gz",
    )

    http_archive(
        name = "swiftlint_com_github_scottrhoyt_swifty_text_table",
        sha256 = "b77d403db9f33686caeb2a12986997fb02a0819e029e669c6b9554617c4fd6ae",
        build_file = "@SwiftLint//bazel:SwiftyTextTable.BUILD",
        strip_prefix = "SwiftyTextTable-0.9.0",
        url = "https://github.com/scottrhoyt/SwiftyTextTable/archive/refs/tags/0.9.0.tar.gz",
    )

    http_archive(
        name = "com_github_apple_swift_syntax",
        sha256 = "331d411773efcd924e3e91f0f9899715c2259bedd29277693baa5263ee588220",
        build_file = "@SwiftLint//bazel:SwiftSyntax.BUILD",
        strip_prefix = "swift-syntax-0519e76999c9e548e58222e45a22f177c886d8c0",
        url = "https://github.com/apple/swift-syntax/archive/0519e76999c9e548e58222e45a22f177c886d8c0.tar.gz",
    )

    http_archive(
        name = "com_github_johnsundell_collectionconcurrencykit",
        sha256 = "9083fe6f8b4f820bfb5ef5c555b31953116f158ec113e94c6406686e78da34aa",
        build_file = "@SwiftLint//bazel:CollectionConcurrencyKit.BUILD",
        strip_prefix = "CollectionConcurrencyKit-0.2.0",
        url = "https://github.com/JohnSundell/CollectionConcurrencyKit/archive/refs/tags/0.2.0.tar.gz",
    )

    # https://github.com/krzyzanowskim/CryptoSwift/pull/989
    http_archive(
        name = "com_github_krzyzanowskim_cryptoswift",
        sha256 = "bbabd3a5c5f50683d6eeb90cf3f7f7184e18065beaec7cccd2059ed3c9bac2ed",
        build_file = "@SwiftLint//bazel:CryptoSwift.BUILD",
        strip_prefix = "CryptoSwift-ea07950124f7e44e88bd783bf29e6691a7866228",
        url = "https://github.com/krzyzanowskim/CryptoSwift/archive/ea07950124f7e44e88bd783bf29e6691a7866228.tar.gz",
    )
