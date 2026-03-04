Return-Path: <devicetree+bounces-271252-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGydODaPqGmzvgAAu9opvQ
	(envelope-from <devicetree+bounces-271252-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:59:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE3B207581
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:59:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C16A3014410
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD1AD3DFC87;
	Wed,  4 Mar 2026 19:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jOLj+BQf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E0C3DFC9C
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772654388; cv=none; b=Jc8ui2FJ0WUvSPkq1zIueTno4gH/uQhOXOqNVJHCWvPstfoVxyUHXofEc1wCRPnv4315BXIPjwT3C3QT8boj69u/B1+1H3RDT2Rs/ts6RoBZK5cajEVs2MfC3z+2HNsmkPwRzzNwGTWVL/OOB/3nD7hhxm7cXaqIV/S1zFAjjXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772654388; c=relaxed/simple;
	bh=Tyv14tXiQQ3Dg+Zb3/s/SgQELz+RF1nXa/tzRxNgEm4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rHAVaHa8aQyKnBnLwGzI7kNvZjUvXoulmze7ONPy2Q+cTHBtM3azwTUPQzV7TW6B7bLufmtO6IwTC3QaWL6PPkXRn+ghy40ROFrLw3jZlEYhU2chXnTAdezwDZaVDzqR3LFza0YQjuAUjYn3YfTd3kvhaKhCtBQeIRUrFife1w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jOLj+BQf; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-506a67282a0so69679561cf.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:59:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772654385; x=1773259185; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gsFOYU+WlfKYO7leyIpUkZYt92HUjRGNDo36iVKhtVI=;
        b=jOLj+BQfv0GAQ82Q0j2cUqN54iCdR7lwn5+zZV/2gn88JKEpydVfjgJs97GweQSCIM
         5kxywRWOcB6EFlsRKNNnEZzb/SGIUiQPnYA888cco7eObQKK1s4M1mw2k7UKeIaOxmWu
         pN9v6bvmFV1uS6q4eXsotffiXj97L/5Px4z6Is/Q/shyOhDRycGuVMFv/Cc7GLam0aIt
         tp1k4kegEslLHcZceeBbvWd4h53zCKAtG/E6ZzJZw9F17tMEGS4admtBQHhHsHbZsJtV
         fIvil7zWJdJauBRWxPlr5OopniMOAgXaSypaUchb0Mj+bG2pe2q4NoB0PM/MUc2YfIAu
         Od2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772654385; x=1773259185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gsFOYU+WlfKYO7leyIpUkZYt92HUjRGNDo36iVKhtVI=;
        b=SJCp3VkU0+U7ggGoy8QtddVu/J8xF8uMH4jinQGg7P5s0ntzdtoA+SFntSUCPm17IT
         BZtZw+kvGBiLRGFNDR7hJZYxMXAa71NhprSqY2tSeFPCh53jVb1up+fGo8X+NuNTesLz
         q61DUj+1pEfnvY3nAGAJ08VRA6vgTPLIInjs6aqWWd+AA7BdfNYKHI5M5+/rtpJ5RJ5+
         dt23KSH7F2Tx997jE4foYZjC+M3HjhrCPYzxkDdWVvG2R563oEHjm6BU45oIebtU1xZi
         1Kn6CjmcFqXs6L2Qv1xkInxyAXabzGr+dynsJBMwgfol3DUwf/xWfPnfkWDz2GM7brtx
         y+Ng==
X-Forwarded-Encrypted: i=1; AJvYcCW4prOCMgm2SkCaJPIjj06/+8vxOqw5u56kpfbdjwLPpNRhyTq5fA7Sgj/nr8XvBC5YrjpFT/PpCwy7@vger.kernel.org
X-Gm-Message-State: AOJu0YxvQt24ZDuRmrA23MtHwZgBAn31elutVVYtPBZuJGNkjX+j3st6
	tYEPZH0sqFOy1PXtuZnDOO/oOZWyXfo4evw4siRzEz4WIWH13nnZQ9l4
X-Gm-Gg: ATEYQzzaafBr61Nh0aGQ3wDotGKt8JESxZbhycNX8AmmMT3n833fUK5bI3n5w1im+5P
	3qyn3KWoJU69AbKv9Vp96AAXnjYgJ/yyZ2XUIokI1VrpmIoRagOepBg5byYG57NRXrM85SDznvZ
	L/OAgV2K5NOqVr9BmiYR7IwlhYCB7mSAaVL17ORTL/MPZN9sqt0g9ikrykKLuHM1rnOjv7vkzKy
	i4kTPWGao1GOzWw7JRAAmAX2O4udmaFxor1s5p7L0Llvpf9bVbObWt+dFhVnnkl/GH9TFweK0bC
	MLKcMvenb6Iz2Cd0gQrAqSqMsE3CAXkVMPx7Ew8QVILMEWthJHuBhUmPlCPmvmFK58w+S5eoy+0
	0nCEVHvjfKiLXMI1fHxiQoQ4iE+vl3jNFbn9HtdihvWyFjjHV4QvBx5LpR0Rj0wxmIZZllecn35
	gjhl6DDcxO0UBIlcLZDGCyPM9Kpw==
X-Received: by 2002:ac8:5e46:0:b0:4f4:ee07:91b9 with SMTP id d75a77b69052e-508db38a788mr41793811cf.47.1772654384881;
        Wed, 04 Mar 2026 11:59:44 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50744ad885bsm158916631cf.28.2026.03.04.11.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 11:59:44 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Nickolay Goppen <setotau@mainlining.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Johan Hovold <johan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 10/11] ASoC: qcom: add sdm660 sound card support
