Return-Path: <devicetree+bounces-71657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C0F8D77E3
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 22:20:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A3891F22019
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 20:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 369E88172E;
	Sun,  2 Jun 2024 20:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="gRvUs8l0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta205.mxroute.com (mail-108-mta205.mxroute.com [136.175.108.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1ED78269
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 20:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717359577; cv=none; b=fzf/qBHKlLbskR9ruf3OgKWSNRzegLv0UEX+uZPI6lB7PUXvePmwRwPvIwIdlWoEDekMl3v8SpQrvnZHuBHoYmaazmm7PEKK8VGCwepBnYIKfZ62HVcukAo3mCCgsk/6VrWdFua9674X5gstUWb80KmWinM+JPjC8yLpDBZ15gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717359577; c=relaxed/simple;
	bh=jrpDrwXWTfqruvVHzDUB/w0E8OgbIFxAqsRUJkK/6Tk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K2e2dpm8oc2jya9wPuUHq2HyKU1O1DloeHNNde+GbRl0W0om6q7oqf71VFJAEnVh1znUbP1qeahqwomN4v9w9NLYgFFJ2N5StaiyYX5iZe+T8oRo7cT/rBn1q5rsjXZ7WykLDHjVfQtrnrVzepVqqZgOZHng23XqwvCFMtGR8gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=gRvUs8l0; arc=none smtp.client-ip=136.175.108.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta205.mxroute.com (ZoneMTA) with ESMTPSA id 18fda966f5f000e2b6.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Sun, 02 Jun 2024 20:14:03 +0000
X-Zone-Loop: 47896657347e58016a27a4a2a033d7af6c0ccb084287
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Rfud00GhiUoBsKNNr1PLv8b+cenFrKxczN1IEfbbCGA=; b=gRvUs8l0wLPyImdmv2LlcMVDTm
	Qrx1AxtAy1W/WrYtNCQ8QQarUXRwOkLw1pJapMEwgvBxNgWEkaew1gRzggntBlP/P7zYH1ARBAG+A
	n8Q0ayuWDyPlxN/FTwMHr6OBqxw25GiRsrL1J5GEIJg0Umb2ZtgM4mqEEFVT3/6cqmTYIKAbll9CH
	antACTtcDo8yOzIp0YIdcZ5xgKKaPm4e77FPkoxw50Qpj3qabN/dlNaK4lciiLZFFjB4r98B/IcVk
	sftPqg3talICmkv/RNM0AOjbE0JsiALnloh4nICYu9cwg0tQ9QkwMDQ9y28aRqiMPKuVIG+ewk05W
	vRvOAT1g==;
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
Subject: [PATCH v6 05/23] media: i2c: imx258: Add regulator control
Date: Sun,  2 Jun 2024 14:13:27 -0600
Message-ID: <20240602201345.328737-6-git@luigi311.com>
In-Reply-To: <20240602201345.328737-1-git@luigi311.com>
References: <20240602201345.328737-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: personal@luigi311.com

From: Dave Stevenson <dave.stevenson@raspberrypi.com>

The device tree bindings define the relevant regulators for the
sensor, so update the driver to request the regulators and control
them at the appropriate times.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Luis Garcia <git@luigi311.com>
---
 drivers/media/i2c/imx258.c | 42 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index df7ed4716762..495eaada2945 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -7,6 +7,7 @@
 #include <linux/i2c.h>
 #include <linux/module.h>
 #include <linux/pm_runtime.h>
+#include <linux/regulator/consumer.h>
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-fwnode.h>
@@ -507,6 +508,16 @@ static const char * const imx258_test_pattern_menu[] = {
 	"Pseudorandom Sequence (PN9)",
 };
 
+/* regulator supplies */
+static const char * const imx258_supply_name[] = {
+	/* Supplies can be enabled in any order */
+	"vana",  /* Analog (2.8V) supply */
+	"vdig",  /* Digital Core (1.2V) supply */
+	"vif",  /* IF (1.8V) supply */
+};
+
+#define IMX258_NUM_SUPPLIES ARRAY_SIZE(imx258_supply_name)
+
 /* Configurations for supported link frequencies */
 #define IMX258_LINK_FREQ_634MHZ	633600000ULL
 #define IMX258_LINK_FREQ_320MHZ	320000000ULL
@@ -611,6 +622,7 @@ struct imx258 {
 	struct mutex mutex;
 
 	struct clk *clk;
+	struct regulator_bulk_data supplies[IMX258_NUM_SUPPLIES];
 };
 
 static inline struct imx258 *to_imx258(struct v4l2_subdev *_sd)
@@ -995,9 +1007,19 @@ static int imx258_power_on(struct device *dev)
 	struct imx258 *imx258 = to_imx258(sd);
 	int ret;
 
+	ret = regulator_bulk_enable(IMX258_NUM_SUPPLIES,
+				    imx258->supplies);
+	if (ret) {
+		dev_err(dev, "%s: failed to enable regulators\n",
+			__func__);
+		return ret;
+	}
+
 	ret = clk_prepare_enable(imx258->clk);
-	if (ret)
+	if (ret) {
 		dev_err(dev, "failed to enable clock\n");
+		regulator_bulk_disable(IMX258_NUM_SUPPLIES, imx258->supplies);
+	}
 
 	return ret;
 }
@@ -1008,6 +1030,7 @@ static int imx258_power_off(struct device *dev)
 	struct imx258 *imx258 = to_imx258(sd);
 
 	clk_disable_unprepare(imx258->clk);
+	regulator_bulk_disable(IMX258_NUM_SUPPLIES, imx258->supplies);
 
 	return 0;
 }
@@ -1220,6 +1243,18 @@ static void imx258_free_controls(struct imx258 *imx258)
 	mutex_destroy(&imx258->mutex);
 }
 
+static int imx258_get_regulators(struct imx258 *imx258,
+				 struct i2c_client *client)
+{
+	unsigned int i;
+
+	for (i = 0; i < IMX258_NUM_SUPPLIES; i++)
+		imx258->supplies[i].supply = imx258_supply_name[i];
+
+	return devm_regulator_bulk_get(&client->dev,
+				    IMX258_NUM_SUPPLIES, imx258->supplies);
+}
+
 static int imx258_probe(struct i2c_client *client)
 {
 	struct imx258 *imx258;
@@ -1230,6 +1265,11 @@ static int imx258_probe(struct i2c_client *client)
 	if (!imx258)
 		return -ENOMEM;
 
+	ret = imx258_get_regulators(imx258, client);
+	if (ret)
+		return dev_err_probe(&client->dev, ret,
+				     "failed to get regulators\n");
+
 	imx258->clk = devm_clk_get_optional(&client->dev, NULL);
 	if (IS_ERR(imx258->clk))
 		return dev_err_probe(&client->dev, PTR_ERR(imx258->clk),
-- 
2.44.0


