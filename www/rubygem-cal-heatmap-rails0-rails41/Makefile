# $FreeBSD: head/www/rubygem-cal-heatmap-rails/Makefile 391169 2015-07-02 16:01:06Z pgollucci $

PORTNAME=cal-heatmap-rails
PORTVERSION=0.0.1
CATEGORIES=www rubygems
MASTER_SITES=RG
PKGNAMESUFFIX=0-rails41

MAINTAINER=ruby@FreeBSD.org
COMMENT=Calendar heatmap assets for Rails

LICENSE=MIT
LICENSE_FILE=${WRKSRC}/LICENSE.md

RUN_DEPENDS?=rubygem-d3_rails-rails41>0:${PORTSDIR}/www/rubygem-d3_rails-rails41

PORTSCOUT=limit:^0.*

NO_ARCH=yes

USE_RUBY=yes
USE_RUBYGEMS=yes
RUBYGEM_AUTOPLIST=yes

.include <bsd.port.mk>
