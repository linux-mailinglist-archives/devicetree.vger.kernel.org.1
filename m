Return-Path: <devicetree+bounces-23851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A8A80C89A
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 12:57:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C768E281B65
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 11:57:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 968C138DE7;
	Mon, 11 Dec 2023 11:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="Kr7VqLe3"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.219])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id DB0E6120;
	Mon, 11 Dec 2023 03:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=WO61a
	esvdIrfOJiPmjc5HQbTct5uc8fehvU/uJHIHjc=; b=Kr7VqLe3hyI+7j4iOyjgj
	xWJH+0eU5dKwOuJcbbZI074PCOAWuhrSNgtHUhyr9I5cTSFpzjxOuTEk/nXi4+QQ
	caLHp3QO6wqTbFAi2v1Bfa4OGS7cnbrx9DroVBmBKRKy+sIYJqSyb8xfpTR2Noco
	/RCMujaZshtK3pAPJYNbi0=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-3 (Coremail) with SMTP id _____wAXlwvH+HZlkOA4CQ--.21094S2;
	Mon, 11 Dec 2023 19:55:55 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v5 00/16] Add VOP2 support on rk3588
Date: Mon, 11 Dec 2023 19:55:47 +0800
Message-Id: <20231211115547.1784587-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wAXlwvH+HZlkOA4CQ--.21094S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxCrW7tr4UAr4UXF43tF4xJFb_yoWrZF45p3
	95Cry5XrWxCFW2qrs7tw18ArWft3ZrAay7Gws3G3ZxZ3Z3KF1UKwnI93Z5Zr9rWr1xZFy2
	kF45J34jgr42vr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jOXo7UUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEAxDXmVOA42xGgAAsP

From: Andy Yan <andy.yan@rock-chips.com>

This patch sets aims at enable the VOP2 support on rk3588.

Main feature of VOP2 on rk3588:
Four video ports:
VP0 Max 4096x2160
VP1 Max 4096x2160
VP2 Max 4096x2160
VP3 Max 2048x1080

4 4K Cluster windows with AFBC/line RGB and AFBC-only YUV support
4 4K Esmart windows with line RGB/YUV support

The current version support all the 8 windows with all the suppported
plane format.

And we don't have a upstreamed encoder/connector(HDMI/DP) for rk3588
yet, Cristian from collabora is working on adding upstream support for
HDMI on rk3588.

My current test(1080P/4KP60) is runing with a HDMI driver pick from
downstream bsp kernel.

A branch based on linux-6.7 rc4 containing all the series and
HDMI driver(not compatible with mainline rk3568 hdmi) picked
from downstream bsp kernel is available [0].

[0]https://github.com/andyshrk/linux/commits/rk3588-vop2-upstream-linux-6.7-rc4-2023-12-07

Changes in v5:
- remove unused dts property
- move blank line below  the status=disabled in vop dt node
- split iommu dt binding patch from this series

Changes in v4:
- drop redundant description.
- use full stop at all the description's end.
- address Krzysztof's review in v3
- keep all VOP2_FEATURE_HAS_xxx macros increase in order.
- check NULL pointer at right place
- fix the index of fb->obj
- drop explicitly cast of void pointer
- make the register dump code as a common function.

Changes in v3:
- split from the vop2 driver patch
- put bool variable yuv_overlay next to other bool variable
- define macro for RK3568_OVL_CTRL__YUV_MODE
- just write RK3568_OVL_CTRL register once in function
  vop2_setup_layer_mixer
- constrain properties in allOf:if:then
- some description updates
- change the subject as Krzysztof suggested, and add his ACK
- add braces for x in macro vop2_output_if_is_yyy(x)
- clear the bits of a mask before setting it in rk3588_set_intf_mux
- add more comments.
- put regs dump info in vop2_data

Changes in v2:
- fix errors when running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
- split form vop driver patch
- add rk3588_ prefix for functions which are rk3588 only
- make some calculation as fixed value and keep calculation formula as
  comment
- check return value for some cru calculation functions.
- check return value for syscon_regmap_lookup_by_phandle
- add NV20/NV30 for esmart plane

Andy Yan (16):
  drm/rockchip: move output interface related definition to
    rockchip_drm_drv.h
  Revert "drm/rockchip: vop2: Use regcache_sync() to fix suspend/resume"
  drm/rockchip: vop2: set half_block_en bit in all mode
  drm/rockchip: vop2: clear afbc en and transform bit for cluster window
    at linear mode
  drm/rockchip: vop2: Add write mask for VP config done
  drm/rockchip: vop2: Set YUV/RGB overlay mode
  drm/rockchip: vop2: set bg dly and prescan dly at vop2_post_config
  drm/rockchip: vop2: rename grf to sys_grf
  dt-bindings: soc: rockchip: add rk3588 vop/vo syscon
  dt-bindings: display: vop2: Add rk3588 support
  dt-bindings: rockchip,vop2: Add more endpoint definition
  drm/rockchip: vop2: Add support for rk3588
  drm/rockchip: vop2: rename VOP_FEATURE_OUTPUT_10BIT to
    VOP2_VP_FEATURE_OUTPUT_10BIT
  drm/rockchip: vop2: Add debugfs support
  arm64: dts: rockchip: Add vop on rk3588
  MAINTAINERS: Add myself as a reviewer for rockchip drm

 .../display/rockchip/rockchip-vop2.yaml       | 100 ++-
 .../devicetree/bindings/soc/rockchip/grf.yaml |   2 +
 MAINTAINERS                                   |   1 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  83 ++
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   |   1 -
 drivers/gpu/drm/rockchip/cdn-dp-core.c        |   1 -
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |   1 -
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   |   1 -
 drivers/gpu/drm/rockchip/inno_hdmi.c          |   1 -
 drivers/gpu/drm/rockchip/rk3066_hdmi.c        |   1 -
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |  18 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |  12 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 761 +++++++++++++++++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  | 111 ++-
 drivers/gpu/drm/rockchip/rockchip_lvds.c      |   1 -
 drivers/gpu/drm/rockchip/rockchip_rgb.c       |   1 -
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  | 414 +++++++++-
 include/dt-bindings/soc/rockchip,vop2.h       |   4 +
 18 files changed, 1420 insertions(+), 94 deletions(-)

-- 
2.34.1


