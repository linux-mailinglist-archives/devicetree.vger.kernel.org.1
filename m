Return-Path: <devicetree+bounces-49533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E399F876D08
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 23:25:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A96F2831BF
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 22:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE03A6026D;
	Fri,  8 Mar 2024 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cirrus.com header.i=@cirrus.com header.b="PCas/H4g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001ae601.pphosted.com (mx0b-001ae601.pphosted.com [67.231.152.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9C460252;
	Fri,  8 Mar 2024 22:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.152.168
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709936693; cv=none; b=PAccDsJOsnE7mHZYgfRe5Vd4ZQcZgC4wJvJjzKEusoR4m4K3/tpbkoXoNvznSPY4imJeJYxop0mhoqRdeBGAyxFHKVLN8yd2PY4v/LLCZFKvLGIT1gpz3Im+Yo5YL5WnAxtoROpeesagSNWSwmXnneF3LI0Cdqgcya/cX4g541k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709936693; c=relaxed/simple;
	bh=sWe1c7tBm8ju5D5suv7rPhtthLUjXGhxr4wy3FGfiHE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=M7NnlRd+A700dU+AlgLQNbQe6XuVF0jLneyoOir+hTdKTJKSC3xl9k9xTTP7dSKrTRN6HKJox9H2Va1IIbUq05fMywHpEy2oayJvypV2YTUIyBq0+Zs9j6o1HO3O6iq4p4FiTMxatPf0nP36NmHNwMdUuNCQLP8lXPeBYgPgIaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=opensource.cirrus.com; spf=pass smtp.mailfrom=opensource.cirrus.com; dkim=pass (2048-bit key) header.d=cirrus.com header.i=@cirrus.com header.b=PCas/H4g; arc=none smtp.client-ip=67.231.152.168
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=opensource.cirrus.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=opensource.cirrus.com
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 428FhYmH011541;
	Fri, 8 Mar 2024 16:24:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	PODMain02222019; bh=s8qec7u9dS1+rfsqtgh6li46IlFDl2iEt5LUZb9kcj4=; b=
	PCas/H4gbORF4HewFGvUV/Acx/zneqXHestorPoqEIE2OEd4qcp+ZlWu93/NyAfM
	Y3pxigfnYliVzeYQrlg1xt2RXvnJ4bWrwHu2IaaV6gWsHNVmNJSw3b8VaHVcQHQO
	6bCpwNkvOXeS1f90fkV2LoN3+vu2OTa1IxLavpt2DH43ndQZCdia5CZv82H9guDN
	1WCRVN7VaiF7ayNyDYhRKpD5x7wpjh6wPye9dAnQ2tcbfIuWPiv18eaFvc+s2tkN
	TF6RJhEbty/KrVcRPPc0FCaqagjxA2oyOZx6QkvpSSJYAyBDznJbIb2FAV7YzP7R
	iqwkHv0MmexgCO7onl6uKw==
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3wpn93413m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 08 Mar 2024 16:24:45 -0600 (CST)
Received: from ediex01.ad.cirrus.com (198.61.84.80) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Fri, 8 Mar 2024
 22:24:43 +0000
