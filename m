Return-Path: <devicetree+bounces-24737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 267D7811057
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:40:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4DEA1F213CC
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FC4E24A06;
	Wed, 13 Dec 2023 11:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="yyZSjVDf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C27F7D5
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:40:11 -0800 (PST)
Received: by mail-il1-x136.google.com with SMTP id e9e14a558f8ab-35d725ac060so30054565ab.2
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1702467611; x=1703072411; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lpd6C9NI3pbwTLe6pctih7tPOV6DJdooeIM997kH/ks=;
        b=yyZSjVDfqFXYTB/cBjgo5ouGH0HgrY3vlokThew+UsIPabU36YhuvaEhprAZczLBvR
         glmmEdGEtgBYK9DmpUmHU/PHwXZcJ30G5xRZlCQUsjxxycqphyVCysujcv36XAXPmq5G
         OtZsT/UshMgqlRzfAEKvEaHkF9zNoXvwVKASk2zK01wof9kWd7eJlXEo8EJxLwalhsfr
         tLqkfNwRovaosRaGsIAGuiQB8dPyKj+/ZUEp3myj2Jt/ORHzYdZBdPEhn+gVLtg9qH4p
         gU/FHcV/TPraJ7kXtGVbOA5XQ2xNwDpQ1LBw7LalFnCpavXzqsytfUYfrpKDtk17sMJG
         d6iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702467611; x=1703072411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lpd6C9NI3pbwTLe6pctih7tPOV6DJdooeIM997kH/ks=;
        b=Mxxg/PcGGapgVqIYmSn9gQJs916ae/zh1JyrOFCBzlyspLs4P3axO5cG1mmv8NGoxj
         643GoscIjPsLOh3sPeEZBVF3blhCI8ypBFVCWq7iWpISEClfX4/mJ1510zskGU7wAr9G
         Okss7nwnijK6itvcUVrammhSYp51GaaB6UTvu7+Lt8DgyIGLXytFNWeMbjDMItnlb1Y4
         1cOe5PPJcfE9Zd6OXX5WrLrmPtJxAra9xbUOD78+wpEQ13QcJtGCMSfCXAuD8DqhR6Us
         K9f6Gc0s7rH5zzjIUcoKfvV5526PaKs2H11I25+KffmNke8FONwDY9b7fo83H25aTdXQ
         /Drw==
X-Gm-Message-State: AOJu0Yz+0ytLJUaVDqxjqNeDfXifx7cJFoP4Qxxq91q/Y2K7P/zLDRyh
	jIO+2LUZ/GwmbrB3Ko777p9Ddw==
X-Google-Smtp-Source: AGHT+IGvmjF29b/0IjlOkfDCEspt2ZCEMxvOjfW1EgSB2aHQLbU0s6wyRZG0gia2QEjv69orKFbHTA==
X-Received: by 2002:a05:6e02:20c5:b0:35d:693a:432a with SMTP id 5-20020a056e0220c500b0035d693a432amr12086058ilq.3.1702467611039;
        Wed, 13 Dec 2023 03:40:11 -0800 (PST)
Received: from localhost.localdomain ([101.78.151.194])
        by smtp.gmail.com with ESMTPSA id t1-20020a170902b20100b001bb9d6b1baasm10331066plr.198.2023.12.13.03.40.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 03:40:10 -0800 (PST)
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
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Rui Zhou <zhourui@huaqin.corp-partner.google.com>
Subject: [RESEND PATCH v9 2/4] ASoC: mediatek: mt8188-mt6359: commonize headset codec init/exit api
Date: Wed, 13 Dec 2023 19:39:53 +0800
Message-Id: <20231213113955.47668-3-zhourui@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231213113955.47668-1-zhourui@huaqin.corp-partner.google.com>
References: <20231213113955.47668-1-zhourui@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reduce code duplication, unify the headset codec init/exit api.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
---
 sound/soc/mediatek/mt8188/mt8188-mt6359.c | 67 ++---------------------
 1 file changed, 6 insertions(+), 61 deletions(-)

diff --git a/sound/soc/mediatek/mt8188/mt8188-mt6359.c b/sound/soc/mediatek/mt8188/mt8188-mt6359.c
index 33d477cc2e54..b4606a28794c 100644
--- a/sound/soc/mediatek/mt8188/mt8188-mt6359.c
+++ b/sound/soc/mediatek/mt8188/mt8188-mt6359.c
@@ -726,7 +726,7 @@ static int mt8188_max98390_codec_init(struct snd_soc_pcm_runtime *rtd)
 	return 0;
 }
 
