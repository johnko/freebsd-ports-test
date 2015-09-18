# Created by: Torsten Zühlsdorff <ports@toco-domains.de>
# $FreeBSD$

PKGNAMESUFFIX=	-rails41

RUN_DEPENDS=	rubygem-activesupport41>=4.1.12:${PORTSDIR}/devel/rubygem-activesupport41 \
	rubygem-builder32>=0:${PORTSDIR}/devel/rubygem-builder32 \
	rubygem-hashie>=2.1.0:${PORTSDIR}/devel/rubygem-hashie \
	rubygem-multi_json>=1.3.2:${PORTSDIR}/devel/rubygem-multi_json \
	rubygem-multi_xml>=0.5.2:${PORTSDIR}/textproc/rubygem-multi_xml \
	rubygem-rack16>=1.3.0:${PORTSDIR}/www/rubygem-rack16 \
	rubygem-rack-accept>=0:${PORTSDIR}/www/rubygem-rack-accept \
	rubygem-rack-mount>=0:${PORTSDIR}/www/rubygem-rack-mount\
	rubygem-virtus>=1.0.0:${PORTSDIR}/devel/rubygem-virtus

MASTERDIR=	${.CURDIR}/../rubygem-grape

.include "${MASTERDIR}/Makefile"
