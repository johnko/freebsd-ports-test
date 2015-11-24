# Created by: Torsten ZÅ¸hlsdorff <ports@toco-domains.de>
# $FreeBSD$

PORTNAME=	gitlab
PORTVERSION=	7.14.3
DISTVERSIONPREFIX=	v
CATEGORIES=	www devel

MAINTAINER=	ports@toco-domains.de
COMMENT=	Web GUI for managing git repositories

LICENSE=	MIT

USERS=	git
GROUPS=	git

USE_RC_SUBR=	gitlab

BUILD_DEPENDS=	ruby>=2.1:${PORTSDIR}/lang/ruby21 \
	gem:${PORTSDIR}/devel/ruby-gems

RUN_DEPENDS=	git:${PORTSDIR}/devel/git \
	redis>=3.0.0:${PORTSDIR}/databases/redis \
	rubygem-rails41>=4.1.1:${PORTSDIR}/www/rubygem-rails41 \
	rubygem-sprockets>=2.12.3:${PORTSDIR}/devel/rubygem-sprockets \
	rubygem-default_value_for-rails41>=3.0.0:${PORTSDIR}/devel/rubygem-default_value_for-rails41 \
	rubygem-pg>=0.18.2:${PORTSDIR}/databases/rubygem-pg \
	rubygem-devise-rails41>=3.2.4:${PORTSDIR}/devel/rubygem-devise-rails41 \
	rubygem-devise-async-rails41>=0.9.0:${PORTSDIR}/devel/rubygem-devise-async-rails41 \
	rubygem-omniauth>=1.1.3:${PORTSDIR}/security/rubygem-omniauth \
	rubygem-omniauth-google-oauth2>=0.2.6:${PORTSDIR}/net/rubygem-omniauth-google-oauth2 \
	rubygem-omniauth-twitter>=1.2.0:${PORTSDIR}/net/rubygem-omniauth-twitter \
	rubygem-omniauth-github>=1.1.2:${PORTSDIR}/net/rubygem-omniauth-github \
	rubygem-omniauth-shibboleth>=1.2.1:${PORTSDIR}/security/rubygem-omniauth-shibboleth \
	rubygem-omniauth-gitlab>=1.0.0:${PORTSDIR}/security/rubygem-omniauth-gitlab \
	rubygem-omniauth-bitbucket>=0.0.2:${PORTSDIR}/security/rubygem-omniauth-bitbucket \
	rubygem-omniauth-saml>=0.0.1:${PORTSDIR}/security/rubygem-omniauth-saml \
	rubygem-doorkeeper-rails41>=2.1.0:${PORTSDIR}/security/rubygem-doorkeeper-rails41 \
	rubygem-rack-oauth2-rails41>=1.0.5:${PORTSDIR}/security/rubygem-rack-oauth2-rails41 \
	rubygem-devise-two-factor-rails41>=1.0.2:${PORTSDIR}/security/rubygem-devise-two-factor-rails41 \
	rubygem-rqrcode-rails3>=0.1.7:${PORTSDIR}/www/rubygem-rqrcode-rails3 \
	rubygem-attr_encrypted>=1.3.4:${PORTSDIR}/security/rubygem-attr_encrypted \
	rubygem-browser>=0.8.0:${PORTSDIR}/www/rubygem-browser \
	rubygem-gitlab_git-rails41>=7.2.15:${PORTSDIR}/devel/rubygem-gitlab_git-rails41 \
	rubygem-gitlab-grack>=2.0.2:${PORTSDIR}/www/rubygem-gitlab-grack \
	rubygem-gitlab_omniauth-ldap>=1.2.1:${PORTSDIR}/net/rubygem-gitlab_omniauth-ldap \
	rubygem-gollum-lib>=4.0.2:${PORTSDIR}/www/rubygem-gollum-lib \
	rubygem-gitlab-linguist>=3.0.1:${PORTSDIR}/textproc/rubygem-gitlab-linguist \
	rubygem-grape-rails41>=0.6.1:${PORTSDIR}/devel/rubygem-grape-rails41 \
	rubygem-grape-entity-rails41>=0.4.2:${PORTSDIR}/devel/rubygem-grape-entity-rails41 \
	rubygem-rack-cors>=0.4.0:${PORTSDIR}/www/rubygem-rack-cors \
	rubygem-stamp>=0.6.0:${PORTSDIR}/textproc/rubygem-stamp \
	rubygem-enumerize-rails41>=0.11.0:${PORTSDIR}/devel/rubygem-enumerize-rails41 \
	rubygem-kaminari-rails41>=0.15.1:${PORTSDIR}/www/rubygem-kaminari-rails41 \
	rubygem-haml-rails-rails41>=0.9.0:${PORTSDIR}/www/rubygem-haml-rails-rails41 \
	rubygem-carrierwave-rails41>=0.10.0:${PORTSDIR}/www/rubygem-carrierwave-rails41 \
	rubygem-dropzonejs-rails41>=0.7.1:${PORTSDIR}/www/rubygem-dropzonejs-rails41 \
	rubygem-fog>=1.25:${PORTSDIR}/devel/rubygem-fog \
	rubygem-unf>=0.1.4:${PORTSDIR}/textproc/rubygem-unf \
	rubygem-six>=0.2.0:${PORTSDIR}/security/rubygem-six \
	rubygem-seed-fu-rails41>=2.3.5:${PORTSDIR}/databases/rubygem-seed-fu-rails41 \
	rubygem-html-pipeline-rails41>=1.11.0:${PORTSDIR}/textproc/rubygem-html-pipeline-rails41 \
	rubygem-task_list-rails41>=1.0.2:${PORTSDIR}/www/rubygem-task_list-rails41 \
	rubygem-github-markup>=1.3.3:${PORTSDIR}/textproc/rubygem-github-markup \
	rubygem-redcarpet>=3.3.2:${PORTSDIR}/textproc/rubygem-redcarpet \
	rubygem-redcloth>=4.2.9:${PORTSDIR}/www/rubygem-redcloth \
	rubygem-rdoc>=3.6:${PORTSDIR}/devel/rubygem-rdoc \
	rubygem-org-ruby>=0.9.12:${PORTSDIR}/textproc/rubygem-org-ruby \
	rubygem-creole>=0.3.6:${PORTSDIR}/textproc/rubygem-creole \
	rubygem-wikicloth>=0.8.1:${PORTSDIR}/textproc/rubygem-wikicloth \
	rubygem-asciidoctor>=1.5.2:${PORTSDIR}/textproc/rubygem-asciidoctor \
	rubygem-diffy>=3.0.3:${PORTSDIR}/textproc/rubygem-diffy \
	rubygem-unicorn>=4.6.3:${PORTSDIR}/www/rubygem-unicorn \
	rubygem-unicorn-worker-killer>=0.4.3:${PORTSDIR}/www/rubygem-unicorn-worker-killer \
	rubygem-state_machine>=1.2.0:${PORTSDIR}/devel/rubygem-state_machine \
	rubygem-acts-as-taggable-on3-rails41>=3.4.0:${PORTSDIR}/www/rubygem-acts-as-taggable-on3-rails41 \
	rubygem-slim>=3.0.4:${PORTSDIR}/devel/rubygem-slim \
	rubygem-sinatra>=1.4.6:${PORTSDIR}/www/rubygem-sinatra \
	rubygem-sidekiq>=3.3:${PORTSDIR}/devel/rubygem-sidekiq \
	rubygem-sidetiq>=0.6.3:${PORTSDIR}/devel/rubygem-sidetiq \
	rubygem-httparty>=0.13.5:${PORTSDIR}/www/rubygem-httparty \
	rubygem-colored>=1.2:${PORTSDIR}/textproc/rubygem-colored \
	rubygem-settingslogic>=2.0.9:${PORTSDIR}/devel/rubygem-settingslogic \
	rubygem-foreman>=0.78.0:${PORTSDIR}/devel/rubygem-foreman \
	rubygem-version_sorter>=2.0.0:${PORTSDIR}/textproc/rubygem-version_sorter \
	rubygem-redis-rails41>=4.0.0:${PORTSDIR}/www/rubygem-redis-rails41 \
	rubygem-tinder>=1.9.2:${PORTSDIR}/net-im/rubygem-tinder \
	rubygem-hipchat>=1.5.0:${PORTSDIR}/net-im/rubygem-hipchat \
	rubygem-gitlab-flowdock-git-hook>=1.0.1:${PORTSDIR}/www/rubygem-gitlab-flowdock-git-hook \
	rubygem-gemnasium-gitlab-service>=0.2:${PORTSDIR}/devel/rubygem-gemnasium-gitlab-service \
	rubygem-slack-notifier>=1.0.0:${PORTSDIR}/devel/rubygem-slack-notifier \
	rubygem-asana-rails41>=0.0.6:${PORTSDIR}/www/rubygem-asana-rails41 \
	rubygem-d3_rails-rails41>=3.5.5:${PORTSDIR}/www/rubygem-d3_rails-rails41 \
	rubygem-cal-heatmap-rails0-rails41=0.0.1:${PORTSDIR}/www/rubygem-cal-heatmap-rails0-rails41 \
	rubygem-underscore-rails>=1.4.4:${PORTSDIR}/www/rubygem-underscore-rails \
	rubygem-sanitize>=2.0:${PORTSDIR}/textproc/rubygem-sanitize \
	rubygem-rack-attack>=4.3.0:${PORTSDIR}/www/rubygem-rack-attack \
	rubygem-ace-rails-ap>=3.0.3:${PORTSDIR}/www/rubygem-ace-rails-ap \
	rubygem-mousetrap-rails>=1.4.6:${PORTSDIR}/www/rubygem-mousetrap-rails \
	rubygem-charlock_holmes>=0.7.3:${PORTSDIR}/textproc/rubygem-charlock_holmes \
	rubygem-sass-rails41>=4.0.5:${PORTSDIR}/textproc/rubygem-sass-rails41 \
	rubygem-coffee-rails41>=4.1.0:${PORTSDIR}/devel/rubygem-coffee-rails41 \
	rubygem-uglifier>=2.7.1:${PORTSDIR}/www/rubygem-uglifier \
	rubygem-turbolinks-rails41>=2.5.0:${PORTSDIR}/www/rubygem-turbolinks-rails41 \
	rubygem-jquery-turbolinks-rails41>=2.1.0:${PORTSDIR}/www/rubygem-jquery-turbolinks-rails41 \
	rubygem-addressable>=2.3.8:${PORTSDIR}/www/rubygem-addressable \
	rubygem-bootstrap-sass>=3.0:${PORTSDIR}/www/rubygem-bootstrap-sass \
	rubygem-font-awesome-rails-rails41>=4.2:${PORTSDIR}/devel/rubygem-font-awesome-rails-rails41 \
	rubygem-gitlab_emoji>=0.1:${PORTSDIR}/graphics/rubygem-gitlab_emoji \
	rubygem-gon-rails41>=5.0.0:${PORTSDIR}/www/rubygem-gon-rails41 \
	rubygem-jquery-atwho-rails-rails4>=0.3.3:${PORTSDIR}/www/rubygem-jquery-atwho-rails-rails4 \
	rubygem-jquery-rails-rails41>=3.1.3:${PORTSDIR}/www/rubygem-jquery-rails-rails41 \
	rubygem-jquery-scrollto-rails41>=1.4.3:${PORTSDIR}/www/rubygem-jquery-scrollto-rails41 \
	rubygem-jquery-ui-rails-rails41>=4.1.2:${PORTSDIR}/www/rubygem-jquery-ui-rails-rails41 \
	rubygem-nprogress-rails>=0.1.6.7:${PORTSDIR}/devel/rubygem-nprogress-rails \
	rubygem-raphael-rails>=2.1.2:${PORTSDIR}/www/rubygem-raphael-rails \
	rubygem-request_store>=1.1.0:${PORTSDIR}/devel/rubygem-request_store \
	rubygem-select2-rails>=3.5.9.3:${PORTSDIR}/www/rubygem-select2-rails \
	rubygem-virtus>=1.0.5:${PORTSDIR}/devel/rubygem-virtus \
	rubygem-gitlab_meta>=7.0:${PORTSDIR}/devel/rubygem-gitlab_meta \
	rubygem-newrelic_rpm>=3.12.0.288:${PORTSDIR}/devel/rubygem-newrelic_rpm \
	rubygem-octokit>=3.7.0:${PORTSDIR}/net/rubygem-octokit \
	rubygem-rinku>=1.7.3:${PORTSDIR}/www/rubygem-rinku

