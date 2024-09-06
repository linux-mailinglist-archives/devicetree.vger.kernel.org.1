Return-Path: <devicetree+bounces-100653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 095BD96E730
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 03:18:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD1B52880D1
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 01:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 601421A270;
	Fri,  6 Sep 2024 01:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="RzHrv/S1"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A1611CAF;
	Fri,  6 Sep 2024 01:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725585490; cv=none; b=MryeRQIo4EwEdg4H4oArFstN95ByTV01MNMUrxIqolG3gZ177ajbDW/SkhbuXy0oZDx/tUOO4tzUk6DoT+6kvTSMt2MpO6YEyMAxJgp8QoKOFEsvYUB/D6lYLiNhEGm42N8DtZD0l+rfpb8t8F2wz2ybw2F0Y5I9+wTBFVpqzP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725585490; c=relaxed/simple;
	bh=eruCTiC71vYv2wqCHV7X9xxXbAV5kV7E9zOGDeyRYRo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ntzKwYBm5/lHSfuR0vDi+iOa/pv5gnvVSVPxhKnQTSs6w8+nFFwcaz+vNbxMctxBY0uD48tF0wWlyciQqsuPRrLL/Lg3f1zFQBgHMJYsqI16ct6ZZpEK5Eu358Fn8H/P2hFGFbZoOh5bwRcEQK0KSBwP+c+znSM3ENXDQhqW074=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=RzHrv/S1; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1725585479;
	bh=eruCTiC71vYv2wqCHV7X9xxXbAV5kV7E9zOGDeyRYRo=;
	h=From:Subject:Date:To:Cc:From;
	b=RzHrv/S1RbQBBjpk2PrNS009xOMgQvsU30CaENxYZUaidggj1/U00qq365xHasMFo
	 Z6oR1P8rA6buJwTG8jhTZtQJoy4qPmdv6WS6/ZKsTkhGIyEaTDMV93SldouOjl1DnJ
	 KwJFz6cciD23ACQxilPsU6fa226Rjfw0pugeKSJSg34AdjvFOKWXUu0ToGdX+tHr4H
	 pA+hz9iBR+h2FUhGSfixkBEAuLjpsjmxFMlyfs179v+O7Qv4PpJuJirhyJYVC94yuN
	 rcnWc1R8/CfdmvpHMiay5Z0IgFNktCHGPBydfcpvEnhzBlB0BB8uPqjyHZ7hEyi7Oz
	 ZnyNhW8fdiCGw==
Received: from localhost (unknown [188.27.55.48])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7F47D17E0AE5;
	Fri,  6 Sep 2024 03:17:59 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v6 0/3] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
Date: Fri, 06 Sep 2024 04:17:39 +0300
Message-Id: <20240906-b4-rk3588-bridge-upstream-v6-0-a3128fb103eb@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADNY2mYC/43QzWrDMAwH8FcpPs9Dlr+SnvYeowfbkVezti52G
 zZK3n1OLwsjhB3/EvoJ6cEqlUSV7XcPVmhMNeVLC+Zlx8LRXT6Ip6FlhoAKDAjuFS+fUncd9yU
 NrX+/1lshd+YOrXcxCt/FwNr8tVBMX0/7/dDyMdVbLt/PVaOYq/9RR8GBR4MgrZYo0b+FfDo5n
 4t7DfnMZnnEX63b1rBpfXRGW6dI6FVNLjW7pcmmGRiMdx6GYMOaphaa6Lc0NWtK2GCx/VL1a5p
 eaHLzUj1fqkF6CgRCmr/aNE0/iQvr+/4BAAA=
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>, 
 Algea Cao <algea.cao@rock-chips.com>
X-Mailer: b4 0.14.1

The Rockchip RK3588 SoC family integrates the Synopsys DesignWare HDMI
2.1 Quad-Pixel (QP) TX controller, which is a new IP block, quite
different from those used in the previous generations of Rockchip SoCs.

The controller supports the following features, among others:

* Fixed Rate Link (FRL)
* Display Stream Compression (DSC)
* 4K@120Hz and 8K@60Hz video modes
* Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
* Fast Vactive (FVA)
* SCDC I2C DDC access
* Multi-stream audio
* Enhanced Audio Return Channel (EARC)

This is the last component that needs to be supported in order to enable
the HDMI output functionality on the RK3588 based SBCs, such as the
RADXA Rock 5B.  The other components are the Video Output Processor
(VOP2) and the Samsung IP based HDMI/eDP TX Combo PHY, for which basic
support has been already made available via [1] and [2], respectively.

Please note this is a reworked version of the original series, which
relied on a commonized dw-hdmi approach.  Since the general consensus
was to handle it as an entirely new IP, I dropped all patches related to
the old dw-hdmi and Rockchip glue code - a few of them might still make
sense as general improvements and will be submitted separately.

It's worth mentioning the HDMI output support is currently limited to
RGB output up to 4K@60Hz, without audio, CEC or any of the HDMI 2.1
specific features.  Moreover, the VOP2 driver is not able to properly
handle all display modes supported by the connected screens, e.g. it
doesn't cope with non-integer refresh rates.

