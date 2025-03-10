Return-Path: <devicetree+bounces-156239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA45A59AE0
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 17:24:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0906516D165
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 16:24:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0E1C22FDF0;
	Mon, 10 Mar 2025 16:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Ne1sjB72"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973194.qiye.163.com (mail-m1973194.qiye.163.com [220.197.31.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB2622FDF1
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 16:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.94
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741623880; cv=none; b=RLqwsnhj0Gpx79PaPveYfRBRvHM0ooMpLegZtjFdtYrPojkT9gOGBSMnw7IaW5TmWgo+EjXgruua1QhRa3Wvk5G4uzfnKOpS1R97BNtLwGF6E6E8qWOh0dC5S8xPPKQcLc0qaOQRuGqFxJZ4tKG4NaQWG8eJqFG3D1IEjWlNWkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741623880; c=relaxed/simple;
	bh=jczZ1AEYAhbVGyei9EzIzmMEh7ZV0hMULPaA9ffgmAc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=u4E1OoBz0NpqqTVQVNn/m3xik2AhEj477hc/LYvoTtumTJtGBxRFQsrAwrmYOBEzfjwy+f2p49jee6hgnWNpk5NhM1tM3Qauk+6CMM4RzKhuOlxJ7M2mhtq+/jVkqC+JoSXhsZfZpkcAcUj2cNhV3mtuJY/hJgWAkeRVMfKIA20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Ne1sjB72; arc=none smtp.client-ip=220.197.31.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id dc1881fc;
	Mon, 10 Mar 2025 18:41:46 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	dmitry.baryshkov@linaro.org,
	dianders@chromium.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	boris.brezillon@collabora.com,
	l.stach@pengutronix.de,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v8 00/13] Add eDP support for RK3588
Date: Mon, 10 Mar 2025 18:41:01 +0800
Message-Id: <20250310104114.2608063-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhLQlYfQ0hLGUpDH01JSENWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEtLTE
	5VSktLVUtZBg++
X-HM-Tid: 0a957fa57bc003a3kunmdc1881fc
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OU06HRw6GjICCCMfSjoYPT4e
	NzhPFDJVSlVKTE9KTUtISEtDTEtLVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSU5JNwY+
DKIM-Signature:a=rsa-sha256;
	b=Ne1sjB72m8GlZHHq8D0kOPJ82+bx3HtiAzX0u7DXfYBwIzSyLB/KggtBK3YnavILVsalpf7wTM9KpH5lrVbwsuaJrhExWhUYOstp1YQI84ftUKLh5Resssmpk2cnHJd+enAMs2I5yGT+qXEjBOeSbT0CQ3onhcGjOX3NhhbSUtQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=lLXPPK6HZnhjRu30hi0LrwQfdstf2dQNmG/Lde/uOWM=;
	h=date:mime-version:subject:message-id:from;

Picked from:
https://patchwork.kernel.org/project/linux-rockchip/list/?series=936932

These patchs have been tested with a 1536x2048p60 eDP panel on
RK3588S EVB1 board, and HDMI 1080P/4K display also has been verified
on RK3588 EVB1 board. Furthermore, the eDP display has been rechecked
on RK3399 sapphire excavator board.

Patch 1~3   are preparations for the RK3588 eDP support on both Analogix
            side.
Patch 4~8   are to support to get panel from the DP AUX bus.
Patch 9~11  are the RK3588 Analogix DP driver support.
Patch 12    is the addition of RK3588 eDP0 node.
Patch 13    is to enable the eDP0 display on RK3588S EVB1 board.

Damon Ding (13):
  drm/bridge: analogix_dp: Add irq flag IRQF_NO_AUTOEN instead of
    calling disable_irq()
  drm/bridge: analogix_dp: Remove CONFIG_PM related check in
    analogix_dp_bind()/analogix_dp_unbind()
  drm/bridge: analogix_dp: Add support for phy configuration.
  dt-bindings: display: rockchip: analogix-dp: Add support to get panel
    from the DP AUX bus
  drm/bridge: analogix_dp: Support to get &analogix_dp_device.plat_data
    and &analogix_dp_device.aux
  drm/bridge: analogix_dp: Add support to get panel from the DP AUX bus
  drm/bridge: analogix_dp: Add support for
    &drm_dp_aux.wait_hpd_asserted()
  drm/rockchip: analogix_dp: Add support to get panel from the DP AUX
    bus
  dt-bindings: display: rockchip: analogix-dp: Add support for RK3588
  drm/bridge: analogix_dp: Add support for RK3588
  drm/rockchip: analogix_dp: Add support for RK3588
  arm64: dts: rockchip: Add eDP0 node for RK3588
  arm64: dts: rockchip: Enable eDP0 display on RK3588S EVB1 board

 .../rockchip/rockchip,analogix-dp.yaml        |  25 ++++-
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  28 +++++
 .../boot/dts/rockchip/rk3588s-evb1-v10.dts    |  55 ++++++++++
 .../drm/bridge/analogix/analogix_dp_core.c    |  85 +++++++++------
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  52 +++++++++
 drivers/gpu/drm/rockchip/Kconfig              |   1 +
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 103 ++++++++++++++++--
 include/drm/bridge/analogix_dp.h              |   7 +-
 8 files changed, 310 insertions(+), 46 deletions(-)

-- 
2.34.1


