FROM perl:5.30

LABEL "maintainer"="FreeHackQuest Team <freehackquest@gmail.com>"
LABEL "repository"="https://github.com/freehackquest/perl-catalyst"

RUN apt update -qq && apt install -y \
    libpq-dev \
    libperl-dev \
    gcc \
    make \
    curl \
    wget \
    libdatetime-format-pg-perl \
    zlib1g-dev \
    libgd-dev \
    libmagickcore-dev \
    libmagickcore-6-headers \
    libmagick++-6-headers \
    libmagickwand-6-headers \
    libmagic-dev \
    libmagick++-6.q16-dev \
    libmagickcore-6.q16-dev \
    libmagickcore-dev \
    libmagick++-dev \
    libmagickwand-6.q16-dev \
    libmagickwand-dev \
    libmagic-ocaml-dev \
    libmagics++-dev \
    libmagics++-metview-dev \
    libcatalyst-* \
    libdbix-class-* \
    libdbd-pg-perl \
    libmath-round-perl \
    libfile-cache-perl \
    libnet-amazon-s3-perl \
    libcrypt-cbc-perl \
    libcrypt-openssl-rsa-perl \
    liblocal-lib-perl \
    libmodule-install-perl \
    sendmail \
    locales-all \
    libxml-feed-perl \
    libtext-unaccent-perl \
    libberkeleydb-perl \
    libimager-perl \
    libtext-lorem-perl \
    libdata-password-perl \
    libmojolicious-perl \
    libdatetime-format-duration-perl \
    libdatetime-format-mysql-perl \
    libdatetime-format-strptime-perl \
    libcalendar-simple-perl \
    libdate-simple-perl \
    libcrypt-generatepassword-perl \
    build-essential

RUN cpan install Data::Dumper \
    && cpan install Types::Serialiser \
    && cpan install common::sense \
    && cpan install Lingua::EN::Words2Nums \
    && cpan install Lingua::GL::Stemmer \
    && cpan install Lingua::PT::Stemmer \
    && cpan install Lingua::Stem::Fr \
    && cpan install Lingua::Stem::It \
    && cpan install Lingua::Stem::Ru \
    && cpan install Lingua::Stem::Snowball::Da \
    && cpan install Lingua::Stem::Snowball::No \
    && cpan install Lingua::Stem::Snowball::Se \
    && cpan install Text::German \
    && cpan install Text::Reform \
    && cpan install IPC::Run \
    && cpan install XML::Twig \
    && cpan install XML::XPath \
    && cpan install XML::Parser \
    && cpan install Ref::Util \
    && cpan install XString \
    && cpan install SQL::Translator \
    && cpan install Spiffy \
    && cpan install List::MoreUtils \
    && cpan install Term::ReadLine \
    && cpan -i -f Moose::Autobox \
    && cpan install MooseX::NonMoose \
    && cpan install File::Basename \
    && cpan install Catalyst::ScriptRunner \ 
    && cpan install Catalyst::Devel \
    && cpan install Catalyst::Helper::View::TT \
    && cpan install DBIx::Class::Schema::Loader \
    && cpan install DBIx::Class::TimeStamp \
    && cpan install DBIx::Class::PassphraseColumn \
    && cpan install Catalyst::Helper::View::Bootstrap \
    && cpan -i -f Catalyst::Plugin::Session::State::Cookie \
    && cpan -i -f Catalyst::Plugin::Session::Store::File \
    && cpan -i -f Catalyst::Plugin::Authentication \
    && cpan -i -f Catalyst::Plugin::StackTrace \
    && cpan -i -f Catalyst::Authentication::Realm::SimpleDB \
    && cpan install Catalyst::Controller::BindLex \
    && cpan install DBD::Pg \
    && cpan install File::Basename

WORKDIR /root/server

EXPOSE 3000 
CMD ./server.pl
