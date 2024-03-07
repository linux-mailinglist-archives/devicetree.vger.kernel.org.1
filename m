Return-Path: <devicetree+bounces-49101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B629F874E18
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 12:49:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4773C1F21D1A
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 11:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9587912F386;
	Thu,  7 Mar 2024 11:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="4gngkFCS"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE06012EBE8;
	Thu,  7 Mar 2024 11:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709811934; cv=none; b=Ai0T8r5CIjLzlCkcLljNOSEFDeUjEvYER5E6xyyRqbqR1EWzDSPxblf2u9Zl/QtgwShTV4A/KTIDso2VTwCn/ssQ/GBFRw17PorkaMsPKy+yRGQhDH6WIAHcpbELErCtgEeAz6q0C0TXrXGxzDu/6y0r9asnEdnW7GYKp7EDebo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709811934; c=relaxed/simple;
	bh=0HO5qRG7yEUzOGGRdhqoIYa/lL7AlbvV2yD89QdBpT4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P8sR51KAeC1eEb/a70VSaTL6bq2lAlVIuOW3m91s9D/TB5U6Y8nT9DbBrbkIbF5pOvYbkrs0ctnkYSrrR6Kp3LAasPi5vT8ux3vD2PpignGUnLhsK8COIHoP6aa86yKLZJNDiipCvg1/mk6mZLNlCBc7680glrttDA6S7FDRluA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=4gngkFCS; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709811931;
	bh=0HO5qRG7yEUzOGGRdhqoIYa/lL7AlbvV2yD89QdBpT4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=4gngkFCSp3dWi3eGOjoyRHhDjdsZ8P8up9R39kORvgFn2O07thu5/BAx09CZo9Stk
	 K7qMsAkXXNkBpjMYvbjVBYxR+VlasRqeXlgz6gPo9BlCuPS9XQdEN+GNXUQmx3lq0q
	 7oSqIunhZybPgpDlSaJm/h+ZVsFEZUpMHifMMpeKqdtEpuE/u3ELdHlUul6flVhLon
	 Vog7qm6vCmjdFAAfnWh2nbLMAxqRxRdhlrspdD+Sevf8A1Pmu15XwSeNCnhaFzj3yI
	 Cj6VcMhqSZYGlD6sL6HTKHCDIMhFJRSoYMakafjTXlmunz/J73aKuLVqrpoa66a6N8
	 mbPts1L/JHRyw==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 069FF37820F3;
	Thu,  7 Mar 2024 11:45:28 +0000 (UTC)
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
Subject: [PATCH v2 16/22] ASoC: mediatek: Use common mtk_afe_pcm_platform with common probe cb
Date: Thu,  7 Mar 2024 12:44:39 +0100
Message-ID: <20240307114445.196981-17-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240307114445.196981-1-angelogioacchino.delregno@collabora.com>
References: <20240307114445.196981-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since the mtk-afe-platform-driver generic mtk_afe_pcm_platform now has
a common .probe() callback, there is no reason to keep duplicating this
function over and over in the SoC specific AFE-PCM drivers: switch over
to register with the common bits instead.

Note that MT8186 was left out of this because it is registering some
extra sinegen controls in the AFE-PCM probe callback and needs extra
cleanups to be able to use the common bits.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 sound/soc/mediatek/mt6797/mt6797-afe-pcm.c | 14 +-----------
 sound/soc/mediatek/mt7986/mt7986-afe-pcm.c | 14 +-----------
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c | 14 +-----------
 sound/soc/mediatek/mt8188/mt8188-afe-pcm.c | 21 +-----------------
 sound/soc/mediatek/mt8192/mt8192-afe-pcm.c | 25 ++--------------------
 sound/soc/mediatek/mt8195/mt8195-afe-pcm.c | 21 +-----------------
 6 files changed, 7 insertions(+), 102 deletions(-)

diff --git a/sound/soc/mediatek/mt6797/mt6797-afe-pcm.c b/sound/soc/mediatek/mt6797/mt6797-afe-pcm.c
index da7267c684b1..c1dee119e93a 100644
--- a/sound/soc/mediatek/mt6797/mt6797-afe-pcm.c
+++ b/sound/soc/mediatek/mt6797/mt6797-afe-pcm.c
@@ -704,18 +704,6 @@ static int mt6797_afe_runtime_resume(struct device *dev)
 	return 0;
 }
 
