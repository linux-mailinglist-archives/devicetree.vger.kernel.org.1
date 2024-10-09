Return-Path: <devicetree+bounces-109548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D6A996D06
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 16:01:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22E821C2248D
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 14:01:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C465019D892;
	Wed,  9 Oct 2024 14:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="fgy1aY3l"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77DA719994B;
	Wed,  9 Oct 2024 14:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728482473; cv=none; b=cmQvxAhEvmwmM+z7naQqDsnTKXbJtzPvN0gsbgP/FDJmN+UA9oCdGOhIBqqFifKSMSte4nqt0JuGJrHioNoROR0dqB1Tlr7julYcdo52D+uCSxCQl+LgHkc8e4lm7fCHNmbrjsHc+JweDqwjmBl4Ywwckf6diL9wbwA9rUmPMxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728482473; c=relaxed/simple;
	bh=/tmvgtv1YRkuY7e7u2QsEYffXzgajAc9/AbktQhVIrY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IA57AyABc/MNzml7Th2sYYLsWCYd8nkl++YWo1Zh+sg3FfBrNCF74oR3jOmyBZOkPYPuycOhtzTH7Nciky8zn+3xpT2Jn35OwfYfFReHcxgk2IvRQfHDnxNyFYkj+6Nq258oAcO3VKf7wIXXHiu6pL05Et3SuT8gdpDRTIEScNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=fgy1aY3l; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 38E7E1BF209;
	Wed,  9 Oct 2024 14:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1728482469;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=51tFhwkIfjKQ6rs73rgZmRnnNukZhWLjQRX8i+8ldQ4=;
	b=fgy1aY3lMaGsku5c0wMK7goxdf6EpwET4Lj+sHWKLdxzWf1H4X7BS1TgDXcx2PHQzAnPtY
	mtMAsnTgjEGP3Tt03BpBIuXkK8+xrTj3V3+4UGNTu5HGbMnJWlgvST8lfyVa8HtAXRtS/G
	a5iHduX3rgjlxxqjwb1XzltPNNKNsNvXmOWZqcIIeVB4cq9I1xq81q79CYPjaGrftmUTU9
	PhB9/CQykCjNSV2sOEwHPWBmn2BVOwgYpQhcJdJ+R1tE9bSo2jgEbchHyrOkBkx5tTGzVD
	Kzonp6YG6j7Ve/d5rE2gAEteZYx4T7IwvPyOSf2OSQCv2L8E38G+zy7dgzhaKQ==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Wed, 09 Oct 2024 16:01:09 +0200
Subject: [PATCH v3 3/6] i2c: nomadik: switch from of_device_is_compatible()
 to of_match_device()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241009-mbly-i2c-v3-3-e7fd13bcf1c4@bootlin.com>
References: <20241009-mbly-i2c-v3-0-e7fd13bcf1c4@bootlin.com>
In-Reply-To: <20241009-mbly-i2c-v3-0-e7fd13bcf1c4@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: b4 0.14.2
X-GND-Sasl: theo.lebrun@bootlin.com

Compatible-specific behavior is implemented using a if-condition on the
return value from of_device_is_compatible(), from probe. It does not
scale well when compatible number increases. Switch to using a match
table and a call to of_match_device().

We DO NOT attach a .of_match_table field to our amba driver, as we do
not use the table to match our driver to devices.

Sort probe variable declarations in reverse christmas tree to try and
introduce some logic into the ordering.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
---
 drivers/i2c/busses/i2c-nomadik.c | 37 ++++++++++++++++++++++++++++---------
 1 file changed, 28 insertions(+), 9 deletions(-)

diff --git a/drivers/i2c/busses/i2c-nomadik.c b/drivers/i2c/busses/i2c-nomadik.c
index ad0f02acdb1215a1c04729f97bb14a4d93f88456..c40328d1bca6cdefc61906cf9160f8411e37922a 100644
--- a/drivers/i2c/busses/i2c-nomadik.c
+++ b/drivers/i2c/busses/i2c-nomadik.c
@@ -26,6 +26,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_device.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
@@ -1046,8 +1047,6 @@ static int nmk_i2c_eyeq5_probe(struct nmk_i2c_dev *priv)
 	struct regmap *olb;
 	unsigned int id;
 
-	priv->has_32b_bus = true;
-
 	olb = syscon_regmap_lookup_by_phandle_args(np, "mobileye,olb", 1, &id);
 	if (IS_ERR(olb))
 		return PTR_ERR(olb);
@@ -1068,15 +1067,35 @@ static int nmk_i2c_eyeq5_probe(struct nmk_i2c_dev *priv)
 	return 0;
 }
 
+#define NMK_I2C_EYEQ_FLAG_32B_BUS	BIT(0)
+#define NMK_I2C_EYEQ_FLAG_IS_EYEQ5	BIT(1)
+
+static const struct of_device_id nmk_i2c_eyeq_match_table[] = {
+	{
+		.compatible = "mobileye,eyeq5-i2c",
+		.data = (void *)(NMK_I2C_EYEQ_FLAG_32B_BUS | NMK_I2C_EYEQ_FLAG_IS_EYEQ5),
+	},
+};
+
 static int nmk_i2c_probe(struct amba_device *adev, const struct amba_id *id)
 {
-	int ret = 0;
-	struct nmk_i2c_dev *priv;
-	struct device_node *np = adev->dev.of_node;
-	struct device *dev = &adev->dev;
-	struct i2c_adapter *adap;
 	struct i2c_vendor_data *vendor = id->data;
 	u32 max_fifo_threshold = (vendor->fifodepth / 2) - 1;
+	struct device_node *np = adev->dev.of_node;
+	const struct of_device_id *match;
+	struct device *dev = &adev->dev;
+	unsigned long match_flags = 0;
+	struct nmk_i2c_dev *priv;
+	struct i2c_adapter *adap;
+	int ret = 0;
+
+	/*
+	 * We do not want to attach a .of_match_table to our amba driver.
+	 * Do not convert to device_get_match_data().
+	 */
+	match = of_match_device(nmk_i2c_eyeq_match_table, dev);
+	if (match)
+		match_flags = (unsigned long)match->data;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -1084,10 +1103,10 @@ static int nmk_i2c_probe(struct amba_device *adev, const struct amba_id *id)
 
 	priv->vendor = vendor;
 	priv->adev = adev;
-	priv->has_32b_bus = false;
+	priv->has_32b_bus = match_flags & NMK_I2C_EYEQ_FLAG_32B_BUS;
 	nmk_i2c_of_probe(np, priv);
 
-	if (of_device_is_compatible(np, "mobileye,eyeq5-i2c")) {
+	if (match_flags & NMK_I2C_EYEQ_FLAG_IS_EYEQ5) {
 		ret = nmk_i2c_eyeq5_probe(priv);
 		if (ret)
 			return dev_err_probe(dev, ret, "failed OLB lookup\n");

-- 
2.46.2


