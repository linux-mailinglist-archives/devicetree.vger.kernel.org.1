Return-Path: <devicetree+bounces-50222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F95B87A66A
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 12:03:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C0911F225E2
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 11:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B9BA45020;
	Wed, 13 Mar 2024 11:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="4/bodS4K"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E083E47B;
	Wed, 13 Mar 2024 11:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710327735; cv=none; b=ukq9VNLl0hCGyPcToMqOZYL+M2oC1oEAIhfhwltXeZBCrZLNNzsYhPnsGMBYrrTskR2UHcwdIoFgsx46ZECrFEj5kH23gIf1bW7FNOwmkQlqO3EtP7+LgdtPDB7FQgidhB+CH2To3AgAnH3GLtdVwrJapxiZdEXJHC4cMwi8qP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710327735; c=relaxed/simple;
	bh=Q5qeA/4VKo3m34OedvzdenwOitJzicH0e47gxUWBDYI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eFv0ZcjSU7T9dK5+XnnnLpQyhR6ilHSC1VF+Er9akJLnRNGEv9Frci8fvRfzXB1WNmd8fl+MaGePt4UrBkTZeIFCnHcO5jzJqiRqtl7ngjCakiRjvIIysA8sIGj/lXPw5bd4JZHSyMYMYYjzaN5uEGSKPcQrAmh6y1Zz2nCYaqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=4/bodS4K; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710327731;
	bh=Q5qeA/4VKo3m34OedvzdenwOitJzicH0e47gxUWBDYI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=4/bodS4Ko1rWxQ5eZxHRWp2kBJsU2hecFXsNBIfVpkOBLyBLreduHlmTMs49tfsjc
	 DdoXD3yQ+p4yGwq74ckd4tg2uEJ77K4LxLy8IyWkWBNWuQSVV/onhriT5paxH4x75U
	 mxTB4ORKeL000Iiwyrm2h3m5y0kq4ErbQcSg+wAEZoX5y0OrOMipLS38DYQjFnQTKn
	 lSG3aR7SrNL8ei9Bqxh3mlK/wnsWd8XsUq9B47kVVg2cS1BI8ZtcIJf62tHQ90/C0t
	 BlrXOlVzseGNU4GLNC7tMwrJg7j4aBZKY6rmAHuhcBKlaxszMkIdHOFdWgQwunM5q7
	 w1leGeU8mW3SQ==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id ADCB437820D0;
	Wed, 13 Mar 2024 11:02:09 +0000 (UTC)
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
Subject: [PATCH v3 06/22] ASoC: mediatek: common: Constify struct mtk_sof_priv
Date: Wed, 13 Mar 2024 12:01:31 +0100
Message-ID: <20240313110147.1267793-7-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240313110147.1267793-1-angelogioacchino.delregno@collabora.com>
References: <20240313110147.1267793-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Apart from a dai_link_list variable, the mtk_sof_priv currently holds
data that never gets modified during runtime.

Constify the mtk_sof_priv structure and move the SOF dai_link_list as
sof_dai_link_list in struct mtk_soc_card_data, which is a structure
that already holds the card's machine specific, runtime modified data.

This allows to safely pass the mtk_sof_priv structure as platform data
for the commonized card probe mechanism.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 sound/soc/mediatek/common/mtk-dsp-sof-common.c   | 15 +++++++--------
 sound/soc/mediatek/common/mtk-dsp-sof-common.h   |  1 -
 sound/soc/mediatek/common/mtk-soundcard-driver.h |  2 +-
 3 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/sound/soc/mediatek/common/mtk-dsp-sof-common.c b/sound/soc/mediatek/common/mtk-dsp-sof-common.c
