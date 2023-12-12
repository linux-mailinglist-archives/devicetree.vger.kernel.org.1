Return-Path: <devicetree+bounces-24329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1234880EBD1
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:31:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 340831C20A59
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:31:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C0C55FEE9;
	Tue, 12 Dec 2023 12:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="PPlJdVaX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19DCDF2
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 04:31:12 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1d03bcf27e9so33271335ad.0
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 04:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1702384271; x=1702989071; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jqd7TRsRyVUdQi5OSpq75cF0EdySxPr0EEY5whyB93o=;
        b=PPlJdVaXdJ4p3BQe5SrK8Ho6/M+I6P2rFarzSnqdwi0lLY3DR+kcst5Xbt6nnwdkhW
         /GdDuaAFsLE0MUDtQ7yFQlKlC0XH8160zkycIQnINqy3BtNuYiggMAFCNWy7twBLjlQh
         9A9L/p0qvca9Iu7ToK3eNoYw68kaKP6NorIHh+JVg/5rcnu1NcqhCQvhRqE1WgEtqoUO
         cCIN7slavA2ntFcdFTjxaP1Za6WB/WZKSFUTqLZag5Vkt6GFaIBeGCHGEu6+FnOpbREe
         McZvDCx5Y+KwCNGrru/0uRb/iJizWBOjXPhK5dmSviqirTkN45WsWBK+4akjVe6JqWI9
         WkQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702384271; x=1702989071;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jqd7TRsRyVUdQi5OSpq75cF0EdySxPr0EEY5whyB93o=;
        b=gEUly0IzAoPt2QaNEqaJhxGDXH8IZigEMbfASoVaIery3RyzjDe/KyscWnRHlJMNei
         Lq/yY6BuxbJN2XkFgafMIOx95DYbX0hdt4/nJkKh1p4dsIBV1CA71vhwXo1i4EspMesU
         6Fij8TEusbRZnrMhCRfObZrYGV7r9s+0dncCHQPUygkd2QSkkg1vlxFrV7P8ApGl7rG2
         zosQJ17Wb2R52thjy+dcxL4kL0iE9eG4I5FtySzcOuy9RxFnlZZRSf5FoUiIpEdjFwnl
         k2ixPgwR4Mv/ZRr3EAR6YLioZdkghWIhLGwH5OtX1ux9ehyhv2JRiVPUA09+kbXzTcK7
         8S6w==
X-Gm-Message-State: AOJu0YyAIzta7JCAKg1xKG704XB/evfo2vox3RLHcYwgd7AsGnE14rTB
	ivEu43e8o8ntBwInImlD2F4o4w==
X-Google-Smtp-Source: AGHT+IF1JKcXHHfQcgzgVxTgWlYYiPnk1s20DzMawYPNMDy7eRr8GrcftFEmaKe2/Oi2og5InOcnYg==
X-Received: by 2002:a17:902:eb8e:b0:1ce:64fb:e507 with SMTP id q14-20020a170902eb8e00b001ce64fbe507mr2976505plg.27.1702384271011;
        Tue, 12 Dec 2023 04:31:11 -0800 (PST)
Received: from localhost.localdomain ([101.78.151.194])
        by smtp.gmail.com with ESMTPSA id z5-20020a170903018500b001cf65844874sm8517471plg.45.2023.12.12.04.31.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 04:31:10 -0800 (PST)
From: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	perex@perex.cz,
	tiwai@suse.com,
	trevor.wu@mediatek.com,
	allen-kh.cheng@mediatek.com,
	kuninori.morimoto.gx@renesas.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Rui Zhou <zhourui@huaqin.corp-partner.google.com>
Subject: [v9 3/4] ASoC: mediatek: mt8188-mt6359: add es8326 support
Date: Tue, 12 Dec 2023 20:30:49 +0800
Message-Id: <20231212123050.4080083-4-zhourui@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231212123050.4080083-1-zhourui@huaqin.corp-partner.google.com>
References: <20231212123050.4080083-1-zhourui@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To use ES8326 as the codec, add a new sound card
named mt8186_es8326.

Reviewed-by: Trevor Wu <trevor.wu@mediatek.com>
Signed-off-by: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
---
 sound/soc/mediatek/Kconfig                |  1 +
 sound/soc/mediatek/mt8188/mt8188-mt6359.c | 56 ++++++++++++++++++++++-
 2 files changed, 55 insertions(+), 2 deletions(-)

diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
index b93d455744ab..296b434caf81 100644
--- a/sound/soc/mediatek/Kconfig
+++ b/sound/soc/mediatek/Kconfig
@@ -252,6 +252,7 @@ config SND_SOC_MT8188_MT6359
 	select SND_SOC_NAU8315
 	select SND_SOC_NAU8825
 	select SND_SOC_RT5682S
+	select SND_SOC_ES8326
 	help
 	  This adds support for ASoC machine driver for MediaTek MT8188
 	  boards with the MT6359 and other I2S audio codecs.
diff --git a/sound/soc/mediatek/mt8188/mt8188-mt6359.c b/sound/soc/mediatek/mt8188/mt8188-mt6359.c
index b4606a28794c..d1884f23a1a7 100644
--- a/sound/soc/mediatek/mt8188/mt8188-mt6359.c
+++ b/sound/soc/mediatek/mt8188/mt8188-mt6359.c
@@ -34,6 +34,8 @@
 
 #define NAU8825_HS_PRESENT	BIT(0)
 #define RT5682S_HS_PRESENT	BIT(1)
+#define ES8326_HS_PRESENT	BIT(2)
+#define MAX98390_TWO_AMP	BIT(3)
 /*
  * Maxim MAX98390
  */
