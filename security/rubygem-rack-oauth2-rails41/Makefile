# Created by: Torsten Zühlsdorff <ports@toco-domains.de>
# $FreeBSD$

PKGNAMESUFFIX=	-rails41

RUN_DEPENDS=	rubygem-activesupport41>=4.1.12:${PORTSDIR}/devel/rubygem-activesupport41 \
	rubygem-attr_required>=0.0.5:${PORTSDIR}/devel/rubygem-attr_required \
	rubygem-httpclient>=2.4:${PORTSDIR}/www/rubygem-httpclient \
	rubygem-multi_json>=1.3.6:${PORTSDIR}/devel/rubygem-multi_json \
	rubygem-rack16>=1.1:${PORTSDIR}/www/rubygem-rack16

MASTERDIR=	${.CURDIR}/../rubygem-rack-oauth2

.include "${MASTERDIR}/Makefile"
