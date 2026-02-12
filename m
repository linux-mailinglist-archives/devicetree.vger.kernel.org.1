Return-Path: <devicetree+bounces-264883-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMwkMIEvjWk/zwAAu9opvQ
	(envelope-from <devicetree+bounces-264883-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:40:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B0A129082
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:40:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 105D630292C9
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 01:39:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1707B21D3F8;
	Thu, 12 Feb 2026 01:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJ13+2r7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7EE9207A0B;
	Thu, 12 Feb 2026 01:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770860360; cv=none; b=KYQfYC2oud1zXxnlhvlo3lxOBK80ROfkP5hP1h1xXNVYN0NF4ZEJ/DlxFsSYhRrLZMidA5iwrgIeuQCxXYcUkNerrloNb3mYX5u/IIoQ6/oyRmh36wkZmWqHKxoAi3AjCcm4tX0XoP/3fPi0Dr6NPAN44WtQvp4sfLez+bkFXIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770860360; c=relaxed/simple;
	bh=4HiRGbXUC6o99EAbk0Kk9IETiUENn9fO1jaf304KlwI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qE+M+lrRvcuS76q9RS63FuF3UovTMVZ0/sAcuSIJJU76MeGhqjVCTcVIqu9m6vV2XrjC12Ta7yEpMwVH7ZuZ1plpLkYzkkomFQaeb8R+pXxS2F46yQKpO0VnaTBx16lQzyj5qK6AeE+PfjRXUVVJVggbDzrbM9/dzu7op4oECLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJ13+2r7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62FCAC2BCB3;
	Thu, 12 Feb 2026 01:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770860359;
	bh=4HiRGbXUC6o99EAbk0Kk9IETiUENn9fO1jaf304KlwI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=PJ13+2r7Y8E3c3cXDGix4yLK2AXHI1itE7SPe7R5tDnice26dvKNkubhonEb1m4dF
	 HvTY+fW2g87oqM8+QbHPMl61gs0RECpZcFkF8YVcrZqcOejO2xo5sHvCzifvwSPyJG
	 VRBsxGcgMuKXR7ixGjBgOkdeQx6KAxDtyIaZr/RWCebpYzk+rNQ5RTPy2JxVCXvQj2
	 1YNYsaHp3FyvUS2/A4G3w5zz5tYDe07Vjzm0OJebFqXgKycJThk0x4SmpOs/nV9GtO
	 R+7OtRcKf3J6D/pxNp3JzdOcBf/7JiJgZymOdcIC0XWIVG7oyxiiKRPPEy6Sa+qSOp
	 dh5UAKWwMf0wg==
From: Yixun Lan <dlan@kernel.org>
Date: Thu, 12 Feb 2026 09:38:56 +0800
Subject: [PATCH 3/3] phy: k1-usb: k3: add USB2 PHY support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-11-k3-usb2-phy-v1-3-43578592405d@kernel.org>
References: <20260212-11-k3-usb2-phy-v1-0-43578592405d@kernel.org>
In-Reply-To: <20260212-11-k3-usb2-phy-v1-0-43578592405d@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Ze Huang <huang.ze@linux.dev>
Cc: Junzhong Pan <panjunzhong@linux.spacemit.com>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, Yixun Lan <dlan@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3299; i=dlan@kernel.org;
 h=from:subject:message-id; bh=4HiRGbXUC6o99EAbk0Kk9IETiUENn9fO1jaf304KlwI=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBpjS8644Xw6PGyub8/C3vux61at2nMEuIGGDkwf
 fpMidtdDNSJAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCaY0vOhsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+1xTw/9Ej++iEmtbjFYke9rOp0tGpFYt81M+h+p1YIlHvOxzrZ+NeC+Wt1Ff
 tUDugvIj/6dE2yGiLl/AeIL5BUhGdC7Ko1iOUsd5mjKRGu9Px9A31QCZOj3KhvuISpFcsFjZnKD
 0rQb7NzfiXElpZXn7hNQVG5J8Z9vGxQ8neXmcIextkLicQtO4xCzO4bkxhCkRKJvsjEP17OKuAc
 CzSCaHalb/he6/AN75XgmtJbwqSWnaI05JzLK/T5A3csBMrQfofEmC/0AoXZfit1YAKNdONyR3F
 2r3fRvnpFXw0EZfuqRjO2hUxvOR+IdJDbF9a3jdc/SNtcpdDOLVNkGR9wAksBWvNF8mL7FK81yr
 F3/ltm/ZnpGlN3xjEDO/7z5dYs8plD7o81g2dy9/j2dHin2w1YtFclA67RGdH4wRw3IN+Kw9Hzt
 9imo3GVC9PjqIum+MZgc3rV/1ZNtQnVL0CKvnjb6NZR8hKJC4aWKgZVESgtKZb1oBEQu0WSEBQA
 /xoAeZLx+nVeXHbRKWipw1BOM7cvHKaaBWVwRKI3c4AMeAwidexDrrNz9C2rB5rcYyl+0GvvXIc
 iIC6Sh0p1gT+GUyVgVHq6XCSIBeHfylyM/mMKt0kFkzfe0tNmNc2HV5wyk0xeYAZp8pI6Av0s4Z
 67k5WIz8qjSVAX5/gbqk5rGm9+ga2k=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264883-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 19B0A129082
X-Rspamd-Action: no action

Add USB2 PHY support for SpacemiT K3 SoC.

Register layout of handling USB disconnect operation has been changed,
So introducing a platform data to distinguish the different SoCs.

Signed-off-by: Yixun Lan <dlan@kernel.org>
---
 drivers/phy/spacemit/phy-k1-usb2.c | 40 ++++++++++++++++++++++++++++++++++++--
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/spacemit/phy-k1-usb2.c b/drivers/phy/spacemit/phy-k1-usb2.c
index 959bf79c7a72..b0ce0a92861e 100644
--- a/drivers/phy/spacemit/phy-k1-usb2.c
+++ b/drivers/phy/spacemit/phy-k1-usb2.c
@@ -51,6 +51,9 @@
 #define PHY_K1_HS_HOST_DISC		0x40
 #define  PHY_K1_HS_HOST_DISC_CLR		BIT(0)
 
+#define PHY_K3_HS_HOST_DISC		0x20
+#define  PHY_K3_HS_HOST_DISC_CLR		BIT(8)
+
 #define PHY_PLL_DIV_CFG			0x98
 #define  PHY_FDIV_FRACT_8_15		GENMASK(7, 0)
 #define  PHY_FDIV_FRACT_16_19		GENMASK(11, 8)
@@ -74,10 +77,15 @@
 
 #define K1_USB2PHY_RESET_TIME_MS	50
 
+struct spacemit_usb2phy_data {
+	int (*disconnect)(struct phy *phy, int port);
+};
+
 struct spacemit_usb2phy {
 	struct phy *phy;
 	struct clk *clk;
 	struct regmap *regmap_base;
+	const struct spacemit_usb2phy_data *data;
 };
 
 static const struct regmap_config phy_regmap_config = {
@@ -145,7 +153,7 @@ static int spacemit_usb2phy_exit(struct phy *phy)
 	return 0;
 }
 
-static int spacemit_usb2phy_disconnect(struct phy *phy, int port)
+static int spacemit_k1_usb2phy_disconnect(struct phy *phy, int port)
 {
 	struct spacemit_usb2phy *sphy = phy_get_drvdata(phy);
 
@@ -155,6 +163,23 @@ static int spacemit_usb2phy_disconnect(struct phy *phy, int port)
 	return 0;
 }
 
+static int spacemit_k3_usb2phy_disconnect(struct phy *phy, int port)
+{
+	struct spacemit_usb2phy *sphy = phy_get_drvdata(phy);
+
+	regmap_update_bits(sphy->regmap_base, PHY_K3_HS_HOST_DISC,
+					   PHY_K3_HS_HOST_DISC_CLR, PHY_K3_HS_HOST_DISC_CLR);
+
+	return 0;
+}
+
+static int spacemit_usb2phy_disconnect(struct phy *phy, int port)
+{
+	struct spacemit_usb2phy *sphy = phy_get_drvdata(phy);
+
+	return sphy->data->disconnect(phy, port);
+}
+
 static const struct phy_ops spacemit_usb2phy_ops = {
 	.init = spacemit_usb2phy_init,
 	.exit = spacemit_usb2phy_exit,
@@ -173,6 +198,8 @@ static int spacemit_usb2phy_probe(struct platform_device *pdev)
 	if (!sphy)
 		return -ENOMEM;
 
+	sphy->data = device_get_match_data(dev);
+
 	sphy->clk = devm_clk_get_prepared(&pdev->dev, NULL);
 	if (IS_ERR(sphy->clk))
 		return dev_err_probe(dev, PTR_ERR(sphy->clk), "Failed to get clock\n");
@@ -195,8 +222,17 @@ static int spacemit_usb2phy_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
+static const struct spacemit_usb2phy_data k1_usb2phy_data = {
+	.disconnect = spacemit_k1_usb2phy_disconnect,
+};
+
+static const struct spacemit_usb2phy_data k3_usb2phy_data = {
+	.disconnect = spacemit_k3_usb2phy_disconnect,
+};
+
 static const struct of_device_id spacemit_usb2phy_dt_match[] = {
-	{ .compatible = "spacemit,k1-usb2-phy", },
+	{ .compatible = "spacemit,k1-usb2-phy", .data = &k1_usb2phy_data },
+	{ .compatible = "spacemit,k3-usb2-phy", .data = &k3_usb2phy_data },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, spacemit_usb2phy_dt_match);

-- 
2.52.0


