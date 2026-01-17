Return-Path: <devicetree+bounces-256356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DC56DD38C0E
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 05:06:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4A3FB300E619
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 04:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B3A23191CE;
	Sat, 17 Jan 2026 04:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MbdRNql8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5778631280C
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 04:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768622807; cv=none; b=ZXhp0zexeuFeWjdvDPPkzTyNHvOxX7kA3UChrR2cp5kXc/Pf1Qagkh1aonfY1Sl7FrIypbVaEnCqZcTzynFczT7Tj6EBAmoPUFe8R0i/FmnRY0OiIa5czPKY6U4N1KRZU2jd5BlPQsdTBBDkkm4KtXs2SaVwT0XbnLboo4Mvjns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768622807; c=relaxed/simple;
	bh=JOlQ96NJcQ9WqBWC+odzZHxXWUjTEa9IMsvQfvNGCto=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kJWpVk4YoqgDLNshPJFAAyxpYGF8iYy1FJFZOdVTKbobpXI1J33xrZgGUkuotmNnStbXpULG4pZQI5IKb7ogbOdTipu8ELZ8R5Oa7viBFHg3XzWkEP2Q8AwtNLBME906icLSKxGoT5kiNYXpAzakffqcYIbirREWC23oFMbS30U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MbdRNql8; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-8c6a508a595so209101585a.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 20:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768622804; x=1769227604; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tf+jvLCJJOJoojEtmxyeWIw57LiHEmAdAqVecpslvUk=;
        b=MbdRNql8Y2bd26ymNAXN1YLrAzlKk3cYwYTMSSVc0KEYR+6ij59kvHgVBcIUpxz6in
         W7XKs97J9LAfOaEZrlGe2GCrv9zK36I1yrRnyj73sGEzJ+XO+ev1A+Kgrcun5Op6k4sM
         4gl+lclxKbht/3Z3ED07Cb964EN6ZNcHaOXepPE7adULEjLHkDtVgUBz247CG22HLjSM
         1oaDk9ccrmnxXvZKRFtle/OkfFwb6Pxvz/+Tv/qJMKA/YCDzVCRUcZp33T9jXNlPsMtu
         ehd1shzcps2O7lrI7gXusukr1Qnod9zrboqwZgn4XZ150euxpMtueNJYZtgCMxWB2lDx
         aB5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768622804; x=1769227604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Tf+jvLCJJOJoojEtmxyeWIw57LiHEmAdAqVecpslvUk=;
        b=C6CI9GovNEj5QeCse+fhS4KuqzsOE1r/xeIglQcmbaIeozIF3Q2NZ3G9fB8kwjejHl
         J9B3SI4qQZ09jTOaBw9ausFTYH849oZ41/zBp5wkuL5IzrpoNPQcopCl/+yFH6xt+JDo
         dSX2qA4P5UY08anqviSjnIWAQF+jOi3aON2syfXeY0YB/mpGKWbB/A9fFhrI6uUN8VCK
         23I7m9sLhbg+kMQ+70iN2tixt2hqbPMGrnKL3YK2dfqTGkzBrLE6vqXe3S7PIzzF8iRL
         qNP4yreY4K4U7drdPefSILCt0y/vcDMT+KhyvRvoxYrM3dAWvvdPMRMCXY28b/UrF3WQ
         uGuw==
X-Forwarded-Encrypted: i=1; AJvYcCUMOdLsLiYP8PbN/oKpI1LCGER1jaEd4R93c0uTsSAXzhMCEHsnaKoITtmYTDwPEAxQxj1rIS6HeDev@vger.kernel.org
X-Gm-Message-State: AOJu0YyJikyv2jPKNUCXFGuHvhMXa5wb1tdlr4Gbw5JTgfnXJWD7XFWR
	IrR9CAq9HEefl7TaPsM0UJCkek4FpRMJWgfGmS4PK6mwtA92BL4MJPUh
