Return-Path: <devicetree+bounces-57405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC05289D699
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 12:16:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91DBC284792
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 10:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6387D12EBFB;
	Tue,  9 Apr 2024 10:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LxLzLKfX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9765012DDAF
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 10:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712657639; cv=none; b=M5MmL9HAMeif37pi8c7u/czL+Aa4XYDM0Abhb7mbwJ+EagbjNuN3zwdcJp6OwpyilBNsP2sks09Wr87FpsvX92QrABAX6J2jjj4EyHoorQamOE4+rCB9NkFSkM4r9NagGOm8vlqgtfk0xn2HFpU+TmdaORLbDBXR3ysJoscMSmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712657639; c=relaxed/simple;
	bh=ikaRpZ9zp5N+GSVqpBpZ6Q+x32qpr9yZKVqFLm31Mf4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b/8W0KCHe5laFCH8wJ2AkpBM0MFRN5QCcv4oIxiqoZEJZWD+cvAZSaFUZayxVQWQ2RLTTqnfyiiDjGvkBTSmTxEg6zZWL6XRIjGwnjLWWEkV+lsfLfwM0SYNPJ9QPniP7qp2++2iMs5yLXzRid3n+7zK0SAsQC87N/rpcUBD3o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LxLzLKfX; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4169e385984so5886235e9.3
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 03:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712657635; x=1713262435; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HRoWVbb+97QwHrxPYSUdLG6n9gcD28au02QPhJHqhYE=;
        b=LxLzLKfX0bWgzkgRxmIuB3Q/z1bTBnRbg+6oq7+XCSN+b9j0r6kr0GpSOwiE8VOtvw
         q6Bp8D8VZ8bKW5Bq+32O7Ww7FbIe4B9nG83GjR8CgEnNeO24WxFnpJUFWf8MhVQ4t20D
         CXOULlGqnbuFxDxZOFvY3mU/H2IWFw1cqG505bisNsmshAb4mksejGCx+4UUZLwR4G9v
         F6iTunh1xkmLdYmacy6iyB2bHaQjm67z/+h42UGkQi2SuKXFfNTo6ICjSyF1rddFRppF
         Yiu5ztRW5TPClRnVOobLCgOmZRU3uoC4F670Vr5DX+X2QYWeLBKGmvrVOy0rLVKaqtbd
         4CIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712657635; x=1713262435;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HRoWVbb+97QwHrxPYSUdLG6n9gcD28au02QPhJHqhYE=;
        b=eGFl4gYJLcmiyI3FhHgfquN+nyZ/sLOkkGGv0Kx3uQJ/+FYj6QNCo7Tx7Xq//sZUXf
         T4V+1yzEODlxr5FIFf4f7BPndKGWsoB9VFcBveL/cg58pPctmF1y/ZVDAXBJna19kgZd
         oR0pn78icJ2WRmhwZHjYSBCSgQxDC1ljpcB7ykxWvG9lKJN1wAayDSa751CtVx4HXpOb
         BzSBekQGT9dQ7a3h9mXY2JiQ346mSTBDuI42SdeAbwbcnbcqhmYQ04130UoEinby9eYz
         14//MyPELe5RQd0Zivw9od8sSI9z0CZ6Zy2OwJFRkhv6F48s1I/VNGM9pTlv1cnXNiP1
         XstQ==
X-Forwarded-Encrypted: i=1; AJvYcCVsi9s7c4yTKN6iItOqpLyccrSZVPQlqCNoSDpUjURYxVPKlnTa2PTHHnS9K7+QwUzdkP14N5M/toq+tl83QoZ4OorE1l3OuQA4Qg==
X-Gm-Message-State: AOJu0Yy+mybK1XX/eAIBybroJJTrE+EJyMo+4Zzp7N8TgpEjsTSVcmrh
	QjppZ8wJWpUZRohUID5xAbDkRPQ06FaLoylukeOtnA+wUnscmw5zkh9pc30WSG4=