@@ -48,6 +50,11 @@
  */
 #define NAU8825_CODEC_DAI  "nau8825-hifi"
 
+/*
+ * ES8326
+ */
+#define ES8326_CODEC_DAI  "ES8326 HiFi"
+
 #define SOF_DMA_DL2 "SOF_DMA_DL2"
 #define SOF_DMA_DL3 "SOF_DMA_DL3"
 #define SOF_DMA_UL4 "SOF_DMA_UL4"
@@ -888,6 +895,30 @@ static const struct snd_soc_ops mt8188_sof_be_ops = {
 	.hw_params = mt8188_sof_be_hw_params,
 };
 
+static int mt8188_es8326_hw_params(struct snd_pcm_substream *substream,
+				 struct snd_pcm_hw_params *params)
+{
+	struct snd_soc_pcm_runtime *rtd = snd_soc_substream_to_rtd(substream);
+	struct snd_soc_dai *cpu_dai = snd_soc_rtd_to_cpu(rtd, 0);
+	struct snd_soc_dai *codec_dai = snd_soc_rtd_to_codec(rtd, 0);
+	unsigned int rate = params_rate(params);
+	int ret;
+
+	/* Configure MCLK for codec */
+	ret = snd_soc_dai_set_sysclk(codec_dai, 0, rate * 256, SND_SOC_CLOCK_IN);
+	if (ret < 0) {
+		dev_err(codec_dai->dev, "can't set MCLK %d\n", ret);
+		return ret;
+	}
+
+	/* Configure MCLK for cpu */
+	return snd_soc_dai_set_sysclk(cpu_dai, 0, rate * 256, SND_SOC_CLOCK_OUT);
+}
+
+static const struct snd_soc_ops mt8188_es8326_ops = {
+	.hw_params = mt8188_es8326_hw_params,
+};
+
 static struct snd_soc_dai_link mt8188_mt6359_dai_links[] = {
 	/* FE */
 	[DAI_LINK_DL2_FE] = {
@@ -1197,7 +1228,7 @@ static void mt8188_fixup_controls(struct snd_soc_card *card)
 	struct mt8188_card_data *card_data = (struct mt8188_card_data *)priv->private_data;
 	struct snd_kcontrol *kctl;
 
-	if (card_data->quirk & (NAU8825_HS_PRESENT | RT5682S_HS_PRESENT)) {
+	if (card_data->quirk & (NAU8825_HS_PRESENT | RT5682S_HS_PRESENT | ES8326_HS_PRESENT)) {
 		struct snd_soc_dapm_widget *w, *next_w;
 
 		for_each_card_widgets_safe(card, w, next_w) {
@@ -1238,6 +1269,7 @@ static int mt8188_mt6359_dev_probe(struct platform_device *pdev)
 	struct mt8188_card_data *card_data;
 	struct snd_soc_dai_link *dai_link;
 	bool init_mt6359 = false;
+	bool init_es8326 = false;
 	bool init_nau8825 = false;
 	bool init_rt5682s = false;
 	bool init_max98390 = false;
@@ -1344,7 +1376,14 @@ static int mt8188_mt6359_dev_probe(struct platform_device *pdev)
 			   strcmp(dai_link->name, "ETDM1_IN_BE") == 0 ||
 			   strcmp(dai_link->name, "ETDM2_IN_BE") == 0) {
 			if (!strcmp(dai_link->codecs->dai_name, MAX98390_CODEC_DAI)) {
-				dai_link->ops = &mt8188_max98390_ops;
+				/*
+				 * The TDM protocol settings with fixed 4 slots are defined in
+				 * mt8188_max98390_ops. Two amps is I2S mode,
+				 * SOC and codec don't require TDM settings.
+				 */
+				if (!(card_data->quirk & MAX98390_TWO_AMP)) {
+					dai_link->ops = &mt8188_max98390_ops;
+				}
 				if (!init_max98390) {
 					dai_link->init = mt8188_max98390_codec_init;
 					init_max98390 = true;
@@ -1363,6 +1402,13 @@ static int mt8188_mt6359_dev_probe(struct platform_device *pdev)
 					dai_link->exit = mt8188_headset_codec_exit;
 					init_rt5682s = true;
 				}
+			} else if (!strcmp(dai_link->codecs->dai_name, ES8326_CODEC_DAI)) {
+				dai_link->ops = &mt8188_es8326_ops;
+				if (!init_es8326) {
+					dai_link->init = mt8188_headset_codec_init;
+					dai_link->exit = mt8188_headset_codec_exit;
+					init_es8326 = true;
+				}
 			} else {
 				if (strcmp(dai_link->codecs->dai_name, "snd-soc-dummy-dai")) {
 					if (!init_dumb) {
@@ -1405,10 +1451,16 @@ static struct mt8188_card_data mt8188_rt5682s_card = {
 	.quirk = RT5682S_HS_PRESENT,
 };
 
+static struct mt8188_card_data mt8188_es8326_card = {
+	.name = "mt8188_es8326",
+	.quirk = ES8326_HS_PRESENT | MAX98390_TWO_AMP,
+};
+
 static const struct of_device_id mt8188_mt6359_dt_match[] = {
 	{ .compatible = "mediatek,mt8188-mt6359-evb", .data = &mt8188_evb_card, },
 	{ .compatible = "mediatek,mt8188-nau8825", .data = &mt8188_nau8825_card, },
 	{ .compatible = "mediatek,mt8188-rt5682s", .data = &mt8188_rt5682s_card, },
+	{ .compatible = "mediatek,mt8188-es8326", .data = &mt8188_es8326_card, },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, mt8188_mt6359_dt_match);
-- 
2.25.1