-static int mt8188_nau8825_codec_init(struct snd_soc_pcm_runtime *rtd)
+static int mt8188_headset_codec_init(struct snd_soc_pcm_runtime *rtd)
 {
 	struct snd_soc_card *card = rtd->card;
 	struct mtk_soc_card_data *soc_card_data = snd_soc_card_get_drvdata(card);
@@ -775,68 +775,13 @@ static int mt8188_nau8825_codec_init(struct snd_soc_pcm_runtime *rtd)
 	return 0;
 };
 
-static int mt8188_rt5682s_codec_init(struct snd_soc_pcm_runtime *rtd)
-{
-	struct snd_soc_card *card = rtd->card;
-	struct mtk_soc_card_data *soc_card_data = snd_soc_card_get_drvdata(card);
-	struct mt8188_mt6359_priv *priv = soc_card_data->mach_priv;
-	struct snd_soc_component *component = snd_soc_rtd_to_codec(rtd, 0)->component;
-	struct snd_soc_jack *jack = &priv->headset_jack;
-	int ret;
-
-	ret = snd_soc_dapm_new_controls(&card->dapm, mt8188_nau8825_widgets,
-					ARRAY_SIZE(mt8188_nau8825_widgets));
-	if (ret) {
-		dev_err(rtd->dev, "unable to add rt5682s card widget, ret %d\n", ret);
-		return ret;
-	}
-
-	ret = snd_soc_add_card_controls(card, mt8188_nau8825_controls,
-					ARRAY_SIZE(mt8188_nau8825_controls));
-	if (ret) {
-		dev_err(rtd->dev, "unable to add rt5682s card controls, ret %d\n", ret);
-		return ret;
-	}
-
-	ret = snd_soc_card_jack_new_pins(rtd->card, "Headset Jack",
-					 SND_JACK_HEADSET | SND_JACK_BTN_0 |
-					 SND_JACK_BTN_1 | SND_JACK_BTN_2 |
-					 SND_JACK_BTN_3,
-					 jack,
-					 nau8825_jack_pins,
-					 ARRAY_SIZE(nau8825_jack_pins));
-	if (ret) {
-		dev_err(rtd->dev, "Headset Jack creation failed: %d\n", ret);
-		return ret;
-	}
-
-	snd_jack_set_key(jack->jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
-	snd_jack_set_key(jack->jack, SND_JACK_BTN_1, KEY_VOICECOMMAND);
-	snd_jack_set_key(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEUP);
-	snd_jack_set_key(jack->jack, SND_JACK_BTN_3, KEY_VOLUMEDOWN);
-	ret = snd_soc_component_set_jack(component, jack, NULL);
-
-	if (ret) {
-		dev_err(rtd->dev, "Headset Jack call-back failed: %d\n", ret);
-		return ret;
-	}
-
-	return 0;
-};
-
-static void mt8188_nau8825_codec_exit(struct snd_soc_pcm_runtime *rtd)
+static void mt8188_headset_codec_exit(struct snd_soc_pcm_runtime *rtd)
 {
 	struct snd_soc_component *component = snd_soc_rtd_to_codec(rtd, 0)->component;
 
 	snd_soc_component_set_jack(component, NULL, NULL);
 }
 
-static void mt8188_rt5682s_codec_exit(struct snd_soc_pcm_runtime *rtd)
-{
-	struct snd_soc_component *component = snd_soc_rtd_to_codec(rtd, 0)->component;
-
-	snd_soc_component_set_jack(component, NULL, NULL);
-}
 
 static int mt8188_nau8825_hw_params(struct snd_pcm_substream *substream,
 				    struct snd_pcm_hw_params *params)
@@ -1407,15 +1352,15 @@ static int mt8188_mt6359_dev_probe(struct platform_device *pdev)
 			} else if (!strcmp(dai_link->codecs->dai_name, NAU8825_CODEC_DAI)) {
 				dai_link->ops = &mt8188_nau8825_ops;
 				if (!init_nau8825) {
-					dai_link->init = mt8188_nau8825_codec_init;
-					dai_link->exit = mt8188_nau8825_codec_exit;
+					dai_link->init = mt8188_headset_codec_init;
+					dai_link->exit = mt8188_headset_codec_exit;
 					init_nau8825 = true;
 				}
 			} else if (!strcmp(dai_link->codecs->dai_name, RT5682S_CODEC_DAI)) {
 				dai_link->ops = &mt8188_rt5682s_i2s_ops;
 				if (!init_rt5682s) {
-					dai_link->init = mt8188_rt5682s_codec_init;
-					dai_link->exit = mt8188_rt5682s_codec_exit;
+					dai_link->init = mt8188_headset_codec_init;
+					dai_link->exit = mt8188_headset_codec_exit;
 					init_rt5682s = true;
 				}
 			} else {
-- 
2.25.1


