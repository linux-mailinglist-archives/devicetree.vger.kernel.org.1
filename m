Return-Path: <devicetree+bounces-234798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A70C30E26
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:06:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0C77F4EB6E1
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:05:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC6F82F549B;
	Tue,  4 Nov 2025 12:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fCwhekH0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E392A2F4A0E
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762257850; cv=none; b=jJgY2ZU9dCHm18g03dmrsMy+gWa9XlMOw2AZgKcgY8zA1LXxDAWSeKKG7kBCH4N1tpystSeI2/C/eY8iLAcl0+qxh+Ruljq56i+g4+RkPQj+MzAkbB4bejLjdTVyq+X9eiHdNv84oSDl8pHzJlhLZcUY1ShcSGUU168vcVP/Bh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762257850; c=relaxed/simple;
	bh=d7xwmEi0KnFnU6RGoU18XKBliBKtfnG1R0Qs2x25v9s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oSK83+t1oBW+IAPASfIjpdyLKTrD5ovR0DJizHysdz4iaDXd3/BuPMa8GbgG68ZNYwbNkcad0Zeut5p2wkknM51Z/o4gae6tt9tJSIcU+GOtSqeGen1AloY/zTqqEadU0mQzdcInwmN0tVEvZdkx9AcvWeJPmaBq5AsIBb9sqo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fCwhekH0; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-640c3940649so3179340a12.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:04:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762257846; x=1762862646; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Aafw4HLBs7KDKvmUtk2iQQvLgZcs98N6FosFfKLOmF4=;
        b=fCwhekH0+Ozce8hR6i1AWuRwU0M1XOA8gWvkX2V6sXU8qHU1PacDJEovo+2I9zllcl
         SgcV1I5O8lGj1Ysh4pFCxSFNbSHxzxhqlXQDCr4GL8aFsvuPsBSbyOjX+m7e+ndfmUYL
         ZHtHcOHlN1DxkohPPIh1m39KpfIMgfl0nWxMLVjQBQc+MPhAMZIZJ7hSAumFLyr08zFH
         XUtRoFi9BGFBX8F/x9Ky+BPGEbYWPqbHZEMg/LUnvvSOaz0PxeUr1EGEnJvBMq1pfb9l
         1NESyxMizLQKquNukFhFuH3OCBnIlBNdjFxQwQ53ZZ1pRMNCd0GOeslqT9q2nyajgzUl
         2xXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762257846; x=1762862646;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Aafw4HLBs7KDKvmUtk2iQQvLgZcs98N6FosFfKLOmF4=;
        b=R57D2JdNhSfwJCStFH9/wnmYrHtiEPzwb7jo7blwPLcoUaYi9lC/BSX+Qwfl1KcgJ8
         UuusdNhDZGdKU865CEjxLP1+iNhNDRTzQh1Dp87LRTt8wUY4YzY2e+JERFjoSS/2jNAD
         WnX7V/JDo0/62llSI6wTAJLWT0Hh0Wyw+U7lJqSXJ7im/Wa9+hvrdYOrGFsPx0btB3a6
         oXMfOd0Sn5beGA1RtAp7HGyRbF4sRMC8Lxrib/boq2oym3036Sbsr5szkDcYXPMm7GbG
         Lu7sUeqL9/0+OlmX7v8kr+nlGenB4I/5FtU4B3j18gzqqlG4DxWFCpDBrQYKIOEgscIP
         3whg==
X-Forwarded-Encrypted: i=1; AJvYcCVwJ35W+aZiSK1BHdUJQ+H3j8PHWJBy4gDWf32WK8nucXZAWTMK+yorzLF1X5No6SdftKyERdbPu/NM@vger.kernel.org
X-Gm-Message-State: AOJu0YwAtH5yL5xyx8WCwxF0Zot9SWF160+Urt6Fgnn/tdy4oPWf6OWU
	h3jya3rBd3I7z0o+/3FV7bM5qC3ITOsiq71tzurRaq4m2X8r4vwYkDoL
