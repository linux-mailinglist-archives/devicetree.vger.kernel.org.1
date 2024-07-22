Return-Path: <devicetree+bounces-87110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B72938958
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 08:56:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A50522822A0
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 06:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 496DA4EB38;
	Mon, 22 Jul 2024 06:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bXNa3oXl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5AC1B810
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 06:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721631239; cv=none; b=LLi86U+okbat0mI1KKVGwAIulcxMoG6rffRUK/nnpR7+Otmy7LxuyfM56AXGk/vogOqwfDDv7NJksBEkaFfeDwL+YJJ4po/5ChYS9Djs/6BL+pVB0upbHGfhNhy0g5m88i/h/aabh8rJdLmN8mlUFGXzTIAAF+EKHCJlQWONvmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721631239; c=relaxed/simple;
	bh=EMsOeTgFYxhngB0wTVPHQNuqZBmngg6WRTWjLgk5/i4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P/tnzUXYecN5gSVMErnj6f+ZyrcJz+v51969BxsQFZTS6OgZq5T3L/QDTUF+HFyyNDCdhPgLpQdlTmR6MgP0yuStvyucJAcjuThO8+9i/XN7sxxD/SIZ+lJAWx9J/jGXQEyn5x8bbIZf2+/hXcGfIgJwCjY0WlgOCHRyy5YwSag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bXNa3oXl; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52efd855adbso1766587e87.2
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 23:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1721631234; x=1722236034; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bCAjHokZ9G2UGhiGFRg3f3L38A6iZMLRbFctPGiCpBk=;
        b=bXNa3oXlRYDRQhOErOEiyXDSgIsrdMO4e9fz18CD4drG9u4KWiQ0q+drJNFkcWcYEF
         dkLmTYTnDC2ML4BBXSn/YT9CgSBunLe2s0TI/nvrJyu1WSowizVz0EKybU1XA4bpGdyJ
         gJbLCtPc/kLNtJsRQMtdAre1WYAuNzwozvpHL+hshyKRyLafk1HQ//YrdajDqeV3w4Wi
         Bbh0tSHTd1zVzbLEQDV2sJTGGR/zJstnUGOSNJaLxqIbTnzO5qCgeC98lpBb29JGDbZs
         4c9oCh98vzyQLqxOTGGqbbQo4N0Wc6IlSWVq2AhCPwUZ4FbsEWZphvspuiih5Mz/PU3O
         g19Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721631234; x=1722236034;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bCAjHokZ9G2UGhiGFRg3f3L38A6iZMLRbFctPGiCpBk=;
        b=gEBrhUXKwQXEaORCOWEKvSiQVPxtcJO8nZvDCZhWoR/Rd5y723SyFbkn/h13BMoWhG
         WeZEa7dIFL83FkBKy1KIQUdcnjLdT80yxFyQ3Gk146BnjC6JMIzWHmByK16r9d7aqNt4
         hT0rOm+m1qMcX286Ekj81FEH+s4l+nZ9YL89VMMJhKIIs2Jad7UlY6Wn4U3RXL+NP3DJ
         +Vxi9Ug59aDuliGubsiXX7pVRD0HOOFNkYBpRUzeUl0tqpvcsul8d9KXNyhowOyCvibd
         BarAouU3kH4HZjJ+L3kBDM4EucrPLgc+50zuiel1rwuCydVCL9btyz0UiBJ0JODJQ2A+
         cvWw==
X-Forwarded-Encrypted: i=1; AJvYcCVOwFvuZsmT7ReYFU9b1G1tzO2O8ZQWEGUYhwD+ZKm68TdOXsX5LCRU2uBVyYF4EyysE/7FnVd1KfrJyBeChz+BDzsReeAA5f3VjQ==
X-Gm-Message-State: AOJu0YxlWJWXuY8OZx82TdJPjKiruZ90nZDYWLSrSD8j/k0ttuprKa6i
	E4ziwZzeqKR+SQKys4W2UwvNlwQHRglR/jRK/+jl7IfnSvH93G6dR81SNl8lluw=
X-Google-Smtp-Source: AGHT+IGCXGAOn0q2X2+wtI5I4WLS007WCwg5Yf/Uy5nLi8yDuCFVirANaI+lbgGn45i3WA5zTgAHsw==
X-Received: by 2002:a05:6512:2251:b0:52b:c0b1:ab9e with SMTP id 2adb3069b0e04-52efb52ea53mr4008570e87.5.1721631233582;
        Sun, 21 Jul 2024 23:53:53 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-5a69c1f56a0sm1982126a12.64.2024.07.21.23.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jul 2024 23:53:53 -0700 (PDT)