A possible workaround consists of enabling the display controller to
make use of the clock provided by the HDMI PHY PLL.  This is still work
in progress and will be submitted later, as well as the required DTS
updates.

To facilitate testing and experimentation, all HDMI output related
patches, including those part of this series, are available at [3].

So far I could only verify this on the RADXA Rock 5B board.

Thanks,
Cristian

[1]: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
[2]: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
[3]: https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-hdmi-bridge-v6.11-rc1
[4]: https://lore.kernel.org/lkml/20240801-dw-hdmi-qp-tx-v1-0-148f542de5fd@collabora.com/

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Changes in v6:
- Improved scrambling setup by using a delayed work queue in conjunction
  with the bridge ->detect() callback to support use cases like modetest
  where ->atomic_enable() is not called on reconnection (Maxime)
- Explicitly include workqueue.h in platform driver
- Dropped the common binding patch after merging its content into RK
  specific one; also moved the clocks & irq setup from the bridge
  library to the platform driver
- Got rid of the phy-names property and fixed indentation in the binding
  example (Krzysztof)
- Link to v5: https://lore.kernel.org/r/20240831-b4-rk3588-bridge-upstream-v5-0-9503bece0136@collabora.com

Changes in v5:
- Renamed Rockchip binding file to match the SoC compatible (Conor)
- Made all clocks mandatory (Conor)
- Renamed rockchip,vo1-grf property to rockchip,vo-grf as future SoCs
  (e.g. RK3576) may refer to it as vo0 instead of vo1
- Reworked the setup of high TMDS clock ratio and scrambling
  * Dropped curr_conn & pix_clock from struct dw_hdmi_qp
  * Also removed exported function dw_hdmi_qp_set_high_tmds_clock_ratio()
  * A few additional (mostly cosmetic) changes
- Link to v4: https://lore.kernel.org/r/20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com

Changes in v4:
- Added Tested-by tag from Heiko
- Updated "[PATCH v3 3/5] dt-bindings: display: rockchip: Add schema for
  RK3588 HDMI TX Controller" according to Rob's review
  * Referenced full path for synopsys,dw-hdmi-qp.yaml
  * Moved ports to common schema and updated descriptions
  * Renamed rockchip,vo1_grf to rockchip,vo1-grf and updated "[PATCH v3
    5/5] drm/rockchip: Add basic RK3588 HDMI output support" accordingly
- Dropped "[PATCH v3 4/5] drm/rockchip: Explicitly include bits header"
  already applied by Heiko
- Link to v3: https://lore.kernel.org/r/20240807-b4-rk3588-bridge-upstream-v3-0-60d6bab0dc7c@collabora.com

Changes in v3:
- Reintegrated bridge patchset [4] to allow automated testing and
  simplify reviewing (Krzysztof); the after-split changes were:
  * Made use of the new bridge HDMI helpers indicated by Dmitry
  * Dropped connector creation to ensure driver does only support
    DRM_BRIDGE_ATTACH_NO_CONNECTOR
  * Updated I2C segment handling to properly handle connected DVI
    displays (reported and fixed by Heiko)
- Updated schema for DW HDMI QP TX IP providing some hardware details
- Updated patch for DW HDMI QP TX Controller module referring to a
  support library instead of a platform driver (Krzysztof)
- Drop empty dw_hdmi_qp_unbind() export from the library and related
  usage from RK platform driver
- Drop Fixes tag from "drm/rockchip: Explicitly include bits header"
  patch (Krzysztof)
- Link to v2: https://lore.kernel.org/r/20240801-b4-rk3588-bridge-upstream-v2-0-9fa657a4e15b@collabora.com

Changes in v2:
- Reworked the glue code for RK3588 into a new Rockchip platform driver
- Moved bridge driver patches to a separate series [4]
- Dropped all the patches touching to the old dw-hdmi and RK platform
  drivers
- Added connector creation to ensure the HDMI QP bridge driver does only
  support DRM_BRIDGE_ATTACH_NO_CONNECTOR
- Link to v1: https://lore.kernel.org/r/20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com

---
Cristian Ciocaltea (3):
      drm/bridge: synopsys: Add DW HDMI QP TX Controller support library
      dt-bindings: display: rockchip: Add schema for RK3588 HDMI TX Controller
      drm/rockchip: Add basic RK3588 HDMI output support

 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml       | 189 +++++
 drivers/gpu/drm/bridge/synopsys/Kconfig            |   8 +
 drivers/gpu/drm/bridge/synopsys/Makefile           |   2 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       | 735 ++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h       | 834 +++++++++++++++++++++
 drivers/gpu/drm/rockchip/Kconfig                   |   8 +
 drivers/gpu/drm/rockchip/Makefile                  |   1 +
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     | 437 +++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c        |   2 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h        |   1 +
 include/drm/bridge/dw_hdmi_qp.h                    |  34 +
 11 files changed, 2251 insertions(+)
---
base-commit: 8400291e289ee6b2bf9779ff1c83a291501f017b
change-id: 20240601-b4-rk3588-bridge-upstream-a27baff1b8fc


