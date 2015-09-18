# Created by: Torsten Zühlsdorff <ports@toco-domains.de>
# $FreeBSD$

PKGNAMESUFFIX=	-rails41

RUN_DEPENDS=	rubygem-actionpack41>=4.1.12:${PORTSDIR}/www/rubygem-actionpack41 \
	rubygem-json>=0:${PORTSDIR}/devel/rubygem-json \
	rubygem-multi_json>=0:${PORTSDIR}/devel/rubygem-multi_json \
	rubygem-request_store>=1.0.5:${PORTSDIR}/devel/rubygem-request_store

MASTERDIR=	${.CURDIR}/../rubygem-gon

.include "${MASTERDIR}/Makefile"
