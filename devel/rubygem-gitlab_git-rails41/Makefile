# Created by: Torsten Zühlsdorff <ports@toco-domains.de>
# $FreeBSD$

PKGNAMESUFFIX=	-rails41

RUN_DEPENDS=	rubygem-activesupport41>=4.1.12:${PORTSDIR}/devel/rubygem-activesupport41 \
	rubygem-charlock_holmes>=0.6:${PORTSDIR}/textproc/rubygem-charlock_holmes \
	rubygem-gitlab-linguist>=3.0:${PORTSDIR}/textproc/rubygem-gitlab-linguist \
	rubygem-rugged>=0.22.2:${PORTSDIR}/devel/rubygem-rugged

MASTERDIR=	${.CURDIR}/../rubygem-gitlab_git

.include "${MASTERDIR}/Makefile"
