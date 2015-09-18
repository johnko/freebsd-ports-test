# Created by: Torsten Zühlsdorff <ports@toco-domains.de>
# $FreeBSD$

PKGNAMESUFFIX=	-rails41

RUN_DEPENDS=	rubygem-actionpack41>=4.1.12:${PORTSDIR}/www/rubygem-actionpack41 \
	rubygem-redis-store>=1.1.0:${PORTSDIR}/devel/rubygem-redis-store \
	rubygem-redis-rack>=1.5.0:${PORTSDIR}/www/rubygem-redis-rack

MASTERDIR=	${.CURDIR}/../rubygem-redis-actionpack

.include "${MASTERDIR}/Makefile"
