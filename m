Return-Path: <devicetree+bounces-239824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA2FC69C7A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:01:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 265AC4F2B35
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:58:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88EE2361DB2;
	Tue, 18 Nov 2025 13:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zM6rHLZY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7766A1A4F3C
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763474184; cv=none; b=eigR0jj1YwhRzY2VsIwvpwPvpieGn/MDEOb3WzYgqNIOBNN7uxG7VkTyqHomJp2t9cAvi6OnhJVZy2g4Zt3z/mBL+EW4Qi5SLgy1WMU2VoL6AjaYuGrDUsi047jzuggsscUd/nhPYUUQf3Lk70sxCG89AocIrBjF7UnQcdbDU/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763474184; c=relaxed/simple;
	bh=p4ZObKdORDPs9HTtQcCqfM4Dt9UYXjFKiNvgoGM8eUg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ugtvXIgutF57y8uBkdQSoxaW6DheLYWbHAdk4fJXiIw+0UxPS+a61y+VagK1FWWDnzeHOwigsZRQLdMKbLssngStpQRoN2fDEvJZXAgZ7MXmRe5tko+M1Rejuhv0RYBhoYDmTPfJqdfa8Bx3BRRvle7/exBn3t/AgKDgN/mL2Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zM6rHLZY; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42b427cda88so3953202f8f.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763474180; x=1764078980; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=krmSxhstA40QKaUa91FcpQEPCxCXSSQwFp3fjsLx65I=;
        b=zM6rHLZY42U0K358T59xoH768cxkOmmY1lQbDvVMQvRHehvPlB6fA5c8GfbWFBY3CB
         /tKSnhthWZZm73KV0T5FRzWJPNUkJ1dY7h9vmib+hVvnhc9/o/z6nFFvKYrSTr1Yup8J
         CGStt44AMfl/7p/4WUT/ZL1vc/nAafQEpxz31TLwCUsE2F6EvKMVogQjzoI6/hG4xWx4
         uW2ttszgNNQWJz9Pr4TiqBw89AFkHHnZOKcpUASKlTAi+Tl+cCykVoxVZb4+3C2xQhtT
         zCDkk+eikDAdwrQYCNmB9hTI58lPVO4qcaMuKo1I3bitDKiTfiBG2GXX6WcIgaw6RWz5
         g3pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763474180; x=1764078980;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=krmSxhstA40QKaUa91FcpQEPCxCXSSQwFp3fjsLx65I=;
        b=MIgrkjuToZDgCzYpdKupOt6AJrR6GbEU10LJwg/Nm1eQhY0NpCvO0Vo1sgu65jVCRc
         fPfqJljhWJW2FvxfJgWXO8TZXIoP7/HtqkbF6xy+OFWbr1G5ZLH7ILExKqLN2eIbsCOb
         xM48qYI2GUOmPOZ3pU5Czju2leqJXzPCaAKND7fh8FA7/VsGhWp7cujbAiAC0pEdi1/2
         vdmZSpCOA+NyvvnATaZCwGqWtr05e1w4RJRa83BjDpCZG7pgYu6/QpDe/O6mBiN+JiLL
         oWuaRTfnDG6uViC73TnMY4EEcJVf9tGAHTLIxJCDbNetlo1pXTvJQMYwUrjOxCIhXUsj
         FAnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXx7x766/ZjOOzl1lHU7UdTcyjRffmFXT3jOn4z5u8lJtF4GOizb5jdNfjFDzB+vCKVI5Qw8u2I+2uT@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0qkcCiJFnJygbqjgSKD98fHJ+xa9DJzI6PXar2aNGsN/mQ/Gj
	adj8rYJSq03LZxsWusNFHv5B95Hh8BDJuR0pUiqYVcCjVdnSduKj9D0SeElnVdof5/E=
X-Gm-Gg: ASbGncsnj5JFTfph7mZBCCkRpVyrbIc1lJ6qNUbTUfaFKDqaXsOwrelwH/ammMHOXmU
	r1ejFLy7X1rgv1MfsZ6k5DhuvsazBPUojzNvTcwiG4/kGxzydvXqXg53TVLKVwGyB+X0MUnKkIe
	1ItXRs347VovuO0shApNSWAoSuZe1Ltn6gEvn5nrY3SXAH+3vsKXYNWFVKboW35L0gl/eKDDBFx
	/n5Nu28tUCC7mJ+c6gKFRkAYMq1VAP7XUKjifDitiRjv54B8BrzRhLZ+UGgeKFw7JNMlHUAjMro
	TQDd+/oJ6AfZktflbQk5bskkCRmgv1jdZEDiRp+FxXpQPp5VGCzmDKAeQ7U8EB1cKWBTSU0dOOj
	mG29lUXln3E7RiYcBo1jqBtcrsM00jM4lp+6mpRY7H/Ia+6lCIsduvIutMyumFqrBFfyG1Kq7dw
	GxDFp3OlOau93n3bzMr9g7HkoMCL4RsnHzKT2orQwuXlYW3gjpdmWh07sqOz4p4RzN+wdme6Xpq
	hoaJA==
