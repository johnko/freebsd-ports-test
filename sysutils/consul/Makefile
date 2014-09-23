# $FreeBSD$

PORTNAME=			consul
PORTVERSION=	0.3.1
CATEGORIES=		sysutils

MAINTAINER=		thomas@bartelmess.io
COMMENT=			Consul

LICENSE=			MPL

USE_GITHUB=		yes
GH_ACCOUNT=		hashicorp
GH_COMMIT=		6c2ee5c
GH_TAGNAME=		v${PORTVERSION}

GO_PKGNAME=		github.com/hashicorp/${PORTNAME}
CC?=					clang
GO_ENV+=			CC="${CC}"

do-build:
	@(cd ${GO_WRKSRC}; ${SETENV} ${GO_ENV} ${GO_CMD} get . )
	@(cd ${GO_WRKSRC}; ${SETENV} ${GO_ENV} ${GO_CMD} install ${GO_TARGET})

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${GO_WRKDIR_BIN}/consul ${STAGEDIR}${PREFIX}/bin/consul

.include <bsd.port.pre.mk>
.include "${.CURDIR}/../../lang/go/files/bsd.go.mk"
.include <bsd.port.post.mk>