From: amergnat@baylibre.com
Date: Mon, 22 Jul 2024 08:53:39 +0200
Subject: [PATCH v7 10/16] ASoc: mediatek: mt8365: Add a specific soundcard
 for EVK
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v7-10-6518d953a141@baylibre.com>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
In-Reply-To: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
 Alexandre Mergnat <amergnat@baylibre.com>, 
 Nicolas Belin <nbelin@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=10498;
 i=amergnat@baylibre.com; h=from:subject:message-id;
 bh=HYpI5rUwcY4z116A+K6sYZ0l2viRC0+/t1cG0dm2sU0=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmngHxJKWdHpAZ1yucFkyVuR9zK08Qc9U69MilUv6v
 2Sowy12JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZp4B8QAKCRArRkmdfjHURS0jEA
 CaMMTBUMVvSrs7sWOWwpAF4SlsdUGDv/AxdfyJVWiW48p+rt5tcnUmHQBxjmyUzeJ9srIx66qaofMY
 oMpO+okuflAcVoikgnGiO+fQYbgG/sGWWgNshYGFlRW/WvMi3iQTgFznjx31QzMloTsKTsTaDEw58I
 3o7ahIKXlHmxO/nGP+iK7gryy5Z022RZll19iu3zespIPqLM3yeKbOW3oJ7jXRomPsdHqwq58pmtmF
 GQq0uhcyzSUiu7K48M1qmYJGVNUDZ7fBnabTeN5EWvB67e+2AdxJ9zBuAnxhWdgxfdqvnwPyijdwp7
 TlVyMx5FxtcVa85Zp2mbGzpWkBlNc/JHG0phAIxRHEf4Ntj2fCP1jxpKZBexCrmc9GjxxH58ZPQRLM
 92oDGm8F3QzR30u7D+4c+P5aV167TUTkFh8MwZg0BDAk9OuvyKOC7k+UlRaThBDRTWZsSDW4hFt66f
 WcVXfE7lZTHlIORAYWzpYP2N1oxo5dv4cplrTlAB7gfY+HgLOAzY9SVTbtWksOL2Vx3qpZ+VOyMXPm
 Pn0SCwhhe3oyh1uR04oY+eJJJh/YpTr8IYE/kOKWgpX/DNmdBsFuIhNYGEB8jBv0pU/6OPPHXTje1M
 l0qQdwL6zI0mEmxOtbP1hJk8AIbt4pkfbJKyJClMtvE6oDtgyg6j85Md63IA==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

From: Nicolas Belin <nbelin@baylibre.com>

Add a specific soundcard for mt8365-evk. It supports audio jack
in/out, dmics, the amic and lineout.

Signed-off-by: Nicolas Belin <nbelin@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 sound/soc/mediatek/mt8365/mt8365-mt6357.c | 345 ++++++++++++++++++++++++++++++
 1 file changed, 345 insertions(+)

