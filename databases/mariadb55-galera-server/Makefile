# Created by: Horia Racoviceanu <horia@racoviceanu.com>
# $FreeBSD$

PORTNAME=	mariadb
PORTVERSION=	5.5.37
DISTVERSIONPREFIX?=	galera-
CATEGORIES=	databases ipv6
MASTER_SITES=	http://mariadb.mirror.iweb.com/${PORTNAME}-${DISTVERSIONPREFIX}${PORTVERSION}/source/ \
		http://mirror.jmu.edu/pub/${PORTNAME}/${PORTNAME}-${DISTVERSIONPREFIX}${PORTVERSION}/source/ \
		http://ftp.osuosl.org/pub/${PORTNAME}/${PORTNAME}-${DISTVERSIONPREFIX}${PORTVERSION}/source/ \
		http://mirrors.syringanetworks.net/${PORTNAME}/${PORTNAME}-${DISTVERSIONPREFIX}${PORTVERSION}/source/ \
		http://ftp.wa.co.za/pub/${PORTNAME}/${PORTNAME}-${DISTVERSIONPREFIX}${PORTVERSION}/source/ \
		http://mirror.zol.co.zw/${PORTNAME}/${PORTNAME}-${DISTVERSIONPREFIX}${PORTVERSION}/source/ \
		http://mirrors.tuna.tsinghua.edu.cn/${PORTNAME}/${PORTNAME}-${DISTVERSIONPREFIX}${PORTVERSION}/source/ \
		http://mariadb.biz.net.id/${PORTNAME}-${DISTVERSIONPREFIX}${PORTVERSION}/source/ \
		http://ftp.yz.yamagata-u.ac.jp/pub/dbms/${PORTNAME}/${PORTNAME}-${DISTVERSIONPREFIX}${PORTVERSION}/source/ \
		http://ftp.kaist.ac.kr/${PORTNAME}/${PORTNAME}-${DISTVERSIONPREFIX}${PORTVERSION}/source/
PKGNAMESUFFIX?=	55-galera-server

MAINTAINER=	horia@racoviceanu.com
COMMENT?=	Multithreaded SQL database with wsrep patch (server)

LICENSE=	GPLv2

SLAVEDIRS=	databases/mariadb55-galera-client

