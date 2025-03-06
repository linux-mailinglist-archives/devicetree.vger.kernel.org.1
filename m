Return-Path: <devicetree+bounces-155103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD97A5597D
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 23:15:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45B073B2BDC
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 22:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4104B27D767;
	Thu,  6 Mar 2025 22:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="Un73Vq0M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6989927CB37
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 22:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741299269; cv=none; b=gSm3x1qBueOHfT+VVpxFWHxfflNmgkkKN81cvfA0Z+ASqCYJjXb9FuF9k3xOSdY8qBbW1GhKimZ2Vf2aIaoma5xtECvhPiNyYeU+7bORJpPbXpGlu7UAnmtPLlNNjqvXexWTQCdIu6/zkEz5gsdjh2oRVq4C5EoXojO17s3k6Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741299269; c=relaxed/simple;
	bh=vz8P+EDskUvsrqvMhYZsE++7gY4flX7CxLvX4+hsHWg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Yin7SWe/HYLtN2jreuS76VHts/R2mzkq6hxnhdGKSAAJMSmFWQS52tmNTUofax0SMjdUSBYHXigx5kWcey4JBtAjFHtOYjSXlXE0rdu2BeM0+oEu328J7uXOYm+mIRxwEUiKFoMKBARfOr5uAOBcv6QgUvwDFvaBLo6PznzbbP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=Un73Vq0M; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1741299266; bh=bOC8WbiFRMmQ2t5uzX1HETVDEhXpaqLAKBxWpaNaFx0=;
 b=Un73Vq0MWNwvyXJiMcRXOTxb+BGXLVCZAtSP4hPsQF+S5HLKw06uSnxX+wiV9s9tCgcfmOhIz
 Tnk3cB+L3XCM8Wh4iGXoufxyl6v0bDadZx4kvuyUzvOg40w0yZ78wTJxCZ6Vzdc5qLgvOlhyPcT
 vwiyTMzOVjxkK+oZ+CMOdlisNYNc56609eauP31plNgfAuDko8D2Ane8dwdtVt86/7wpG30J2HU
 A2IAO7Z7WK4/rpf0aAPFQ4Ki9/AlAWoWAz8QG7nuFDFlR4jLUdmtL6HIL3liu+giGt7WNkWNWl0
 /+M5FRjJNNmciZ6EGd8Qk3k1+hQPv7PHqF8khYoMkuag==
X-Forward-Email-ID: 67ca1e39c1763851c065c013
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	David Wu <david.wu@rock-chips.com>,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 2/4] ethernet: stmmac: dwmac-rk: Add GMAC support for RK3528
Date: Thu,  6 Mar 2025 22:13:55 +0000
Message-ID: <20250306221402.1704196-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250306221402.1704196-1-jonas@kwiboo.se>
References: <20250306221402.1704196-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: David Wu <david.wu@rock-chips.com>

Rockchip RK3528 has two Ethernet controllers based on Synopsys DWC
Ethernet QoS IP.

Add initial support for the RK3528 variants.

Signed-off-by: David Wu <david.wu@rock-chips.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
This does not include power on/off support for the integrated PHY.
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 132 ++++++++++++++++++
 1 file changed, 132 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index ba1cd079adf2..0ae3ffacb794 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -830,6 +830,137 @@ static const struct rk_gmac_ops rk3399_ops = {
 	.set_rmii_speed = rk3399_set_rmii_speed,
 };
 
