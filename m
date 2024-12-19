Return-Path: <devicetree+bounces-132553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 579519F7724
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 09:21:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A1940164297
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 08:21:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F030E208964;
	Thu, 19 Dec 2024 08:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="QqNPkI8f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32115.qiye.163.com (mail-m32115.qiye.163.com [220.197.32.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D222163AC;
	Thu, 19 Dec 2024 08:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.115
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734596503; cv=none; b=d+M3tiXYZgeGbw96Mh6gSSusQJD6SRHgDR8X+IZCTgXk4ICQ01OSevCeyzNXbnyNg39yPn8sivEKpANADMXI9ey8GACNfsjkggjVfmnxKxO4bGlm7wd86mfvTMWs7OlBRwJ6+QXib83F5QbXmqQ+ohlJdw+ivElMmPXyrD/7Hfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734596503; c=relaxed/simple;
	bh=hoSFCvRoU920+k7hp5OVw/b8jXOpQvizk2xfjsbjrOo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Q4r65WSH/st5UMlfamDlnj/016mil2xw3tmNISaMIQXIm3n3Atgvw6Z424I21rxLLQk4iSWnxRR5QJnVgbP5PkVCLTVGKCuV+D2NV36MBdhHOROJUKZREq7PevZlm0pmHpJ90qkMnzd0Dn1ouqfVDm5nAIIuyUgHPqeqBWHao+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=QqNPkI8f; arc=none smtp.client-ip=220.197.32.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 633dd60b;
	Thu, 19 Dec 2024 16:06:20 +0800 (GMT+08:00)
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
Subject: [PATCH v3 00/15] Add eDP support for RK3588
Date: Thu, 19 Dec 2024 16:05:49 +0800
Message-Id: <20241219080604.1423600-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRkfT1ZIGBhNH05MQ0pLHxpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93ddf4144f03a3kunm633dd60b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nz46Cww4CjIUTRU8Dzo3DQMt
	OUIwCjdVSlVKTEhPTkJOTkNJTE9CVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIT0hMNwY+
DKIM-Signature:a=rsa-sha256;
	b=QqNPkI8fOO61b3ReZou884fD5Nre4/BOvnpdrA29Y35LL6vo3eOJgMtw6GgJ/lruEV5ekfRhvfXdkTos/8D9mAKar6FdU6t4MHbXsmQ2cXiZ1+3hXnSMr6Z/1IcUK1WsteT4Raig6x5cRfqAMmfTj/4c9mad5f9mM9Z2P/N8uhA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=16FNdcAokL82af3uMxBcAjnroSvaJOiXgHgA0BlEsVQ=;
	h=date:mime-version:subject:message-id:from;

These patchs have been tested with a 1536x2048p60 eDP panel on
RK3588S EVB1 board, and HDMI 1080P/4K display also has been verified
on RK3588 EVB1 board.

Patch 1~3   are the RK3588 eDP support of Rockchip analogix_dp driver.
Patch 4~5   are the eDP mode support of samsung hdptx phy driver.
Patch 6~7   are the RK3588 eDP support of Aanalogix DP driver. Add phy
            interfaces is to configure the HDMI/eDP TX Combo PHY.
Patch 8~10  are to support to get panel from the DP AUX bus.
Patch 11~12 are the renaming of hdptxphy node. It is not only used by
            HDMI display but also for the eDP display.
Patch 13    is the addition of RK3588 eDP0 node.
Patch 14    is to enable the eDP0 display on RK3588S EVB1 board.
Patch 15    is to add the eDP1 related nodes for RK3588 SoC.

Damon Ding (15):
  drm/rockchip: analogix_dp: Use formalized struct definition for grf
    field
  dt-bindings: display: rockchip: analogix-dp: Add support for RK3588
  drm/rockchip: analogix_dp: Add support for RK3588
  phy: phy-rockchip-samsung-hdptx: Rename some register names related to
    DP
  phy: phy-rockchip-samsung-hdptx: Add support for eDP mode
  drm/bridge: analogix_dp: Add support for RK3588
  drm/bridge: analogix_dp: Add support for phy configuration.
  drm/rockchip: analogix_dp: Add support to get panel from the DP AUX
    bus
  drm/bridge: analogix_dp: Add support to get panel from the DP AUX bus
  dt-bindings: display: rockchip: analogix-dp: Add support to get panel
    from the DP AUX bus
  dt-bindings: display: rockchip: Fix label name of hdptxphy for RK3588
    HDMI TX Controller
  arm64: dts: rockchip: Fix label name of hdptxphy for RK3588
  arm64: dts: rockchip: Add eDP0 node for RK3588
  arm64: dts: rockchip: Enable eDP0 display on RK3588S EVB1 board
  arm64: dts: rockchip: Add eDP1 node for RK3588

 .../rockchip/rockchip,analogix-dp.yaml        |  17 +-
 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   2 +-
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  32 +-
 .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    |   2 +-
 .../rockchip/rk3588-coolpi-cm5-genbook.dts    |   2 +-
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |   2 +-
 .../arm64/boot/dts/rockchip/rk3588-extra.dtsi |  49 +
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
 .../drm/bridge/analogix/analogix_dp_core.c    |  24 +
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  56 +
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 182 +++-
 .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 954 +++++++++++++++++-
 include/drm/bridge/analogix_dp.h              |   3 +-
 26 files changed, 1302 insertions(+), 101 deletions(-)

-- 
2.34.1


