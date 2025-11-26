Return-Path: <devicetree+bounces-242388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 43386C89D0F
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 13:43:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 475CB4E47F0
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3C79328B77;
	Wed, 26 Nov 2025 12:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X9BhvZTE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E393328B50
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 12:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764160989; cv=none; b=sMMqQvOcUXCUBWELJ3h0tmIu6jnKJUC7fWkOLGpWqaygoduRvRDPYR9z3ZIegoJXGP4IXmuO5jCk6f21avDMy6CPQMIHKWL+zXcP5S+QKeuQObsmOgYVQkXJ9E+j3R9eD0OQDEshKKJYLApQ8dkwI5YBxH5TmbyIw+PmYHKP2sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764160989; c=relaxed/simple;
	bh=yhPuiR6XrfoigONn7YjeXv5GIwSDKgMVMn3NKSqWbcw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BovotoglE0DNPWt13Ku7j/k0pq/1fqbsDF0t4DTon5AOE28KQO2c47/lrcymnzmTcD3yh/xz2MiJxuTWPhou6DPib6eYp1cYb9gcFBGpj8TtD10n0BI92Ax7GpnwXYyomV50hE8Fx4J4paLca9V+IJEU7UW6W7Rw7nIKFemASeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X9BhvZTE; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-64320b9bb4bso1702787a12.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 04:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764160985; x=1764765785; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R/PKuQqJhmcmf0FdDQDCr8/x7Yh0ZaImvK0r2Y0Qm/o=;
        b=X9BhvZTEIGLDZqdiOSObcXENx5IP+UOxdOpXjlRsB3Mm5XM+GESmFrf830xBkS7j9B
         EwXWz0LTQt+k/bAY9D2dsfW62/YOiwtE2LH8yGu+ycdtFvIVc04AzqQzCl/QsW5Gt7k7
         VV8XrEnXYQha/Lgg+9d6cbYHVLTxuhoBUpN3xYqBc5DZDg8xYVWn+rizlVZ37qus50B3
         Wh6cf4wLF1Ib0S1+4832HljjrCMcR/djzDpNU13mTPKZMUJfMUmsiFXuQO0bVBe9O4dO
         dvBsAUF4H0/mKwbais2f3Ce4ao722b2cxJlJySNCqJ9M3PN5lgcXL/Tj8hXRtzA0mIsS
         c3ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764160985; x=1764765785;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=R/PKuQqJhmcmf0FdDQDCr8/x7Yh0ZaImvK0r2Y0Qm/o=;
        b=ckUa+xTl2TQY6e0Fe3ke4uzrThhiNolqaT1QHNUu5JMBlMV3uQnw0ROW4lNeJDKRiB
         N13gZuqn2JVmUNJrqSOldShQP55A7rqCDblC6KOafpLvHn8zPwSDNDEPpFho42yQP2hf
         quSOYozGCaiP2OBmlneKyErykEAvgkV4u/pcHPViZ6zJKE2nZxhCib+LYg86J84G/Rip
         OTb9iyeke57aJadPq6g+WVwo6JkHOoVcbJeu9hc+qOmT7v1HQKOqh5UtVFH8KfssdnRp
         mzCL8xKkkJmYBvbGuvIsDOsQPfIIzzktAU62qB41zq3nwjHLHSa6iSRDBFsalQbQI2q0
         gqpw==
X-Gm-Message-State: AOJu0YznisugJwLF3gKjfZf0iqMwjvGlpH+JBxUDyhkgIH1vixN6Mp7U
	iSSXLebmU0QRX0xfLFZmsRJIsyMGMYUaAfA1/VbfJaJfNQttrE6L4fZM
X-Gm-Gg: ASbGnct35uKg1Wcngi1YWF0JNiFhXZMc5van3eT0BlACoM8BFD6X/GJs47bU6a9yBFI
	ptJqACPGS16EvSdo0mIa6PATGu8fuezm5T9sWOouecG2pFL9iJVHTHw25Bx+Wzhu2cmEoBzQo95
	sZB+aw3zcY9TJEaONhD8eCXulERl9egHsnjuoTnw1/xI7Fl5n+Q9nC/KudJGBnC7UND3xl9El+U
	tFbWeeCpe+JaQTN8FqLC4OpchWU/25bTHEVjDCrLhHgI0a6dqL6JtLvN98B8+vrmFThJr1+DZBv
	aEAhqGaLExDDA5FJ4aY1/2KnwpZYadrhsiw8YpzZqAVFhk89DbkgOh/027GjJgGOz+LGUAnvkyv
	xTTKCplFmcVy8whbtOgYIAeBRZcC3LbObHFsB1U5ui4Dbfz7etZBo/x6otMkLDOxfbOPLlxSUpK
	ar3XwL4D6DEXWYzddTn34dXbBb1MVbGsxAHFG7
X-Google-Smtp-Source: AGHT+IE/BZ0ev8jczVI6ig5ZypcAIr/hIiYi2tdzGsQKsQ4dJMO7/o1MUW3qqxHJXJn1yXPjYPs2Yg==
X-Received: by 2002:a05:6402:4499:b0:643:130b:c615 with SMTP id 4fb4d7f45d1cf-64539639594mr18794499a12.6.1764160984613;
        Wed, 26 Nov 2025 04:43:04 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64536459d92sm17654824a12.31.2025.11.26.04.43.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 04:43:04 -0800 (PST)
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
Subject: [PATCH v6 2/5] reset: imx8mp-audiomix: Switch to using regmap API
Date: Wed, 26 Nov 2025 04:42:15 -0800
Message-ID: <20251126124218.803-3-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251126124218.803-1-laurentiumihalcea111@gmail.com>
References: <20251126124218.803-1-laurentiumihalcea111@gmail.com>
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

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 drivers/reset/reset-imx8mp-audiomix.c | 92 +++++++++++++++++----------
 1 file changed, 57 insertions(+), 35 deletions(-)

diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
index acfa92b15329..f6152c0cc5ff 100644
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
 
 	mask = reset_map[id].mask;
 	offset = reset_map[id].offset;
 	active_low = reset_map[id].active_low;
+	val = (active_low ^ assert) ? mask : ~mask;
 
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


