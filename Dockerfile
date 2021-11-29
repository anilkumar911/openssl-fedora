from fedora:28

RUN yum install -y gcc libuuid-devel git make autoconf automake libtool diffutils gdb wget krb5-devel lksctp-tools-devel zlib-devel
RUN dnf install -y fedora-packager fedora-review
RUN dnf install -y 'perl(Math::BigInt)' 'perl(Module::Load::Conditional)' 'perl(Test::Harness)' 'perl(Test::More)' 'perl(Time::HiRes)'

WORKDIR /workspace/openssl-build/