USE=	pgsql=yes
WANT=	pgsql=9.1+

USE_GITHUB=	yes
GH_ACCOUNT=	gitlabhq
GH_PROJECT=	gitlabhq

.include <bsd.port.options.mk>

NO_ARCH=	yes
NO_BUILD=	yes

do-install:
	${FIND} ${WRKSRC} -name '*.orig' -delete
	${FIND} ${WRKSRC} -name '*.bak' -delete
	${FIND} ${WRKSRC} -name '*.gitkeep' -delete
	${FIND} ${WRKSRC} -name "Gemfile.lock" -delete
	${MV} ${WRKSRC}/config/gitlab.yml.example ${WRKSRC}/config/gitlab.yml.sample
	${MV} ${WRKSRC}/config/unicorn.rb.example ${WRKSRC}/config/unicorn.rb.sample
	${MV} ${WRKSRC}/config/resque.yml.example ${WRKSRC}/config/resque.yml.sample
	${MV} ${WRKSRC}/config/initializers/rack_attack.rb.example ${WRKSRC}/config/initializers/rack_attack.rb.sample
	${CP} ${WRKSRC}/config/database.yml.postgresql ${WRKSRC}/config/database.yml.sample

post-install:
	${MKDIR} ${STAGEDIR}/home/git/repositories
	${MKDIR} ${STAGEDIR}/home/git/gitlab-satellites
	${MKDIR} ${STAGEDIR}${PREFIX}/www/${PORTNAME}/public/assets
	${MKDIR} ${STAGEDIR}${PREFIX}/www/${PORTNAME}/tmp/cache
	${MKDIR} ${STAGEDIR}${PREFIX}/www/${PORTNAME}/tmp/sessions
	(cd ${WRKSRC} && ${COPYTREE_SHARE} . ${STAGEDIR}${PREFIX}/www/${PORTNAME})

.include <bsd.port.mk>
