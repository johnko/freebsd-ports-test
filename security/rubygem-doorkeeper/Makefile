# $FreeBSD$

PORTNAME=	doorkeeper
PORTVERSION=	3.0.0
CATEGORIES=	security rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Doorkeeper is an OAuth 2 provider for Rails and Grape

LICENSE=	MIT

OPTIONS_SINGLE=	SG1
OPTIONS_SINGLE_SG1=	RAILTIES RAILTIES41 RAILTIES4

RAILTIES_DESC=	Use Railties 3
RAILTIES41_DESC=	Use Railties 4.1
RAILTIES4_DESC=	Use Railties 4.2

.if defined(RAILTIES)
OPTIONS_DEFAULT=	RAILTIES
.endif
.if defined(RAILTIES41)
OPTIONS_DEFAULT=	RAILTIES41
.endif
.if defined(RAILTIES4)
OPTIONS_DEFAULT=	RAILTIES4
.endif

RAILTIES_RUN_DEPENDS=	rubygem-railties>=3.2:${PORTSDIR}/www/rubygem-railties
RAILTIES41_RUN_DEPENDS=	rubygem-railties41>=4.1.12:${PORTSDIR}/www/rubygem-railties41
RAILTIES4_RUN_DEPENDS=	rubygem-railties4>=4.2:${PORTSDIR}/www/rubygem-railties4

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
