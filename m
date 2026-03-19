Return-Path: <devicetree+bounces-277699-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHpEIbXSu2k4owIAu9opvQ
	(envelope-from <devicetree+bounces-277699-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:40:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 057712C99D7
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:40:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BB61830338BB
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:40:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2A403C3BE6;
	Thu, 19 Mar 2026 10:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="OGAoIjpg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15590.qiye.163.com (mail-m15590.qiye.163.com [101.71.155.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA2B33C2780;
	Thu, 19 Mar 2026 10:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773916845; cv=none; b=c7uDMkvNamO0qu8aKFTdgQL6y/u4V/Y15OItEkEN4o+MBqCX88UzVV0ZOb5FQ9HrWxDy2nSKXtIWx5pOm4KJNlFSPwjfvFauWTfavH00oHP+oUzh7j4ybdiSe4lYVx01GeNiAKxFl+mTA2F/CdpVzuP+spV8QES9drpq3NnF7BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773916845; c=relaxed/simple;
	bh=NepBb4COP0PeGGqmOSkUvIEIAUBKQUz570iKCC9eC0g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NAxa0fIRGtqn8bZcuTC6NDQh9Tn5OykE2oBttXORVjSum5Bt9MnRZ3cxUAvaw79Agv1f/4xc3OFaEedUcSqjgpKfV5b89GKg8dIeXJWBvBQLtqi1NuAoBV1DeJ4Sx2JtejKuKpXKYb/rKC/X4Rd/BTmfoGiq4/FQ+HpFKzh1WmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=OGAoIjpg; arc=none smtp.client-ip=101.71.155.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3790344b6;
	Thu, 19 Mar 2026 18:40:38 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
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
	rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	nicolas.frattaroli@collabora.com,
	alchark@gmail.com,
	cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	heiko.stuebner@cherry.de,
	tomeu@tomeuvizoso.net,
	amadeus@jmu.edu.cn,
	michael.riesch@collabora.com,
	didi.debian@cknow.org,
	dmitry.baryshkov@oss.qualcomm.com,
	luca.ceresoli@bootlin.com,
	dianders@chromium.org,
	m.szyprowski@samsung.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v2 2/9] arm64: dts: rockchip: Add missing clock "hclk" for RK3588 eDP0 nodes.
Date: Thu, 19 Mar 2026 18:40:24 +0800
Message-Id: <20260319104031.1986946-3-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260319104031.1986946-1-damon.ding@rock-chips.com>
References: <20260319104031.1986946-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9d05aeda1503a3kunm32a99f093bee5e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU0ZS1ZMSR5JSR4dSUgeT0lWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=OGAoIjpgx5GJT1mOZZpoMLQG1OokN8B6OMoPBuFsUNQa0rNeYsSpz2I/wLZ1Ru7Og5tXscNVfJqr1DOedUNqj/MPtLckzl39RbKd46MYHIVCWP/LmesgucAjWbFr988hX7kb7WTovlECow0G8Nn/tf/sSumndnGGrqAyP46H/nw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=qjHNHND5n0fiBlRQB27XFnIhf37uCnsTVXP7smWHdd8=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277699-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,rock-chips.com,cherry.de,tomeuvizoso.net,jmu.edu.cn,cknow.org,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.935];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,rock-chips.com:dkim,rock-chips.com:email,rock-chips.com:mid]
X-Rspamd-Queue-Id: 057712C99D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The RK3588 eDP controller needs the video datapath clock "hclk" to work
well. Previously, it works without explicitly adding this clock because
the 'rockchip,vo-grf = <&vo1_grf>' property implicitly enables HCLK_VO1.

Fixes: dc79d3d5e7c7 ("arm64: dts: rockchip: Add eDP0 node for RK3588")
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 2a7921793020..4cf87d0c82cd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1648,8 +1648,8 @@ hdmi0_out: port@1 {
 	edp0: edp@fdec0000 {
 		compatible = "rockchip,rk3588-edp";
 		reg = <0x0 0xfdec0000 0x0 0x1000>;
-		clocks = <&cru CLK_EDP0_24M>, <&cru PCLK_EDP0>;
-		clock-names = "dp", "pclk";
+		clocks = <&cru CLK_EDP0_24M>, <&cru PCLK_EDP0>, <&cru HCLK_VO1>;
+		clock-names = "dp", "pclk", "hclk";
 		interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH 0>;
 		phys = <&hdptxphy0>;
 		phy-names = "dp";
-- 
2.34.1