X-Google-Smtp-Source: AGHT+IFAvpSIo5Boh9uZGNRz1jnPH4zVkRyDa+XU94Z/sZjJKjAL+c0xF0VcYKBmnlzP3uQx4J36ZQ==
X-Received: by 2002:a05:6000:2dc8:b0:429:d40e:fa40 with SMTP id ffacd0b85a97d-42b5937324cmr15236841f8f.45.1763474179646;
        Tue, 18 Nov 2025 05:56:19 -0800 (PST)
Received: from ta2.c.googlers.com (17.83.155.104.bc.googleusercontent.com. [104.155.83.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7ae16sm32728666f8f.3.2025.11.18.05.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 05:56:19 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Tue, 18 Nov 2025 13:56:09 +0000
Subject: [PATCH v2 2/7] soc: samsung: exynos-chipid: add google,gs101-otp
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-gs101-chipid-v2-2-e9f1e7460e35@linaro.org>
References: <20251118-gs101-chipid-v2-0-e9f1e7460e35@linaro.org>
In-Reply-To: <20251118-gs101-chipid-v2-0-e9f1e7460e35@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763474177; l=5916;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=p4ZObKdORDPs9HTtQcCqfM4Dt9UYXjFKiNvgoGM8eUg=;
 b=LgZlOadmjkQB7OdfDpvgPkVbF7pYjTLOuPDsVJbWNZP7uMGPhhsOLuzdntKh28msuquJ/TRVv
 i0HyigF3mGIALH+Q3JnnxQb5bAsptf+gjuhHFJ+IHOd9/Zjx4XEZM4w
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

GS101 is different (but also e850 and autov9 I assume) from the SoCs
that are currently handled by the exynos-chipid driver because the
chip ID info is part of the OTP registers. GS101 OTP has a clock, an
interrupt line, a register space (that contains product and chip ID,
TMU data, ASV, etc) and a 32Kbit memory space that can be
read/program/locked with specific commands. On GS101 the "ChipID block"
is just an abstraction, it's not a physical device. When the power-on
sequence progresses, the OTP chipid values are loaded to the OTP
registers.

Add the GS101 chip ID support. The support is intentionally added in the
exynos-chipid driver, and not in a dedicated Exynos OTP driver, because
we estimate that there will not be any OTP consumers in the kernel other
than the chip ID/SoC interface. The downstream GS101 drivers confirm
this supposition.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/soc/samsung/exynos-chipid.c | 86 ++++++++++++++++++++++++++++++++-----
 1 file changed, 75 insertions(+), 11 deletions(-)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index d3b4b5508e0c808ee9f7b0039073ef57915d60fc..8904ffdaf9a6f6d069cc6af18a24dd00a2780892 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -13,8 +13,11 @@
  */
 
 #include <linux/array_size.h>
+#include <linux/clk.h>
 #include <linux/device.h>
-#include <linux/errno.h>
+#include <linux/device/devres.h>
+#include <linux/err.h>
+#include <linux/ioport.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -27,9 +30,11 @@
 #include "exynos-asv.h"
 
 struct exynos_chipid_variant {
-	unsigned int rev_reg;		/* revision register offset */
+	unsigned int main_rev_reg;	/* main revision register offset */
+	unsigned int sub_rev_reg;	/* sub revision register offset */
 	unsigned int main_rev_shift;	/* main revision offset in rev_reg */
 	unsigned int sub_rev_shift;	/* sub revision offset in rev_reg */
+	bool efuse;
 };
 
 struct exynos_chipid_info {
@@ -68,6 +73,8 @@ static const struct exynos_soc_id {
 	{ "EXYNOS990", 0xE9830000 },
 	{ "EXYNOSAUTOV9", 0xAAA80000 },
 	{ "EXYNOSAUTOV920", 0x0A920000 },
+	/* Compatible with: google,gs101-otp */
+	{ "GS101", 0x9845000 },
 };
 
 static const char *product_id_to_soc_id(unsigned int product_id)
@@ -92,18 +99,52 @@ static int exynos_chipid_get_chipid_info(struct regmap *regmap,
 		return ret;
 	soc_info->product_id = val & EXYNOS_MASK;
 
-	if (data->rev_reg != EXYNOS_CHIPID_REG_PRO_ID) {
-		ret = regmap_read(regmap, data->rev_reg, &val);
+	if (data->sub_rev_reg == EXYNOS_CHIPID_REG_PRO_ID) {
+		/* exynos4210 case */
+		main_rev = (val >> data->main_rev_shift) & EXYNOS_REV_PART_MASK;
+		sub_rev = (val >> data->sub_rev_shift) & EXYNOS_REV_PART_MASK;
+	} else {
+		unsigned int val2;
+
+		ret = regmap_read(regmap, data->sub_rev_reg, &val2);
 		if (ret < 0)
 			return ret;
+
+		if (data->main_rev_reg == EXYNOS_CHIPID_REG_PRO_ID)
+			/* gs101 case */
+			main_rev = (val >> data->main_rev_shift) & EXYNOS_REV_PART_MASK;
+		else
+			/* exynos850 case */
+			main_rev = (val2 >> data->main_rev_shift) & EXYNOS_REV_PART_MASK;
+
+		sub_rev = (val2 >> data->sub_rev_shift) & EXYNOS_REV_PART_MASK;
 	}
-	main_rev = (val >> data->main_rev_shift) & EXYNOS_REV_PART_MASK;
-	sub_rev = (val >> data->sub_rev_shift) & EXYNOS_REV_PART_MASK;
+
 	soc_info->revision = (main_rev << EXYNOS_REV_PART_SHIFT) | sub_rev;
 
 	return 0;
 }
 
+static struct regmap *exynos_chipid_get_efuse_regmap(struct platform_device *pdev)
+{
+	struct resource *res;
+	void __iomem *base;
+
+	base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
+	if (IS_ERR(base))
+		return ERR_CAST(base);
+
+	const struct regmap_config reg_config = {
+		.reg_bits = 32,
+		.reg_stride = 4,
+		.val_bits = 32,
+		.use_relaxed_mmio = true,
+		.max_register = (resource_size(res) - reg_config.reg_stride),
+	};
+
+	return devm_regmap_init_mmio(&pdev->dev, base, &reg_config);
+}
+
 static int exynos_chipid_probe(struct platform_device *pdev)
 {
 	const struct exynos_chipid_variant *drv_data;
@@ -119,9 +160,23 @@ static int exynos_chipid_probe(struct platform_device *pdev)
 	if (!drv_data)
 		return -EINVAL;
 
-	regmap = device_node_to_regmap(dev->of_node);
-	if (IS_ERR(regmap))
-		return PTR_ERR(regmap);
+	if (drv_data->efuse) {
+		struct clk *clk;
+
+		regmap = exynos_chipid_get_efuse_regmap(pdev);
+		if (IS_ERR(regmap))
+			return dev_err_probe(dev, PTR_ERR(regmap),
+					     "failed to get efuse regmap\n");
+
+		clk = devm_clk_get_enabled(dev, NULL);
+		if (IS_ERR(clk))
+			return dev_err_probe(dev, PTR_ERR(clk),
+					     "failed to get clock\n");
+	} else {
+		regmap = device_node_to_regmap(dev->of_node);
+		if (IS_ERR(regmap))
+			return PTR_ERR(regmap);
+	}
 
 	ret = exynos_chipid_get_chipid_info(regmap, drv_data, &soc_info);
 	if (ret < 0)
@@ -177,19 +232,28 @@ static void exynos_chipid_remove(struct platform_device *pdev)
 }
 
 static const struct exynos_chipid_variant exynos4210_chipid_drv_data = {
-	.rev_reg	= 0x0,
 	.main_rev_shift	= 4,
 	.sub_rev_shift	= 0,
 };
 
 static const struct exynos_chipid_variant exynos850_chipid_drv_data = {
-	.rev_reg	= 0x10,
+	.main_rev_reg	= 0x10,
+	.sub_rev_reg	= 0x10,
 	.main_rev_shift	= 20,
 	.sub_rev_shift	= 16,
 };
 
+static const struct exynos_chipid_variant gs101_chipid_drv_data = {
+	.sub_rev_reg	= 0x10,
+	.sub_rev_shift	= 16,
+	.efuse = true,
+};
+
 static const struct of_device_id exynos_chipid_of_device_ids[] = {
 	{
+		.compatible	= "google,gs101-otp",
+		.data		= &gs101_chipid_drv_data,
+	}, {
 		.compatible	= "samsung,exynos4210-chipid",
 		.data		= &exynos4210_chipid_drv_data,
 	}, {

-- 
2.52.0.rc1.455.g30608eb744-goog


