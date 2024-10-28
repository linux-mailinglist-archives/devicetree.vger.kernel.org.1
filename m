Return-Path: <devicetree+bounces-116589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE099B352F
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 16:43:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A9D1282BB7
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 15:43:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D6861DE4EC;
	Mon, 28 Oct 2024 15:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQYWQSFf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8931DE3CB;
	Mon, 28 Oct 2024 15:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730130221; cv=none; b=t4eF0PKB63oAcA0LdXDwtXlMapTbScff6PO4i2Bd946V1AxvnhrY/pzLpBAG/Ij+caqYnqFNQnmItu3aTzQ/Adhq60m7keKBrpqlNlTE7DHH7TsJsuHgJMZiYI+pODw8RVxOfi/fgy5TOnVT3C2AuIMf+dWvKaQevJE43DdUZMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730130221; c=relaxed/simple;
	bh=7GmOHS1g7XNGzqE3bVs+gDQsCq+bzr/JABcF7A7pvbU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oQHa7ogPxcRTHEqNpGdCSz+rHin88g27uH+AQ2T9lV18T/RcWSEWmGEPothiOpwAMwC/mxZdG6UE3LzKdJgzJDwOTE2/Mn+1sI14flY1ll5s5cu5zUXd3U5Redzu9S0aUMsTs7WamrO7lY5FKtjSnbtD6DEn6bHa4PfPqumgKT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQYWQSFf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C074C4CEE7;
	Mon, 28 Oct 2024 15:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730130221;
	bh=7GmOHS1g7XNGzqE3bVs+gDQsCq+bzr/JABcF7A7pvbU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=VQYWQSFf0V6PTa1ZTRDoyfHQnnSSkiIZKmIqCmkDg80D5TZoJM1vJxv2yaCn21wTe
	 rYsWq0Rf7GMO83QNC8DCDSFCKplpgO4wYivz8W3KrqnfAUz+qrwhB+tRSOBlxx8rjQ
	 eR9hPz6lXWOIehs6JSWOPhEp42itdMcFX47EjlEnxXSi9EgX3BENbgNqVHngKCwE5D
	 R49/hAmdxc8Ie9MTK6WBZzW360P+axk3qhUhuQJiWumX+QQK4zZVSuqG1cVyikkMKG
	 NZ06ri3aL4MIJOyVQX6JCFdv3Ho65M4D2qKhTmukhXE4WWZFs2ODbu0hqqsqu4W3LI
	 vw3eJNQpNqNDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F074FD3399B;
	Mon, 28 Oct 2024 15:43:40 +0000 (UTC)
From: Nuno Sa via B4 Relay <devnull+nuno.sa.analog.com@kernel.org>
Date: Mon, 28 Oct 2024 16:43:40 +0100
Subject: [PATCH v2 3/4] ASoC: codecs: adau1373: drop patform_data
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-adau1373-shutdown-v2-3-647f56bbd182@analog.com>
References: <20241028-adau1373-shutdown-v2-0-647f56bbd182@analog.com>
In-Reply-To: <20241028-adau1373-shutdown-v2-0-647f56bbd182@analog.com>
To: linux-sound@vger.kernel.org, devicetree@vger.kernel.org
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730130219; l=9043;
 i=nuno.sa@analog.com; s=20231116; h=from:subject:message-id;
 bh=dHg5v3Tm4e+iNc4Dk4UiH5t7seHJwVMtM4uWrtlPW8g=;
 b=+rcNMexDJeHG2riLV3QROGaTxmGhy9RN32tw2AJleMm6ccosy44Kg88NgelFYeokWhYwYxJD+
 OCWgvVTGRYHBlGJi4h4/LrtkmQm9lz1LL1Z6Qab38/6ePazgt1L5k1l
X-Developer-Key: i=nuno.sa@analog.com; a=ed25519;
 pk=3NQwYA013OUYZsmDFBf8rmyyr5iQlxV/9H4/Df83o1E=
X-Endpoint-Received: by B4 Relay for nuno.sa@analog.com/20231116 with
 auth_id=100