USES=		cmake shebangfix
SHEBANG_FILES=	scripts/*

CMAKE_ARGS+=	-DCOMPILATION_COMMENT="FreeBSD Ports" \
		-DDEFAULT_CHARSET=utf8 \
		-DDEFAULT_COLLATION=utf8_general_ci \
		-DEXECINFO_ROOT=${LOCALBASE} \
		-DINSTALL_DOCDIR="share/doc/mysql" \
		-DINSTALL_DOCREADMEDIR="share/doc/mysql" \
		-DINSTALL_INCLUDEDIR="${LOCALBASE}/include/mysql" \
		-DINSTALL_INFODIR="info" \
		-DINSTALL_LIBDIR="lib/mysql" \
		-DINSTALL_MANDIR="man" \
		-DINSTALL_MYSQLDATADIR="/var/db/mysql" \
		-DINSTALL_MYSQLSHAREDIR="share/mysql" \
		-DINSTALL_MYSQLTESTDIR="share/mysql/tests" \
		-DINSTALL_PLUGINDIR="lib/mysql/plugin" \
		-DINSTALL_SBINDIR="libexec" \
		-DINSTALL_SCRIPTDIR="bin" \
		-DINSTALL_SHAREDIR="share" \
		-DINSTALL_SQLBENCHDIR="share/mysql" \
		-DINSTALL_SUPPORTFILESDIR="share/mysql" \
		-DWITH_EXTRA_CHARSETS="complex" \
		-DWITH_INNODB_DISALLOW_WRITES=1 \
		-DWITH_LIBWRAP=ON \
		-DWITH_READLINE=ON \
		-DWITH_UNIT_TESTS=OFF \
		-DWITH_WSREP=ON \
		-DWITH_XTRADB_STORAGE_ENGINE=ON

DATADIR=	${PREFIX}/share/mysql
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

OPTIONS_DEFINE=		GALERA FASTMTX
OPTIONS_GROUP=		STATE_SNAPSHOT_TRANSFER
OPTIONS_GROUP_STATE_SNAPSHOT_TRANSFER=	RSYNC XTRABACKUP
OPTIONS_RADIO=		SSL
OPTIONS_RADIO_SSL=	OPENSSL YASSL
OPTIONS_DEFAULT=	GALERA OPENSSL RSYNC

FASTMTX_DESC=		Replace mutexes with spinlocks
GALERA_DESC=		Galera (multi-master replication provider)
RSYNC_DESC=		Rsync (for rsync-based SST)
XTRABACKUP_DESC=	XtraBackup (for xtrabackup-based SST)
YASSL_DESC=		yaSSL (bundled)

OPTIONS_SUB=	yes

FASTMTX_CMAKE_ON=	-DWITH_FAST_MUTEXES=1
GALERA_LIB_DEPENDS=	libgalera.so:${PORTSDIR}/databases/galera

RSYNC_RUN_DEPENDS=	rsync:${PORTSDIR}/net/rsync


OPENSSL_CMAKE_ON=	-DWITH_SSL=system
OPENSSL_USE=		OPENSSL=yes
YASSL_CMAKE_ON=		-DWITH_SSL=bundled

.if defined(USE_MYSQL)
.error You have `USE_MYSQL' variable defined either in environment or in make(1) arguments. Please undefine and try again.
.endif

# MySQL-Server part
.if ! defined(CLIENT_ONLY)
USE_MYSQL=	yes
WANT_MYSQL_VER=	55mg

CONFLICTS_INSTALL=	mysql[0-9][0-9]-server-* \
			mysql[0-9][0-9]-galera-server-* \
			mariadb[0-46-9][0-9]-server-* \
			mariadb[0-55-9][0-9]-server-* \
			mariadb5.[0-46-9]-server-* \
			percona[0-9][0-9]-server-*

USE_RC_SUBR=	mysql-server

USERS=		mysql
GROUPS=		mysql

CMAKE_ARGS+=	-DWITH_EMBEDDED_SERVER=ON \
		-DWITHOUT_EXAMPLE_STORAGE_ENGINE=ON

SUB_FILES=	pkg-message

PORTDOCS=	*

DOCSRCDIR1=	${WRKSRC}
DOC_FILES1=	README

DOCSRCDIR2=	${DOCSRCDIR1}/Docs
DOC_FILES2=	README-wsrep \
		myisam.txt \
		mysql.info \
		sp-imp-spec.txt

OPTIONS_DEFINE+=	MAXKEY DOCS
OPTIONS_DEFAULT+=	MAXKEY

MAXKEY_DESC=	Change max key length from 1000 to 4000
MAXKEY_EXTRA_PATCHES=	${FILESDIR}/extra-patch-include__my_compare.h
.endif

.include <bsd.port.options.mk>

.if ${OSVERSION} < 1000052
LIB_DEPENDS+=	libexecinfo.so:${PORTSDIR}/devel/libexecinfo
.endif

.if ${OSVERSION} < 1000012
USES+=		gmake
CMAKE_ARGS+=	-DWITH_JEMALLOC="bundled"
.else
CMAKE_ARGS+=	-DWITH_JEMALLOC="system"
.endif

.if ${OSVERSION} < 1000000 && ! defined(CLIENT_ONLY)
USE_GCC=	yes
.endif

post-patch:
	@${REINPLACE_CMD} 's|%%LOCALBASE%%|${LOCALBASE}|g' \
		${WRKSRC}/scripts/mysql_config.sh
	@${REINPLACE_CMD} 's|@VERSION@-MariaDB|&-Galera|' \
		${WRKSRC}/include/mysql_version.h.in
	@${REINPLACE_CMD} 's|name:|.name =|' \
		${WRKSRC}/storage/innobase/handler/i_s.cc

	@cd ${WRKSRC}; \
		${ECHO_CMD} ${SHEBANG_FILES} | ${XARGS} ${SED} -i '' ${_SHEBANG_REINPLACE_ARGS}

.if ${OSVERSION} > 1000000
	@${REINPLACE_CMD} 's|_Bool|bool|' ${WRKSRC}/wsrep/wsrep_api.h
.endif

post-install:
.if ! defined(CLIENT_ONLY)
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${DOC_FILES1:S|^|${DOCSRCDIR1}/|} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${DOC_FILES2:S|^|${DOCSRCDIR2}/|} ${STAGEDIR}${DOCSDIR}
.endif

.include <bsd.port.pre.mk>

.if ${ARCH} == "arm"
BROKEN=		Does not compile on arm
.endif

.include <bsd.port.post.mk>