+#define RK3528_VO_GRF_GMAC_CON		0x0018
+#define RK3528_VO_GRF_MACPHY_CON0	0x001c
+#define RK3528_VO_GRF_MACPHY_CON1	0x0020
+#define RK3528_VPU_GRF_GMAC_CON5	0x0018
+#define RK3528_VPU_GRF_GMAC_CON6	0x001c
+
+#define RK3528_GMAC_RXCLK_DLY_ENABLE	GRF_BIT(15)
+#define RK3528_GMAC_RXCLK_DLY_DISABLE	GRF_CLR_BIT(15)
+#define RK3528_GMAC_TXCLK_DLY_ENABLE	GRF_BIT(14)
+#define RK3528_GMAC_TXCLK_DLY_DISABLE	GRF_CLR_BIT(14)
+
+#define RK3528_GMAC_CLK_RX_DL_CFG(val)	HIWORD_UPDATE(val, 0xFF, 8)
+#define RK3528_GMAC_CLK_TX_DL_CFG(val)	HIWORD_UPDATE(val, 0xFF, 0)
+
+#define RK3528_GMAC0_PHY_INTF_SEL_RMII	GRF_BIT(1)
+#define RK3528_GMAC1_PHY_INTF_SEL_RGMII	GRF_CLR_BIT(8)
+#define RK3528_GMAC1_PHY_INTF_SEL_RMII	GRF_BIT(8)
+
+#define RK3528_GMAC1_CLK_SELECT_CRU	GRF_CLR_BIT(12)
+#define RK3528_GMAC1_CLK_SELECT_IO	GRF_BIT(12)
+
+#define RK3528_GMAC0_CLK_RMII_DIV2	GRF_BIT(3)
+#define RK3528_GMAC0_CLK_RMII_DIV20	GRF_CLR_BIT(3)
+#define RK3528_GMAC1_CLK_RMII_DIV2	GRF_BIT(10)
+#define RK3528_GMAC1_CLK_RMII_DIV20	GRF_CLR_BIT(10)
+
+#define RK3528_GMAC1_CLK_RGMII_DIV1	(GRF_CLR_BIT(11) | GRF_CLR_BIT(10))
+#define RK3528_GMAC1_CLK_RGMII_DIV5	(GRF_BIT(11) | GRF_BIT(10))
+#define RK3528_GMAC1_CLK_RGMII_DIV50	(GRF_BIT(11) | GRF_CLR_BIT(10))
+
+#define RK3528_GMAC0_CLK_RMII_GATE	GRF_BIT(2)
+#define RK3528_GMAC0_CLK_RMII_NOGATE	GRF_CLR_BIT(2)
+#define RK3528_GMAC1_CLK_RMII_GATE	GRF_BIT(9)
+#define RK3528_GMAC1_CLK_RMII_NOGATE	GRF_CLR_BIT(9)
+
+static void rk3528_set_to_rgmii(struct rk_priv_data *bsp_priv,
+				int tx_delay, int rx_delay)
+{
+	regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON5,
+		     RK3528_GMAC1_PHY_INTF_SEL_RGMII);
+
+	regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON5,
+		     DELAY_ENABLE(RK3528, tx_delay, rx_delay));
+
+	regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON6,
+		     RK3528_GMAC_CLK_RX_DL_CFG(rx_delay) |
+		     RK3528_GMAC_CLK_TX_DL_CFG(tx_delay));
+}
+
+static void rk3528_set_to_rmii(struct rk_priv_data *bsp_priv)
+{
+	if (bsp_priv->id == 1)
+		regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON5,
+			     RK3528_GMAC1_PHY_INTF_SEL_RMII);
+	else
+		regmap_write(bsp_priv->grf, RK3528_VO_GRF_GMAC_CON,
+			     RK3528_GMAC0_PHY_INTF_SEL_RMII |
+			     RK3528_GMAC0_CLK_RMII_DIV2);
+}
+
+static void rk3528_set_rgmii_speed(struct rk_priv_data *bsp_priv, int speed)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+
+	if (speed == 10)
+		regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON5,
+			     RK3528_GMAC1_CLK_RGMII_DIV50);
+	else if (speed == 100)
+		regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON5,
+			     RK3528_GMAC1_CLK_RGMII_DIV5);
+	else if (speed == 1000)
+		regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON5,
+			     RK3528_GMAC1_CLK_RGMII_DIV1);
+	else
+		dev_err(dev, "unknown speed value for RGMII! speed=%d", speed);
+}
+
+static void rk3528_set_rmii_speed(struct rk_priv_data *bsp_priv, int speed)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+	unsigned int reg, val;
+
+	if (speed == 10)
+		val = bsp_priv->id == 1 ? RK3528_GMAC1_CLK_RMII_DIV20 :
+					  RK3528_GMAC0_CLK_RMII_DIV20;
+	else if (speed == 100)
+		val = bsp_priv->id == 1 ? RK3528_GMAC1_CLK_RMII_DIV2 :
+					  RK3528_GMAC0_CLK_RMII_DIV2;
+	else {
+		dev_err(dev, "unknown speed value for RMII! speed=%d", speed);
+		return;
+	}
+
+	reg = bsp_priv->id == 1 ? RK3528_VPU_GRF_GMAC_CON5 :
+				  RK3528_VO_GRF_GMAC_CON;
+
+	regmap_write(bsp_priv->grf, reg, val);
+}
+
+static void rk3528_set_clock_selection(struct rk_priv_data *bsp_priv,
+				       bool input, bool enable)
+{
+	unsigned int val;
+
+	if (bsp_priv->id == 1) {
+		val = input ? RK3528_GMAC1_CLK_SELECT_IO :
+			      RK3528_GMAC1_CLK_SELECT_CRU;
+		val |= enable ? RK3528_GMAC1_CLK_RMII_NOGATE :
+				RK3528_GMAC1_CLK_RMII_GATE;
+		regmap_write(bsp_priv->grf, RK3528_VPU_GRF_GMAC_CON5, val);
+	} else {
+		val = enable ? RK3528_GMAC0_CLK_RMII_NOGATE :
+			       RK3528_GMAC0_CLK_RMII_GATE;
+		regmap_write(bsp_priv->grf, RK3528_VO_GRF_GMAC_CON, val);
+	}
+}
+
+static const struct rk_gmac_ops rk3528_ops = {
+	.set_to_rgmii = rk3528_set_to_rgmii,
+	.set_to_rmii = rk3528_set_to_rmii,
+	.set_rgmii_speed = rk3528_set_rgmii_speed,
+	.set_rmii_speed = rk3528_set_rmii_speed,
+	.set_clock_selection = rk3528_set_clock_selection,
+	.regs_valid = true,
+	.regs = {
+		0xffbd0000, /* gmac0 */
+		0xffbe0000, /* gmac1 */
+		0x0, /* sentinel */
+	},
+};
+
 #define RK3568_GRF_GMAC0_CON0		0x0380
 #define RK3568_GRF_GMAC0_CON1		0x0384
 #define RK3568_GRF_GMAC1_CON0		0x0388
@@ -1816,6 +1947,7 @@ static const struct of_device_id rk_gmac_dwmac_match[] = {
 	{ .compatible = "rockchip,rk3366-gmac", .data = &rk3366_ops },
 	{ .compatible = "rockchip,rk3368-gmac", .data = &rk3368_ops },
 	{ .compatible = "rockchip,rk3399-gmac", .data = &rk3399_ops },
+	{ .compatible = "rockchip,rk3528-gmac", .data = &rk3528_ops },
 	{ .compatible = "rockchip,rk3568-gmac", .data = &rk3568_ops },
 	{ .compatible = "rockchip,rk3576-gmac", .data = &rk3576_ops },
 	{ .compatible = "rockchip,rk3588-gmac", .data = &rk3588_ops },
-- 
2.48.1