X-Google-Smtp-Source: AGHT+IEyw+r7p24TWbGXBqOfBqe5GF5YUYhCpO427Le0urcvdbYuBMkPiRhnB9UU8ZsnNle74hbtqA==
X-Received: by 2002:a05:600c:1c27:b0:416:9af9:487c with SMTP id j39-20020a05600c1c2700b004169af9487cmr1723111wms.29.1712657634879;
        Tue, 09 Apr 2024 03:13:54 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id r7-20020a05600c458700b00416b035c2d8sm1124149wmo.3.2024.04.09.03.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 03:13:54 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Tue, 09 Apr 2024 12:13:30 +0200
Subject: [PATCH v2 09/18] ASoC: mediatek: mt8365: Add DMIC DAI support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v2-9-3043d483de0d@baylibre.com>
References: <20240226-audio-i350-v2-0-3043d483de0d@baylibre.com>
In-Reply-To: <20240226-audio-i350-v2-0-3043d483de0d@baylibre.com>
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
 Rob Herring <robh@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=10633;
 i=amergnat@baylibre.com; h=from:subject:message-id;
 bh=ikaRpZ9zp5N+GSVqpBpZ6Q+x32qpr9yZKVqFLm31Mf4=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmFRTT1rUnA7ld24G45HQ9lwmKUdsnHDGCwiIdhiZS
 QUsJ+qqJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZhUU0wAKCRArRkmdfjHURTsOEA
 DCSSnJGHosZZqnADtobxpS3knpPCDkwfuO/vRyzkvYGKG5cFi/ggsBVOfvbmL8CYvi1hQVGjXwcANr
 napmwAMUt+MoDRQmV8K4fsuRVCL4CZolQJHrCNLzafjPpsPwDMafWZmxfgUd/Y5cDreFc386UGT0kV
 mLkRtGC9FM3lJJkpR2SFBi057ChzGJhx+r5vIJmBIjYQUb0D8SPJO0XFz6taaZvEDANEZW+fSwyR64
 LwZ16FEskg3FR+UYmcXN/sEcm3OpGVqCXkaqKvexXjQdHFf0F/8V/xQBx7yR5qf/5MoT5PqM1hLo64
 NVRSrb15RWU/yt3dwv4myGFjrce3Fn7c3ofn9UBzygmWHe4pk5HtHJp7iC93SQIM938C3vU3xOXC+w
 7tHuDQKykufNF0vb7o6rHt6SHLfSNuiHzmwKmzXUNXlc4gYpxG7r6FRcLTdhVm9flZMWRVM8L9ALXH
 civE1ALV+rLybHdk9M2REAaLwCZxhmt8Z5RDiJg0w/5z6Nf1xgiyVdF87I6m9eoaepkyWod/LhEm2R
 ETwYKR8rmYUPJjcdnK8AzVPNGrvheginiB8vbaIj9i3jO9oF5yrbK3uiEq0M32bjP3fCRDHCS/iqYq
 OEYND6SJn8/WLBT/RJaGVKcToYobbJ+tSIqFWyXZXulR5HEr/OlxkA0XERhA==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Add Digital Micro Device Audio Interface support for MT8365 SoC.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 sound/soc/mediatek/mt8365/mt8365-dai-dmic.c | 347 ++++++++++++++++++++++++++++
 1 file changed, 347 insertions(+)

