Return-Path: <devicetree+bounces-293230-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDdSGzwj+mnyKAMAu9opvQ
	(envelope-from <devicetree+bounces-293230-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 19:05:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1377C4D1C5C
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 19:04:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF1BF303EC22
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 17:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D55544A2E0C;
	Tue,  5 May 2026 17:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="lqrs5Nai"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5923AE1B9;
	Tue,  5 May 2026 17:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778000664; cv=none; b=NRhgAeQ2hnoVgbr8/Q3BSjOs2gGVxiW9mV0g7l2R0TsdQ9fgWSCFdnU0sdAUJEPjeGak9KNzKgbLWkrpr9bdUzv8yvgTjooAtsHTC15F32un/GXTxmuQNq2YgvnOFXrNpe3LQ97KtP9bRJ16zH+kPNzLdOp2/SpeF2N9WgWxzR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778000664; c=relaxed/simple;
	bh=HNBD1IhghCSQSMMS6FSoF1r1MK9vAI8LZE0tx3rurhY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WCngTVvhaZT45MGY7O5eE42MAa0mk5c+O7tiR+6sPq4rJVUrFuHx+S2EQRquc5A31XfWI/8PVkzRXJ/vx+Ztte39NvZ4uE91sHEqpIfvAOJK80okPtNwEjHtMiHdP6YTvLZM7F5JqIASWA1Efr188Hks8YNCIvGtD8d+Q5yXF5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=lqrs5Nai; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=7mMTfDZ4nl8ekfgg7b9H2X02Eg7cD6K21MT96h6gSgM=; b=lqrs5NaiurW/3Qzu8QxAnQ4eZR
	7q8u2pxSBzFPxzE0f3Zf5vR3dU2hNLVeKug5EK4Xi52Pyl8qBj1lD/beJxEnb142Tk6qyxdzU/8g8
	t4hAq7d1ZR66opWn8q20kdcuXd8it0YlP01CfkZC/LwSzidwHl6Xv5OmaK0u9E24y3hczLfOYvILK
	gjNjA1S312f5bKTU2qg44u/bcF9z9cdXmW80FPprWCivMi40U1rSob5WHJu2E2tb/dLyG9z6++Oln
	8PaDqwxZqWSxhs37g84NqqM+NYUWoz5ufhlGY2qsbkJaKtGthFiSuKSRrcAjUJH1zKnnfuHasFDpl
	+/6HbvwQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	jonas@kwiboo.se
Subject: [PATCH v2 4/5] phy: rockchip: inno-usb2: Add clkout_ctl_phy support
Date: Tue,  5 May 2026 19:04:09 +0200
Message-ID: <20260505170410.3265305-5-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260505170410.3265305-1-heiko@sntech.de>
References: <20260505170410.3265305-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1377C4D1C5C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293230-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_TWELVE(0.00)[12];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kwiboo.se:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sntech.de:email,sntech.de:dkim,sntech.de:mid]

From: Jonas Karlman <jonas@kwiboo.se>

The 480m clk is controlled using regs in the PHY address space and not
in the USB GRF address space on e.g. RK3528 and RK3506.

Add a clkout_ctl_phy usb2phy_reg to handle enable/disable of the 480m
clk on these SoCs.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 47 +++++++++++++++----
 1 file changed, 38 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 7cec45192393..d8879fcd4291 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -179,6 +179,7 @@ struct rockchip_usb2phy_cfg {
 	unsigned int	num_ports;
 	int (*phy_tuning)(struct rockchip_usb2phy *rphy);
 	struct usb2phy_reg	clkout_ctl;
+	struct usb2phy_reg	clkout_ctl_phy;
 	const struct rockchip_usb2phy_port_cfg	port_cfgs[USB2PHY_NUM_PORTS];
 	const struct rockchip_chg_det_reg	chg_det;
 };
