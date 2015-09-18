# Created by: Torsten Zühlsdorff <ports@toco-domains.de>
# $FreeBSD$

PKGNAMESUFFIX=	-rails41

RUN_DEPENDS=	rubygem-actionpack41>=4.1.12:${PORTSDIR}/www/rubygem-actionpack41 \
	rubygem-activesupport41>=4.1.12:${PORTSDIR}/devel/rubygem-activesupport41 \
	rubygem-haml>=4.0.6:${PORTSDIR}/www/rubygem-haml \
	rubygem-html2haml>=1.0.1:${PORTSDIR}/www/rubygem-html2haml \
	rubygem-railties41>=4.1.12:${PORTSDIR}/www/rubygem-railties41

MASTERDIR=	${.CURDIR}/../rubygem-haml-rails-rails4

.include "${MASTERDIR}/Makefile"
