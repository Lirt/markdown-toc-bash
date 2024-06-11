#!/usr/bin/env bats

@test "Test markdown file with duplicated headings" {
	run diff <(./markdown-toc.sh tests/readme-with-identical-headings.md) tests/readme-with-identical-headings-result.md
	[ "$status" -eq 0 ]
}