X-Original-From: Nuno Sa <nuno.sa@analog.com>
Reply-To: nuno.sa@analog.com

From: Nuno Sa <nuno.sa@analog.com>

struct adau1373_platform_data" was not being used by any platform.
Hence, drop it and move to firmware based support. All the
configurations quirks present in the platform_data are now supported as
firmware properties.

Signed-off-by: Nuno Sa <nuno.sa@analog.com>
---
 include/sound/adau1373.h    |  33 --------
 sound/soc/codecs/adau1373.c | 180 ++++++++++++++++++++++++++++++++------------
 2 files changed, 132 insertions(+), 81 deletions(-)

diff --git a/include/sound/adau1373.h b/include/sound/adau1373.h
deleted file mode 100644
index 4c32ba1328eda..0000000000000
--- a/include/sound/adau1373.h
+++ /dev/null
@@ -1,33 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * Analog Devices ADAU1373 Audio Codec drive
- *
- * Copyright 2011 Analog Devices Inc.
- * Author: Lars-Peter Clausen <lars@metafoo.de>
- */
-
-#ifndef __SOUND_ADAU1373_H__
-#define __SOUND_ADAU1373_H__
-
-enum adau1373_micbias_voltage {
-	ADAU1373_MICBIAS_2_9V = 0,
-	ADAU1373_MICBIAS_2_2V = 1,
-	ADAU1373_MICBIAS_2_6V = 2,
-	ADAU1373_MICBIAS_1_8V = 3,
-};
-
-#define ADAU1373_DRC_SIZE 13
-
-struct adau1373_platform_data {
-	bool input_differential[4];
-	bool lineout_differential;
-	bool lineout_ground_sense;
-
-	unsigned int num_drc;
-	uint8_t drc_setting[3][ADAU1373_DRC_SIZE];
-
-	enum adau1373_micbias_voltage micbias1;
-	enum adau1373_micbias_voltage micbias2;
-};
-
-#endif
diff --git a/sound/soc/codecs/adau1373.c b/sound/soc/codecs/adau1373.c
index a910e252aa126..9568ff933e12b 100644
--- a/sound/soc/codecs/adau1373.c
+++ b/sound/soc/codecs/adau1373.c
@@ -10,6 +10,7 @@
 #include <linux/init.h>
 #include <linux/delay.h>
 #include <linux/pm.h>
+#include <linux/property.h>
 #include <linux/i2c.h>
 #include <linux/slab.h>
 
@@ -18,7 +19,6 @@
 #include <sound/pcm_params.h>
 #include <sound/tlv.h>
 #include <sound/soc.h>
-#include <sound/adau1373.h>
 
 #include "adau1373.h"
 #include "adau-utils.h"
@@ -30,9 +30,28 @@ struct adau1373_dai {
 	bool clock_provider;
 };
 
+enum adau1373_micbias_voltage {
+	ADAU1373_MICBIAS_2_9V,
+	ADAU1373_MICBIAS_2_2V,
+	ADAU1373_MICBIAS_2_6V,
+	ADAU1373_MICBIAS_1_8V,
+};
+
+#define ADAU1373_DRC_SIZE 13
+
 struct adau1373 {
 	struct regmap *regmap;
 	struct adau1373_dai dais[3];
+
+	bool input_differential[4];
+	bool lineout_differential;
+	bool lineout_ground_sense;
+
+	unsigned int num_drc;
+	u8 drc_setting[3][ADAU1373_DRC_SIZE];
+
+	enum adau1373_micbias_voltage micbias1;
+	enum adau1373_micbias_voltage micbias2;
 };
 
 #define ADAU1373_INPUT_MODE	0x00
@@ -1332,66 +1351,61 @@ static void adau1373_load_drc_settings(struct adau1373 *adau1373,
 		regmap_write(adau1373->regmap, ADAU1373_DRC(nr) + i, drc[i]);
 }
 
