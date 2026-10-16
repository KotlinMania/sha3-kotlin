# sha3-kotlin in Kotlin

[![GitHub link](https://img.shields.io/badge/GitHub-KotlinMania%2Fsha3-kotlin-blue.svg)](https://github.com/KotlinMania/sha3-kotlin)
[![Maven Central](https://img.shields.io/maven-central/v/io.github.kotlinmania/sha3-kotlin)](https://central.sonatype.com/artifact/io.github.kotlinmania/sha3-kotlin)
[![Build status](https://img.shields.io/github/actions/workflow/status/KotlinMania/sha3-kotlin/ci.yml?branch=main)](https://github.com/KotlinMania/sha3-kotlin/actions)

This is a Kotlin Multiplatform line-by-line transliteration port of [`RustCrypto/hashes`](https://github.com/RustCrypto/hashes) (crate `sha3`).

**Original Project:** This port is based on [`RustCrypto/hashes`](https://github.com/RustCrypto/hashes). All design credit and project intent belong to the upstream authors; this repository is a faithful port to Kotlin Multiplatform with no behavioural changes intended.

### Porting status

This is an **in-progress port**. The goal is feature parity with the upstream Rust crate while providing a native Kotlin Multiplatform API. Every Kotlin file carries a `// port-lint: source <path>` header naming its upstream Rust counterpart so the AST-distance tool can track provenance.

---

## Upstream README — `RustCrypto/hashes`

> The text below is reproduced from [`https://github.com/RustCrypto/hashes`](https://github.com/RustCrypto/hashes). It is the upstream project's own description and remains under the upstream authors' authorship; links have been rewritten to absolute upstream URLs where appropriate so they continue to resolve from this repository.

# RustCrypto: SHA-3

[![crate][crate-image]][crate-link]
[![Docs][docs-image]][docs-link]
![Apache2/MIT licensed][license-image]
![Rust Version][rustc-image]
[![Project Chat][chat-image]][chat-link]
[![Build Status][build-image]][build-link]

Implementation of the [SHA-3] family of cryptographic hash algorithms.

There are 4 standard fixed-size algorithms specified in the SHA-3 standard:
`SHA3-224`, `SHA3-256`, `SHA3-384`, `SHA3-512`.

`SHAKE128` and `SHAKE256` extendable output functions (XOF) are defined in the [`shake`] crate

Additionally, this crate supports:
- `Keccak224`, `Keccak256`, `Keccak384`, `Keccak512`: NIST submission without padding changes
- `Keccak256Full`: CryptoNight variant of SHA-3

## Examples

Output size of SHA3-256 is fixed, so its functionality is usually
accessed via the `Digest` trait:

```rust
use hex_literal::hex;
use sha3::{Digest, Sha3_256};

let mut hasher = Sha3_256::new();
hasher.update(b"abc");
let hash = hasher.finalize();

assert_eq!(hash, hex!("3a985da74fe225b2045c172d6bd390bd855f086e3e9d525b46bfe24511431532"));
```

See the [`digest`] crate docs for additional examples.

## License

The crate is licensed under either of:

* [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0)
* [MIT license](http://opensource.org/licenses/MIT)

at your option.

### Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall be
dual licensed as above, without any additional terms or conditions.

[//]: # (badges)

[crate-image]: https://img.shields.io/crates/v/sha3.svg
[crate-link]: https://crates.io/crates/sha3
[docs-image]: https://docs.rs/sha3/badge.svg
[docs-link]: https://docs.rs/sha3/
[license-image]: https://img.shields.io/badge/license-Apache2.0/MIT-blue.svg
[rustc-image]: https://img.shields.io/badge/rustc-1.85+-blue.svg
[chat-image]: https://img.shields.io/badge/zulip-join_chat-blue.svg
[chat-link]: https://rustcrypto.zulipchat.com/#narrow/stream/260041-hashes
[build-image]: https://github.com/RustCrypto/hashes/actions/workflows/sha3.yml/badge.svg?branch=master
[build-link]: https://github.com/RustCrypto/hashes/actions/workflows/sha3.yml?query=branch:master

[//]: # (general links)

[SHA-3]: https://en.wikipedia.org/wiki/SHA-3
[`shake`]: http://docs.rs/shake
[`digest`]: https://docs.rs/digest

---

## About this Kotlin port

### Installation

```kotlin
dependencies {
    implementation("io.github.kotlinmania:sha3-kotlin:0.1.0")
}
```

### Building

```bash
./gradlew build
./gradlew test
```

### Targets

- macOS arm64
- Linux x64
- Windows mingw-x64
- iOS arm64 / simulator-arm64 (Swift export + XCFramework)
- JS (browser + Node.js)
- Wasm-JS (browser + Node.js)
- Android (API 24+)

### Porting guidelines

See [AGENTS.md](AGENTS.md) and [CLAUDE.md](CLAUDE.md) for translator discipline, port-lint header convention, and Rust → Kotlin idiom mapping.

### License

This Kotlin port is distributed under the same license terms as the upstream [`RustCrypto/hashes`](https://github.com/RustCrypto/hashes). See [LICENSE](LICENSE) (and any sibling `LICENSE-*` / `NOTICE` files mirrored from upstream) for the full text.

Original work copyrighted by the sha3 authors.  
Kotlin port: Copyright (c) 2026 Sydney Renee and The Solace Project.

### Acknowledgments

Thanks to the [`RustCrypto/hashes`](https://github.com/RustCrypto/hashes) maintainers and contributors for the original Rust implementation. This port reproduces their work in Kotlin Multiplatform; bug reports about upstream design or behavior should go to the upstream repository.
