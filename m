Return-Path: <devicetree+bounces-64290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B598B8CEC
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 17:26:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7126E2885D8
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 15:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7232912F5BC;
	Wed,  1 May 2024 15:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="mPgmfYbr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta141.mxroute.com (mail-108-mta141.mxroute.com [136.175.108.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71E412F5BE
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 15:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714577201; cv=none; b=GDI3STheZr6DRC87+p5D3OpYoLUWQo2Nc4weKpavi7YLPwS6kWL/9gZ6S7GfgHY2kefcF1fg/j3QovtX7Pff4THZv3bGc/vv5AZ6CmSu+Fc2niagMNcg/rL3fGuH8vf2cGIMvrcNFl9Xa+kN4J+gUKI8OSMywogk134GnIH6ct8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714577201; c=relaxed/simple;
	bh=/appuRh7QR4oppenmbepS6ozjwx24OFaCqI22tl7X/A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jF+Lk+Zl7kwHnXnw/BxaqqjDxVah8O++T8gzaPRY2dXtpUSXJXwHOZd2O5Y6billMKlCnFEJmnDK+jlLoxNGpBNPP4hZGzzLcwSLdgfTv+06ntyzSlcwojY5DgCMWaM5Z9uR0YcydXPimJy+9/RO+UlmJ4VenYDFvatjsF4MjtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=mPgmfYbr; arc=none smtp.client-ip=136.175.108.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta141.mxroute.com (ZoneMTA) with ESMTPSA id 18f34c2cc940008ca2.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Wed, 01 May 2024 15:25:32 +0000
X-Zone-Loop: a0dfc931af9f7579d3c5918adb8c0c0909c30dd3d6ba
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=8JaICCDIbxfFQFB9p4l2NBR215uf+cJpoqKWqbp9IrI=; b=mPgmfYbrp87Alr0zNPW0cJ+0iP
	pSVIFnqY0zdvvjTEa/BiTzSO/Txn4UNn7NtGcOQcv3Iu3dTWlF7vSe7MDj23Bv9XgFxe/ukrJUTix
	KVYfR0tGkl5yFPFQ7OnCwir+OxTOtW+kFYsOP2jj9e+RpiGBMCpktvWa7KxH10E+xxlgIEytqgf0Y
	6xizThomabA7D5b1e1hkeVUnMoCk1YPeXHjIAhndiAvEqz6p/VfxT4gHoH1D4Q6SIUmgP/1mYs4jF
	asnepgegl2bZppJfhwaBSAvDtrjRpej9SGkWy/nShsBV3iJrwnXDDylCvO7BJvu0hRALHxp3jmyHh
	BKcan2vA==;
From: git@luigi311.com
To: linux-media@vger.kernel.org
Cc: dave.stevenson@raspberrypi.com,
	jacopo.mondi@ideasonboard.com,
	mchehab@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	sakari.ailus@linux.intel.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	pavel@ucw.cz,
	phone-devel@vger.kernel.org,
	Luis Garcia <git@luigi311.com>
Subject: [PATCH v5 19/25] media: i2c: imx258: Change register settings for variants of the sensor
Date: Wed,  1 May 2024 09:24:36 -0600
Message-ID: <20240501152442.1072627-20-git@luigi311.com>
In-Reply-To: <20240501152442.1072627-1-git@luigi311.com>
References: <20240501152442.1072627-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: personal@luigi311.com

From: Dave Stevenson <dave.stevenson@raspberrypi.com>

Sony have advised that there are variants of the IMX258 sensor which
require slightly different register configuration to the mainline
imx258 driver defaults.

There is no available run-time detection for the variant, so add
configuration via the DT compatible string.

