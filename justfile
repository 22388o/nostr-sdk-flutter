set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

[private]
default:
    @just --list

build:
    cd rust && cargo build

clean:
    flutter clean
    cd example && flutter clean
    cd rust && cargo clean

example:
    cd example && flutter run
