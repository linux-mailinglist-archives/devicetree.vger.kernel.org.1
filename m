Return-Path: <devicetree+bounces-159099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EDCA69B28
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 22:46:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BF4719C2A64
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 21:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AF8121ABB7;
	Wed, 19 Mar 2025 21:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="M/e/7LyH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A91671AAA1E
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 21:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742420700; cv=none; b=JD31OwI31GXXUxgZATrz/azOoxzZYf7ukWlQIeJbmlFS3Wlrh/hMHq4RJF2A2f4KNZTEnwW4BpDlHk6TWGaQu/p6i6YeiAQAG9z8l/zI/WuyRUoC3rc6b0sN31RGcLiwQZLeeUam7LFm5nbw98EKeWA6y8XDgLUYRkNBCChIe+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742420700; c=relaxed/simple;
	bh=dN+pwhVdQxGnPZ4Ij+k3V0Q3kuFSFJryhHg84F0atnk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=C8Ve1HpviOKcZJmrU6GkJqJJPQu+tYCkcF8upjk1TvfP9c/LfOs3gsPpEOW2vC2ns3J6EsVr1QcK96Yrv6w+ZRr967MJt03bbiRLRa3D8YDDXBAFsDHOBVk5UsstTuaVLdOtNebn8VlyawpjoZtkMyAU/ujq3LB0FjrKALrPcSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=M/e/7LyH; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1742420698; bh=L6J1WZQlQ4jkkHrsEJmiDwnkEgm0ftZ58Eh+fnNyjbU=;
 b=M/e/7LyH+VqNgn9NtYvcciIu9mCbsZeWBoreXeoyPElYmCXOYpzl+z2ZB7agD/nCi5vwtAsCt
 kBUiUlzK3v4HXITZ31l0hWw181zaw+7EPUWWQtCNcz1xME3zgD9DGXs4Kx9uD+U7CKuolnbBntI
 19sg2YkREPiC+3KX1wQ5+qh6Xfo5uSIShN9DfAdZDtVLT6ygOHO6bjWSQgFmIu7VlWlYztqwxS8
 Oxc9Aj7FMTMgcAaII7vgjDDgTrH3Kot83k+yG49SdkhBN76nibTHkzKHEu3Cbm0NTRzAQFYCLt7
 9VyoR8MWWkdoTgQYGsjw3YMhah/x9KKwnoQNey1sCpSg==
X-Forward-Email-ID: 67db3acecf4d592372b99442
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
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Wu <david.wu@rock-chips.com>,
	Yao Zi <ziyao@disroot.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH net-next v3 5/5] net: stmmac: dwmac-rk: Add initial support for RK3528 integrated PHY
Date: Wed, 19 Mar 2025 21:44:09 +0000
Message-ID: <20250319214415.3086027-6-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250319214415.3086027-1-jonas@kwiboo.se>
References: <20250319214415.3086027-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rockchip RK3528 (and RV1106) has a different integrated PHY compared to
the integrated PHY on RK3228/RK3328. Current powerup/down operation is
not compatible with the integrated PHY found in these newer SoCs.

Add operations to powerup/down the integrated PHY found in RK3528.
Use helpers that can be used by other GMAC variants in the future.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v3:
- No change
Changes in v2:
- New patch

This is enough to power up the integrated PHY on RK3528 for MDIO/MII.
However, a PHY driver is still missing and I do not have any RK3528
board that make use of this MAC and PHY, so something that can be
improved upon in the future.
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 3673abd65302..700858ff6f7c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -134,6 +134,35 @@ static void rk_gmac_integrated_ephy_powerdown(struct rk_priv_data *priv)
 		reset_control_assert(priv->phy_reset);
 }
 
+#define RK_FEPHY_SHUTDOWN		GRF_BIT(1)
+#define RK_FEPHY_POWERUP		GRF_CLR_BIT(1)
+#define RK_FEPHY_INTERNAL_RMII_SEL	GRF_BIT(6)
+#define RK_FEPHY_24M_CLK_SEL		(GRF_BIT(8) | GRF_BIT(9))
+#define RK_FEPHY_PHY_ID			GRF_BIT(11)
+
+static void rk_gmac_integrated_fephy_powerup(struct rk_priv_data *priv,
+					     unsigned int reg)
+{
+	reset_control_assert(priv->phy_reset);
+	usleep_range(20, 30);
+
+	regmap_write(priv->grf, reg,
+		     RK_FEPHY_POWERUP |
+		     RK_FEPHY_INTERNAL_RMII_SEL |
+		     RK_FEPHY_24M_CLK_SEL |
+		     RK_FEPHY_PHY_ID);
+	usleep_range(10000, 12000);
+
+	reset_control_deassert(priv->phy_reset);
+	usleep_range(50000, 60000);
+}
+
+static void rk_gmac_integrated_fephy_powerdown(struct rk_priv_data *priv,
+					       unsigned int reg)
+{
+	regmap_write(priv->grf, reg, RK_FEPHY_SHUTDOWN);
+}
+
 #define PX30_GRF_GMAC_CON1		0x0904
 
 /* PX30_GRF_GMAC_CON1 */
@@ -993,12 +1022,24 @@ static void rk3528_set_clock_selection(struct rk_priv_data *bsp_priv,
 	}
 }
 
+static void rk3528_integrated_phy_powerup(struct rk_priv_data *bsp_priv)
+{
+	rk_gmac_integrated_fephy_powerup(bsp_priv, RK3528_VO_GRF_MACPHY_CON0);
+}
+
+static void rk3528_integrated_phy_powerdown(struct rk_priv_data *bsp_priv)
+{
+	rk_gmac_integrated_fephy_powerdown(bsp_priv, RK3528_VO_GRF_MACPHY_CON0);
+}
+
 static const struct rk_gmac_ops rk3528_ops = {
 	.set_to_rgmii = rk3528_set_to_rgmii,
 	.set_to_rmii = rk3528_set_to_rmii,
 	.set_rgmii_speed = rk3528_set_rgmii_speed,
 	.set_rmii_speed = rk3528_set_rmii_speed,
 	.set_clock_selection = rk3528_set_clock_selection,
+	.integrated_phy_powerup = rk3528_integrated_phy_powerup,
+	.integrated_phy_powerdown = rk3528_integrated_phy_powerdown,
 	.regs_valid = true,
 	.regs = {
 		0xffbd0000, /* gmac0 */
-- 
2.49.0


