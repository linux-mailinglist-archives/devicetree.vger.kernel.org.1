Return-Path: <devicetree+bounces-59625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F768A64A0
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 09:15:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BCD51F224E7
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 07:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E0E9127B72;
	Tue, 16 Apr 2024 07:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Rw9PHJ3n"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4248775808;
	Tue, 16 Apr 2024 07:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713251669; cv=none; b=Wo+ga5RVAxkwyoSK9KwAS54WsqWhsTkIwhJ0wiQemEJ7WxYtYt0V5OipQYO/5+GfOGhxr0Xu9O9OlSEoublZcbXrgEmiMxgu55F3ZYLRpgn4MeMMDYDCCq1QueNbvehrLKS1PBY80V4Gjwan+CS2gvs7uYlJUXdqzKcRF9Kodfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713251669; c=relaxed/simple;
	bh=BB6XcCGlmcxZViVH9ZoV55JPlRV3RU8W/ckUxIBPpuY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MTMqNuZ6qrwlnA9GnmaTXcNHaZQtLi5dPjRep7s5X5ZwhVUziZNlGhOKZhdckcGK1tV+wAxoSFtsr8AWMHUwfAozQtQmqJT2MXUMJWhcLjIXuH8zv1oCeIDhDKgu7J6ufvOs07HaSs02987EEdi0zA6f3jlzs7RnbqnD0SLJYQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Rw9PHJ3n; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1713251665;
	bh=BB6XcCGlmcxZViVH9ZoV55JPlRV3RU8W/ckUxIBPpuY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Rw9PHJ3nE/q4pqibmhDb5ImZuz0A+BEbCw7wHBl5VMR+bOG4g/CsFPHUXSN1i92xS
	 sLVcu4ir7kB+K/xQVCOrkJKL2KiL6DJKhj988C+DsilMgO37LOAY6E1gqKVqIBnOoY
	 a+nk30/GsGiY1GBipTjdYejfB4atAsDXhmChD8/Rx6NCvhF7X+I3bjFWWLR3mguwWK
	 aKLrSVca2cOOkicbjCkeZMg/7BQseQAA1p6iYR5BZmjvwVavH8mLOgPv24TulFev2+
	 WCTuZ/pz0OEdVPRMqcCZLLgQoyQCyCf+lvkFCqo/znqLZT/3wRarffSaJz6cYtZom7
	 oPQmG82FlkQbQ==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6B1433782134;
	Tue, 16 Apr 2024 07:14:23 +0000 (UTC)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: broonie@kernel.org
Cc: wenst@chromium.org,
	lgirdwood@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	trevor.wu@mediatek.com,
	maso.huang@mediatek.com,
	xiazhengqiao@huaqin.corp-partner.google.com,
	arnd@arndb.de,
	kuninori.morimoto.gx@renesas.com,
	shraash@google.com,
	amergnat@baylibre.com,
	nicolas.ferre@microchip.com,
	u.kleine-koenig@pengutronix.de,
	dianders@chromium.org,
	frank.li@vivo.com,
	allen-kh.cheng@mediatek.com,
	eugen.hristev@collabora.com,
	claudiu.beznea@tuxon.dev,
	jarkko.nikula@bitmer.com,
	jiaxin.yu@mediatek.com,
	alpernebiyasak@gmail.com,
	ckeepax@opensource.cirrus.com,
	zhourui@huaqin.corp-partner.google.com,
	nfraprado@collabora.com,
	alsa-devel@alsa-project.org,
	shane.chien@mediatek.com,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: [PATCH v5 03/18] ASoC: mediatek: mt8188: Migrate to mtk_soundcard_common_probe
Date: Tue, 16 Apr 2024 09:13:55 +0200
Message-ID: <20240416071410.75620-4-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240416071410.75620-1-angelogioacchino.delregno@collabora.com>
References: <20240416071410.75620-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add mtk_soundcard_pdata platform data for the MediaTek common sound card
probe mechanism, including a driver/soc-specific probe extension (used
for bits that cannot be commonized  hence specific to this driver), and
change the probe function to mtk_soundcard_common_probe.

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 sound/soc/mediatek/mt8188/mt8188-mt6359.c | 203 +++++++---------------
 1 file changed, 64 insertions(+), 139 deletions(-)