index 7ec8965a70c0..bca758dca2c9 100644
--- a/sound/soc/mediatek/common/mtk-dsp-sof-common.c
+++ b/sound/soc/mediatek/common/mtk-dsp-sof-common.c
@@ -15,7 +15,7 @@ int mtk_sof_dai_link_fixup(struct snd_soc_pcm_runtime *rtd,
 {
 	struct snd_soc_card *card = rtd->card;
 	struct mtk_soc_card_data *soc_card_data = snd_soc_card_get_drvdata(card);
-	struct mtk_sof_priv *sof_priv = soc_card_data->sof_priv;
+	const struct mtk_sof_priv *sof_priv = soc_card_data->sof_priv;
 	int i, j, ret = 0;
 
 	for (i = 0; i < sof_priv->num_streams; i++) {
@@ -55,7 +55,6 @@ int mtk_sof_card_probe(struct snd_soc_card *card)
 	int i;
 	struct snd_soc_dai_link *dai_link;
 	struct mtk_soc_card_data *soc_card_data = snd_soc_card_get_drvdata(card);
-	struct mtk_sof_priv *sof_priv = soc_card_data->sof_priv;
 
 	/* Set stream_name to help sof bind widgets */
 	for_each_card_prelinks(card, i, dai_link) {
@@ -63,7 +62,7 @@ int mtk_sof_card_probe(struct snd_soc_card *card)
 			dai_link->stream_name = dai_link->name;
 	}
 
-	INIT_LIST_HEAD(&sof_priv->dai_link_list);
+	INIT_LIST_HEAD(&soc_card_data->sof_dai_link_list);
 
 	return 0;
 }
@@ -73,7 +72,7 @@ static struct snd_soc_pcm_runtime *mtk_sof_find_tplg_be(struct snd_soc_pcm_runti
 {
 	struct snd_soc_card *card = rtd->card;
 	struct mtk_soc_card_data *soc_card_data = snd_soc_card_get_drvdata(card);
-	struct mtk_sof_priv *sof_priv = soc_card_data->sof_priv;
+	const struct mtk_sof_priv *sof_priv = soc_card_data->sof_priv;
 	struct snd_soc_pcm_runtime *fe;
 	struct snd_soc_pcm_runtime *be;
 	struct snd_soc_dpcm *dpcm;
@@ -113,7 +112,7 @@ static int mtk_sof_check_tplg_be_dai_link_fixup(struct snd_soc_pcm_runtime *rtd,
 {
 	struct snd_soc_card *card = rtd->card;
 	struct mtk_soc_card_data *soc_card_data = snd_soc_card_get_drvdata(card);
-	struct mtk_sof_priv *sof_priv = soc_card_data->sof_priv;
+	const struct mtk_sof_priv *sof_priv = soc_card_data->sof_priv;
 	struct snd_soc_pcm_runtime *sof_be;
 	struct mtk_dai_link *dai_link;
 	int ret = 0;
@@ -125,7 +124,7 @@ static int mtk_sof_check_tplg_be_dai_link_fixup(struct snd_soc_pcm_runtime *rtd,
 		else if (sof_be->dai_link->be_hw_params_fixup)
 			ret = sof_be->dai_link->be_hw_params_fixup(sof_be, params);
 	} else {
-		list_for_each_entry(dai_link, &sof_priv->dai_link_list, list) {
+		list_for_each_entry(dai_link, &soc_card_data->sof_dai_link_list, list) {
 			if (strcmp(dai_link->name, rtd->dai_link->name) == 0) {
 				if (dai_link->be_hw_params_fixup)
 					ret = dai_link->be_hw_params_fixup(rtd, params);
@@ -144,7 +143,7 @@ int mtk_sof_card_late_probe(struct snd_soc_card *card)
 	struct snd_soc_component *sof_comp = NULL;
 	struct mtk_soc_card_data *soc_card_data =
 		snd_soc_card_get_drvdata(card);
-	struct mtk_sof_priv *sof_priv = soc_card_data->sof_priv;
+	const struct mtk_sof_priv *sof_priv = soc_card_data->sof_priv;
 	struct snd_soc_dai_link *dai_link;
 	struct mtk_dai_link *mtk_dai_link;
 	int i;
@@ -173,7 +172,7 @@ int mtk_sof_card_late_probe(struct snd_soc_card *card)
 			mtk_dai_link->be_hw_params_fixup = dai_link->be_hw_params_fixup;
 			mtk_dai_link->name = dai_link->name;
 
-			list_add(&mtk_dai_link->list, &sof_priv->dai_link_list);
+			list_add(&mtk_dai_link->list, &soc_card_data->sof_dai_link_list);
 		}
 
 		if (dai_link->no_pcm)
diff --git a/sound/soc/mediatek/common/mtk-dsp-sof-common.h b/sound/soc/mediatek/common/mtk-dsp-sof-common.h
index 4bc5e1c0c8ed..8784ee471132 100644
--- a/sound/soc/mediatek/common/mtk-dsp-sof-common.h
+++ b/sound/soc/mediatek/common/mtk-dsp-sof-common.h
@@ -30,7 +30,6 @@ struct mtk_sof_priv {
 	int num_streams;
 	int (*sof_dai_link_fixup)(struct snd_soc_pcm_runtime *rtd,
 				  struct snd_pcm_hw_params *params);
-	struct list_head dai_link_list;
 };
 
 int mtk_sof_dai_link_fixup(struct snd_soc_pcm_runtime *rtd,
diff --git a/sound/soc/mediatek/common/mtk-soundcard-driver.h b/sound/soc/mediatek/common/mtk-soundcard-driver.h
index 44320efff5f8..4fd2ffb7e486 100644
--- a/sound/soc/mediatek/common/mtk-soundcard-driver.h
+++ b/sound/soc/mediatek/common/mtk-soundcard-driver.h
@@ -22,7 +22,7 @@ struct mtk_platform_card_data {
 struct mtk_soundcard_pdata {
 	const char *card_name;
 	struct mtk_platform_card_data *card_data;
-	struct mtk_sof_priv *sof_priv;
+	const struct mtk_sof_priv *sof_priv;
 	int (*soc_probe)(struct mtk_soc_card_data *card_data, bool legacy);
 };
 
-- 
2.44.0