diff --git a/sound/soc/mediatek/mt8365/mt8365-mt6357.c b/sound/soc/mediatek/mt8365/mt8365-mt6357.c
new file mode 100644
index 000000000000..fef76118f801
--- /dev/null
+++ b/sound/soc/mediatek/mt8365/mt8365-mt6357.c
@@ -0,0 +1,345 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * MediaTek MT8365 Sound Card driver
+ *
+ * Copyright (c) 2024 MediaTek Inc.
+ * Authors: Nicolas Belin <nbelin@baylibre.com>
+ */
+
+#include <linux/module.h>
+#include <linux/of_gpio.h>
+#include <sound/soc.h>
+#include <sound/pcm_params.h>
+#include "mt8365-afe-common.h"
+#include <linux/pinctrl/consumer.h>
+#include "../common/mtk-soc-card.h"
+#include "../common/mtk-soundcard-driver.h"
+
+enum pinctrl_pin_state {
+	PIN_STATE_DEFAULT,
+	PIN_STATE_DMIC,
+	PIN_STATE_MISO_OFF,
+	PIN_STATE_MISO_ON,
+	PIN_STATE_MOSI_OFF,
+	PIN_STATE_MOSI_ON,
+	PIN_STATE_MAX
+};
+
+static const char * const mt8365_mt6357_pin_str[PIN_STATE_MAX] = {
+	"default",
+	"dmic",
+	"miso_off",
+	"miso_on",
+	"mosi_off",
+	"mosi_on",
+};
+
+struct mt8365_mt6357_priv {
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *pin_states[PIN_STATE_MAX];
+};
+
+enum {
+	/* FE */
+	DAI_LINK_DL1_PLAYBACK = 0,
+	DAI_LINK_DL2_PLAYBACK,
+	DAI_LINK_AWB_CAPTURE,
+	DAI_LINK_VUL_CAPTURE,
+	/* BE */
+	DAI_LINK_2ND_I2S_INTF,
+	DAI_LINK_DMIC,
+	DAI_LINK_INT_ADDA,
+	DAI_LINK_NUM
+};
+
+static const struct snd_soc_dapm_widget mt8365_mt6357_widgets[] = {
+	SND_SOC_DAPM_OUTPUT("HDMI Out"),
+};
+
+static const struct snd_soc_dapm_route mt8365_mt6357_routes[] = {
+	{"HDMI Out", NULL, "2ND I2S Playback"},
+	{"DMIC In", NULL, "MICBIAS0"},
+};
+
+static int mt8365_mt6357_int_adda_startup(struct snd_pcm_substream *substream)
+{
+	struct snd_soc_pcm_runtime *rtd = substream->private_data;
+	struct mt8365_mt6357_priv *priv = snd_soc_card_get_drvdata(rtd->card);
+	int ret = 0;
+
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		if (IS_ERR(priv->pin_states[PIN_STATE_MOSI_ON]))
+			return ret;
+
+		ret = pinctrl_select_state(priv->pinctrl,
+					   priv->pin_states[PIN_STATE_MOSI_ON]);
+		if (ret)
+			dev_err(rtd->card->dev, "%s failed to select state %d\n",
+				__func__, ret);
+	}
+
+	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
+		if (IS_ERR(priv->pin_states[PIN_STATE_MISO_ON]))
+			return ret;
+
+		ret = pinctrl_select_state(priv->pinctrl,
+					   priv->pin_states[PIN_STATE_MISO_ON]);
+		if (ret)
+			dev_err(rtd->card->dev, "%s failed to select state %d\n",
+				__func__, ret);
+	}
+
+	return 0;
+}
+
+static void mt8365_mt6357_int_adda_shutdown(struct snd_pcm_substream *substream)
+{
+	struct snd_soc_pcm_runtime *rtd = substream->private_data;
+	struct mt8365_mt6357_priv *priv = snd_soc_card_get_drvdata(rtd->card);
+	int ret = 0;
+
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		if (IS_ERR(priv->pin_states[PIN_STATE_MOSI_OFF]))
+			return;
+
+		ret = pinctrl_select_state(priv->pinctrl,
+					   priv->pin_states[PIN_STATE_MOSI_OFF]);
+		if (ret)
+			dev_err(rtd->card->dev, "%s failed to select state %d\n",
+				__func__, ret);
+	}
+
+	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
+		if (IS_ERR(priv->pin_states[PIN_STATE_MISO_OFF]))
+			return;
+
+		ret = pinctrl_select_state(priv->pinctrl,
+					   priv->pin_states[PIN_STATE_MISO_OFF]);
+		if (ret)
+			dev_err(rtd->card->dev, "%s failed to select state %d\n",
+				__func__, ret);
+	}
+}
+
+static const struct snd_soc_ops mt8365_mt6357_int_adda_ops = {
+	.startup = mt8365_mt6357_int_adda_startup,
+	.shutdown = mt8365_mt6357_int_adda_shutdown,
+};
+
+SND_SOC_DAILINK_DEFS(playback1,
+		     DAILINK_COMP_ARRAY(COMP_CPU("DL1")),
+		     DAILINK_COMP_ARRAY(COMP_DUMMY()),
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
+SND_SOC_DAILINK_DEFS(playback2,
+		     DAILINK_COMP_ARRAY(COMP_CPU("DL2")),
+		     DAILINK_COMP_ARRAY(COMP_DUMMY()),
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
+SND_SOC_DAILINK_DEFS(awb_capture,
+		     DAILINK_COMP_ARRAY(COMP_CPU("AWB")),
+		     DAILINK_COMP_ARRAY(COMP_DUMMY()),
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
+SND_SOC_DAILINK_DEFS(vul,
+		     DAILINK_COMP_ARRAY(COMP_CPU("VUL")),
+		     DAILINK_COMP_ARRAY(COMP_DUMMY()),
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
+
+SND_SOC_DAILINK_DEFS(i2s3,
+		     DAILINK_COMP_ARRAY(COMP_CPU("2ND I2S")),
+		     DAILINK_COMP_ARRAY(COMP_DUMMY()),
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
+SND_SOC_DAILINK_DEFS(dmic,
+		     DAILINK_COMP_ARRAY(COMP_CPU("DMIC")),
+		     DAILINK_COMP_ARRAY(COMP_DUMMY()),
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
+SND_SOC_DAILINK_DEFS(primary_codec,
+		     DAILINK_COMP_ARRAY(COMP_CPU("INT ADDA")),
+		     DAILINK_COMP_ARRAY(COMP_CODEC("mt6357-sound", "mt6357-snd-codec-aif1")),
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
+
+/* Digital audio interface glue - connects codec <---> CPU */
+static struct snd_soc_dai_link mt8365_mt6357_dais[] = {
+	/* Front End DAI links */
+	[DAI_LINK_DL1_PLAYBACK] = {
+		.name = "DL1_FE",
+		.stream_name = "MultiMedia1_PLayback",
+		.id = DAI_LINK_DL1_PLAYBACK,
+		.trigger = {
+			SND_SOC_DPCM_TRIGGER_POST,
+			SND_SOC_DPCM_TRIGGER_POST
+		},
+		.dynamic = 1,
+		.dpcm_playback = 1,
+		.dpcm_merged_rate = 1,
+		SND_SOC_DAILINK_REG(playback1),
+	},
+	[DAI_LINK_DL2_PLAYBACK] = {
+		.name = "DL2_FE",
+		.stream_name = "MultiMedia2_PLayback",
+		.id = DAI_LINK_DL2_PLAYBACK,
+		.trigger = {
+			SND_SOC_DPCM_TRIGGER_POST,
+			SND_SOC_DPCM_TRIGGER_POST
+		},
+		.dynamic = 1,
+		.dpcm_playback = 1,
+		.dpcm_merged_rate = 1,
+		SND_SOC_DAILINK_REG(playback2),
+	},
+	[DAI_LINK_AWB_CAPTURE] = {
+		.name = "AWB_FE",
+		.stream_name = "DL1_AWB_Record",
+		.id = DAI_LINK_AWB_CAPTURE,
+		.trigger = {
+			SND_SOC_DPCM_TRIGGER_POST,
+			SND_SOC_DPCM_TRIGGER_POST
+		},
+		.dynamic = 1,
+		.dpcm_capture = 1,
+		.dpcm_merged_rate = 1,
+		SND_SOC_DAILINK_REG(awb_capture),
+	},
+	[DAI_LINK_VUL_CAPTURE] = {
+		.name = "VUL_FE",
+		.stream_name = "MultiMedia1_Capture",
+		.id = DAI_LINK_VUL_CAPTURE,
+		.trigger = {
+			SND_SOC_DPCM_TRIGGER_POST,
+			SND_SOC_DPCM_TRIGGER_POST
+		},
+		.dynamic = 1,
+		.dpcm_capture = 1,
+		.dpcm_merged_rate = 1,
+		SND_SOC_DAILINK_REG(vul),
+	},
+	/* Back End DAI links */
+	[DAI_LINK_2ND_I2S_INTF] = {
+		.name = "I2S_OUT_BE",
+		.no_pcm = 1,
+		.id = DAI_LINK_2ND_I2S_INTF,
+		.dai_fmt = SND_SOC_DAIFMT_I2S |
+				SND_SOC_DAIFMT_NB_NF |
+				SND_SOC_DAIFMT_CBS_CFS,
+		.dpcm_playback = 1,
+		.dpcm_capture = 1,
+		SND_SOC_DAILINK_REG(i2s3),
+	},
+	[DAI_LINK_DMIC] = {
+		.name = "DMIC_BE",
+		.no_pcm = 1,
+		.id = DAI_LINK_DMIC,
+		.dpcm_capture = 1,
+		SND_SOC_DAILINK_REG(dmic),
+	},
+	[DAI_LINK_INT_ADDA] = {
+		.name = "MTK_Codec",
+		.no_pcm = 1,
+		.id = DAI_LINK_INT_ADDA,
+		.dpcm_playback = 1,
+		.dpcm_capture = 1,
+		.ops = &mt8365_mt6357_int_adda_ops,
+		SND_SOC_DAILINK_REG(primary_codec),
+	},
+};
+
+static int mt8365_mt6357_gpio_probe(struct snd_soc_card *card)
+{
+	struct mt8365_mt6357_priv *priv = snd_soc_card_get_drvdata(card);
+	int ret, i;
+
+	priv->pinctrl = devm_pinctrl_get(card->dev);
+	if (IS_ERR(priv->pinctrl)) {
+		ret = PTR_ERR(priv->pinctrl);
+		return dev_err_probe(card->dev, ret,
+				     "Failed to get pinctrl\n");
+	}
+
+	for (i = PIN_STATE_DEFAULT ; i < PIN_STATE_MAX ; i++) {
+		priv->pin_states[i] = pinctrl_lookup_state(priv->pinctrl,
+							   mt8365_mt6357_pin_str[i]);
+		if (IS_ERR(priv->pin_states[i])) {
+			ret = PTR_ERR(priv->pin_states[i]);
+			dev_warn(card->dev, "No pin state for %s\n",
+				 mt8365_mt6357_pin_str[i]);
+		} else {
+			ret = pinctrl_select_state(priv->pinctrl,
+						   priv->pin_states[i]);
+			if (ret) {
+				dev_err_probe(card->dev, ret,
+					      "Failed to select pin state %s\n",
+					      mt8365_mt6357_pin_str[i]);
+				return ret;
+			}
+		}
+	}
+	return 0;
+}
+
+static struct snd_soc_card mt8365_mt6357_soc_card = {
+	.name = "mt8365-evk",
+	.owner = THIS_MODULE,
+	.dai_link = mt8365_mt6357_dais,
+	.num_links = ARRAY_SIZE(mt8365_mt6357_dais),
+	.dapm_widgets = mt8365_mt6357_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(mt8365_mt6357_widgets),
+	.dapm_routes = mt8365_mt6357_routes,
+	.num_dapm_routes = ARRAY_SIZE(mt8365_mt6357_routes),
+};
+
+static int mt8365_mt6357_dev_probe(struct mtk_soc_card_data *soc_card_data, bool legacy)
+{
+	struct mtk_platform_card_data *card_data = soc_card_data->card_data;
+	struct snd_soc_card *card = card_data->card;
+	struct device *dev = card->dev;
+	struct device_node *platform_node;
+	struct mt8365_mt6357_priv *mach_priv;
+	int i, ret;
+
+	card->dev = dev;
+	ret = parse_dai_link_info(card);
+	if (ret)
+		goto err;
+
+	mach_priv = devm_kzalloc(dev, sizeof(*mach_priv),
+				 GFP_KERNEL);
+	if (!mach_priv)
+		return -ENOMEM;
+	soc_card_data->mach_priv = mach_priv;
+	snd_soc_card_set_drvdata(card, soc_card_data);
+	mt8365_mt6357_gpio_probe(card);
+	return 0;
+
+err:
+	clean_card_reference(card);
+	return ret;
+}
+
+static const struct mtk_soundcard_pdata mt8365_mt6357_card = {
+	.card_name = "mt8365-mt6357",
+	.card_data = &(struct mtk_platform_card_data) {
+		.card = &mt8365_mt6357_soc_card,
+	},
+	.soc_probe = mt8365_mt6357_dev_probe
+};
+
+static const struct of_device_id mt8365_mt6357_dt_match[] = {
+	{ .compatible = "mediatek,mt8365-mt6357", .data = &mt8365_mt6357_card },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, mt8365_mt6357_dt_match);
+
+static struct platform_driver mt8365_mt6357_driver = {
+	.driver = {
+		   .name = "mt8365_mt6357",
+		   .of_match_table = mt8365_mt6357_dt_match,
+		   .pm = &snd_soc_pm_ops,
+	},
+	.probe = mtk_soundcard_common_probe,
+};
+
+module_platform_driver(mt8365_mt6357_driver);
+
+/* Module information */
+MODULE_DESCRIPTION("MT8365 EVK SoC machine driver");
+MODULE_AUTHOR("Nicolas Belin <nbelin@baylibre.com>");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform: mt8365_mt6357");

-- 
2.25.1


