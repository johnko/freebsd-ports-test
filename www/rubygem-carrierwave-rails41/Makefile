# Created by: Torsten Zühlsdorff <ports@toco-domains.de>
# $FreeBSD$

PKGNAMESUFFIX=	-rails41

RUN_DEPENDS=	rubygem-activemodel41>=4.1.12:${PORTSDIR}/databases/rubygem-activemodel41 \
	rubygem-activesupport41>=4.1.12:${PORTSDIR}/devel/rubygem-activesupport41 \
	rubygem-json>=1.7:${PORTSDIR}/devel/rubygem-json \
	rubygem-mime-types>=1.16:${PORTSDIR}/misc/rubygem-mime-types

MASTERDIR=	${.CURDIR}/../rubygem-carrierwave

.include "${MASTERDIR}/Makefile"