-static int mt6797_afe_component_probe(struct snd_soc_component *component)
-{
-	return mtk_afe_add_sub_dai_control(component);
-}
-
-static const struct snd_soc_component_driver mt6797_afe_component = {
-	.name		= AFE_PCM_NAME,
-	.probe		= mt6797_afe_component_probe,
-	.pointer	= mtk_afe_pcm_pointer,
-	.pcm_construct	= mtk_afe_pcm_new,
-};
-
 static int mt6797_dai_memif_register(struct mtk_base_afe *afe)
 {
 	struct mtk_base_afe_dai *dai;
@@ -852,7 +840,7 @@ static int mt6797_afe_pcm_dev_probe(struct platform_device *pdev)
 	pm_runtime_get_sync(&pdev->dev);
 
 	/* register component */
-	ret = devm_snd_soc_register_component(dev, &mt6797_afe_component,
+	ret = devm_snd_soc_register_component(dev, &mtk_afe_pcm_platform,
 					      NULL, 0);
 	if (ret) {
 		dev_warn(dev, "err_platform\n");
diff --git a/sound/soc/mediatek/mt7986/mt7986-afe-pcm.c b/sound/soc/mediatek/mt7986/mt7986-afe-pcm.c
index d497e1129889..c1c486e275b9 100644
--- a/sound/soc/mediatek/mt7986/mt7986-afe-pcm.c
+++ b/sound/soc/mediatek/mt7986/mt7986-afe-pcm.c
@@ -429,18 +429,6 @@ static int mt7986_afe_runtime_resume(struct device *dev)
 	return 0;
 }
 
-static int mt7986_afe_component_probe(struct snd_soc_component *component)
-{
-	return mtk_afe_add_sub_dai_control(component);
-}
-
-static const struct snd_soc_component_driver mt7986_afe_component = {
-	.name = AFE_PCM_NAME,
-	.probe = mt7986_afe_component_probe,
-	.pointer	= mtk_afe_pcm_pointer,
-	.pcm_construct	= mtk_afe_pcm_new,
-};
-
 static int mt7986_dai_memif_register(struct mtk_base_afe *afe)
 {
 	struct mtk_base_afe_dai *dai;
@@ -573,7 +561,7 @@ static int mt7986_afe_pcm_dev_probe(struct platform_device *pdev)
 
 	/* register component */
 	ret = devm_snd_soc_register_component(&pdev->dev,
-					      &mt7986_afe_component,
+					      &mtk_afe_pcm_platform,
 					      NULL, 0);
 	if (ret)
 		return dev_err_probe(dev, ret, "Cannot register AFE component\n");
diff --git a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
index 9e432ed9124b..25348fdf75fa 100644
--- a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
+++ b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
@@ -1042,18 +1042,6 @@ static int mt8183_afe_runtime_resume(struct device *dev)
 	return 0;
 }
 
-static int mt8183_afe_component_probe(struct snd_soc_component *component)
-{
-	return mtk_afe_add_sub_dai_control(component);
-}
-
-static const struct snd_soc_component_driver mt8183_afe_component = {
-	.name		= AFE_PCM_NAME,
-	.probe		= mt8183_afe_component_probe,
-	.pointer	= mtk_afe_pcm_pointer,
-	.pcm_construct	= mtk_afe_pcm_new,
-};
-
 static int mt8183_dai_memif_register(struct mtk_base_afe *afe)
 {
 	struct mtk_base_afe_dai *dai;
@@ -1232,7 +1220,7 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 
 	/* register component */
 	ret = devm_snd_soc_register_component(&pdev->dev,
-					      &mt8183_afe_component,
+					      &mtk_afe_pcm_platform,
 					      NULL, 0);
 	if (ret) {
 		dev_warn(dev, "err_platform\n");
diff --git a/sound/soc/mediatek/mt8188/mt8188-afe-pcm.c b/sound/soc/mediatek/mt8188/mt8188-afe-pcm.c
index 46d6a5540403..9647fe133dc8 100644
--- a/sound/soc/mediatek/mt8188/mt8188-afe-pcm.c
+++ b/sound/soc/mediatek/mt8188/mt8188-afe-pcm.c
@@ -3030,25 +3030,6 @@ static int mt8188_afe_runtime_resume(struct device *dev)
 	return 0;
 }
 
-static int mt8188_afe_component_probe(struct snd_soc_component *component)
-{
-	struct mtk_base_afe *afe = snd_soc_component_get_drvdata(component);
-	int ret;
-
-	snd_soc_component_init_regmap(component, afe->regmap);
-
-	ret = mtk_afe_add_sub_dai_control(component);
-
-	return ret;
-}
-
-static const struct snd_soc_component_driver mt8188_afe_component = {
-	.name = AFE_PCM_NAME,
-	.pointer       = mtk_afe_pcm_pointer,
-	.pcm_construct = mtk_afe_pcm_new,
-	.probe         = mt8188_afe_component_probe,
-};
-
 static int init_memif_priv_data(struct mtk_base_afe *afe)
 {
 	struct mt8188_afe_private *afe_priv = afe->platform_priv;
@@ -3350,7 +3331,7 @@ static int mt8188_afe_pcm_dev_probe(struct platform_device *pdev)
 	}
 
 	/* register component */
-	ret = devm_snd_soc_register_component(dev, &mt8188_afe_component,
+	ret = devm_snd_soc_register_component(dev, &mtk_afe_pcm_platform,
 					      afe->dai_drivers, afe->num_dai_drivers);
 	if (ret) {
 		dev_warn(dev, "err_platform\n");
diff --git a/sound/soc/mediatek/mt8192/mt8192-afe-pcm.c b/sound/soc/mediatek/mt8192/mt8192-afe-pcm.c
index aed22baef9fb..424c5c68f78a 100644
--- a/sound/soc/mediatek/mt8192/mt8192-afe-pcm.c
+++ b/sound/soc/mediatek/mt8192/mt8192-afe-pcm.c
@@ -2125,22 +2125,6 @@ static int mt8192_afe_runtime_resume(struct device *dev)
 	return 0;
 }
 
-static int mt8192_afe_component_probe(struct snd_soc_component *component)
-{
-	return mtk_afe_add_sub_dai_control(component);
-}
-
-static const struct snd_soc_component_driver mt8192_afe_component = {
-	.name = AFE_PCM_NAME,
-	.probe = mt8192_afe_component_probe,
-	.pointer = mtk_afe_pcm_pointer,
-	.pcm_construct = mtk_afe_pcm_new,
-};
-
-static const struct snd_soc_component_driver mt8192_afe_pcm_component = {
-	.name = "mt8192-afe-pcm-dai",
-};
-
 static int mt8192_dai_memif_register(struct mtk_base_afe *afe)
 {
 	struct mtk_base_afe_dai *dai;
@@ -2302,16 +2286,11 @@ static int mt8192_afe_pcm_dev_probe(struct platform_device *pdev)
 
 	/* register platform */
 	ret = devm_snd_soc_register_component(&pdev->dev,
-					      &mt8192_afe_component, NULL, 0);
-	if (ret)
-		return dev_err_probe(dev, ret, "Couldn't register AFE component\n");
-
-	ret = devm_snd_soc_register_component(&pdev->dev,
-					      &mt8192_afe_pcm_component,
+					      &mtk_afe_pcm_platform,
 					      afe->dai_drivers,
 					      afe->num_dai_drivers);
 	if (ret)
-		return dev_err_probe(dev, ret, "Couldn't register AFE-PCM component\n");
+		return dev_err_probe(dev, ret, "Couldn't register AFE component\n");
 
 	return 0;
 }
diff --git a/sound/soc/mediatek/mt8195/mt8195-afe-pcm.c b/sound/soc/mediatek/mt8195/mt8195-afe-pcm.c
index 620d7ade1992..64af9bf363fd 100644
--- a/sound/soc/mediatek/mt8195/mt8195-afe-pcm.c
+++ b/sound/soc/mediatek/mt8195/mt8195-afe-pcm.c
@@ -2944,25 +2944,6 @@ static int mt8195_afe_runtime_resume(struct device *dev)
 	return 0;
 }
 
-static int mt8195_afe_component_probe(struct snd_soc_component *component)
-{
-	struct mtk_base_afe *afe = snd_soc_component_get_drvdata(component);
-	int ret = 0;
-
-	snd_soc_component_init_regmap(component, afe->regmap);
-
-	ret = mtk_afe_add_sub_dai_control(component);
-
-	return ret;
-}
-
-static const struct snd_soc_component_driver mt8195_afe_component = {
-	.name = AFE_PCM_NAME,
-	.pointer = mtk_afe_pcm_pointer,
-	.pcm_construct = mtk_afe_pcm_new,
-	.probe = mt8195_afe_component_probe,
-};
-
 static int init_memif_priv_data(struct mtk_base_afe *afe)
 {
 	struct mt8195_afe_private *afe_priv = afe->platform_priv;
@@ -3164,7 +3145,7 @@ static int mt8195_afe_pcm_dev_probe(struct platform_device *pdev)
 	}
 
 	/* register component */
-	ret = devm_snd_soc_register_component(dev, &mt8195_afe_component,
+	ret = devm_snd_soc_register_component(dev, &mtk_afe_pcm_platform,
 					      afe->dai_drivers, afe->num_dai_drivers);
 	if (ret) {
 		dev_warn(dev, "err_platform\n");
-- 
2.44.0


