# $FreeBSD$

PORTNAME=	gon
PORTVERSION=	6.0.1
CATEGORIES=	www rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Framework to pass data to JS easily

LICENSE=	MIT

RUN_DEPENDS?=	rubygem-actionpack>=3.0:${PORTSDIR}/www/rubygem-actionpack \
		rubygem-json>=0:${PORTSDIR}/devel/rubygem-json \
		rubygem-multi_json>=0:${PORTSDIR}/devel/rubygem-multi_json \
		rubygem-request_store>=1.0:${PORTSDIR}/devel/rubygem-request_store

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
