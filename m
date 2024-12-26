Return-Path: <devicetree+bounces-134043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 633169FC8EF
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 07:33:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA0481882D49
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 06:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7045014D2A7;
	Thu, 26 Dec 2024 06:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="LS4C2XH5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m127210.xmail.ntesmail.com (mail-m127210.xmail.ntesmail.com [115.236.127.210])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6978653363;
	Thu, 26 Dec 2024 06:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.210
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735194821; cv=none; b=OVNb8PCuUMk1GBdc3xKB1qzm3n45q00w7qlIAlbX0Wx3U29uTvR0sG1jbGYDgdq59+grzmclKF+GSlzR0O24YaO2RCKcJ8T/EaAfuQX5+hrIFYtvyBA+2J8PmfyTVrGsRdTN+QBu4jlSPz28Waq3Jk2M5w6Xss4rCe+1bFTgqFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735194821; c=relaxed/simple;
	bh=rw4bKbEPOhRYqic0tt0ORCVIDx5AC6V+EqjHFV+aX20=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=sAPOzHBgYJQ2US4srvlKVsE/u5WoSLDeVhbgDYY4D7BSGM0eQAUoZVsZ2U5U6lKPLePgjPk11zGCYOh2fuKlty965smORxg2TMJQUOmRnGHb8gYnjFin+TM8BLf1NKSSK9Zc2q5dFo6z8BLX8CcGXwwMEfTPikWkv+8AYjFwVbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=LS4C2XH5; arc=none smtp.client-ip=115.236.127.210
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6dc5110e;
	Thu, 26 Dec 2024 14:33:26 +0800 (GMT+08:00)
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
Subject: [PATCH v4 00/17] Add eDP support for RK3588
Date: Thu, 26 Dec 2024 14:32:56 +0800
Message-Id: <20241226063313.3267515-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkhIS1YYGk0dQ09MTEJOHUpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCS0
	NVSktLVUpCWQY+
X-HM-Tid: 0a9401ab8ab803a3kunm6dc5110e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODY6Tgw4DTIOCEwOGk49ETdO
	MB4wFD5VSlVKTEhOSkJPQ0tDTU5MVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFITUJLNwY+
DKIM-Signature:a=rsa-sha256;
	b=LS4C2XH5YX3jpuM0BRLyZjigaXN2JeKdAZASXp4dqcfoBypO3KrU2CkUuPKM7quHE4Rf4ZmcvUVmRJ3G7TwpQ/A6IaoLGRPnHarNgp32+to0CQ6dRmWDMUD/k3dAqbsE0TSV6s1VqPsYq9dhD6xmqzeI2FILScel/mDiHZDWv+Q=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=WtDvYzoJBC9gaqFxvXZe9/0NcEOfevXaBFtnWX74jvo=;
	h=date:mime-version:subject:message-id:from;

These patchs have been tested with a 1536x2048p60 eDP panel on
RK3588S EVB1 board, and HDMI 1080P/4K display also has been verified
on RK3588 EVB1 board. Furthermore, the eDP display has been rechecked
on RK3399 sapphire excavator board.

Patch 1~3   are the RK3588 eDP support of Rockchip analogix_dp driver.
Patch 4~7   are the eDP mode support of samsung hdptx phy driver.
Patch 8~9   are the RK3588 eDP support of Aanalogix DP driver. Add phy
            interfaces is to configure the HDMI/eDP TX Combo PHY.
Patch 10~13 are to support to get panel from the DP AUX bus.
Patch 14~15 are the renaming of hdptxphy node. It is not only used by
            HDMI display but also for the eDP display.
Patch 16    is the addition of RK3588 eDP0 node.
Patch 17    is to enable the eDP0 display on RK3588S EVB1 board.

Damon Ding (17):
  drm/rockchip: analogix_dp: Use formalized struct definition for grf
    field
  dt-bindings: display: rockchip: analogix-dp: Add support for RK3588
  drm/rockchip: analogix_dp: Add support for RK3588
  phy: phy-rockchip-samsung-hdptx: Swap the definitions of LCPLL_REF and
    ROPLL_REF
  phy: phy-rockchip-samsung-hdptx: Supplement some register names with
    their full version
  phy: phy-rockchip-samsung-hdptx: Add the '_MASK' suffix to all
    registers
  phy: phy-rockchip-samsung-hdptx: Add support for eDP mode
  drm/bridge: analogix_dp: Add support for RK3588
  drm/bridge: analogix_dp: Add support for phy configuration.
  dt-bindings: display: rockchip: analogix-dp: Add support to get panel
    from the DP AUX bus
  drm/bridge: analogix_dp: Add a new member aux to struct
    analogix_dp_plat_data
  drm/rockchip: analogix_dp: Add support to get panel from the DP AUX
    bus
  drm/bridge: analogix_dp: Convert &analogix_dp_device.aux into a
    pointer
  dt-bindings: display: rockchip: Fix label name of hdptxphy for RK3588
    HDMI TX Controller
  arm64: dts: rockchip: Fix label name of hdptxphy for RK3588
  arm64: dts: rockchip: Add eDP0 node for RK3588
  arm64: dts: rockchip: Enable eDP0 display on RK3588S EVB1 board

 .../rockchip/rockchip,analogix-dp.yaml        |  12 +-
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
 .../boot/dts/rockchip/rk3588s-evb1-v10.dts    |  52 +
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  |   2 +-
 .../boot/dts/rockchip/rk3588s-nanopi-r6.dtsi  |   2 +-
 .../boot/dts/rockchip/rk3588s-odroid-m2.dts   |   2 +-
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi |   2 +-
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   2 +-
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     |   2 +-
 .../drm/bridge/analogix/analogix_dp_core.c    |  97 +-
 .../drm/bridge/analogix/analogix_dp_core.h    |   2 +-
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  54 +-
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 217 +++-
 .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 988 +++++++++++++++++-
 include/drm/bridge/analogix_dp.h              |   5 +-
 26 files changed, 1326 insertions(+), 167 deletions(-)

-- 
2.34.1


