# Created by: Torsten ZÃ¼hlsdorff <ports@toco-domains.de>
# $FreeBSD$

PORTNAME=rails
PORTVERSION=4.1.13
CATEGORIES=www rubygems
MASTER_SITES=RG
PKGNAMESUFFIX=41

MAINTAINER=ruby@FreeBSD.org
COMMENT=MVC web application framework

LICENSE=MIT

RUN_DEPENDS=rubygem-actionmailer41>=${PORTVERSION}:${PORTSDIR}/mail/rubygem-actionmailer41 \
rubygem-actionpack41>=${PORTVERSION}:${PORTSDIR}/www/rubygem-actionpack41 \
rubygem-actionview41>=${PORTVERSION}:${PORTSDIR}/devel/rubygem-actionview41 \
rubygem-activemodel41>=${PORTVERSION}:${PORTSDIR}/databases/rubygem-activemodel41 \
rubygem-activerecord41>=${PORTVERSION}:${PORTSDIR}/databases/rubygem-activerecord41 \
rubygem-activesupport41>=${PORTVERSION}:${PORTSDIR}/devel/rubygem-activesupport41 \
rubygem-bundler>=1.3.0:${PORTSDIR}/sysutils/rubygem-bundler \
rubygem-railties41>=${PORTVERSION}:${PORTSDIR}/www/rubygem-railties41 \
rubygem-builder32>=3.2.2:${PORTSDIR}/devel/rubygem-builder32 \
rubygem-sprockets-rails41>=2.0:${PORTSDIR}/devel/rubygem-sprockets-rails41 \
rubygem-rake>=10.1.1:${PORTSDIR}/devel/rubygem-rake \
rubygem-sqlite3>=1.3.9:${PORTSDIR}/databases/rubygem-sqlite3 \
rubygem-execjs>=2.2.1:${PORTSDIR}/devel/rubygem-execjs \
rubygem-coffee-rails41>=4.0.1:${PORTSDIR}/devel/rubygem-coffee-rails41 \
rubygem-sass-rails41>=4.0.3:${PORTSDIR}/textproc/rubygem-sass-rails41 \
rubygem-spring>=1.1.3:${PORTSDIR}/devel/rubygem-spring \
rubygem-jquery-rails41>=3.1.2:${PORTSDIR}/www/rubygem-jquery-rails41 \
rubygem-jbuilder-rails41>=2.1.3:${PORTSDIR}/devel/rubygem-jbuilder-rails41 \
rubygem-uglifier>=2.5.0:${PORTSDIR}/www/rubygem-uglifier \
rubygem-sprockets>=2.12.3:${PORTSDIR}/devel/rubygem-sprockets \
rubygem-thread_safe>=0.3.4:${PORTSDIR}/devel/rubygem-thread_safe \
rubygem-turbolinks-rails41>=2.3.0:${PORTSDIR}/www/rubygem-turbolinks-rails41 \
rubygem-sass>=3.4.1:${PORTSDIR}/textproc/rubygem-sass \
rubygem-sdoc>=0.4.1:${PORTSDIR}/devel/rubygem-sdoc \
rubygem-rdoc>=4.0.2:${PORTSDIR}/devel/rubygem-rdoc

NO_ARCH=yes
USE_RUBY=yes
USE_RUBYGEMS=yes
RUBYGEM_AUTOPLIST=yes
USES=cpe

CPE_VENDOR=rubyonrails
CPE_PRODUCT=ruby_on_rails

OPTIONS_DEFINE=PASSENGER MEMCACHE_CLIENT
PASSENGER_DESC=Passenger backend
MEMCACHE_CLIENT_DESC=MemCache-Client support
OPTIONSFILE=${PORT_DBDIR}/rubygem-${PORTNAME}/options

MEMCACHE_CLIENT_RUN_DEPENDS=rubygem-memcache-client>=1.2.0:${PORTSDIR}/databases/rubygem-memcache-client
PASSENGER_RUN_DEPENDS=rubygem-passenger>=2.2.15:${PORTSDIR}/www/rubygem-passenger

.include <bsd.port.mk>
