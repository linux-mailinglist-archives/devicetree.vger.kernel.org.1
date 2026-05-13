Return-Path: <devicetree+bounces-296682-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLoeIaIwBGo/FAIAu9opvQ
	(envelope-from <devicetree+bounces-296682-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:04:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1755A52F4C2
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:04:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D25E30E7AA5
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 08:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5539D3D7D76;
	Wed, 13 May 2026 08:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Dl/zY1aK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32108.qiye.163.com (mail-m32108.qiye.163.com [220.197.32.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7545C3D7A16;
	Wed, 13 May 2026 08:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778659209; cv=none; b=gSx0xZCRf3kDSeUKio1BLtjZ4uPiyE2Rmhwf1ay3FIuRjJ6/YEHPVSKjGGLePmeSWpMBHT0kz752Fj/exvj07XwlXXvhHG0KECcpkhaWa+yR2XMUm4+JaMeOrOkLx/P2km7V6DaRQ8WGXSPedOSOzfFpws+dzAsCZLNTKW5oUNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778659209; c=relaxed/simple;
	bh=GFPWi/xaj2KK9JkNv4kgMVIXco4zFkyHwtNhMlrUhGI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lE7ArpgrnECgQXkQSINCPiyL3D50YJfbAivX3TkXMKwIvoPIt9nygc1fqjwbqdkQocF23x4PvEHvDukMrvpeX64P/3kPmLc+oA2NE8Tlbya/+HSsoLrLOWHQNAdySZKU6Pt9LDksmv1lCkqxjJl2DzbmR3OR5N4D/Jz/fZo99KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Dl/zY1aK; arc=none smtp.client-ip=220.197.32.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3e3a94cf9;
	Wed, 13 May 2026 15:44:33 +0800 (GMT+08:00)
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
Subject: [PATCH v5 07/10] arm64: dts: rockchip: Add eDP node for RK3576
Date: Wed, 13 May 2026 15:44:11 +0800
Message-Id: <20260513074414.2053435-8-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260513074414.2053435-1-damon.ding@rock-chips.com>
References: <20260513074414.2053435-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e204b69b103a3kunm7763bb9856114
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZHU9NVkNDTUMYT01LTk5LT1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=Dl/zY1aKppMiLwMd2qDYD2qMJCvfDlfsTtf+rs1+ux2EP7hX0o8ZoyckU5xBlAK/B/1F1zEbYdeBxkqSfM1oOAztPSsNHDtZ0r8TJwz+r2iRH+rjA0PB57KNbXaOME+WV9yYM6RL1PM401pMMnwNGTSUXYF/6CUt9KNLkE6Blso=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=K1DLY9Im8emQ1pvFmDCS9X34Zpvqnm1ezAB2dEZJU7I=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: 1755A52F4C2
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
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,rock-chips.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296682-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[27e40000:query timed out,collabora.com:query timed out,rock-chips.com:query timed out,0.0.0.1:query timed out,0.0.0.0:query timed out,27dc0000:query timed out];
	SEM_URIBL_UNKNOWN_FAIL(0.00)[0.0.0.1:query timed out,27dc0000:query timed out,0.0.0.0:query timed out,27e40000:query timed out,collabora.com:query timed out];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,collabora.com:email,rock-chips.com:email,rock-chips.com:mid,rock-chips.com:dkim,27dc0000:email,0.0.0.1:email]
X-Rspamd-Action: no action

Add full device tree definition for the integrated eDP controller
on RK3576, following the existing RK3588 hardware layout.

Configure required register range, clocks, interrupt, phy, power
domain, reset and grf properties to fully describe the controller.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

---

Changes in v2:
- Add Reviewed-by tag.

Changes in v4:
- Modify the commit msg.
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 28 ++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 28175d8200d5..733449cb88b1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1496,6 +1496,34 @@ hdmi_out: port@1 {
 			};
 		};
 
+		edp: edp@27dc0000 {
+			compatible = "rockchip,rk3576-edp";
+			reg = <0x0 0x27dc0000 0x0 0x1000>;
+			clocks = <&cru CLK_EDP0_24M>, <&cru PCLK_EDP0>, <&cru HCLK_VO0_ROOT>;
+			clock-names = "dp", "pclk", "hclk";
+			interrupts = <GIC_SPI 365 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&hdptxphy>;
+			phy-names = "dp";
+			power-domains = <&power RK3576_PD_VO0>;
+			resets = <&cru SRST_EDP0_24M>, <&cru SRST_P_EDP0>;
+			reset-names = "dp", "apb";
+			rockchip,grf = <&vo0_grf>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				edp_in: port@0 {
+					reg = <0>;
+				};
+
+				edp_out: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
 		dp: dp@27e40000 {
 			compatible = "rockchip,rk3576-dp";
 			reg = <0x0 0x27e40000 0x0 0x30000>;
-- 
2.34.1