The Vision Components imx258 module supports PDAF, so add the
register differences for that variant

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Luis Garcia <git@luigi311.com>
Reviewed-by: Pavel Machek <pavel@ucw.cz>
---
 drivers/media/i2c/imx258.c | 47 ++++++++++++++++++++++++++++++++++----
 1 file changed, 43 insertions(+), 4 deletions(-)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index 32267d36b8f3..54f7625e60a3 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -321,8 +321,6 @@ static const struct imx258_reg mipi_642mbps_24mhz_4l[] = {
 
 static const struct imx258_reg mode_common_regs[] = {
 	{ 0x3051, 0x00 },
-	{ 0x3052, 0x00 },
-	{ 0x4E21, 0x14 },
 	{ 0x6B11, 0xCF },
 	{ 0x7FF0, 0x08 },
 	{ 0x7FF1, 0x0F },
@@ -345,7 +343,6 @@ static const struct imx258_reg mode_common_regs[] = {
 	{ 0x7FA8, 0x03 },
 	{ 0x7FA9, 0xFE },
 	{ 0x7B24, 0x81 },
-	{ 0x7B25, 0x00 },
 	{ 0x6564, 0x07 },
 	{ 0x6B0D, 0x41 },
 	{ 0x653D, 0x04 },
@@ -460,6 +457,33 @@ static const struct imx258_reg mode_1048_780_regs[] = {
 	{ 0x034F, 0x0C },
 };
 
+struct imx258_variant_cfg {
+	const struct imx258_reg *regs;
+	unsigned int num_regs;
+};
+
+static const struct imx258_reg imx258_cfg_regs[] = {
+	{ 0x3052, 0x00 },
+	{ 0x4E21, 0x14 },
+	{ 0x7B25, 0x00 },
+};
+
+static const struct imx258_variant_cfg imx258_cfg = {
+	.regs = imx258_cfg_regs,
+	.num_regs = ARRAY_SIZE(imx258_cfg_regs),
+};
+
+static const struct imx258_reg imx258_pdaf_cfg_regs[] = {
+	{ 0x3052, 0x01 },
+	{ 0x4E21, 0x10 },
+	{ 0x7B25, 0x01 },
+};
+
+static const struct imx258_variant_cfg imx258_pdaf_cfg = {
+	.regs = imx258_pdaf_cfg_regs,
+	.num_regs = ARRAY_SIZE(imx258_pdaf_cfg_regs),
+};
+
 static const char * const imx258_test_pattern_menu[] = {
 	"Disabled",
 	"Solid Colour",
@@ -637,6 +661,8 @@ struct imx258 {
 	struct v4l2_subdev sd;
 	struct media_pad pad;
 
+	const struct imx258_variant_cfg *variant_cfg;
+
 	struct v4l2_ctrl_handler ctrl_handler;
 	/* V4L2 Controls */
 	struct v4l2_ctrl *link_freq;
@@ -1104,6 +1130,14 @@ static int imx258_start_streaming(struct imx258 *imx258)
 		return ret;
 	}
 
+	ret = imx258_write_regs(imx258, imx258->variant_cfg->regs,
+				imx258->variant_cfg->num_regs);
+	if (ret) {
+		dev_err(&client->dev, "%s failed to set variant config\n",
+			__func__);
+		return ret;
+	}
+
 	ret = imx258_write_reg(imx258, IMX258_CLK_BLANK_STOP,
 			       IMX258_REG_VALUE_08BIT,
 			       !!(imx258->csi2_flags & V4L2_MBUS_CSI2_NONCONTINUOUS_CLOCK));
@@ -1491,6 +1525,10 @@ static int imx258_probe(struct i2c_client *client)
 
 	imx258->csi2_flags = ep.bus.mipi_csi2.flags;
 
+	imx258->variant_cfg = device_get_match_data(&client->dev);
+	if (!imx258->variant_cfg)
+		imx258->variant_cfg = &imx258_cfg;
+
 	/* Initialize subdev */
 	v4l2_i2c_subdev_init(&imx258->sd, client, &imx258_subdev_ops);
 
@@ -1578,7 +1616,8 @@ MODULE_DEVICE_TABLE(acpi, imx258_acpi_ids);
 #endif
 
 static const struct of_device_id imx258_dt_ids[] = {
-	{ .compatible = "sony,imx258" },
+	{ .compatible = "sony,imx258", .data = &imx258_cfg },
+	{ .compatible = "sony,imx258-pdaf", .data = &imx258_pdaf_cfg },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, imx258_dt_ids);
-- 
2.44.0


