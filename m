Return-Path: <devicetree+bounces-100265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5732996D001
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 09:03:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DAED01F239ED
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 07:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75E21193088;
	Thu,  5 Sep 2024 07:03:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3311193068;
	Thu,  5 Sep 2024 07:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725519790; cv=none; b=hZ7aHUhupTnTxHvAqALLkX1ae6f5IenvqyCKnaU9Ni+jP8qb1j6qT+mDDYM2jNK36nGVvNMJtJCEF5xn79yVvkWB/AfDT8jKsGxTub7E1ZUaze5uLqcfS4/jtFf87Qb+qQEt2E5Qs+eNWYnFWRiYBxRxR6mQkt63VRWv6HONcOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725519790; c=relaxed/simple;
	bh=dXhA2ziw63DKd2N/UEJBZxw11Xyk26YoJf1e0TflXMY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aEMyhLjc4n2NbSI3ZpBS5ZDw9tHWVEWHAPMCR032F3gR570z+amPZQKw46FB47cGbt85HSrW7XT7/ZH8ke4qGHLKUNOvtvv8krvGzPKX0MKlR8oC1JIXrpfyr+2Xhw+xVqJuja/tMuTA+mLxyYfSITRx7C+0nOQiZZDM10z6tLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.71])
	by gateway (Coremail) with SMTP id _____8DxOJqoV9lm6xkrAA--.45899S3;
	Thu, 05 Sep 2024 15:03:04 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.71])
	by front1 (Coremail) with SMTP id qMiowMBxbNyhV9lmDcMEAA--.21040S2;
	Thu, 05 Sep 2024 15:03:00 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v1 04/10] ASoC: codecs: Add uda1342 codec driver
Date: Thu,  5 Sep 2024 15:02:53 +0800
Message-ID: <3fd0c3a04f5f3bd293168732db457f6854db706e.1725518229.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1725518229.git.zhoubinbin@loongson.cn>
References: <cover.1725518229.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowMBxbNyhV9lmDcMEAA--.21040S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj9fXoWfJFy8KFWfGryfJw1UXF1kWFX_yoW8Wr1xKo
	W3KFnYvr1rXryxZFW5X3WkWFW7ZF15Cay8J3WDZ3ykJ3yrJan8GrWDGr1Uua4aqFsYgFWj
	yFyIy3s3ArW2yr9rl-sFpf9Il3svdjkaLaAFLSUrUUUU0b8apTn2vfkv8UJUUUU8wcxFpf
	9Il3svdxBIdaVrn0xqx4xG64xvF2IEw4CE5I8CrVC2j2Jv73VFW2AGmfu7bjvjm3AaLaJ3
	UjIYCTnIWjp_UUUYu7kC6x804xWl14x267AKxVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI
	8IcIk0rVWrJVCq3wAFIxvE14AKwVWUXVWUAwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xG
	Y2AK021l84ACjcxK6xIIjxv20xvE14v26F1j6w1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14
	v26F4j6r4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E
	14v26r4UJVWxJr1ln4kS14v26r126r1DM2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6x
	kI12xvs2x26I8E6xACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v2
	6rWY6Fy7McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2
	Ij64vIr41lc7CjxVAaw2AFwI0_JF0_Jw1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Y
	z7v_Jr0_Gr1l4IxYO2xFxVAFwI0_JF0_Jw1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x
	8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE
	2Ix0cI8IcVAFwI0_Xr0_Ar1lIxAIcVC0I7IYx2IY6xkF7I0E14v26F4j6r4UJwCI42IY6x
	AIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1lIxAIcVC2z280aVCY
	1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU0_WrPUUUUU==

The UDA1342 is an NXP audio codec, support 2x Stereo audio ADC (4x PGA
mic inputs), stereo audio DAC, with basic audio processing.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 sound/soc/codecs/Kconfig   |   8 +
 sound/soc/codecs/Makefile  |   2 +
 sound/soc/codecs/uda1342.c | 397 +++++++++++++++++++++++++++++++++++++
 sound/soc/codecs/uda1342.h |  77 +++++++
 4 files changed, 484 insertions(+)
 create mode 100644 sound/soc/codecs/uda1342.c
 create mode 100644 sound/soc/codecs/uda1342.h

diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index 85270aa43512..347ac5e8eca7 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -281,6 +281,7 @@ config SND_SOC_ALL_CODECS
 	imply SND_SOC_TWL4030
 	imply SND_SOC_TWL6040
 	imply SND_SOC_UDA1334
+	imply SND_SOC_UDA1342
 	imply SND_SOC_UDA1380
 	imply SND_SOC_WCD9335
 	imply SND_SOC_WCD934X
@@ -2118,6 +2119,13 @@ config SND_SOC_UDA1334
 	  and has basic features such as de-emphasis (at 44.1 kHz sampling
 	  rate) and mute.
 
+config SND_SOC_UDA1342
+	tristate "NXP UDA1342 CODEC"
+	depends on I2C
+	help
+	  The UDA1342 is an NXP audio codec, support 2x Stereo audio ADC (4x PGA mic inputs),
+	  stereo audio DAC, with basic audio processing.
+
 config SND_SOC_UDA1380
 	tristate
 	depends on I2C
diff --git a/sound/soc/codecs/Makefile b/sound/soc/codecs/Makefile
index 00ff3fdf0133..f5b1c8499d6c 100644
--- a/sound/soc/codecs/Makefile
+++ b/sound/soc/codecs/Makefile
@@ -319,6 +319,7 @@ snd-soc-ts3a227e-y := ts3a227e.o
 snd-soc-twl4030-y := twl4030.o
 snd-soc-twl6040-y := twl6040.o
 snd-soc-uda1334-y := uda1334.o
+snd-soc-uda1342-y := uda1342.o
 snd-soc-uda1380-y := uda1380.o
 snd-soc-wcd-classh-y := wcd-clsh-v2.o
 snd-soc-wcd-mbhc-y := wcd-mbhc-v2.o
@@ -723,6 +724,7 @@ obj-$(CONFIG_SND_SOC_TS3A227E)	+= snd-soc-ts3a227e.o
 obj-$(CONFIG_SND_SOC_TWL4030)	+= snd-soc-twl4030.o
 obj-$(CONFIG_SND_SOC_TWL6040)	+= snd-soc-twl6040.o
 obj-$(CONFIG_SND_SOC_UDA1334)	+= snd-soc-uda1334.o
+obj-$(CONFIG_SND_SOC_UDA1342)	+= snd-soc-uda1342.o
 obj-$(CONFIG_SND_SOC_UDA1380)	+= snd-soc-uda1380.o
 obj-$(CONFIG_SND_SOC_WCD_CLASSH)	+= snd-soc-wcd-classh.o
 obj-$(CONFIG_SND_SOC_WCD_MBHC)	+= snd-soc-wcd-mbhc.o