Received: from ediswmail9.ad.cirrus.com (198.61.86.93) by
 ediex01.ad.cirrus.com (198.61.84.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4
 via Frontend Transport; Fri, 8 Mar 2024 22:24:43 +0000
Received: from aus-sw-rshr002.ad.cirrus.com (aus-sw-rshr002.ad.cirrus.com [141.131.145.53])
	by ediswmail9.ad.cirrus.com (Postfix) with ESMTP id ACE1082026C;
	Fri,  8 Mar 2024 22:24:41 +0000 (UTC)
From: James Ogletree <jogletre@opensource.cirrus.com>
To: <dmitry.torokhov@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <lee@kernel.org>, <broonie@kernel.org>, <jeff@labundy.com>
CC: <patches@opensource.cirrus.com>, <linux-sound@vger.kernel.org>,
        <linux-input@vger.kernel.org>, <devicetree@vger.kernel.org>,
        James Ogletree
	<jogletre@opensource.cirrus.com>
Subject: [PATCH v9 5/5] ASoC: cs40l50: Support I2S streaming to CS40L50
Date: Fri, 8 Mar 2024 22:24:21 +0000
Message-ID: <20240308222421.188858-6-jogletre@opensource.cirrus.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240308222421.188858-1-jogletre@opensource.cirrus.com>
References: <20240308222421.188858-1-jogletre@opensource.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: y5Sdt-KkCD1sPX0WS5nQjsrsZSvOKN6V
X-Proofpoint-ORIG-GUID: y5Sdt-KkCD1sPX0WS5nQjsrsZSvOKN6V
X-Proofpoint-Spam-Reason: safe

Introduce support for Cirrus Logic Device CS40L50: a
haptic driver with waveform memory, integrated DSP,
and closed-loop algorithms.

The ASoC driver enables I2S streaming to the device.

Signed-off-by: James Ogletree <jogletre@opensource.cirrus.com>
---
 MAINTAINERS                      |   1 +
 sound/soc/codecs/Kconfig         |  11 ++
 sound/soc/codecs/Makefile        |   2 +
 sound/soc/codecs/cs40l50-codec.c | 307 +++++++++++++++++++++++++++++++
 4 files changed, 321 insertions(+)
 create mode 100644 sound/soc/codecs/cs40l50-codec.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 24cfb4f017bb..fca2454a7a38 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4943,6 +4943,7 @@ F:	Documentation/devicetree/bindings/input/cirrus,cs40l50.yaml
 F:	drivers/input/misc/cs40l*
 F:	drivers/mfd/cs40l*
 F:	include/linux/mfd/cs40l*
+F:	sound/soc/codecs/cs40l*
 
 CIRRUS LOGIC DSP FIRMWARE DRIVER
 M:	Simon Trimmer <simont@opensource.cirrus.com>
diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index f1e1dbc509f6..1a81bedfdbe3 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -73,6 +73,7 @@ config SND_SOC_ALL_CODECS
 	imply SND_SOC_CS35L56_I2C
 	imply SND_SOC_CS35L56_SPI
 	imply SND_SOC_CS35L56_SDW
+	imply SND_SOC_CS40L50
 	imply SND_SOC_CS42L42
 	imply SND_SOC_CS42L42_SDW
 	imply SND_SOC_CS42L43
@@ -800,6 +801,16 @@ config SND_SOC_CS35L56_SDW
 	help
 	  Enable support for Cirrus Logic CS35L56 boosted amplifier with SoundWire control
 
+config SND_SOC_CS40L50
+	tristate "Cirrus Logic CS40L50 CODEC"
+	depends on MFD_CS40L50_CORE
+	help
+	  This option enables support for I2S streaming to Cirrus Logic CS40L50.
+
+	  CS40L50 is a haptic driver with waveform memory, an integrated
+	  DSP, and closed-loop algorithms. If built as a module, it will be
+	  called snd-soc-cs40l50.
+
 config SND_SOC_CS42L42_CORE
 	tristate
 
diff --git a/sound/soc/codecs/Makefile b/sound/soc/codecs/Makefile
index a87e56938ce5..7e31f000774a 100644
--- a/sound/soc/codecs/Makefile
+++ b/sound/soc/codecs/Makefile
@@ -74,6 +74,7 @@ snd-soc-cs35l56-shared-objs := cs35l56-shared.o
 snd-soc-cs35l56-i2c-objs := cs35l56-i2c.o
 snd-soc-cs35l56-spi-objs := cs35l56-spi.o
 snd-soc-cs35l56-sdw-objs := cs35l56-sdw.o
+snd-soc-cs40l50-objs := cs40l50-codec.o
 snd-soc-cs42l42-objs := cs42l42.o
 snd-soc-cs42l42-i2c-objs := cs42l42-i2c.o
 snd-soc-cs42l42-sdw-objs := cs42l42-sdw.o
@@ -460,6 +461,7 @@ obj-$(CONFIG_SND_SOC_CS35L56_SHARED)	+= snd-soc-cs35l56-shared.o
 obj-$(CONFIG_SND_SOC_CS35L56_I2C)	+= snd-soc-cs35l56-i2c.o
 obj-$(CONFIG_SND_SOC_CS35L56_SPI)	+= snd-soc-cs35l56-spi.o
 obj-$(CONFIG_SND_SOC_CS35L56_SDW)	+= snd-soc-cs35l56-sdw.o
+obj-$(CONFIG_SND_SOC_CS40L50)		+= snd-soc-cs40l50.o
 obj-$(CONFIG_SND_SOC_CS42L42_CORE)	+= snd-soc-cs42l42.o
 obj-$(CONFIG_SND_SOC_CS42L42)	+= snd-soc-cs42l42-i2c.o
 obj-$(CONFIG_SND_SOC_CS42L42_SDW)	+= snd-soc-cs42l42-sdw.o
diff --git a/sound/soc/codecs/cs40l50-codec.c b/sound/soc/codecs/cs40l50-codec.c
new file mode 100644
index 000000000000..23299b8dacfb
--- /dev/null
+++ b/sound/soc/codecs/cs40l50-codec.c
@@ -0,0 +1,307 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// CS40L50 Advanced Haptic Driver with waveform memory,
+// integrated DSP, and closed-loop algorithms
+//
+// Copyright 2024 Cirrus Logic, Inc.
+//
+// Author: James Ogletree <james.ogletree@cirrus.com>
+
+#include <linux/bitfield.h>
+#include <linux/mfd/cs40l50.h>
+#include <linux/pm_runtime.h>
+#include <sound/pcm_params.h>
+#include <sound/soc.h>
+
+#define CS40L50_REFCLK_INPUT		0x2C04
+#define CS40L50_ASP_CONTROL2		0x4808
+#define CS40L50_ASP_DATA_CONTROL5	0x4840
+
+/* PLL Config */
+#define CS40L50_PLL_REFCLK_BCLK		0x0
+#define CS40L50_PLL_REFCLK_MCLK		0x5
+#define CS40L50_PLL_REFCLK_LOOP_MASK	BIT(11)
+#define CS40L50_PLL_REFCLK_OPEN_LOOP	1
+#define CS40L50_PLL_REFCLK_CLOSED_LOOP	0
+#define CS40L50_PLL_REFCLK_LOOP_SHIFT	11
+#define CS40L50_PLL_REFCLK_FREQ_MASK	GENMASK(10, 5)
+#define CS40L50_PLL_REFCLK_FREQ_SHIFT	5
+#define CS40L50_PLL_REFCLK_SEL_MASK	GENMASK(2, 0)
+#define CS40L50_BCLK_RATIO_DEFAULT	32
+
+/* ASP Config */
+#define CS40L50_ASP_RX_WIDTH_SHIFT	24
+#define CS40L50_ASP_RX_WIDTH_MASK	GENMASK(31, 24)
+#define CS40L50_ASP_RX_WL_MASK		GENMASK(5, 0)
+#define CS40L50_ASP_FSYNC_INV_MASK	BIT(2)
+#define CS40L50_ASP_BCLK_INV_MASK	BIT(6)
+#define CS40L50_ASP_FMT_MASK		GENMASK(10, 8)
+#define CS40L50_ASP_FMT_I2S		0x2
+
+struct cs40l50_pll_config {
+	unsigned int freq;
+	unsigned int cfg;
+};
+
+struct cs40l50_codec {
+	struct device *dev;
+	struct regmap *regmap;
+	unsigned int daifmt;
+	unsigned int bclk_ratio;
+	unsigned int rate;
+};
+
+static const struct cs40l50_pll_config cs40l50_pll_cfg[] = {
+	{32768, 0x00},
+	{1536000, 0x1B},
+	{3072000, 0x21},
+	{6144000, 0x28},
+	{9600000, 0x30},
+	{12288000, 0x33},
+};
+
+static int cs40l50_get_clk_config(unsigned int freq, unsigned int *cfg)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(cs40l50_pll_cfg); i++) {
+		if (cs40l50_pll_cfg[i].freq == freq) {
+			*cfg = cs40l50_pll_cfg[i].cfg;
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
+static int cs40l50_swap_ext_clk(struct cs40l50_codec *codec, unsigned int clk_src)
+{
+	unsigned int cfg;
+	int ret;
+
+	switch (clk_src) {
+	case CS40L50_PLL_REFCLK_BCLK:
+		ret = cs40l50_get_clk_config(codec->bclk_ratio * codec->rate, &cfg);
+		if (ret)
+			return ret;
+		break;
+	case CS40L50_PLL_REFCLK_MCLK:
+		cfg = 0x00;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	ret = regmap_update_bits(codec->regmap, CS40L50_REFCLK_INPUT,
+				 CS40L50_PLL_REFCLK_LOOP_MASK,
+				 CS40L50_PLL_REFCLK_OPEN_LOOP <<
+				 CS40L50_PLL_REFCLK_LOOP_SHIFT);
+	if (ret)
+		return ret;
+
+	ret = regmap_update_bits(codec->regmap, CS40L50_REFCLK_INPUT,
+				 CS40L50_PLL_REFCLK_FREQ_MASK |
+				 CS40L50_PLL_REFCLK_SEL_MASK,
+				 (cfg << CS40L50_PLL_REFCLK_FREQ_SHIFT) | clk_src);
+	if (ret)
+		return ret;
+
+	return regmap_update_bits(codec->regmap, CS40L50_REFCLK_INPUT,
+				  CS40L50_PLL_REFCLK_LOOP_MASK,
+				  CS40L50_PLL_REFCLK_CLOSED_LOOP <<
+				  CS40L50_PLL_REFCLK_LOOP_SHIFT);
+}
+
+static int cs40l50_clk_en(struct snd_soc_dapm_widget *w,
+			  struct snd_kcontrol *kcontrol,
+			  int event)
+{
+	struct snd_soc_component *comp = snd_soc_dapm_to_component(w->dapm);
+	struct cs40l50_codec *codec = snd_soc_component_get_drvdata(comp);
+	int ret;
+
+	switch (event) {
+	case SND_SOC_DAPM_POST_PMU:
+		ret = cs40l50_dsp_write(codec->dev, codec->regmap, CS40L50_STOP_PLAYBACK);
+		if (ret)
+			return ret;
+
+		ret = cs40l50_dsp_write(codec->dev, codec->regmap, CS40L50_START_I2S);
+		if (ret)
+			return ret;
+
+		ret = cs40l50_swap_ext_clk(codec, CS40L50_PLL_REFCLK_BCLK);
+		if (ret)
+			return ret;
+		break;
+	case SND_SOC_DAPM_PRE_PMD:
+		ret = cs40l50_swap_ext_clk(codec, CS40L50_PLL_REFCLK_MCLK);
+		if (ret)
+			return ret;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static const struct snd_soc_dapm_widget cs40l50_dapm_widgets[] = {
+	SND_SOC_DAPM_SUPPLY_S("ASP PLL", 0, SND_SOC_NOPM, 0, 0, cs40l50_clk_en,
+			      SND_SOC_DAPM_POST_PMU | SND_SOC_DAPM_PRE_PMD),
+	SND_SOC_DAPM_AIF_IN("ASPRX1", NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("ASPRX2", NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_OUTPUT("OUT"),
+};
+
+static const struct snd_soc_dapm_route cs40l50_dapm_routes[] = {
+	{ "ASP Playback", NULL, "ASP PLL" },
+	{ "ASPRX1", NULL, "ASP Playback" },
+	{ "ASPRX2", NULL, "ASP Playback" },
+
+	{ "OUT", NULL, "ASPRX1" },
+	{ "OUT", NULL, "ASPRX2" },
+};
+
+static int cs40l50_set_dai_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
+{
+	struct cs40l50_codec *codec = snd_soc_component_get_drvdata(codec_dai->component);
+
+	if ((fmt & SND_SOC_DAIFMT_MASTER_MASK) != SND_SOC_DAIFMT_CBC_CFC)
+		return -EINVAL;
+
+	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
+	case SND_SOC_DAIFMT_NB_NF:
+		codec->daifmt = 0;
+		break;
+	case SND_SOC_DAIFMT_NB_IF:
+		codec->daifmt = CS40L50_ASP_FSYNC_INV_MASK;
+		break;
+	case SND_SOC_DAIFMT_IB_NF:
+		codec->daifmt = CS40L50_ASP_BCLK_INV_MASK;
+		break;
+	case SND_SOC_DAIFMT_IB_IF:
+		codec->daifmt = CS40L50_ASP_FSYNC_INV_MASK | CS40L50_ASP_BCLK_INV_MASK;
+		break;
+	default:
+		dev_err(codec->dev, "Invalid clock invert\n");
+		return -EINVAL;
+	}
+
+	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
+	case SND_SOC_DAIFMT_I2S:
+		codec->daifmt |= FIELD_PREP(CS40L50_ASP_FMT_MASK, CS40L50_ASP_FMT_I2S);
+		break;
+	default:
+		dev_err(codec->dev, "Unsupported DAI format\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int cs40l50_hw_params(struct snd_pcm_substream *substream,
+			     struct snd_pcm_hw_params *params,
+			     struct snd_soc_dai *dai)
+{
+	struct cs40l50_codec *codec = snd_soc_component_get_drvdata(dai->component);
+	unsigned int asp_rx_wl = params_width(params);
+	int ret;
+
+	codec->rate = params_rate(params);
+
+	ret = regmap_update_bits(codec->regmap, CS40L50_ASP_DATA_CONTROL5,
+				 CS40L50_ASP_RX_WL_MASK, asp_rx_wl);
+	if (ret)
+		return ret;
+
+	codec->daifmt |= (asp_rx_wl << CS40L50_ASP_RX_WIDTH_SHIFT);
+
+	return regmap_update_bits(codec->regmap, CS40L50_ASP_CONTROL2,
+				  CS40L50_ASP_FSYNC_INV_MASK |
+				  CS40L50_ASP_BCLK_INV_MASK |
+				  CS40L50_ASP_FMT_MASK |
+				  CS40L50_ASP_RX_WIDTH_MASK, codec->daifmt);
+}
+
+static int cs40l50_set_dai_bclk_ratio(struct snd_soc_dai *dai, unsigned int ratio)
+{
+	struct cs40l50_codec *codec = snd_soc_component_get_drvdata(dai->component);
+
+	codec->bclk_ratio = ratio;
+
+	return 0;
+}
+
+static const struct snd_soc_dai_ops cs40l50_dai_ops = {
+	.set_fmt = cs40l50_set_dai_fmt,
+	.set_bclk_ratio = cs40l50_set_dai_bclk_ratio,
+	.hw_params = cs40l50_hw_params,
+};
+
+static struct snd_soc_dai_driver cs40l50_dai[] = {
+	{
+		.name = "cs40l50-pcm",
+		.id = 0,
+		.playback = {
+			.stream_name = "ASP Playback",
+			.channels_min = 1,
+			.channels_max = 2,
+			.rates = SNDRV_PCM_RATE_48000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S24_LE,
+		},
+		.ops = &cs40l50_dai_ops,
+	},
+};
+
+static int cs40l50_codec_probe(struct snd_soc_component *component)
+{
+	struct cs40l50_codec *codec = snd_soc_component_get_drvdata(component);
+
+	codec->bclk_ratio = CS40L50_BCLK_RATIO_DEFAULT;
+
+	return 0;
+}
+
+static const struct snd_soc_component_driver soc_codec_dev_cs40l50 = {
+	.probe = cs40l50_codec_probe,
+	.dapm_widgets = cs40l50_dapm_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(cs40l50_dapm_widgets),
+	.dapm_routes = cs40l50_dapm_routes,
+	.num_dapm_routes = ARRAY_SIZE(cs40l50_dapm_routes),
+};
+
+static int cs40l50_codec_driver_probe(struct platform_device *pdev)
+{
+	struct cs40l50 *cs40l50 = dev_get_drvdata(pdev->dev.parent);
+	struct cs40l50_codec *codec;
+
+	codec = devm_kzalloc(&pdev->dev, sizeof(*codec), GFP_KERNEL);
+	if (!codec)
+		return -ENOMEM;
+
+	codec->regmap = cs40l50->regmap;
+	codec->dev = &pdev->dev;
+
+	return devm_snd_soc_register_component(&pdev->dev, &soc_codec_dev_cs40l50,
+					       cs40l50_dai, ARRAY_SIZE(cs40l50_dai));
+}
+
+static const struct platform_device_id cs40l50_id[] = {
+	{ "cs40l50-codec", },
+	{}
+};
+MODULE_DEVICE_TABLE(platform, cs40l50_id);
+
+static struct platform_driver cs40l50_codec_driver = {
+	.probe = cs40l50_codec_driver_probe,
+	.id_table = cs40l50_id,
+	.driver = {
+		.name = "cs40l50-codec",
+	},
+};
+module_platform_driver(cs40l50_codec_driver);
+
+MODULE_DESCRIPTION("ASoC CS40L50 driver");
+MODULE_AUTHOR("James Ogletree <james.ogletree@cirrus.com>");
+MODULE_LICENSE("GPL");
-- 
2.25.1


