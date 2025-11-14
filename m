Return-Path: <devicetree+bounces-238700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AD5C5D629
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:40:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A53E34E7378
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8589B31D37B;
	Fri, 14 Nov 2025 13:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DfzWJnVW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE4031AF34
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763127508; cv=none; b=hftrPW7aFgsqSWyp8Qmf9EnKTi5oBGlVoySN1k0ir5B67txLDJtFpDeXKn9uHGb1+dLs3m8pT1Efo/BAIIhNsFZAIrg/IzmStExb0xvVWf+rk0N6gu3Ngf9+rcouptKLi6YQjCmRwTnvX8uR6Tlx7rUXTFQUzKoRZ7Bsu0V94+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763127508; c=relaxed/simple;
	bh=aIZmZ8Bit7ZQP6+E51qlwqHqkVtTGhNdOByH2z3GuCs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LXgX4FyKgrq5zeQHKcF2iJW/0w/oypf5stxU0gMoTCGfodh9cbJWuYpenc4mIhzoCURM4HS9vp04GXr7dWiU+Yj2H0RNnsliz9aJeUZ++WyIa4U+bvd6RjRkm5T6pHnYO8OcDmQt8Vch1Fy9PSsOcns0NNGJXxrpo6sEl0o7+Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DfzWJnVW; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b472842981fso249482966b.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763127505; x=1763732305; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tunUdZ+Uo3TFHtZ2y2DxEuFXtR8sw55m1IPZhLEhl+o=;
        b=DfzWJnVWp+QSyd5DlUN9yKhtS7bLzHf4N6OWVhipIl9EiyG1nXg/toeoF2Y3zRuSp7
         /6Ad1hko6WvB5mQBpPEnI+gAdD4N/uka94afadyjkFN0e6jYrRfUUWgl5kxduNrdmFxU
         ag65EWMI1PZFshvDYzXkXs2i04E1cKiATpCs9zo7Zxz16f239BOZidoP71OVixfUYj+P
         Wi1fV4vGAs2eR1apeYyZqhwADaxSFNinbKn1dvTxkIopg0adpX++eftEv00IVkt+dNiN
         s8WYOFKe7QkIZd4q6137VLxsuUttzyhB3ZxJmjOIvYMSOBzDqGtekTdRwxme1O1s7fU/
         qczw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763127505; x=1763732305;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tunUdZ+Uo3TFHtZ2y2DxEuFXtR8sw55m1IPZhLEhl+o=;
        b=pZHj5ADsXuygmtQG0RyJTKDxeyp8R5ImSenx57XvjU+y3tWhDvUWksr9O5muG8bnLY
         8B2OkfL1bqLQ0gHFsvrh8X7mFlMCj+3kaYek5i91DFcuDTGxzWOEKjmWOxqoftKpZdNh
         6aG3/BeFmEJXOI4fc8ouUPAfUgWcPupatdeJcqlooGZXZkH+Rny6iNFZ4r0iL0NX3UO2
         Tdc7PLN22B+eOZILzdNR7NpRNoy7XYzT2YqnIRhLP7EkW7mSvDA1IK9lxxi5DjlKmOdz
         LPq6DhJJOnAURIa14xeG64RxZks+RJ9QFjBBcO8JrVkUuRUhBKTKILdBbDEFGIoOtfzf
         3MEw==
X-Gm-Message-State: AOJu0YwbP9WH1n+7EWoq+C4OkQGlZhWY5J8H0G276zjvZoxSfDWwxiZN
	3qA/7e4u8PfDSuRCY4D1nbh77vvtQopngy0ot9dyutaI2b2MTTZChKW+
