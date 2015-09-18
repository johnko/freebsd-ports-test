# Created by: Torsten Zühlsdorff <ports@toco-domains.de>
# $FreeBSD$

PKGNAMESUFFIX=	-rails41

RUN_DEPENDS=	rubygem-activemodel41>=4.1.12:${PORTSDIR}/databases/rubygem-activemodel41 \
	rubygem-activesupport41>=4.1.12:${PORTSDIR}/devel/rubygem-activesupport41 \
	rubygem-attr_encrypted>=1.3.4:${PORTSDIR}/security/rubygem-attr_encrypted \
	rubygem-devise-rails41>=3.2.4:${PORTSDIR}/devel/rubygem-devise-rails41 \
	rubygem-railties41>=4.1.12:${PORTSDIR}/www/rubygem-railties41 \
	rubygem-rotp>=2.0.0:${PORTSDIR}/devel/rubygem-rotp

MASTERDIR=	${.CURDIR}/../rubygem-devise-two-factor

.include "${MASTERDIR}/Makefile"