diff --git a/sound/soc/codecs/uda1342.c b/sound/soc/codecs/uda1342.c
new file mode 100644
index 000000000000..e26aa4148434
--- /dev/null
+++ b/sound/soc/codecs/uda1342.c
@@ -0,0 +1,397 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * uda1342.c  --  UDA1342 ALSA SoC Codec driver
+ *
+ * Modifications by Christian Pellegrin <chripell@evolware.org>
+ *
+ * Copyright 2007 Dension Audio Systems Ltd.
+ * Author: Zoltan Devai
+ *
+ * Based on the WM87xx drivers by Liam Girdwood and Richard Purdie
+ */
+
+#include <linux/module.h>
+#include <linux/delay.h>
+#include <linux/i2c.h>
+#include <linux/slab.h>
+#include <sound/core.h>
+#include <sound/pcm.h>
+#include <sound/pcm_params.h>
+#include <sound/soc.h>
+#include <sound/initval.h>
+#include <sound/tlv.h>
+
+#include "uda1342.h"
+
+#define UDA134X_FORMATS	(SNDRV_PCM_FMTBIT_S8 | SNDRV_PCM_FMTBIT_S16_LE | \
+			 SNDRV_PCM_FMTBIT_S18_3LE | SNDRV_PCM_FMTBIT_S20_3LE)
+
+struct uda1342_priv {
+	int sysclk;
+	int dai_fmt;
+
+	struct snd_pcm_substream *master_substream;
+	struct snd_pcm_substream *slave_substream;
+
+	struct regmap *regmap;
+	struct i2c_client *i2c;
+};
+
+static const struct reg_default uda1342_reg_defaults[] = {
+	{ 0x00, 0x1042 },
+	{ 0x01, 0x0000 },
+	{ 0x10, 0x0088 },
+	{ 0x11, 0x0000 },
+	{ 0x12, 0x0000 },
+	{ 0x20, 0x0080 },
+	{ 0x21, 0x0080 },
+};
+
+static inline void uda1342_reset(struct uda1342_priv *uda1342)
+{
+	unsigned int mask = BIT(15);
+
+	regmap_write(uda1342->regmap, 0x00, mask);
+}
+
+static int uda1342_mute(struct snd_soc_dai *dai, int mute, int direction)
+{
+	struct snd_soc_component *component = dai->component;
+	struct uda1342_priv *uda1342 = snd_soc_component_get_drvdata(component);
+	unsigned int mask;
+	unsigned int val = 0;
+
+	dev_info(&uda1342->i2c->dev, "mute: %d\n", mute);
+
+	/* Master mute */
+	mask = BIT(5);
+	val = mute ? mask : 0;
+
+	return regmap_update_bits(uda1342->regmap, 0x10, mask, val);
+}
+
+static int uda1342_startup(struct snd_pcm_substream *substream,
+			   struct snd_soc_dai *dai)
+{
+	struct snd_soc_component *component = dai->component;
+	struct uda1342_priv *uda1342 = snd_soc_component_get_drvdata(component);
+	struct snd_pcm_runtime *master_runtime;
+
+	if (uda1342->master_substream) {
+		master_runtime = uda1342->master_substream->runtime;
+
+		snd_pcm_hw_constraint_single(substream->runtime,
+					     SNDRV_PCM_HW_PARAM_RATE, master_runtime->rate);
+		snd_pcm_hw_constraint_single(substream->runtime,
+					     SNDRV_PCM_HW_PARAM_SAMPLE_BITS,
+					     master_runtime->sample_bits);
+
+		uda1342->slave_substream = substream;
+	} else {
+		uda1342->master_substream = substream;
+	}
+
+	return 0;
+}
+
+static void uda1342_shutdown(struct snd_pcm_substream *substream,
+			     struct snd_soc_dai *dai)
+{
+	struct snd_soc_component *component = dai->component;
+	struct uda1342_priv *uda1342 = snd_soc_component_get_drvdata(component);
+
+	if (uda1342->master_substream == substream)
+		uda1342->master_substream = uda1342->slave_substream;
+
+	uda1342->slave_substream = NULL;
+}
+
+static int uda1342_hw_params(struct snd_pcm_substream *substream,
+			     struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
+{
+	struct snd_soc_component *component = dai->component;
+	struct uda1342_priv *uda1342 = snd_soc_component_get_drvdata(component);
+	struct device *dev = &uda1342->i2c->dev;
+	unsigned int hw_params = 0;
+
+	if (substream == uda1342->slave_substream) {
+		dev_info(dev, "ignoring hw_params for slave substream\n");
+		return 0;
+	}
+
+	/* set SYSCLK / fs ratio */
+	switch (uda1342->sysclk / params_rate(params)) {
+	case 512:
+		break;
+	case 384:
+		hw_params |= BIT(4);
+		break;
+	case 256:
+		hw_params |= BIT(5);
+		break;
+	default:
+		dev_err(dev, "unsupported frequency\n");
+		return -EINVAL;
+	}
+
+	/* set DAI format and word length */
+	switch (uda1342->dai_fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
+	case SND_SOC_DAIFMT_I2S:
+		break;
+	case SND_SOC_DAIFMT_RIGHT_J:
+		switch (params_width(params)) {
+		case 16:
+			hw_params |= BIT(1);
+			break;
+		case 18:
+			hw_params |= BIT(2);
+			break;
+		case 20:
+			hw_params |= BIT(2) | BIT(1);
+			break;
+		default:
+			dev_err(dev, "unsupported format (right)\n");
+			return -EINVAL;
+		}
+		break;
+	case SND_SOC_DAIFMT_LEFT_J:
+		hw_params |= BIT(3);
+		break;
+	default:
+		dev_err(dev, "unsupported format\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int uda1342_set_dai_sysclk(struct snd_soc_dai *codec_dai,
+				  int clk_id, unsigned int freq, int dir)
+{
+	struct snd_soc_component *component = codec_dai->component;
+	struct uda1342_priv *uda1342 = snd_soc_component_get_drvdata(component);
+	struct device *dev = &uda1342->i2c->dev;
+
+	/*
+	 * Anything between 256fs*8Khz and 512fs*48Khz should be acceptable
+	 * because the codec is slave. Of course limitations of the clock
+	 * master (the IIS controller) apply.
+	 * We'll error out on set_hw_params if it's not OK
+	 */
+	if ((freq >= (256 * 8000)) && (freq <= (512 * 48000))) {
+		uda1342->sysclk = freq;
+		return 0;
+	}
+
+	dev_err(dev, "unsupported sysclk\n");
+
+	return -EINVAL;
+}
+
+static int uda1342_set_dai_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
+{
+	struct snd_soc_component *component = codec_dai->component;
+	struct uda1342_priv *uda1342 = snd_soc_component_get_drvdata(component);
+	struct device *dev = &uda1342->i2c->dev;
+
+	/* codec supports only full slave mode */
+	if ((fmt & SND_SOC_DAIFMT_MASTER_MASK) != SND_SOC_DAIFMT_CBS_CFS) {
+		dev_err(dev, "unsupported slave mode.\n");
+		return -EINVAL;
+	}
+
+	/*
+	 * We can't setup DAI format here as it depends on the word bit num,
+	 * so let's just store the value for later
+	 */
+	uda1342->dai_fmt = fmt;
+
+	return 0;
+}
+
+static int uda1342_set_bias_level(struct snd_soc_component *component,
+				  enum snd_soc_bias_level level)
+{
+	switch (level) {
+	case SND_SOC_BIAS_ON:
+		break;
+	case SND_SOC_BIAS_PREPARE:
+		break;
+	case SND_SOC_BIAS_STANDBY:
+		break;
+	case SND_SOC_BIAS_OFF:
+		break;
+	}
+
+	return 0;
+}
+
+static const char *const uda1342_deemph[] = {"None", "32Khz", "44.1Khz", "48Khz"};
+static const char *const uda1342_mixmode[] = {"Differential", "Analog1", "Analog2", "Both"};
+
+static const struct soc_enum uda1342_mixer_enum[] = {
+	SOC_ENUM_SINGLE(0x10, 3, 0x04, uda1342_deemph),
+	SOC_ENUM_SINGLE(0x10, 0, 0x04, uda1342_mixmode),
+};
+
+static const struct snd_kcontrol_new uda1342_snd_controls[] = {
+	SOC_SINGLE("Master Playback Volume", 0x11, 0, 0x3F, 1),
+	SOC_SINGLE("Analog1 Volume", 0x12, 0, 0x1F, 1),
+};
+
+/* Common DAPM widgets */
+static const struct snd_soc_dapm_widget uda1342_dapm_widgets[] = {
+	SND_SOC_DAPM_INPUT("VINL1"),
+	SND_SOC_DAPM_INPUT("VINR1"),
+	SND_SOC_DAPM_INPUT("VINL2"),
+	SND_SOC_DAPM_INPUT("VINR2"),
+
+	SND_SOC_DAPM_DAC("DAC", "Playback", 0, 1, 0),
+	SND_SOC_DAPM_ADC("ADC", "Capture", 0, 9, 0),
+
+	SND_SOC_DAPM_OUTPUT("VOUTL"),
+	SND_SOC_DAPM_OUTPUT("VOUTR"),
+};
+
+static const struct snd_soc_dapm_route uda1342_dapm_routes[] = {
+	{ "ADC", NULL, "VINL1" },
+	{ "ADC", NULL, "VINR1" },
+	{ "ADC", NULL, "VINL2" },
+	{ "ADC", NULL, "VINR2" },
+	{ "VOUTL", NULL, "DAC" },
+	{ "VOUTR", NULL, "DAC" },
+};
+
+static const struct snd_soc_dai_ops uda1342_dai_ops = {
+	.startup	= uda1342_startup,
+	.shutdown	= uda1342_shutdown,
+	.hw_params	= uda1342_hw_params,
+	.mute_stream	= uda1342_mute,
+	.set_sysclk	= uda1342_set_dai_sysclk,
+	.set_fmt	= uda1342_set_dai_fmt,
+};
+
+static struct snd_soc_dai_driver uda1342_dai = {
+	.name = "uda1342-hifi",
+	/* playback capabilities */
+	.playback = {
+		.stream_name = "Playback",
+		.channels_min = 1,
+		.channels_max = 2,
+		.rates = SNDRV_PCM_RATE_8000_48000,
+		.formats = UDA134X_FORMATS,
+	},
+	/* capture capabilities */
+	.capture = {
+		.stream_name = "Capture",
+		.channels_min = 1,
+		.channels_max = 2,
+		.rates = SNDRV_PCM_RATE_8000_48000,
+		.formats = UDA134X_FORMATS,
+	},
+	/* pcm operations */
+	.ops = &uda1342_dai_ops,
+};
+
+static int uda1342_soc_probe(struct snd_soc_component *component)
+{
+	struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
+
+	snd_soc_add_component_controls(component, uda1342_snd_controls,
+				       ARRAY_SIZE(uda1342_snd_controls));
+	snd_soc_dapm_new_controls(dapm, uda1342_dapm_widgets,
+				  ARRAY_SIZE(uda1342_dapm_widgets));
+	snd_soc_dapm_add_routes(dapm, uda1342_dapm_routes,
+				ARRAY_SIZE(uda1342_dapm_routes));
+
+	return 0;
+}
+
+static const struct snd_soc_component_driver soc_component_dev_uda1342 = {
+	.probe			= uda1342_soc_probe,
+	.set_bias_level		= uda1342_set_bias_level,
+	.suspend_bias_off	= 1,
+	.idle_bias_on		= 1,
+	.use_pmdown_time	= 1,
+	.endianness		= 1,
+};
+
+static const struct regmap_config uda1342_regmap = {
+	.reg_bits = 8,
+	.val_bits = 16,
+	.max_register = 0x21,
+	.reg_defaults = uda1342_reg_defaults,
+	.num_reg_defaults = ARRAY_SIZE(uda1342_reg_defaults),
+	.cache_type = REGCACHE_RBTREE,
+};
+
+static int uda1342_i2c_probe(struct i2c_client *i2c)
+{
+	struct uda1342_priv *uda1342;
+	int ret;
+
+	uda1342 = devm_kzalloc(&i2c->dev, sizeof(*uda1342), GFP_KERNEL);
+	if (!uda1342)
+		return -ENOMEM;
+
+	uda1342->regmap = devm_regmap_init_i2c(i2c, &uda1342_regmap);
+	if (IS_ERR(uda1342->regmap))
+		return PTR_ERR(uda1342->regmap);
+
+	i2c_set_clientdata(i2c, uda1342);
+	uda1342->i2c = i2c;
+
+	return devm_snd_soc_register_component(&i2c->dev,
+					       &soc_component_dev_uda1342,
+					       &uda1342_dai, 1);
+}
+
+static int uda1342_suspend(struct device *dev)
+{
+	struct uda1342_priv *uda1342 = dev_get_drvdata(dev);
+
+	regcache_cache_only(uda1342->regmap, true);
+
+	return 0;
+}
+
+static int uda1342_resume(struct device *dev)
+{
+	struct uda1342_priv *uda1342 = dev_get_drvdata(dev);
+
+	regcache_mark_dirty(uda1342->regmap);
+	regcache_sync(uda1342->regmap);
+
+	return 0;
+}
+
+static const struct dev_pm_ops uda1342_pm = {
+	SET_SYSTEM_SLEEP_PM_OPS(uda1342_suspend, uda1342_resume)
+};
+
+static const struct i2c_device_id uda1342_i2c_id[] = {
+	 { "uda1342", 0 },
+	 { }
+};
+MODULE_DEVICE_TABLE(i2c, uda1342_i2c_id);
+
+static const struct of_device_id uda1342_of_match[] = {
+	 { .compatible = "nxp,uda1342" },
+	 { }
+};
+MODULE_DEVICE_TABLE(of, uda1342_of_match);
+
+static struct i2c_driver uda1342_i2c_driver = {
+	.driver = {
+		.name =  "uda1342",
+		.of_match_table = uda1342_of_match,
+		.pm = pm_sleep_ptr(&uda1342_pm),
+	 },
+	.probe = uda1342_i2c_probe,
+	.id_table = uda1342_i2c_id,
+};
+module_i2c_driver(uda1342_i2c_driver);
+
+MODULE_DESCRIPTION("UDA1342 ALSA soc codec driver");
+MODULE_AUTHOR("Zoltan Devai, Christian Pellegrin <chripell@evolware.org>");
+MODULE_LICENSE("GPL");
diff --git a/sound/soc/codecs/uda1342.h b/sound/soc/codecs/uda1342.h
new file mode 100644
index 000000000000..1f4632643ddd
--- /dev/null
+++ b/sound/soc/codecs/uda1342.h
@@ -0,0 +1,77 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Audio support for NXP UDA1342
+ *
+ * Copyright (c) 2005 Giorgio Padrin <giorgio@mandarinlogiq.org>
+ * Copyright (c) 2024 Loongson Technology Corporation Limited.
+ */
+
+#ifndef _UDA1342_H
+#define _UDA1342_H
+
+#define UDA1342_CLK	0x00
+#define UDA1342_IFACE	0x01
+#define UDA1342_PM	0x02
+#define UDA1342_AMIX	0x03
+#define UDA1342_HP	0x04
+#define UDA1342_MVOL	0x11
+#define UDA1342_MIXVOL	0x12
+#define UDA1342_MODE	0x12
+#define UDA1342_DEEMP	0x13
+#define UDA1342_MIXER	0x14
+#define UDA1342_INTSTAT	0x18
+#define UDA1342_DEC	0x20
+#define UDA1342_PGA	0x21
+#define UDA1342_ADC	0x22
+#define UDA1342_AGC	0x23
+#define UDA1342_DECSTAT	0x28
+#define UDA1342_RESET	0x7f
+
+#define UDA1342_CACHEREGNUM 0x24
+
+/* Register flags */
+#define R00_EN_ADC	0x0800
+#define R00_EN_DEC	0x0400
+#define R00_EN_DAC	0x0200
+#define R00_EN_INT	0x0100
+#define R00_DAC_CLK	0x0010
+#define R01_SFORI_I2S   0x0000
+#define R01_SFORI_LSB16 0x0100
+#define R01_SFORI_LSB18 0x0200
+#define R01_SFORI_LSB20 0x0300
+#define R01_SFORI_MSB   0x0500
+#define R01_SFORI_MASK  0x0700
+#define R01_SFORO_I2S   0x0000
+#define R01_SFORO_LSB16 0x0001
+#define R01_SFORO_LSB18 0x0002
+#define R01_SFORO_LSB20 0x0003
+#define R01_SFORO_LSB24 0x0004
+#define R01_SFORO_MSB   0x0005
+#define R01_SFORO_MASK  0x0007
+#define R01_SEL_SOURCE  0x0040
+#define R01_SIM		0x0010
+#define R02_PON_PLL	0x8000
+#define R02_PON_HP	0x2000
+#define R02_PON_DAC	0x0400
+#define R02_PON_BIAS	0x0100
+#define R02_EN_AVC	0x0080
+#define R02_PON_AVC	0x0040
+#define R02_PON_LNA	0x0010
+#define R02_PON_PGAL	0x0008
+#define R02_PON_ADCL	0x0004
+#define R02_PON_PGAR	0x0002
+#define R02_PON_ADCR	0x0001
+#define R13_MTM		0x4000
+#define R14_SILENCE	0x0080
+#define R14_SDET_ON	0x0040
+#define R21_MT_ADC	0x8000
+#define R22_SEL_LNA	0x0008
+#define R22_SEL_MIC	0x0004
+#define R22_SKIP_DCFIL	0x0002
+#define R23_AGC_EN	0x0001
+
+#define UDA1342_DAI_DUPLEX	0 /* playback and capture on single DAI */
+#define UDA1342_DAI_PLAYBACK	1 /* playback DAI */
+#define UDA1342_DAI_CAPTURE	2 /* capture DAI */
+
+#endif /* _UDA1342_H */
-- 
2.43.5