X-Gm-Gg: ASbGncvY9D0iI2DRXsZl6dpqwNK2m/6YcEk/6PIqEMx7FCyld68UfgIb5SZrUrsbcJr
	nrO50n+xAN32/u3GdhLGr0I4ZC9Ac7OaqWkk2zAelmnmq/DbLp1f9DDs8HZOTlBjatzVDzd60Ts
	SaT2R9CtVWlc6YyID4VNMCGppzXxQ2n6Bi6Ep98iYEie0QMEhb1fSoXC/NyOlM2jivAMPUqxnOD
	ALn2BrImGHg7mSJuSIpM4xSt8KFqqj68RIsvhCZYfgnomnJ+W3FaNi96IJu1OIJvodd20ndkK+h
	Luihkr00jCkC0A4Eo+pQeRXQda0XudBRcXn261wpF4fYWWWOcYPRv5cPkwUnUXq4OHOoUr9DDew
	+2t+N4b5CygHJGykYE2xh/tqHLUcKXT4viR1uSgOmZc4I44S+gHMugHMrDRi5Mk9/7eTuc24EF2
	4oO3mRxfTxw28iFVCzAjmBOtoEbtk=
X-Google-Smtp-Source: AGHT+IFL+db8xrLuL7QGFf6oOiM4PGKjgJRPl7rpZxY6Gpc3+rpth3N0E++6rvqNnt7UZ+YGTI57Qg==
X-Received: by 2002:a17:906:7307:b0:b73:5146:8b7b with SMTP id a640c23a62f3a-b73678e9981mr238611666b.36.1763127504345;
        Fri, 14 Nov 2025 05:38:24 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fedb2cfsm385330666b.71.2025.11.14.05.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 05:38:24 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v5 3/6] reset: imx8mp-audiomix: Switch to using regmap API
Date: Fri, 14 Nov 2025 05:37:35 -0800
Message-ID: <20251114133738.1762-4-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
References: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Switch to using the regmap API to allow performing register operations
under the same lock. This is needed for cases such as i.MX8ULP's SIM LPAV
where clock gating, reset control and MUX-ing is performed via the same
register (i.e. SYSCTRL0) and different subsystem APIs.

Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 drivers/reset/reset-imx8mp-audiomix.c | 92 +++++++++++++++++----------
 1 file changed, 57 insertions(+), 35 deletions(-)

diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
index d993c294c548..35df9bd5f71a 100644
--- a/drivers/reset/reset-imx8mp-audiomix.c
+++ b/drivers/reset/reset-imx8mp-audiomix.c
@@ -12,6 +12,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
+#include <linux/regmap.h>
 #include <linux/reset-controller.h>
 
 #define IMX8MP_AUDIOMIX_EARC_RESET_OFFSET	0x200
