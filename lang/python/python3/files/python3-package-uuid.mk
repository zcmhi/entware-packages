#
# Copyright (C) 2021 Alexandru Ardelean <ardeleanalex@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Package/python3-uuid
$(call Package/python3/Default)
  TITLE:=Python $(PYTHON3_VERSION) UUID module
  DEPENDS:=+python3-light +libuuid
endef

$(eval $(call Py3BasePackage,python3-uuid, \
	/opt/lib/python$(PYTHON3_VERSION)/uuid.py \
	/opt/lib/python$(PYTHON3_VERSION)/lib-dynload/_uuid.$(PYTHON3_SO_SUFFIX) \
))
