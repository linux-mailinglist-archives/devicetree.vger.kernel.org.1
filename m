Return-Path: <devicetree+bounces-140499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C2AA1A17A
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:08:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CBBF169F79
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 10:08:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90B6720D4FD;
	Thu, 23 Jan 2025 10:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="YDvqwG/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973191.qiye.163.com (mail-m1973191.qiye.163.com [220.197.31.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5324720C481;
	Thu, 23 Jan 2025 10:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737626893; cv=none; b=sEGSJSkDOkiS7ouC7iUKS05VxEUSuIwVBYd4FTlBpxVjPetZXIM6wpEx8nB/vN7jtcYZiXz0qQykKgTUuCqwO7sG3NikLEbXESFzdMLR9DwmRFNc38ukIv2Wk83yXye1bp4oP8FUaDDhEbB+EA6jpWJze2WRGfF9K0LudfH47ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737626893; c=relaxed/simple;
	bh=XO2Po92U9RLCMiHvqd6V0ALM0wIT+zI/MqlnACcmxss=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=q8qEkfDf56hXgo4u/7OmBfE1Ve8XUdGH4YLuPQr3zgx2FIxwhtwP59vv2EItpfoGvAPUtiQ29dUydbqhY+TkGGoz5vQhEpFWYEQm9cNJMvTaVZeA+StluHW8xID87W41PfVeOzSRq2N357tCNrK+7vNS0DENPmEdJiFzw8RvPOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=YDvqwG/Q; arc=none smtp.client-ip=220.197.31.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 9818ae40;
	Thu, 23 Jan 2025 18:07:59 +0800 (GMT+08:00)
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
Subject: [PATCH v6 00/14] Add eDP support for RK3588
Date: Thu, 23 Jan 2025 18:07:33 +0800
Message-Id: <20250123100747.1841357-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ08YQ1YdGEsYQkwYGhgfHxhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
X-HM-Tid: 0a9492a204aa03a3kunm9818ae40
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NAw6Tyo5CjIPEiwjQyofFCsX
	URRPC0JVSlVKTEhMTUlNQ0NLQk5IVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJT0pJNwY+
DKIM-Signature:a=rsa-sha256;
	b=YDvqwG/Q1FhQMVKavXBLI65yc3eXPOLDhrADB9rLTpbd37yZ5A86ITwsCdS3/ahnDDqTMS3A88QnTfJ6dZqPaNRruK5aeka+dclD933/XnV/HqssHiw91rBpBt7n5rcX8YbMYh26yNJhwtVrDxpOIT72phKJxjbgdGnFFVCrLRs=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=YoTZBDtBpqVXa3pjx+96Qdz9xq3sfd8lU4+udrm9R7k=;
	h=date:mime-version:subject:message-id:from;

Picked from:
https://patchwork.kernel.org/project/linux-rockchip/list/?series=923593

These patchs have been tested with a 1536x2048p60 eDP panel on
RK3588S EVB1 board, and HDMI 1080P/4K display also has been verified
on RK3588 EVB1 board. Furthermore, the eDP display has been rechecked
on RK3399 sapphire excavator board.

Patch 1~4   are preparations for the RK3588 eDP support on both Analogix
            side and Rockchip side.
Patch 5~8  are to support to get panel from the DP AUX bus.
Patch 9~11 are the RK3588 Analogix DP driver support.
Patch 12    is to add the power sequencing delays for panel model
            LP079QX1-SP0V.
Patch 13    is the addition of RK3588 eDP0 node.
Patch 14    is to enable the eDP0 display on RK3588S EVB1 board.

Damon Ding (14):
  drm/rockchip: analogix_dp: Replace DRM_...() functions with drm_...()
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
  arm64: dts: rockchip: Add eDP0 node for RK3588
  arm64: dts: rockchip: Enable eDP0 display on RK3588S EVB1 board

 .../rockchip/rockchip,analogix-dp.yaml        |  25 +-
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  28 +++
 .../boot/dts/rockchip/rk3588s-evb1-v10.dts    |  54 ++++
 .../drm/bridge/analogix/analogix_dp_core.c    |  76 +++---
 .../drm/bridge/analogix/analogix_dp_core.h    |   1 +
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  52 ++++
 drivers/gpu/drm/panel/panel-edp.c             |   8 +
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 238 +++++++++++++-----
 include/drm/bridge/analogix_dp.h              |   8 +-
 9 files changed, 401 insertions(+), 89 deletions(-)

-- 
2.34.1