@@ -43,8 +44,7 @@ static const struct imx8mp_reset_map reset_map[] = {
 
 struct imx8mp_audiomix_reset {
 	struct reset_controller_dev rcdev;
-	spinlock_t lock; /* protect register read-modify-write cycle */
-	void __iomem *base;
+	struct regmap *regmap;
 };
 
 static struct imx8mp_audiomix_reset *to_imx8mp_audiomix_reset(struct reset_controller_dev *rcdev)
@@ -56,26 +56,14 @@ static int imx8mp_audiomix_update(struct reset_controller_dev *rcdev,
 				  unsigned long id, bool assert)
 {
 	struct imx8mp_audiomix_reset *priv = to_imx8mp_audiomix_reset(rcdev);
-	void __iomem *reg_addr = priv->base;
-	unsigned int mask, offset, active_low;
-	unsigned long reg, flags;
+	unsigned int mask, offset, active_low, val;
 
 	mask = BIT(reset_map[id].bit);
 	offset = reset_map[id].offset;
 	active_low = reset_map[id].active_low;
+	val = (active_low ^ assert) << reset_map[id].bit;
 
-	spin_lock_irqsave(&priv->lock, flags);
-
-	reg = readl(reg_addr + offset);
-	if (active_low ^ assert)
-		reg |= mask;
-	else
-		reg &= ~mask;
-	writel(reg, reg_addr + offset);
-
-	spin_unlock_irqrestore(&priv->lock, flags);
-
-	return 0;
+	return regmap_update_bits(priv->regmap, offset, mask, val);
 }
 
 static int imx8mp_audiomix_reset_assert(struct reset_controller_dev *rcdev,
@@ -95,6 +83,52 @@ static const struct reset_control_ops imx8mp_audiomix_reset_ops = {
 	.deassert = imx8mp_audiomix_reset_deassert,
 };
 
+static const struct regmap_config regmap_config = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+};
+
+/* assumption: registered only if not using parent regmap */
+static void imx8mp_audiomix_reset_iounmap(void *data)
+{
+	void __iomem *base = (void __iomem *)data;
+
+	iounmap(base);
+}
+
+static int imx8mp_audiomix_reset_get_regmap(struct imx8mp_audiomix_reset *priv)
+{
+	void __iomem *base;
+	struct device *dev;
+	int ret;
+
+	dev = priv->rcdev.dev;
+
+	/* try to use the parent's regmap */
+	priv->regmap = dev_get_regmap(dev->parent, NULL);
+	if (priv->regmap)
+		return 0;
+
+	/* ... if that's not possible then initialize the regmap right now */
+	base = of_iomap(dev->parent->of_node, 0);
+	if (!base)
+		return dev_err_probe(dev, -ENOMEM, "failed to iomap address space\n");
+
+	ret = devm_add_action_or_reset(dev,
+				       imx8mp_audiomix_reset_iounmap,
+				       (void __force *)base);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register action\n");
+
+	priv->regmap = devm_regmap_init_mmio(dev, base, &regmap_config);
+	if (IS_ERR(priv->regmap))
+		return dev_err_probe(dev, PTR_ERR(priv->regmap),
+				     "failed to initialize regmap\n");
+
+	return 0;
+}
+
 static int imx8mp_audiomix_reset_probe(struct auxiliary_device *adev,
 				       const struct auxiliary_device_id *id)
 {
@@ -106,36 +140,25 @@ static int imx8mp_audiomix_reset_probe(struct auxiliary_device *adev,
 	if (!priv)
 		return -ENOMEM;
 
-	spin_lock_init(&priv->lock);
-
 	priv->rcdev.owner     = THIS_MODULE;
 	priv->rcdev.nr_resets = ARRAY_SIZE(reset_map);
 	priv->rcdev.ops       = &imx8mp_audiomix_reset_ops;
 	priv->rcdev.of_node   = dev->parent->of_node;
 	priv->rcdev.dev	      = dev;
 	priv->rcdev.of_reset_n_cells = 1;
-	priv->base            = of_iomap(dev->parent->of_node, 0);
-	if (!priv->base)
-		return -ENOMEM;
 
 	dev_set_drvdata(dev, priv);
 
+	ret = imx8mp_audiomix_reset_get_regmap(priv);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to get regmap\n");
+
 	ret = devm_reset_controller_register(dev, &priv->rcdev);
 	if (ret)
-		goto out_unmap;
+		return dev_err_probe(dev, ret,
+				     "failed to register reset controller\n");
 
 	return 0;
-
-out_unmap:
-	iounmap(priv->base);
-	return ret;
-}
-
-static void imx8mp_audiomix_reset_remove(struct auxiliary_device *adev)
-{
-	struct imx8mp_audiomix_reset *priv = dev_get_drvdata(&adev->dev);
-
-	iounmap(priv->base);
 }
 
 static const struct auxiliary_device_id imx8mp_audiomix_reset_ids[] = {
@@ -148,7 +171,6 @@ MODULE_DEVICE_TABLE(auxiliary, imx8mp_audiomix_reset_ids);
 
 static struct auxiliary_driver imx8mp_audiomix_reset_driver = {
 	.probe		= imx8mp_audiomix_reset_probe,
-	.remove		= imx8mp_audiomix_reset_remove,
 	.id_table	= imx8mp_audiomix_reset_ids,
 };
 
-- 
2.43.0