@@ -228,6 +229,7 @@ struct rockchip_usb2phy_port {
  * struct rockchip_usb2phy - usb2.0 phy driver data.
  * @dev: pointer to device.
  * @grf: General Register Files regmap.
+ * @phy_base: USB PHY regmap.
  * @clks: array of phy input clocks.
  * @clk480m: clock struct of phy output clk.
  * @clk480m_hw: clock struct of phy output clk management.
@@ -245,6 +247,7 @@ struct rockchip_usb2phy_port {
 struct rockchip_usb2phy {
 	struct device	*dev;
 	struct regmap	*grf;
+	struct regmap	*phy_base;
 	struct clk_bulk_data	*clks;
 	struct clk	*clk480m;
 	struct clk_hw	clk480m_hw;
@@ -312,15 +315,33 @@ static void rockchip_usb2phy_clk_bulk_disable(void *data)
 	clk_bulk_disable_unprepare(rphy->num_clks, rphy->clks);
 }
 
-static int rockchip_usb2phy_clk480m_prepare(struct clk_hw *hw)
+static void
+rockchip_usb2phy_clk480m_clkout_ctl(struct clk_hw *hw, struct regmap **base,
+				    const struct usb2phy_reg **clkout_ctl)
 {
 	struct rockchip_usb2phy *rphy =
 		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
+
+	if (rphy->phy_cfg->clkout_ctl_phy.enable) {
+		*base = rphy->phy_base;
+		*clkout_ctl = &rphy->phy_cfg->clkout_ctl_phy;
+	} else {
+		*base = rphy->grf;
+		*clkout_ctl = &rphy->phy_cfg->clkout_ctl;
+	}
+}
+
+static int rockchip_usb2phy_clk480m_prepare(struct clk_hw *hw)
+{
+	const struct usb2phy_reg *clkout_ctl;
+	struct regmap *base;
 	int ret;
 
+	rockchip_usb2phy_clk480m_clkout_ctl(hw, &base, &clkout_ctl);
+
 	/* turn on 480m clk output if it is off */
-	if (!property_enabled(rphy->grf, &rphy->phy_cfg->clkout_ctl)) {
-		ret = property_enable(rphy->grf, &rphy->phy_cfg->clkout_ctl, true);
+	if (!property_enabled(base, clkout_ctl)) {
+		ret = property_enable(base, clkout_ctl, true);
 		if (ret)
 			return ret;
 
@@ -333,19 +354,23 @@ static int rockchip_usb2phy_clk480m_prepare(struct clk_hw *hw)
 
 static void rockchip_usb2phy_clk480m_unprepare(struct clk_hw *hw)
 {
-	struct rockchip_usb2phy *rphy =
-		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
+	const struct usb2phy_reg *clkout_ctl;
+	struct regmap *base;
+
+	rockchip_usb2phy_clk480m_clkout_ctl(hw, &base, &clkout_ctl);
 
 	/* turn off 480m clk output */
-	property_enable(rphy->grf, &rphy->phy_cfg->clkout_ctl, false);
+	property_enable(base, clkout_ctl, false);
 }
 
 static int rockchip_usb2phy_clk480m_prepared(struct clk_hw *hw)
 {
-	struct rockchip_usb2phy *rphy =
-		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
+	const struct usb2phy_reg *clkout_ctl;
+	struct regmap *base;
+
+	rockchip_usb2phy_clk480m_clkout_ctl(hw, &base, &clkout_ctl);
 
-	return property_enabled(rphy->grf, &rphy->phy_cfg->clkout_ctl);
+	return property_enabled(base, clkout_ctl);
 }
 
 static unsigned long
@@ -1336,9 +1361,13 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 
 	if (!dev->parent || !dev->parent->of_node ||
 	    of_property_present(np, "rockchip,usbgrf")) {
+		rphy->phy_base = device_node_to_regmap(np);
+		if (IS_ERR(rphy->phy_base))
+			return PTR_ERR(rphy->phy_base);
 		rphy->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
 	} else {
 		rphy->grf = syscon_node_to_regmap(dev->parent->of_node);
+		rphy->phy_base = rphy->grf;
 	}
 	if (IS_ERR(rphy->grf))
 		return PTR_ERR(rphy->grf);
-- 
2.47.3