diff --git a/sound/soc/mediatek/mt8188/mt8188-mt6359.c b/sound/soc/mediatek/mt8188/mt8188-mt6359.c
index a391066ab204..f629fc6bbb53 100644
--- a/sound/soc/mediatek/mt8188/mt8188-mt6359.c
+++ b/sound/soc/mediatek/mt8188/mt8188-mt6359.c
@@ -236,11 +236,11 @@ static const struct sof_conn_stream g_sof_conn_streams[] = {
 	},
 };
 
-struct mt8188_mt6359_priv {
-	struct snd_soc_jack dp_jack;
-	struct snd_soc_jack hdmi_jack;
-	struct snd_soc_jack headset_jack;
-	void *private_data;
+enum mt8188_jacks {
+	MT8188_JACK_HEADSET,
+	MT8188_JACK_DP,
+	MT8188_JACK_HDMI,
+	MT8188_JACK_MAX,
 };
 
 static struct snd_soc_jack_pin mt8188_hdmi_jack_pins[] = {
@@ -268,11 +268,6 @@ static struct snd_soc_jack_pin nau8825_jack_pins[] = {
 	},
 };
 
-struct mt8188_card_data {
-	const char *name;
-	unsigned long quirk;
-};
-
 static const struct snd_kcontrol_new mt8188_dumb_spk_controls[] = {
 	SOC_DAPM_PIN_SWITCH("Ext Spk"),
 };
@@ -590,12 +585,12 @@ static int mt8188_dptx_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
 static int mt8188_hdmi_codec_init(struct snd_soc_pcm_runtime *rtd)
 {
 	struct mtk_soc_card_data *soc_card_data = snd_soc_card_get_drvdata(rtd->card);
-	struct mt8188_mt6359_priv *priv = soc_card_data->mach_priv;
+	struct snd_soc_jack *jack = &soc_card_data->card_data->jacks[MT8188_JACK_HDMI];
 	struct snd_soc_component *component = snd_soc_rtd_to_codec(rtd, 0)->component;
 	int ret = 0;
 
 	ret = snd_soc_card_jack_new_pins(rtd->card, "HDMI Jack",
-					 SND_JACK_LINEOUT, &priv->hdmi_jack,
+					 SND_JACK_LINEOUT, jack,
 					 mt8188_hdmi_jack_pins,
 					 ARRAY_SIZE(mt8188_hdmi_jack_pins));
 	if (ret) {
@@ -603,7 +598,7 @@ static int mt8188_hdmi_codec_init(struct snd_soc_pcm_runtime *rtd)
 		return ret;
 	}
 
-	ret = snd_soc_component_set_jack(component, &priv->hdmi_jack, NULL);
+	ret = snd_soc_component_set_jack(component, jack, NULL);
 	if (ret) {
 		dev_err(rtd->dev, "%s, set jack failed on %s (ret=%d)\n",
 			__func__, component->name, ret);
@@ -616,19 +611,19 @@ static int mt8188_hdmi_codec_init(struct snd_soc_pcm_runtime *rtd)
 static int mt8188_dptx_codec_init(struct snd_soc_pcm_runtime *rtd)
 {
 	struct mtk_soc_card_data *soc_card_data = snd_soc_card_get_drvdata(rtd->card);
-	struct mt8188_mt6359_priv *priv = soc_card_data->mach_priv;
+	struct snd_soc_jack *jack = &soc_card_data->card_data->jacks[MT8188_JACK_DP];
 	struct snd_soc_component *component = snd_soc_rtd_to_codec(rtd, 0)->component;
 	int ret = 0;
 
 	ret = snd_soc_card_jack_new_pins(rtd->card, "DP Jack", SND_JACK_LINEOUT,
-					 &priv->dp_jack, mt8188_dp_jack_pins,
+					 jack, mt8188_dp_jack_pins,
 					 ARRAY_SIZE(mt8188_dp_jack_pins));
 	if (ret) {
 		dev_err(rtd->dev, "%s, new jack failed: %d\n", __func__, ret);
 		return ret;
 	}
 
-	ret = snd_soc_component_set_jack(component, &priv->dp_jack, NULL);
+	ret = snd_soc_component_set_jack(component, jack, NULL);
 	if (ret) {
 		dev_err(rtd->dev, "%s, set jack failed on %s (ret=%d)\n",
 			__func__, component->name, ret);
@@ -736,10 +731,9 @@ static int mt8188_max98390_codec_init(struct snd_soc_pcm_runtime *rtd)
 static int mt8188_headset_codec_init(struct snd_soc_pcm_runtime *rtd)
 {
 	struct snd_soc_card *card = rtd->card;
-	struct mtk_soc_card_data *soc_card_data = snd_soc_card_get_drvdata(card);
-	struct mt8188_mt6359_priv *priv = soc_card_data->mach_priv;
+	struct mtk_soc_card_data *soc_card_data = snd_soc_card_get_drvdata(rtd->card);
+	struct snd_soc_jack *jack = &soc_card_data->card_data->jacks[MT8188_JACK_HEADSET];
 	struct snd_soc_component *component = snd_soc_rtd_to_codec(rtd, 0)->component;
-	struct snd_soc_jack *jack = &priv->headset_jack;
 	int ret;
 
 	ret = snd_soc_dapm_new_controls(&card->dapm, mt8188_nau8825_widgets,
@@ -1224,11 +1218,10 @@ static struct snd_soc_dai_link mt8188_mt6359_dai_links[] = {
 static void mt8188_fixup_controls(struct snd_soc_card *card)
 {
 	struct mtk_soc_card_data *soc_card_data = snd_soc_card_get_drvdata(card);
-	struct mt8188_mt6359_priv *priv = soc_card_data->mach_priv;
-	struct mt8188_card_data *card_data = (struct mt8188_card_data *)priv->private_data;
+	struct mtk_platform_card_data *card_data = soc_card_data->card_data;
 	struct snd_kcontrol *kctl;
 
-	if (card_data->quirk & (NAU8825_HS_PRESENT | RT5682S_HS_PRESENT | ES8326_HS_PRESENT)) {
+	if (card_data->flags & (NAU8825_HS_PRESENT | RT5682S_HS_PRESENT | ES8326_HS_PRESENT)) {
 		struct snd_soc_dapm_widget *w, *next_w;
 
 		for_each_card_widgets_safe(card, w, next_w) {
@@ -1259,14 +1252,10 @@ static struct snd_soc_card mt8188_mt6359_soc_card = {
 	.fixup_controls = mt8188_fixup_controls,
 };
 
-static int mt8188_mt6359_dev_probe(struct platform_device *pdev)
+static int mt8188_mt6359_soc_card_probe(struct mtk_soc_card_data *soc_card_data, bool legacy)
 {
-	struct snd_soc_card *card = &mt8188_mt6359_soc_card;
-	struct device_node *platform_node;
-	struct device_node *adsp_node;
-	struct mtk_soc_card_data *soc_card_data;
-	struct mt8188_mt6359_priv *priv;
-	struct mt8188_card_data *card_data;
+	struct mtk_platform_card_data *card_data = soc_card_data->card_data;
+	struct snd_soc_card *card = soc_card_data->card_data->card;
 	struct snd_soc_dai_link *dai_link;
 	bool init_mt6359 = false;
 	bool init_es8326 = false;
@@ -1274,91 +1263,12 @@ static int mt8188_mt6359_dev_probe(struct platform_device *pdev)
 	bool init_rt5682s = false;
 	bool init_max98390 = false;
 	bool init_dumb = false;
-	int ret, i;
-
-	card_data = (struct mt8188_card_data *)of_device_get_match_data(&pdev->dev);
-	card->dev = &pdev->dev;
-
-	ret = snd_soc_of_parse_card_name(card, "model");
-	if (ret)
-		return dev_err_probe(&pdev->dev, ret, "%s new card name parsing error\n",
-				     __func__);
-
-	if (!card->name)
-		card->name = card_data->name;
-
-	if (of_property_read_bool(pdev->dev.of_node, "audio-routing")) {
-		ret = snd_soc_of_parse_audio_routing(card, "audio-routing");
-		if (ret)
-			return ret;
-	}
-
-	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
-
-	soc_card_data = devm_kzalloc(&pdev->dev, sizeof(*card_data), GFP_KERNEL);
-	if (!soc_card_data)
-		return -ENOMEM;
-
-	soc_card_data->mach_priv = priv;
-
-	adsp_node = of_parse_phandle(pdev->dev.of_node, "mediatek,adsp", 0);
-	if (adsp_node) {
-		struct mtk_sof_priv *sof_priv;
-
-		sof_priv = devm_kzalloc(&pdev->dev, sizeof(*sof_priv), GFP_KERNEL);
-		if (!sof_priv) {
-			ret = -ENOMEM;
-			goto err_adsp_node;
-		}
-		sof_priv->conn_streams = g_sof_conn_streams;
-		sof_priv->num_streams = ARRAY_SIZE(g_sof_conn_streams);
-		soc_card_data->sof_priv = sof_priv;
-		card->probe = mtk_sof_card_probe;
-		card->late_probe = mtk_sof_card_late_probe;
-		if (!card->topology_shortname_created) {
-			snprintf(card->topology_shortname, 32, "sof-%s", card->name);
-			card->topology_shortname_created = true;
-		}
-		card->name = card->topology_shortname;
-	}
-
-	if (of_property_read_bool(pdev->dev.of_node, "mediatek,dai-link")) {
-		ret = mtk_sof_dailink_parse_of(card, pdev->dev.of_node,
-					       "mediatek,dai-link",
-					       mt8188_mt6359_dai_links,
-					       ARRAY_SIZE(mt8188_mt6359_dai_links));
-		if (ret) {
-			dev_err_probe(&pdev->dev, ret, "Parse dai-link fail\n");
-			goto err_adsp_node;
-		}
-	} else {
-		if (!adsp_node)
-			card->num_links = DAI_LINK_REGULAR_NUM;
-	}
-
-	platform_node = of_parse_phandle(pdev->dev.of_node,
-					 "mediatek,platform", 0);
-	if (!platform_node) {
-		ret = dev_err_probe(&pdev->dev, -EINVAL,
-				    "Property 'platform' missing or invalid\n");
-		goto err_adsp_node;
-
-	}
+	int i;
 
-	ret = parse_dai_link_info(card);
-	if (ret)
-		goto err;
+	if (legacy)
+		return -EINVAL;
 
 	for_each_card_prelinks(card, i, dai_link) {
-		if (!dai_link->platforms->name) {
-			if (!strncmp(dai_link->name, "AFE_SOF", strlen("AFE_SOF")) && adsp_node)
-				dai_link->platforms->of_node = adsp_node;
-			else
-				dai_link->platforms->of_node = platform_node;
-		}
-
 		if (strcmp(dai_link->name, "DPTX_BE") == 0) {
 			if (strcmp(dai_link->codecs->dai_name, "snd-soc-dummy-dai"))
 				dai_link->init = mt8188_dptx_codec_init;
@@ -1381,7 +1291,7 @@ static int mt8188_mt6359_dev_probe(struct platform_device *pdev)
 				 * mt8188_max98390_ops. Two amps is I2S mode,
 				 * SOC and codec don't require TDM settings.
 				 */
-				if (!(card_data->quirk & MAX98390_TWO_AMP)) {
+				if (!(card_data->flags & MAX98390_TWO_AMP)) {
 					dai_link->ops = &mt8188_max98390_ops;
 				}
 				if (!init_max98390) {
@@ -1420,40 +1330,55 @@ static int mt8188_mt6359_dev_probe(struct platform_device *pdev)
 		}
 	}
 
-	priv->private_data = card_data;
-	snd_soc_card_set_drvdata(card, soc_card_data);
-
-	ret = devm_snd_soc_register_card(&pdev->dev, card);
-	if (ret)
-		dev_err_probe(&pdev->dev, ret, "%s snd_soc_register_card fail\n",
-			      __func__);
-err:
-	of_node_put(platform_node);
-	clean_card_reference(card);
-
-err_adsp_node:
-	of_node_put(adsp_node);
-
-	return ret;
+	return 0;
 }
 
-static struct mt8188_card_data mt8188_evb_card = {
-	.name = "mt8188_mt6359",
+static const struct mtk_sof_priv mt8188_sof_priv = {
+	.conn_streams = g_sof_conn_streams,
+	.num_streams = ARRAY_SIZE(g_sof_conn_streams),
+};
+
+static const struct mtk_soundcard_pdata mt8188_evb_card = {
+	.card_name = "mt8188_mt6359",
+	.card_data = &(struct mtk_platform_card_data) {
+		.card = &mt8188_mt6359_soc_card,
+		.num_jacks = MT8188_JACK_MAX,
+	},
+	.sof_priv = &mt8188_sof_priv,
+	.soc_probe = mt8188_mt6359_soc_card_probe,
 };
 
-static struct mt8188_card_data mt8188_nau8825_card = {
-	.name = "mt8188_nau8825",
-	.quirk = NAU8825_HS_PRESENT,
+static const struct mtk_soundcard_pdata mt8188_nau8825_card = {
+	.card_name = "mt8188_nau8825",
+	.card_data = &(struct mtk_platform_card_data) {
+		.card = &mt8188_mt6359_soc_card,
+		.num_jacks = MT8188_JACK_MAX,
+		.flags = NAU8825_HS_PRESENT
+	},
+	.sof_priv = &mt8188_sof_priv,
+	.soc_probe = mt8188_mt6359_soc_card_probe,
 };
 
-static struct mt8188_card_data mt8188_rt5682s_card = {
-	.name = "mt8188_rt5682s",
-	.quirk = RT5682S_HS_PRESENT | MAX98390_TWO_AMP,
+static const struct mtk_soundcard_pdata mt8188_rt5682s_card = {
+	.card_name = "mt8188_rt5682s",
+	.card_data = &(struct mtk_platform_card_data) {
+		.card = &mt8188_mt6359_soc_card,
+		.num_jacks = MT8188_JACK_MAX,
+		.flags = RT5682S_HS_PRESENT | MAX98390_TWO_AMP
+	},
+	.sof_priv = &mt8188_sof_priv,
+	.soc_probe = mt8188_mt6359_soc_card_probe,
 };
 
-static struct mt8188_card_data mt8188_es8326_card = {
-	.name = "mt8188_es8326",
-	.quirk = ES8326_HS_PRESENT | MAX98390_TWO_AMP,
+static const struct mtk_soundcard_pdata mt8188_es8326_card = {
+	.card_name = "mt8188_es8326",
+	.card_data = &(struct mtk_platform_card_data) {
+		.card = &mt8188_mt6359_soc_card,
+		.num_jacks = MT8188_JACK_MAX,
+		.flags = ES8326_HS_PRESENT | MAX98390_TWO_AMP
+	},
+	.sof_priv = &mt8188_sof_priv,
+	.soc_probe = mt8188_mt6359_soc_card_probe,
 };
 
 static const struct of_device_id mt8188_mt6359_dt_match[] = {
@@ -1471,7 +1396,7 @@ static struct platform_driver mt8188_mt6359_driver = {
 		.of_match_table = mt8188_mt6359_dt_match,
 		.pm = &snd_soc_pm_ops,
 	},
-	.probe = mt8188_mt6359_dev_probe,
+	.probe = mtk_soundcard_common_probe,
 };
 
 module_platform_driver(mt8188_mt6359_driver);
-- 
2.44.0