-static bool adau1373_valid_micbias(enum adau1373_micbias_voltage micbias)
+static int adau1373_get_micbias(unsigned int val,
+				enum adau1373_micbias_voltage *micbias)
 {
-	switch (micbias) {
-	case ADAU1373_MICBIAS_2_9V:
-	case ADAU1373_MICBIAS_2_2V:
-	case ADAU1373_MICBIAS_2_6V:
-	case ADAU1373_MICBIAS_1_8V:
-		return true;
+	switch (val) {
+	case 2900000:
+		*micbias = ADAU1373_MICBIAS_2_9V;
+		return 0;
+	case 2200000:
+		*micbias = ADAU1373_MICBIAS_2_2V;
+		return 0;
+	case 2600000:
+		*micbias = ADAU1373_MICBIAS_2_6V;
+		return 0;
+	case 1800000:
+		*micbias = ADAU1373_MICBIAS_1_8V;
+		return 0;
 	default:
-		break;
+		return -EINVAL;
 	}
-	return false;
 }
 
 static int adau1373_probe(struct snd_soc_component *component)
 {
 	struct adau1373 *adau1373 = snd_soc_component_get_drvdata(component);
-	struct adau1373_platform_data *pdata = component->dev->platform_data;
-	bool lineout_differential = false;
 	unsigned int val;
 	int i;
 
-	if (pdata) {
-		if (pdata->num_drc > ARRAY_SIZE(pdata->drc_setting))
-			return -EINVAL;
-
-		if (!adau1373_valid_micbias(pdata->micbias1) ||
-			!adau1373_valid_micbias(pdata->micbias2))
-			return -EINVAL;
-
-		for (i = 0; i < pdata->num_drc; ++i) {
-			adau1373_load_drc_settings(adau1373, i,
-				pdata->drc_setting[i]);
-		}
-
-		snd_soc_add_component_controls(component, adau1373_drc_controls,
-			pdata->num_drc);
-
-		val = 0;
-		for (i = 0; i < 4; ++i) {
-			if (pdata->input_differential[i])
-				val |= BIT(i);
-		}
-		regmap_write(adau1373->regmap, ADAU1373_INPUT_MODE, val);
-
-		val = 0;
-		if (pdata->lineout_differential)
-			val |= ADAU1373_OUTPUT_CTRL_LDIFF;
-		if (pdata->lineout_ground_sense)
-			val |= ADAU1373_OUTPUT_CTRL_LNFBEN;
-		regmap_write(adau1373->regmap, ADAU1373_OUTPUT_CTRL, val);
-
-		lineout_differential = pdata->lineout_differential;
-
-		regmap_write(adau1373->regmap, ADAU1373_EP_CTRL,
-			(pdata->micbias1 << ADAU1373_EP_CTRL_MICBIAS1_OFFSET) |
-			(pdata->micbias2 << ADAU1373_EP_CTRL_MICBIAS2_OFFSET));
+	for (i = 0; i < adau1373->num_drc; ++i) {
+		adau1373_load_drc_settings(adau1373, i,
+					   adau1373->drc_setting[i]);
 	}
 
-	if (!lineout_differential) {
+	snd_soc_add_component_controls(component, adau1373_drc_controls,
+				       adau1373->num_drc);
+
+	val = 0;
+	for (i = 0; i < ARRAY_SIZE(adau1373->input_differential); ++i) {
+		if (adau1373->input_differential[i])
+			val |= BIT(i);
+	}
+	regmap_write(adau1373->regmap, ADAU1373_INPUT_MODE, val);
+
+	val = 0;
+	if (adau1373->lineout_differential)
+		val |= ADAU1373_OUTPUT_CTRL_LDIFF;
+	if (adau1373->lineout_ground_sense)
+		val |= ADAU1373_OUTPUT_CTRL_LNFBEN;
+
+	regmap_write(adau1373->regmap, ADAU1373_OUTPUT_CTRL, val);
+
+	regmap_write(adau1373->regmap, ADAU1373_EP_CTRL,
+		     (adau1373->micbias1 << ADAU1373_EP_CTRL_MICBIAS1_OFFSET) |
+		     (adau1373->micbias2 << ADAU1373_EP_CTRL_MICBIAS2_OFFSET));
+
+	if (!adau1373->lineout_differential) {
 		snd_soc_add_component_controls(component, adau1373_lineout2_controls,
 			ARRAY_SIZE(adau1373_lineout2_controls));
 	}
@@ -1471,6 +1485,65 @@ static const struct snd_soc_component_driver adau1373_component_driver = {
 	.endianness		= 1,
 };
 
+static int adau1373_parse_fw(struct device *dev, struct adau1373 *adau1373)
+{
+	int ret, drc_count;
+	unsigned int val;
+
+	if (device_property_present(dev, "adi,input1-differential"))
+		adau1373->input_differential[0] = true;
+	if (device_property_present(dev, "adi,input2-differential"))
+		adau1373->input_differential[1] = true;
+	if (device_property_present(dev, "adi,input3-differential"))
+		adau1373->input_differential[2] = true;
+	if (device_property_present(dev, "adi,input4-differential"))
+		adau1373->input_differential[3] = true;
+
+	if (device_property_present(dev, "adi,lineout-differential"))
+		adau1373->lineout_differential = true;
+	if (device_property_present(dev, "adi,lineout-gnd-sense"))
+		adau1373->lineout_ground_sense = true;
+
+	ret = device_property_read_u32(dev, "adi,micbias1-microvolt", &val);
+	if (!ret) {
+		ret = adau1373_get_micbias(val, &adau1373->micbias1);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "Failed to get micbias1(%u)\n", val);
+	}
+
+	ret = device_property_read_u32(dev, "adi,micbias2-microvolt", &val);
+	if (!ret) {
+		ret = adau1373_get_micbias(val, &adau1373->micbias2);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "Failed to get micbias2(%u)\n", val);
+	}
+
+	drc_count = device_property_count_u8(dev, "adi,drc-settings");
+	if (drc_count < 0)
+		return 0;
+	if (drc_count % ADAU1373_DRC_SIZE != 0)
+		return dev_err_probe(dev, -EINVAL,
+				     "DRC count(%u) not multiple of %u\n",
+				     drc_count, ADAU1373_DRC_SIZE);
+
+	adau1373->num_drc = drc_count / ADAU1373_DRC_SIZE;
+	if (adau1373->num_drc > ARRAY_SIZE(adau1373->drc_setting))
+		return dev_err_probe(dev, -EINVAL,
+				     "Too many DRC settings(%u)\n",
+				     adau1373->num_drc);
+
+	ret = device_property_read_u8_array(dev, "adi,drc-settings",
+					    (u8 *)&adau1373->drc_setting[0],
+					    drc_count);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "Failed to read DRC settings\n");
+
+	return 0;
+}
+
 static int adau1373_i2c_probe(struct i2c_client *client)
 {
 	struct adau1373 *adau1373;
@@ -1489,6 +1562,10 @@ static int adau1373_i2c_probe(struct i2c_client *client)
 
 	dev_set_drvdata(&client->dev, adau1373);
 
+	ret = adau1373_parse_fw(&client->dev, adau1373);
+	if (ret)
+		return ret;
+
 	ret = devm_snd_soc_register_component(&client->dev,
 			&adau1373_component_driver,
 			adau1373_dai_driver, ARRAY_SIZE(adau1373_dai_driver));
@@ -1501,9 +1578,16 @@ static const struct i2c_device_id adau1373_i2c_id[] = {
 };
 MODULE_DEVICE_TABLE(i2c, adau1373_i2c_id);
 
+static const struct of_device_id adau1373_of_match[] = {
+	{ .compatible = "adi,adau1373", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, adau1373_of_match);
+
 static struct i2c_driver adau1373_i2c_driver = {
 	.driver = {
 		.name = "adau1373",
+		.of_match_table = adau1373_of_match,
 	},
 	.probe = adau1373_i2c_probe,
 	.id_table = adau1373_i2c_id,

-- 
2.47.0