X-Gm-Gg: AY/fxX7qFtlkSkpo2nWDUqX7d9UMrNHUUJcL14YsQT0ZXVG7f/lJJQRjY+T3mkRtbIJ
	/gP5RzzusaSrsR/70ta9YsjdxQgAuUTNqXO0Z85TiXHUaySEKtj893ZxtMc2oHhEBHpVOdvdsU+
	D8bkQlJF4oFxV/jYsCeIG7YxTuI+hitc/VjFEOf1flpnOZHhHjUx9uKOMy1oQzjCipFBJWiId3q
	taDzAVSdeNYnrEzomML3T3PYMHixJesJJeIfDdm65E02N19EyWlc+DLMIhvegKHd/wEAl87mAn+
	y9+FsESLZPGSbyPQWZo8xPkY/Qs3CBi94/CqjDOgIqKFlnYdm3llRcdEJtaQYU2PSb2n2I8u+1n
	EBgFufq4rJjy7TB1f52fPNr0s33ISmrn2utdegH9tzDAMi7944QWPiaAhEwK3FGyiGS62qrXPnr
	s2l2MwlBhOPucuudzg5UJGME3SfoYb/+TXAByDUJpN2Sxnl1D/rlkfmfLyVld8lGAXNjoBS83TC
	VM=
X-Received: by 2002:a05:620a:6cc1:b0:8c5:3202:8bc2 with SMTP id af79cd13be357-8c6a6717fb6mr743115785a.35.1768622804038;
        Fri, 16 Jan 2026 20:06:44 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a71c274csm369814985a.21.2026.01.16.20.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 20:06:43 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v7 2/5] media: i2c: imx355: Support devicetree and power management
Date: Fri, 16 Jan 2026 23:06:54 -0500
Message-ID: <20260117040657.27043-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260117040657.27043-1-mailingradian@gmail.com>
References: <20260117040657.27043-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A device tree compatible makes it possible for this driver to be used on
Open Firmware devices. Initialization of power-managed resources such as
the reset GPIO and voltage regulators can be specified in the device
tree and handled by the driver. Add support for this so the Pixel 3a can
use the driver.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 drivers/media/i2c/imx355.c | 116 ++++++++++++++++++++++++++++++++++---
 1 file changed, 108 insertions(+), 8 deletions(-)

diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
index 776107efe386..5a8da035ba5f 100644
--- a/drivers/media/i2c/imx355.c
+++ b/drivers/media/i2c/imx355.c
@@ -3,9 +3,13 @@
 
 #include <linux/acpi.h>
 #include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
 #include <linux/module.h>
+#include <linux/of.h>
 #include <linux/pm_runtime.h>
+#include <linux/regulator/consumer.h>
 #include <linux/unaligned.h>
 
 #include <media/v4l2-ctrls.h>
@@ -125,6 +129,15 @@ struct imx355 {
 	 * Protect access to sensor v4l2 controls.
 	 */
 	struct mutex mutex;
+
+	struct gpio_desc *reset_gpio;
+	struct regulator_bulk_data *supplies;
+};
+
+static const struct regulator_bulk_data imx355_supplies[] = {
+	{ .supply = "avdd" },
+	{ .supply = "dvdd" },
+	{ .supply = "dovdd" },
 };
 
 static const struct imx355_reg imx355_global_regs[] = {
@@ -1515,6 +1528,55 @@ static const struct v4l2_subdev_internal_ops imx355_internal_ops = {
 	.open = imx355_open,
 };
 
+static int imx355_power_off(struct device *dev)
+{
+	struct i2c_client *client = container_of(dev, struct i2c_client, dev);
+	struct v4l2_subdev *sd = i2c_get_clientdata(client);
+	struct imx355 *imx355 = to_imx355(sd);
+
+	gpiod_set_value_cansleep(imx355->reset_gpio, 1);
+
+	regulator_bulk_disable(ARRAY_SIZE(imx355_supplies), imx355->supplies);
+	clk_disable_unprepare(imx355->clk);
+
+	return 0;
+}
+
+static int imx355_power_on(struct device *dev)
+{
+	struct i2c_client *client = container_of(dev, struct i2c_client, dev);
+	struct v4l2_subdev *sd = i2c_get_clientdata(client);
+	struct imx355 *imx355 = to_imx355(sd);
+	int ret;
+
+	ret = clk_prepare_enable(imx355->clk);
+	if (ret) {
+		dev_err(dev, "failed to enable clocks: %d\n", ret);
+		return ret;
+	}
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(imx355_supplies),
+				    imx355->supplies);
+	if (ret) {
+		dev_err(dev, "failed to enable regulators: %d\n", ret);
+		goto error_disable_clocks;
+	}
+
+	gpiod_set_value_cansleep(imx355->reset_gpio, 1);
+	usleep_range(1000, 2000);
+	gpiod_set_value_cansleep(imx355->reset_gpio, 0);
+	usleep_range(10000, 11000);
+
+	return 0;
+
+error_disable_clocks:
+	clk_disable_unprepare(imx355->clk);
+	return ret;
+}
+
+static DEFINE_RUNTIME_DEV_PM_OPS(imx355_pm_ops, imx355_power_off,
+				 imx355_power_on, NULL);
+
 /* Initialize control handlers */
 static int imx355_init_controls(struct imx355 *imx355)
 {
@@ -1689,16 +1751,26 @@ static int imx355_probe(struct i2c_client *client)
 				     "external clock %lu is not supported\n",
 				     freq);
 