diff --git a/sound/soc/mediatek/mt8365/mt8365-dai-dmic.c b/sound/soc/mediatek/mt8365/mt8365-dai-dmic.c
new file mode 100644
index 000000000000..0dd606274d8e
--- /dev/null
+++ b/sound/soc/mediatek/mt8365/mt8365-dai-dmic.c
@@ -0,0 +1,347 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Mediatek 8365 ALSA SoC Audio DAI DMIC Control
+ *
+ * Copyright (c) 2024 MediaTek Inc.
+ * Authors: Jia Zeng <jia.zeng@mediatek.com>
+ *          Alexandre Mergnat <amergnat@baylibre.com>
+ */
+
+#include <linux/bitops.h>
+#include <linux/regmap.h>
+#include <sound/pcm_params.h>
+#include "mt8365-afe-clk.h"
+#include "mt8365-afe-common.h"
+
+struct mt8365_dmic_data {
+	bool two_wire_mode;
+	unsigned int clk_phase_sel_ch1;
+	unsigned int clk_phase_sel_ch2;
+	bool iir_on;
+	unsigned int irr_mode;
+	unsigned int dmic_mode;
+	unsigned int dmic_channel;
+};
+
+static int get_chan_reg(unsigned int channel)
+{
+	switch (channel) {
+	case 8:
+		fallthrough;
+	case 7:
+		return AFE_DMIC3_UL_SRC_CON0;
+	case 6:
+		fallthrough;
+	case 5:
+		return AFE_DMIC2_UL_SRC_CON0;
+	case 4:
+		fallthrough;
+	case 3:
+		return AFE_DMIC1_UL_SRC_CON0;
+	case 2:
+		fallthrough;
+	case 1:
+		return AFE_DMIC0_UL_SRC_CON0;
+	default:
+		return -EINVAL;
+	}
+}
+
+/* DAI Drivers */
+
+static void audio_dmic_adda_enable(struct mtk_base_afe *afe)
+{
+	mt8365_dai_enable_adda_on(afe);
+	regmap_update_bits(afe->regmap, AFE_ADDA_UL_DL_CON0,
+			   AFE_ADDA_UL_DL_DMIC_CLKDIV_ON,
+			   AFE_ADDA_UL_DL_DMIC_CLKDIV_ON);
+}
+
+static void audio_dmic_adda_disable(struct mtk_base_afe *afe)
+{
+	regmap_update_bits(afe->regmap, AFE_ADDA_UL_DL_CON0,
+			   AFE_ADDA_UL_DL_DMIC_CLKDIV_ON,
+			   ~AFE_ADDA_UL_DL_DMIC_CLKDIV_ON);
+	mt8365_dai_disable_adda_on(afe);
+}
+
+static void mt8365_dai_enable_dmic(struct mtk_base_afe *afe,
+				   struct snd_pcm_substream *substream,
+				   struct snd_soc_dai *dai)
+{
+	struct mt8365_afe_private *afe_priv = afe->platform_priv;
+	struct mt8365_dmic_data *dmic_data = afe_priv->dai_priv[MT8365_AFE_IO_DMIC];
+	unsigned int val_mask;
+	int reg = get_chan_reg(dmic_data->dmic_channel);
+
+	if (reg < 0)
+		return;
+
+	/* val and mask will be always same to enable */
+	val_mask = DMIC_TOP_CON_CH1_ON |
+		   DMIC_TOP_CON_CH2_ON |
+		   DMIC_TOP_CON_SRC_ON;
+
+	regmap_update_bits(afe->regmap, reg, val_mask, val_mask);
+}
+
+static void mt8365_dai_disable_dmic(struct mtk_base_afe *afe,
+				    struct snd_pcm_substream *substream,
+				    struct snd_soc_dai *dai)
+{
+	struct mt8365_afe_private *afe_priv = afe->platform_priv;
+	struct mt8365_dmic_data *dmic_data = afe_priv->dai_priv[MT8365_AFE_IO_DMIC];
+	unsigned int mask;
+	int reg = get_chan_reg(dmic_data->dmic_channel);
+
+	if (reg < 0)
+		return;
+
+	dev_info(afe->dev, "%s dmic_channel %d\n",
+		 __func__, dmic_data->dmic_channel);
+
+	mask = DMIC_TOP_CON_CH1_ON |
+	       DMIC_TOP_CON_CH2_ON |
+	       DMIC_TOP_CON_SRC_ON |
+	       DMIC_TOP_CON_SDM3_LEVEL_MODE;
+
+	/* Set all masked values to 0 */
+	regmap_update_bits(afe->regmap, reg, mask, 0);
+}
+
+static const struct reg_sequence mt8365_dmic_iir_coeff[] = {
+	{ AFE_DMIC0_IIR_COEF_02_01, 0x00000000 },
+	{ AFE_DMIC0_IIR_COEF_04_03, 0x00003FB8 },
+	{ AFE_DMIC0_IIR_COEF_06_05, 0x3FB80000 },
+	{ AFE_DMIC0_IIR_COEF_08_07, 0x3FB80000 },
+	{ AFE_DMIC0_IIR_COEF_10_09, 0x0000C048 },
+	{ AFE_DMIC1_IIR_COEF_02_01, 0x00000000 },
+	{ AFE_DMIC1_IIR_COEF_04_03, 0x00003FB8 },
+	{ AFE_DMIC1_IIR_COEF_06_05, 0x3FB80000 },
+	{ AFE_DMIC1_IIR_COEF_08_07, 0x3FB80000 },
+	{ AFE_DMIC1_IIR_COEF_10_09, 0x0000C048 },
+	{ AFE_DMIC2_IIR_COEF_02_01, 0x00000000 },
+	{ AFE_DMIC2_IIR_COEF_04_03, 0x00003FB8 },
+	{ AFE_DMIC2_IIR_COEF_06_05, 0x3FB80000 },
+	{ AFE_DMIC2_IIR_COEF_08_07, 0x3FB80000 },
+	{ AFE_DMIC2_IIR_COEF_10_09, 0x0000C048 },
+	{ AFE_DMIC3_IIR_COEF_02_01, 0x00000000 },
+	{ AFE_DMIC3_IIR_COEF_04_03, 0x00003FB8 },
+	{ AFE_DMIC3_IIR_COEF_06_05, 0x3FB80000 },
+	{ AFE_DMIC3_IIR_COEF_08_07, 0x3FB80000 },
+	{ AFE_DMIC3_IIR_COEF_10_09, 0x0000C048 },
+};
+
+static int mt8365_dai_load_dmic_iir_coeff_table(struct mtk_base_afe *afe)
+{
+	return regmap_multi_reg_write(afe->regmap,
+				      mt8365_dmic_iir_coeff,
+				      ARRAY_SIZE(mt8365_dmic_iir_coeff));
+}
+
+static int mt8365_dai_configure_dmic(struct mtk_base_afe *afe,
+				     struct snd_pcm_substream *substream,
+				     struct snd_soc_dai *dai)
+{
+	struct mt8365_afe_private *afe_priv = afe->platform_priv;
+	struct mt8365_dmic_data *dmic_data = afe_priv->dai_priv[MT8365_AFE_IO_DMIC];
+	bool two_wire_mode = dmic_data->two_wire_mode;
+	unsigned int clk_phase_sel_ch1 = dmic_data->clk_phase_sel_ch1;
+	unsigned int clk_phase_sel_ch2 = dmic_data->clk_phase_sel_ch2;
+	unsigned int val = 0;
+	unsigned int mask = 0;
+	unsigned int rate = dai->rate;
+	int reg = get_chan_reg(dai->channels);
+
+	if (reg < 0)
+		return -EINVAL;
+
+	dmic_data->dmic_channel = dai->channels;
+
+	val |= DMIC_TOP_CON_SDM3_LEVEL_MODE;
+	mask |= DMIC_TOP_CON_SDM3_LEVEL_MODE;
+
+	if (two_wire_mode) {
+		val |= DMIC_TOP_CON_TWO_WIRE_MODE;
+		mask |= DMIC_TOP_CON_TWO_WIRE_MODE;
+	} else {
+		val |= FIELD_PREP(DMIC_TOP_CON_CK_PHASE_SEL_CH1,
+				  clk_phase_sel_ch1);
+		val |= FIELD_PREP(DMIC_TOP_CON_CK_PHASE_SEL_CH2,
+				  clk_phase_sel_ch2);
+		mask |= DMIC_TOP_CON_CK_PHASE_SEL_CH1;
+		mask |= DMIC_TOP_CON_CK_PHASE_SEL_CH2;
+	}
+
+	switch (rate) {
+	case 48000:
+		val |= DMIC_TOP_CON_VOICE_MODE_48K;
+		break;
+	case 32000:
+		val |= DMIC_TOP_CON_VOICE_MODE_32K;
+		break;
+	case 16000:
+		val |= DMIC_TOP_CON_VOICE_MODE_16K;
+		break;
+	case 8000:
+		val |= DMIC_TOP_CON_VOICE_MODE_8K;
+		break;
+	default:
+		return -EINVAL;
+	}
+	mask |= DMIC_TOP_CON_VOICE_MODE_MASK;
+
+	regmap_update_bits(afe->regmap, reg, DMIC_TOP_CON_CONFIG_MASK, val);
+
+	return 0;
+}
+
+static int mt8365_dai_dmic_startup(struct snd_pcm_substream *substream,
+				   struct snd_soc_dai *dai)
+{
+	struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
+
+	mt8365_afe_enable_main_clk(afe);
+
+	mt8365_afe_enable_top_cg(afe, MT8365_TOP_CG_DMIC0_ADC);
+	mt8365_afe_enable_top_cg(afe, MT8365_TOP_CG_DMIC1_ADC);
+	mt8365_afe_enable_top_cg(afe, MT8365_TOP_CG_DMIC2_ADC);
+	mt8365_afe_enable_top_cg(afe, MT8365_TOP_CG_DMIC3_ADC);
+
+	audio_dmic_adda_enable(afe);
+
+	return 0;
+}
+
+static void mt8365_dai_dmic_shutdown(struct snd_pcm_substream *substream,
+				     struct snd_soc_dai *dai)
+{
+	struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
+
+	mt8365_dai_disable_dmic(afe, substream, dai);
+	audio_dmic_adda_disable(afe);
+	/* HW Request delay 125us before CG off */
+	usleep_range(125, 300);
+	mt8365_afe_disable_top_cg(afe, MT8365_TOP_CG_DMIC3_ADC);
+	mt8365_afe_disable_top_cg(afe, MT8365_TOP_CG_DMIC2_ADC);
+	mt8365_afe_disable_top_cg(afe, MT8365_TOP_CG_DMIC1_ADC);
+	mt8365_afe_disable_top_cg(afe, MT8365_TOP_CG_DMIC0_ADC);
+
+	mt8365_afe_disable_main_clk(afe);
+}
+
+static int mt8365_dai_dmic_prepare(struct snd_pcm_substream *substream,
+				   struct snd_soc_dai *dai)
+{
+	struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
+
+	mt8365_dai_configure_dmic(afe, substream, dai);
+	mt8365_dai_enable_dmic(afe, substream, dai);
+
+	return 0;
+}
+
+static const struct snd_soc_dai_ops mt8365_afe_dmic_ops = {
+	.startup	= mt8365_dai_dmic_startup,
+	.shutdown	= mt8365_dai_dmic_shutdown,
+	.prepare	= mt8365_dai_dmic_prepare,
+};
+
+static struct snd_soc_dai_driver mtk_dai_dmic_driver[] = {
+	{
+		.name = "DMIC",
+		.id = MT8365_AFE_IO_DMIC,
+		.capture = {
+			.stream_name = "DMIC Capture",
+			.channels_min = 1,
+			.channels_max = 8,
+			.rates = SNDRV_PCM_RATE_16000 |
+				 SNDRV_PCM_RATE_32000 |
+				 SNDRV_PCM_RATE_48000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S32_LE,
+		},
+		.ops = &mt8365_afe_dmic_ops,
+	}
+};
+
+/* DAI Controls */
+
+/* Values for 48kHz mode */
+static const char * const iir_mode_src[] = {
+	"SW custom", "5Hz", "10Hz", "25Hz", "50Hz", "65Hz"
+};
+
+static SOC_ENUM_SINGLE_DECL(iir_mode, AFE_DMIC0_UL_SRC_CON0, 7, iir_mode_src);
+
+static const struct snd_kcontrol_new mtk_dai_dmic_controls[] = {
+	SOC_SINGLE("DMIC IIR Switch", AFE_DMIC0_UL_SRC_CON0, DMIC_TOP_CON_IIR_ON, 1, 0),
+	SOC_ENUM("DMIC IIR Mode", iir_mode),
+};
+
+/* DAI widget */
+
+static const struct snd_soc_dapm_widget mtk_dai_dmic_widgets[] = {
+	SND_SOC_DAPM_INPUT("DMIC In"),
+};
+
+/* DAI route */
+
+static const struct snd_soc_dapm_route mtk_dai_dmic_routes[] = {
+	{"I14", NULL, "DMIC Capture"},
+	{"I15", NULL, "DMIC Capture"},
+	{"I16", NULL, "DMIC Capture"},
+	{"I17", NULL, "DMIC Capture"},
+	{"I18", NULL, "DMIC Capture"},
+	{"I19", NULL, "DMIC Capture"},
+	{"I20", NULL, "DMIC Capture"},
+	{"I21", NULL, "DMIC Capture"},
+	{"DMIC Capture", NULL, "DMIC In"},
+};
+
+static int init_dmic_priv_data(struct mtk_base_afe *afe)
+{
+	struct mt8365_afe_private *afe_priv = afe->platform_priv;
+	struct mt8365_dmic_data *dmic_priv;
+	struct device_node *np = afe->dev->of_node;
+	unsigned int temps[4];
+	int ret;
+
+	dmic_priv = devm_kzalloc(afe->dev, sizeof(*dmic_priv), GFP_KERNEL);
+	if (!dmic_priv)
+		return -ENOMEM;
+
+	ret = of_property_read_u32_array(np, "mediatek,dmic-mode",
+					 &temps[0],
+					 1);
+	if (ret == 0)
+		dmic_priv->two_wire_mode = !!temps[0];
+
+	if (!dmic_priv->two_wire_mode) {
+		dmic_priv->clk_phase_sel_ch1 = 0;
+		dmic_priv->clk_phase_sel_ch2 = 4;
+	}
+
+	afe_priv->dai_priv[MT8365_AFE_IO_DMIC] = dmic_priv;
+	return 0;
+}
+
+int mt8365_dai_dmic_register(struct mtk_base_afe *afe)
+{
+	struct mtk_base_afe_dai *dai;
+
+	dai = devm_kzalloc(afe->dev, sizeof(*dai), GFP_KERNEL);
+	if (!dai)
+		return -ENOMEM;
+
+	list_add(&dai->list, &afe->sub_dais);
+	dai->dai_drivers = mtk_dai_dmic_driver;
+	dai->num_dai_drivers = ARRAY_SIZE(mtk_dai_dmic_driver);
+	dai->controls = mtk_dai_dmic_controls;
+	dai->num_controls = ARRAY_SIZE(mtk_dai_dmic_controls);
+	dai->dapm_widgets = mtk_dai_dmic_widgets;
+	dai->num_dapm_widgets = ARRAY_SIZE(mtk_dai_dmic_widgets);
+	dai->dapm_routes = mtk_dai_dmic_routes;
+	dai->num_dapm_routes = ARRAY_SIZE(mtk_dai_dmic_routes);
+	return init_dmic_priv_data(afe);
+}

-- 
2.25.1


