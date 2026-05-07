Return-Path: <devicetree+bounces-293972-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJw+Db57/GkwQgAAu9opvQ
	(envelope-from <devicetree+bounces-293972-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 13:47:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BEE4E7B13
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 13:47:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B51AA30177A3
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 11:45:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 416AD3CFF67;
	Thu,  7 May 2026 11:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="fvfIYHN2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731119.qiye.163.com (mail-m19731119.qiye.163.com [220.197.31.119])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B494934AB03;
	Thu,  7 May 2026 11:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.119
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778154339; cv=none; b=dnG790i3pYRvV7+wfenSC4BlRpr6qLv+x4AjpgMxi0JkQZkHg0wyWQ4ElEerU5xSReoZScvhxt2rW0+UIgD3SZwj4dQimBtPSwtZKCo3SC9MXyGXsHAKZo5VF80dXn/3P+oUID72Uy6PN8FJwWG1uDDynZOmVrgnWGPOy0YIAbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778154339; c=relaxed/simple;
	bh=yzKYwYUez0Q3Ocneq/Sm3lzgzCIR/829m9EI3z86b0M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aUC/C+t09zH3UOQPchVloKfyN5QDBNKukyCYb7crOME7fkc5djI85zhjCkJODNiswIxVY4EJ4ZdDpA/WZb5M2wFTuZ57KOz0FT9zSmDaObn1XQS8IO+TtgwWW8RDW48YG1MsZae8mu4Bk4CCZbr9+/C2ESstsdAeXLG3QaIYPGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=fvfIYHN2; arc=none smtp.client-ip=220.197.31.119
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3d7b63a43;
	Thu, 7 May 2026 19:30:01 +0800 (GMT+08:00)
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
	cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com,
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
Subject: [PATCH v3 04/10] arm64: dts: rockchip: Add missing clock "hclk" for RK3588 eDP1 nodes.
Date: Thu,  7 May 2026 19:29:42 +0800
Message-Id: <20260507112948.1115003-5-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260507112948.1115003-1-damon.ding@rock-chips.com>
References: <20260507112948.1115003-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e0233aaba03a3kunm4d1cbcd726a6
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZGE5JVklKHh5CTUtLH0lNH1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=fvfIYHN2KpWC0wF1NOfOOWdJgiKpidfKp8o5DV/LNfZEJ4mP04xGrgrzrnF8y7Q09OvEEAXcQeLyUOOgK8C3mbBlGyEi/feWRZkDIaOCNYwAWfSAualz5U8FLDE9Yv0VqItQBeSBMPNLUjNS5Of1+sDldu9RFSAbc6D4nvk8rMU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=IOTNrt1SUwo7GayID7NXS0CnuK824Z/+f65UvA8yuZQ=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: B1BEE4E7B13
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293972-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,rock-chips.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,rock-chips.com:mid,rock-chips.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.1:email]
X-Rspamd-Action: no action

The RK3588 eDP controller needs the video datapath clock "hclk" to work
well. Previously, it works without explicitly adding this clock because
the 'rockchip,vo-grf = <&vo1_grf>' property implicitly enables HCLK_VO1.

Fixes: a481bb0b1ad9 ("arm64: dts: rockchip: Add eDP1 dt node for rk3588")
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index a2640014ee04..b251bb129cdb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -285,8 +285,8 @@ hdmi1_out: port@1 {
 	edp1: edp@fded0000 {
 		compatible = "rockchip,rk3588-edp";
 		reg = <0x0 0xfded0000 0x0 0x1000>;
-		clocks = <&cru CLK_EDP1_24M>, <&cru PCLK_EDP1>;
-		clock-names = "dp", "pclk";
+		clocks = <&cru CLK_EDP1_24M>, <&cru PCLK_EDP1>, <&cru HCLK_VO1>;
+		clock-names = "dp", "pclk", "hclk";
 		interrupts = <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH 0>;
 		phys = <&hdptxphy1>;
 		phy-names = "dp";
-- 
2.34.1