X-Gm-Gg: ASbGncsJ7g7nqy75db0+x6GI4oU9SVg1b/7JglIEtMV1/fv2gfu6oOxdEhzcxoueZfO
	2gywXrk1fKj1in8IwatttK7d7ugP67wVKmv9Asd2b7XaSb8ccKmJL2329e74tl82tSf7XjxdX1f
	T2lL6r+HQOyYFOqVxBOSrRipIjHwSEhNlmc3Aw+pa/CyVcS7aOgE81kjopdpLbO12f4kOzgBdcb
	chO9GXW3cTvKS2pnflnCHBYT1HFret+WcsLu7ENjqtzcmxFmr6dpdtU70/tsOULhmi1ZQyY3vzi
	6uWvYQOr9co3FmP5ou0654mauCK679M2U9UsyT+NJ10e8vu0cAK4Wvj7rUsIO2H77WNULZIVBa6
	2UcUVM9/djhdq++x8cQQTeHjC7JhLVdLID06Sl3YnQA0Vkej4v5K6TPEl4An2BzNG5XYcYCIOst
	SoTDun4rEqi3rzc8ncCZIPRR58qQ==
X-Google-Smtp-Source: AGHT+IHeD+7pAL1LN+vGwVw7YenhruMsQ1qqYloFn0IzgJZ0tjNxTI+ZA1fCBUoZtXsnijqYIZ4NdA==
X-Received: by 2002:a17:907:da5:b0:b72:51fd:5a5f with SMTP id a640c23a62f3a-b7251fd62a9mr192609166b.1.1762257845988;
        Tue, 04 Nov 2025 04:04:05 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723fa038e0sm200894166b.54.2025.11.04.04.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 04:04:05 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v4 5/8] reset: imx8mp-audiomix: Switch to using regmap API
Date: Tue,  4 Nov 2025 04:02:58 -0800
Message-ID: <20251104120301.913-6-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
References: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
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
 drivers/reset/reset-imx8mp-audiomix.c | 93 +++++++++++++++++----------
 1 file changed, 58 insertions(+), 35 deletions(-)

diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
index e9643365a62c..18a7f68aa59f 100644
--- a/drivers/reset/reset-imx8mp-audiomix.c
+++ b/drivers/reset/reset-imx8mp-audiomix.c
@@ -11,6 +11,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
+#include <linux/regmap.h>
 #include <linux/reset-controller.h>
 
 #define IMX8MP_AUDIOMIX_EARC_RESET_OFFSET	0x200
@@ -42,8 +43,7 @@ static const struct imx8mp_reset_map reset_map[] = {
 
 struct imx8mp_audiomix_reset {
 	struct reset_controller_dev rcdev;
-	spinlock_t lock; /* protect register read-modify-write cycle */
-	void __iomem *base;
+	struct regmap *regmap;
 };
 
 static struct imx8mp_audiomix_reset *to_imx8mp_audiomix_reset(struct reset_controller_dev *rcdev)
@@ -55,26 +55,15 @@ static int imx8mp_audiomix_update(struct reset_controller_dev *rcdev,
 				  unsigned long id, bool assert)
 {
 	struct imx8mp_audiomix_reset *priv = to_imx8mp_audiomix_reset(rcdev);
-	void __iomem *reg_addr = priv->base;
-	unsigned int mask, offset, active_low;
-	unsigned long reg, flags;
+	unsigned int mask, offset, active_low, shift, val;
 
 	mask = reset_map[id].mask;
 	offset = reset_map[id].offset;
 	active_low = reset_map[id].active_low;
+	shift = ffs(mask) - 1;
+	val = (active_low ^ assert) << shift;
 
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
@@ -94,6 +83,52 @@ static const struct reset_control_ops imx8mp_audiomix_reset_ops = {
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
@@ -105,36 +140,25 @@ static int imx8mp_audiomix_reset_probe(struct auxiliary_device *adev,
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
@@ -147,7 +171,6 @@ MODULE_DEVICE_TABLE(auxiliary, imx8mp_audiomix_reset_ids);
 
 static struct auxiliary_driver imx8mp_audiomix_reset_driver = {
 	.probe		= imx8mp_audiomix_reset_probe,
-	.remove		= imx8mp_audiomix_reset_remove,
 	.id_table	= imx8mp_audiomix_reset_ids,
 };
 
-- 
2.43.0