-	/* Initialize subdev */
-	v4l2_i2c_subdev_init(&imx355->sd, client, &imx355_subdev_ops);
-
-	/* Check module identity */
-	ret = imx355_identify_module(imx355);
+	ret = devm_regulator_bulk_get_const(imx355->dev,
+					    ARRAY_SIZE(imx355_supplies),
+					    imx355_supplies,
+					    &imx355->supplies);
 	if (ret) {
-		dev_err(imx355->dev, "failed to find sensor: %d", ret);
+		dev_err_probe(imx355->dev, ret, "could not get regulators");
 		goto error_probe;
 	}
 
+	imx355->reset_gpio = devm_gpiod_get_optional(imx355->dev, "reset",
+						     GPIOD_OUT_HIGH);
+	if (IS_ERR(imx355->reset_gpio)) {
+		ret = dev_err_probe(imx355->dev, PTR_ERR(imx355->reset_gpio),
+				    "failed to get gpios");
+		goto error_probe;
+	}
+
+	/* Initialize subdev */
+	v4l2_i2c_subdev_init(&imx355->sd, client, &imx355_subdev_ops);
+
 	imx355->hwcfg = imx355_get_hwcfg(imx355->dev);
 	if (!imx355->hwcfg) {
 		dev_err(imx355->dev, "failed to get hwcfg");
@@ -1706,13 +1778,26 @@ static int imx355_probe(struct i2c_client *client)
 		goto error_probe;
 	}
 
+	ret = imx355_power_on(imx355->dev);
+	if (ret) {
+		dev_err(imx355->dev, "failed to power on sensor: %d", ret);
+		goto error_probe;
+	}
+
+	/* Check module identity */
+	ret = imx355_identify_module(imx355);
+	if (ret) {
+		dev_err(imx355->dev, "failed to find sensor: %d", ret);
+		goto error_power_off;
+	}
+
 	/* Set default mode to max resolution */
 	imx355->cur_mode = &supported_modes[0];
 
 	ret = imx355_init_controls(imx355);
 	if (ret) {
 		dev_err(imx355->dev, "failed to init controls: %d", ret);
-		goto error_probe;
+		goto error_power_off;
 	}
 
 	/* Initialize subdev */
@@ -1752,6 +1837,9 @@ static int imx355_probe(struct i2c_client *client)
 error_handler_free:
 	v4l2_ctrl_handler_free(imx355->sd.ctrl_handler);
 
+error_power_off:
+	imx355_power_off(imx355->dev);
+
 error_probe:
 	mutex_destroy(&imx355->mutex);
 
@@ -1768,7 +1856,11 @@ static void imx355_remove(struct i2c_client *client)
 	v4l2_ctrl_handler_free(sd->ctrl_handler);
 
 	pm_runtime_disable(imx355->dev);
-	pm_runtime_set_suspended(imx355->dev);
+
+	if (!pm_runtime_status_suspended(imx355->dev)) {
+		imx355_power_off(imx355->dev);
+		pm_runtime_set_suspended(imx355->dev);
+	}
 
 	mutex_destroy(&imx355->mutex);
 }
@@ -1779,10 +1871,18 @@ static const struct acpi_device_id imx355_acpi_ids[] __maybe_unused = {
 };
 MODULE_DEVICE_TABLE(acpi, imx355_acpi_ids);
 
+static const struct of_device_id imx355_match_table[] = {
+	{ .compatible = "sony,imx355", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, imx355_match_table);
+
 static struct i2c_driver imx355_i2c_driver = {
 	.driver = {
 		.name = "imx355",
 		.acpi_match_table = ACPI_PTR(imx355_acpi_ids),
+		.of_match_table = imx355_match_table,
+		.pm = &imx355_pm_ops,
 	},
 	.probe = imx355_probe,
 	.remove = imx355_remove,
-- 
2.52.0


