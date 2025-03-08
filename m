Return-Path: <devicetree+bounces-155732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB5EA57E99
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 22:37:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8243616E224
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 21:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BA31206F2A;
	Sat,  8 Mar 2025 21:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="yTYUSQYu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345A61A5BA5
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 21:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741469862; cv=none; b=PpZvX9bxwU0BB8S4ZRAj4XBbfJW94sirsUoskrkFUVSvFxCxAJNrsUuoigP1RkPBDwZz0MHQXbo8EIX3Xjxx+PgcIqvyJR7ejwUHuXUfh4kHyT/7/wFo4zG51dZkQLHAIJN5154sPSP0r+p9oBfgbKmq6720UJW+M2+IiajSHHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741469862; c=relaxed/simple;
	bh=ZNcLqMM/SppNIWCsDUuU2QqjwnokOxUw+1emVVIkXaU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AjlvLYMjyhZUGDi1MhWSaAIlLP6VAimAmHrnDTOhSikANOCjc8txREQUqKwyDnBPQ8NXl71sYuP1joIqYePEbGTGvMfcAmkvJJ3emXpDdfYAHJ4uOXypIDEhHlJqnjcwjxpp8scw1DmMxxUS81db03yeOOJyUgHG/aNgg06VOA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=yTYUSQYu; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1741469859; bh=MKVPFM3sM6NsoiVf8w+etPqEHxvCwW6Ue1sPujMeiBA=;
 b=yTYUSQYuNkZ6oKXFtTuo0AJ6Lp90tzAXjCHQfClqWN2sP1zkitFUvtzvXkXUKWubtoavZb7Pd
 vLbsi2EbvNt6Jm3Mb/sNm7hW8QdiMeFUSlgXXAcNMUhMp3F4MVe+L+PtVItiGC7suQF62VcKEK+
 HM7mDRpIQJI+aEWHKRct1+mkoxaLqNEDtZBFS+6tKsLHXLYGQL5ZHHX9MhTuhQxWofj0eZOK96Z
 m1WwWVOTKquz9eDB395QpFxb5f1+K6denQ/Y92xImvsd+XKwfNKtYRYd6zxrHKX4+M8Hj4NErdV
 nAcKDXrsX3ehjTnV7CRrQP+dZz9GhibTBdJzQHcAaAkg==
X-Forward-Email-ID: 67ccb8a0bfe70eb1bfc13b1e
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
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
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2 2/3] net: stmmac: dwmac-rk: Validate GRF and peripheral GRF during probe
Date: Sat,  8 Mar 2025 21:37:14 +0000
Message-ID: <20250308213720.2517944-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250308213720.2517944-1-jonas@kwiboo.se>
References: <20250308213720.2517944-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All Rockchip GMAC variants typically write to GRF regs to control e.g.
interface mode, speed and MAC rx/tx delay. Newer SoCs such as RK3576 and
RK3588 use a mix of GRF and peripheral GRF regs. These syscon regmaps is
located with help of a rockchip,grf and rockchip,php-grf phandle.

However, validating the rockchip,grf and rockchip,php-grf syscon regmap
is deferred until e.g. interface mode or speed is configured, inside the
individual SoC specific operations.

Change to validate the rockchip,grf and rockchip,php-grf syscon regmap
at probe time to simplify all SoC specific operations.

This should not introduce any backward compatibility issues as all
GMAC nodes have been added together with a rockchip,grf phandle (and
rockchip,php-grf where required) in their initial commit.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v2:
- Split removal of the IS_ERR() check in each SoC specific operation to
  a separate patch
- Add a php_grf_required flag to indicate when peripheral GRF is
  required
- Only lookup rockchip,php-grf phandle when php_grf_required is true
- Use ERR_CAST() instead of ERR_PTR()

The pending addition of RK3562 support [1] must be adjusted to set
.php_grf_required = true, or this will break RK3562 support.

[1] https://lore.kernel.org/r/20250227110652.2342729-2-kever.yang@rock-chips.com/
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 21 +++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 003fa5cf42c3..5615f015c5fe 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -33,6 +33,7 @@ struct rk_gmac_ops {
 	void (*set_clock_selection)(struct rk_priv_data *bsp_priv, bool input,
 				    bool enable);
 	void (*integrated_phy_powerup)(struct rk_priv_data *bsp_priv);
+	bool php_grf_required;
 	bool regs_valid;
 	u32 regs[];
 };
@@ -1254,6 +1255,7 @@ static const struct rk_gmac_ops rk3576_ops = {
 	.set_rgmii_speed = rk3576_set_gmac_speed,
 	.set_rmii_speed = rk3576_set_gmac_speed,
 	.set_clock_selection = rk3576_set_clock_selection,
+	.php_grf_required = true,
 	.regs_valid = true,
 	.regs = {
 		0x2a220000, /* gmac0 */
@@ -1401,6 +1403,7 @@ static const struct rk_gmac_ops rk3588_ops = {
 	.set_rgmii_speed = rk3588_set_gmac_speed,
 	.set_rmii_speed = rk3588_set_gmac_speed,
 	.set_clock_selection = rk3588_set_clock_selection,
+	.php_grf_required = true,
 	.regs_valid = true,
 	.regs = {
 		0xfe1b0000, /* gmac0 */
@@ -1812,8 +1815,22 @@ static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
 
 	bsp_priv->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
 							"rockchip,grf");
-	bsp_priv->php_grf = syscon_regmap_lookup_by_phandle(dev->of_node,
-							    "rockchip,php-grf");
+	if (IS_ERR(bsp_priv->grf)) {
+		dev_err_probe(dev, PTR_ERR(bsp_priv->grf),
+			      "failed to lookup rockchip,grf\n");
+		return ERR_CAST(bsp_priv->grf);
+	}
+
+	if (ops->php_grf_required) {
+		bsp_priv->php_grf =
+			syscon_regmap_lookup_by_phandle(dev->of_node,
+							"rockchip,php-grf");
+		if (IS_ERR(bsp_priv->php_grf)) {
+			dev_err_probe(dev, PTR_ERR(bsp_priv->php_grf),
+				      "failed to lookup rockchip,php-grf\n");
+			return ERR_CAST(bsp_priv->php_grf);
+		}
+	}
 
 	if (plat->phy_node) {
 		bsp_priv->integrated_phy = of_property_read_bool(plat->phy_node,
-- 
2.48.1


