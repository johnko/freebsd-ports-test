# $FreeBSD$

PORTNAME=	mariadb
PKGNAMESUFFIX=	55-galera-client

COMMENT=	Multithreaded SQL database with wsrep patch (client)

MASTERDIR=	${.CURDIR}/../mariadb55-galera-server

PKGMESSAGE=	mustnotexist
PATCHDIR=	${.CURDIR}/files
PLIST=		${.CURDIR}/pkg-plist

CONFLICTS_INSTALL=	mysql[0-9][0-9]-client-* \
			mysql[0-9][0-9]-galera-client-* \
			mariadb[0-46-9][0-9]-client-* \
			mariadb[0-55-9][0-9]-client-* \
			mariadb5.[0-46-9]-client-* \
			percona[0-9][0-9]-client-*

CMAKE_ARGS+=	-DWITHOUT_SERVER=1

USE_LDCONFIG=	${PREFIX}/lib/mysql

CLIENT_ONLY=	yes

.include "${MASTERDIR}/Makefile"
