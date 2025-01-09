Return-Path: <devicetree+bounces-136923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F08DA06E69
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 07:57:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E2C6718869A4
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 06:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F108020D4EB;
	Thu,  9 Jan 2025 06:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="a2hk+6GO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49248.qiye.163.com (mail-m49248.qiye.163.com [45.254.49.248])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298EF19F489;
	Thu,  9 Jan 2025 06:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.248
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736405825; cv=none; b=TaXMTPC4RdovBr3y3TrX1nLo34uxdC3L63/XIeEorDA35hVmGkoghXQZg6qSsPqyrSXTeMW5/lM5f8CtyOafYgFrRF7AaGeuFuVdZU06fqeDbbL3D5Mfa45f/CSnz0z5O3prbf2w+J1nbnqELf5OFw148TZoeX5bPhpoP1r/HZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736405825; c=relaxed/simple;
	bh=ymfaVMguQr04MzDT80uQ+lgBIunQTkn6RAeQAewv63s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=PXZGAGNAPuAPTplhm6COul/3+vqkYuuMyQpn+esH6mAUqlgvkKCgOtpwbIShJ1pIsHpYEK2SMUY1lWdz6yNVotzm2bJb/Be2fcA50ggo17J52RynDArxfW94fbg+BCEKpew6CI2x5lKrjccDpuLI5gln3Dqu3SuQmLnqUVIg3O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=a2hk+6GO; arc=none smtp.client-ip=45.254.49.248
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 82c0195e;
	Thu, 9 Jan 2025 11:27:43 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	vkoul@kernel.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	l.stach@pengutronix.de,
	dmitry.baryshkov@linaro.org,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	algea.cao@rock-chips.com,
	kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v5 00/20] Add eDP support for RK3588
Date: Thu,  9 Jan 2025 11:27:05 +0800
Message-Id: <20250109032725.1102465-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxlPSlYeQklNTEhPH05CThlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a94491a88dc03a3kunm82c0195e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pgg6Djo6EzIKFxQwLAJLTCwI
	LT8KCgtVSlVKTEhNSEJISU1OS0xLVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPS05JNwY+
DKIM-Signature:a=rsa-sha256;
	b=a2hk+6GOC6v2e0a4ANeM4MO77pNsnsbtFVc/JQsu/z6E7nQIqOjRgDB9Qz1XLv6zmOgeaiTffyuUc2VCTXAIIk5ja7XU/Db3u0FolxWJCbfa2sr2TOVyL6+mjDPZi3N47vY5cXa4H2Rwum7m4HjqioJy2by2b1MQcjPc4uJXFaw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=kOAA9iSyzFQMTnJ/IrrO9xw8dXd24x9YPykOwNf/caA=;
	h=date:mime-version:subject:message-id:from;

These patchs have been tested with a 1536x2048p60 eDP panel on
RK3588S EVB1 board, and HDMI 1080P/4K display also has been verified
on RK3588 EVB1 board. Furthermore, the eDP display has been rechecked
on RK3399 sapphire excavator board.

Patch 1~4   are the eDP mode support of samsung hdptx phy driver.
Patch 5~8   are preparations for the RK3588 eDP support on both Analogix
            side and Rockchip side.
Patch 9~12  are to support to get panel from the DP AUX bus.
Patch 13~15 are the RK3588 Analogix DP driver support.
Patch 16    is to add the power sequencing delays for panel model
            LP079QX1-SP0V.
Patch 17~18 are the renaming of hdptxphy node. It is not only used by
            HDMI display but also for the eDP display.
Patch 19    is the addition of RK3588 eDP0 node.
Patch 20    is to enable the eDP0 display on RK3588S EVB1 board.

Damon Ding (20):
  phy: phy-rockchip-samsung-hdptx: Swap the definitions of LCPLL_REF and
    ROPLL_REF
  phy: phy-rockchip-samsung-hdptx: Supplement some register names with
    their full version
  phy: phy-rockchip-samsung-hdptx: Add the '_MASK' suffix to all
    registers
  phy: phy-rockchip-samsung-hdptx: Add eDP mode support for RK3588
  drm/rockchip: analogix_dp: Replace DRM_...() functions with drm_...()
    or dev_...()
  drm/rockchip: analogix_dp: Use formalized struct definition for grf
    field
  drm/rockchip: analogix_dp: Expand device data to support multiple edp
    display
  drm/bridge: analogix_dp: Add support for phy configuration.
  dt-bindings: display: rockchip: analogix-dp: Add support to get panel
    from the DP AUX bus
  drm/bridge: analogix_dp: support to get &analogix_dp_device.plat_data
    and &analogix_dp_device.aux
  drm/bridge: analogix_dp: Add support to get panel from the DP AUX bus
  drm/rockchip: analogix_dp: Add support to get panel from the DP AUX
    bus
  dt-bindings: display: rockchip: analogix-dp: Add support for RK3588
  drm/bridge: analogix_dp: Add support for RK3588
  drm/rockchip: analogix_dp: Add support for RK3588
  drm/edp-panel: Add LG Display panel model LP079QX1-SP0V
  dt-bindings: display: rockchip: Fix label name of hdptxphy for RK3588
    HDMI TX Controller
  arm64: dts: rockchip: Fix label name of hdptxphy for RK3588
  arm64: dts: rockchip: Add eDP0 node for RK3588
  arm64: dts: rockchip: Enable eDP0 display on RK3588S EVB1 board

 .../rockchip/rockchip,analogix-dp.yaml        |  40 +-
 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   2 +-
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  32 +-
 .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    |   2 +-
 .../rockchip/rk3588-coolpi-cm5-genbook.dts    |   2 +-
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |   2 +-
 .../rk3588-friendlyelec-cm3588-nas.dts        |   2 +-
 .../arm64/boot/dts/rockchip/rk3588-jaguar.dts |   2 +-
 .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   |   2 +-
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   |   2 +-
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |   2 +-
 .../boot/dts/rockchip/rk3588-tiger-haikou.dts |   2 +-
 .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   |   2 +-
 .../boot/dts/rockchip/rk3588s-evb1-v10.dts    |  54 +
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  |   2 +-
 .../boot/dts/rockchip/rk3588s-nanopi-r6.dtsi  |   2 +-
 .../boot/dts/rockchip/rk3588s-odroid-m2.dts   |   2 +-
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi |   2 +-
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   2 +-
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     |   2 +-
 .../drm/bridge/analogix/analogix_dp_core.c    |  81 +-
 .../drm/bridge/analogix/analogix_dp_core.h    |   1 +
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  52 +
 drivers/gpu/drm/panel/panel-edp.c             |   8 +
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 233 +++--
 .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 971 +++++++++++++++++-
 include/drm/bridge/analogix_dp.h              |   7 +-
 27 files changed, 1344 insertions(+), 169 deletions(-)

-- 
2.34.1