Date: Wed,  4 Mar 2026 14:58:14 -0500
Message-ID: <20260304195815.52347-11-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304195815.52347-1-mailingradian@gmail.com>
References: <20260304195815.52347-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4EE3B207581
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271252-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[mainlining.org,quicinc.com,linuxfoundation.org,kernel.org,opensource.cirrus.com,renesas.com,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

The Snapdragon 670 and Snapdragon 660 share the sound card, which can
have digital/analog WCD, WCD9335, WCD934X, or board-specific sound
codecs. Add support for the sound card.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 sound/soc/qcom/Kconfig  |  12 +++
 sound/soc/qcom/Makefile |   2 +
 sound/soc/qcom/sdm660.c | 192 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 206 insertions(+)
 create mode 100644 sound/soc/qcom/sdm660.c

diff --git a/sound/soc/qcom/Kconfig b/sound/soc/qcom/Kconfig
index e6e24f3b9922..2ef4c436e534 100644
--- a/sound/soc/qcom/Kconfig
+++ b/sound/soc/qcom/Kconfig
@@ -167,6 +167,18 @@ config SND_SOC_MSM8996
 	  APQ8096 SoC-based systems.
 	  Say Y if you want to use audio device on this SoCs
 
+config SND_SOC_SDM660
+	tristate "SoC Machine driver for SDM660 and SDM670 boards"
+	depends on QCOM_APR
+	depends on OF
+	depends on PM
+	select SND_SOC_QDSP6
+	select SND_SOC_QCOM_COMMON
+	help
+	  This adds support for audio on Qualcomm Technologies Inc.
+	  SDM660 and SDM670 SoC-based systems.
+	  Say Y if you want to use audio devices on these SoCs.
+
 config SND_SOC_SDM845
 	tristate "SoC Machine driver for SDM845 boards"
 	depends on QCOM_APR && I2C && SOUNDWIRE
diff --git a/sound/soc/qcom/Makefile b/sound/soc/qcom/Makefile
index 985ce2ae286b..8b6bdc19e780 100644
--- a/sound/soc/qcom/Makefile
+++ b/sound/soc/qcom/Makefile
@@ -24,6 +24,7 @@ snd-soc-apq8016-sbc-y := apq8016_sbc.o
 snd-soc-apq8096-y := apq8096.o
 snd-soc-sc7180-y := sc7180.o
 snd-soc-sc7280-y := sc7280.o
+snd-soc-sdm660-y := sdm660.o
 snd-soc-sdm845-y := sdm845.o
 snd-soc-sm8250-y := sm8250.o
 snd-soc-sc8280xp-y := sc8280xp.o
@@ -38,6 +39,7 @@ obj-$(CONFIG_SND_SOC_MSM8996) += snd-soc-apq8096.o
 obj-$(CONFIG_SND_SOC_SC7180) += snd-soc-sc7180.o
 obj-$(CONFIG_SND_SOC_SC7280) += snd-soc-sc7280.o
 obj-$(CONFIG_SND_SOC_SC8280XP) += snd-soc-sc8280xp.o
+obj-$(CONFIG_SND_SOC_SDM660) += snd-soc-sdm660.o
 obj-$(CONFIG_SND_SOC_SDM845) += snd-soc-sdm845.o
 obj-$(CONFIG_SND_SOC_SM8250) += snd-soc-sm8250.o
 obj-$(CONFIG_SND_SOC_QCOM_COMMON) += snd-soc-qcom-common.o
diff --git a/sound/soc/qcom/sdm660.c b/sound/soc/qcom/sdm660.c
new file mode 100644
index 000000000000..8dae01b733dd
--- /dev/null
+++ b/sound/soc/qcom/sdm660.c
@@ -0,0 +1,192 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2015-2020, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2023, Richard Acayan. All rights reserved.
+ */
+
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <sound/pcm.h>
+#include <sound/pcm_params.h>
+#include <sound/jack.h>
+#include <sound/soc.h>
+#include <sound/soc-card.h>
+#include <sound/soc-dai.h>
+#include <sound/soc-dapm.h>
+#include <sound/soc-jack.h>
+
+#include "common.h"
+#include "qdsp6/q6afe.h"
+
+#define DEFAULT_SAMPLE_RATE_48K		48000
+#define DEFAULT_INT_MCLK_RATE		9600000
+#define MI2S_BCLK_RATE			1536000
+
+struct sdm660_snd_data {
+	struct snd_soc_jack jack;
+	bool jack_setup;
+	uint32_t int0_mi2s_clk_count;
+	uint32_t int3_mi2s_clk_count;
+};
+
+static int snd_sdm660_startup(struct snd_pcm_substream *stream)
+{
+	struct snd_soc_pcm_runtime *rtd = snd_soc_substream_to_rtd(stream);
+	struct sdm660_snd_data *data = snd_soc_card_get_drvdata(rtd->card);
+	struct snd_soc_dai *cpu = snd_soc_rtd_to_cpu(rtd, 0);
+
+	switch (cpu->id) {
+	case INT0_MI2S_RX:
+		data->int0_mi2s_clk_count++;
+		if (data->int0_mi2s_clk_count == 1)
+			snd_soc_dai_set_sysclk(cpu,
+				Q6AFE_LPASS_CLK_ID_INT0_MI2S_IBIT,
+				MI2S_BCLK_RATE, SNDRV_PCM_STREAM_PLAYBACK);
+
+		snd_soc_dai_set_fmt(cpu, SND_SOC_DAIFMT_CBP_CFP);
+
+		break;
+	case INT3_MI2S_TX:
+		data->int3_mi2s_clk_count++;
+		if (data->int3_mi2s_clk_count == 1)
+			snd_soc_dai_set_sysclk(cpu,
+				Q6AFE_LPASS_CLK_ID_INT3_MI2S_IBIT,
+				MI2S_BCLK_RATE, SNDRV_PCM_STREAM_PLAYBACK);
+
+		snd_soc_dai_set_fmt(cpu, SND_SOC_DAIFMT_CBP_CFP);
+
+		break;
+	default:
+		dev_err(rtd->dev, "%s: invalid dai id 0x%x\n", __func__,
+			cpu->id);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static void snd_sdm660_shutdown(struct snd_pcm_substream *stream)
+{
+	struct snd_soc_pcm_runtime *rtd = snd_soc_substream_to_rtd(stream);
+	struct sdm660_snd_data *data = snd_soc_card_get_drvdata(rtd->card);
+	struct snd_soc_dai *cpu = snd_soc_rtd_to_cpu(rtd, 0);
+
+	switch (cpu->id) {
+	case INT0_MI2S_RX:
+		data->int0_mi2s_clk_count--;
+		if (data->int0_mi2s_clk_count == 0)
+			snd_soc_dai_set_sysclk(cpu,
+				Q6AFE_LPASS_CLK_ID_INT0_MI2S_IBIT,
+				0, SNDRV_PCM_STREAM_PLAYBACK);
+
+		break;
+	case INT3_MI2S_TX:
+		data->int3_mi2s_clk_count--;
+		if (data->int3_mi2s_clk_count == 0)
+			snd_soc_dai_set_sysclk(cpu,
+				Q6AFE_LPASS_CLK_ID_INT3_MI2S_IBIT,
+				0, SNDRV_PCM_STREAM_PLAYBACK);
+
+		break;
+	default:
+		dev_err(rtd->dev, "%s: invalid dai id 0x%x\n", __func__,
+			cpu->id);
+		break;
+	}
+}
+
+static const struct snd_soc_ops sdm660_ops = {
+	.startup = snd_sdm660_startup,
+	.shutdown = snd_sdm660_shutdown,
+};
+
+static int sdm660_be_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
+				     struct snd_pcm_hw_params *params)
+{
+	struct snd_interval *rate = hw_param_interval(params,
+					SNDRV_PCM_HW_PARAM_RATE);
+	struct snd_interval *channels = hw_param_interval(params,
+			SNDRV_PCM_HW_PARAM_CHANNELS);
+	struct snd_mask *fmt = hw_param_mask(params, SNDRV_PCM_HW_PARAM_FORMAT);
+
+	rate->min = rate->max = DEFAULT_SAMPLE_RATE_48K;
+	snd_mask_set_format(fmt, SNDRV_PCM_FORMAT_S16_LE);
+
+	channels->min = channels->max = 2;
+
+	return 0;
+}
+
+static int sdm660_dai_init(struct snd_soc_pcm_runtime *rtd)
+{
+	struct snd_soc_card *card = rtd->card;
+	struct sdm660_snd_data *data = snd_soc_card_get_drvdata(card);
+
+	return qcom_snd_wcd_jack_setup(rtd, &data->jack, &data->jack_setup);
+}
+
+static void snd_sdm660_add_ops(struct snd_soc_card *card)
+{
+	struct snd_soc_dai_link *link;
+	int i;
+
+	for_each_card_prelinks(card, i, link) {
+		if (link->no_pcm == 1) {
+			link->ops = &sdm660_ops;
+			link->be_hw_params_fixup = sdm660_be_hw_params_fixup;
+		}
+
+		link->init = sdm660_dai_init;
+	}
+}
+
+static int snd_sdm660_probe(struct platform_device *pdev)
+{
+	struct snd_soc_card *card;
+	struct sdm660_snd_data *data;
+	struct device *dev = &pdev->dev;
+	int ret;
+
+	card = devm_kzalloc(dev, sizeof(struct snd_soc_card), GFP_KERNEL);
+	if (!card)
+		return -ENOMEM;
+
+	data = devm_kzalloc(dev, sizeof(struct sdm660_snd_data), GFP_KERNEL);
+	if (!card)
+		return -ENOMEM;
+
+	card->driver_name = "sdm660";
+	card->dev = dev;
+	card->owner = THIS_MODULE;
+
+	ret = qcom_snd_parse_of(card);
+	if (ret)
+		return ret;
+
+	snd_soc_card_set_drvdata(card, data);
+
+	snd_sdm660_add_ops(card);
+
+	return devm_snd_soc_register_card(dev, card);
+}
+
+static const struct of_device_id snd_sdm660_device_id[] = {
+	{ .compatible = "qcom,sdm660-sndcard", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, snd_sdm660_device_id);
+
+static struct platform_driver snd_sdm660_driver = {
+	.probe = snd_sdm660_probe,
+	.driver = {
+		.name = "sdm660-sndcard",
+		.of_match_table = snd_sdm660_device_id,
+		.pm = &snd_soc_pm_ops,
+	},
+};
+module_platform_driver(snd_sdm660_driver);
+
+MODULE_DESCRIPTION("sdm660 ASoC Machine Driver");
+MODULE_LICENSE("GPL");
-- 
2.53.0


