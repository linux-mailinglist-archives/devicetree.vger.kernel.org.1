Return-Path: <devicetree+bounces-50228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA9887A686
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 12:05:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 389811F2263D
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 11:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 906384AEC8;
	Wed, 13 Mar 2024 11:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="g4/cJf0P"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC7AA3EA95;
	Wed, 13 Mar 2024 11:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710327749; cv=none; b=M+AAHj5sC2ayH6Z326cTDvrEOoNUkt/CgWPrIW4xI6ZHpw8VP+4VRQZ8/w6lziX2Azn6zHAN/wBJxfF+X+DfqqOx8dsOI2hKviaePbTEBEt7LaguogmmebA7brfgSaoh/6KqnJVyDR+v6g/pb8K4kATFkxsJNs46L4aqr0qnsnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710327749; c=relaxed/simple;
	bh=J1cLn1ZkiMj/nqWHv8FW9Fb4kGxB9xQ83ourhgps8rk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YDP+pePJIxEi/yrxEclBgtj5TmLDDTGhFQqt+8z1sv1NRfo0oXiN2JwswFVCctE5ler/1h1LlSicHvjkqdd98MabreAl1QD7BbGU96oLRlho2R+CpZdxTJMRM8eStnTgJUgPx/2ZbzCaZMy1sZoM8o3TbtwgCueuHGqOZPo3JTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=g4/cJf0P; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710327746;
	bh=J1cLn1ZkiMj/nqWHv8FW9Fb4kGxB9xQ83ourhgps8rk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=g4/cJf0PMZj8KCogZuIBGwvavnqjqHDExCoSM79qvPoOfWYGqkAuPv6ruTTVZwQmJ
	 I7l3I1h65tPVeWZTioVz+0KKQqNA7FPWWPMG3ZE/bD8HmPIWpa3S+6QS3IrbnkpSCQ
	 YHA5FncB4R1oMpUDJQKPhxMc9K3eelG5rRYGYv4jE5EU8LprzfLc1ddPgWpFOsly/q
	 3BbZAbReYXkR3C0TJ9xOBC1Av1URvocK40Qkb134Beez/os8UF8fimqWEBWWBIKKiC
	 wTfrCSLmvYHThq8kiS6bVybIycsZExzOc86KlWue+meL1NByYdpVHXmaWeu7YshPc+
	 jMCgP7lZDnIzA==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D96933782079;
	Wed, 13 Mar 2024 11:02:23 +0000 (UTC)
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
Subject: [PATCH v3 12/22] ASoC: mediatek: mt8195: Migrate to the common mtk_soundcard_startup
Date: Wed, 13 Mar 2024 12:01:37 +0100
Message-ID: <20240313110147.1267793-13-angelogioacchino.delregno@collabora.com>
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

Add a const mtk_pcm_constraints_data struct array with all of the
(again, constant) constraints for all of the supported usecases,
remove the duplicated functions and call mtk_soundcard_startup()
instead in all of the .startup() callbacks.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 sound/soc/mediatek/mt8195/mt8195-mt6359.c | 195 ++++++----------------
 1 file changed, 53 insertions(+), 142 deletions(-)

diff --git a/sound/soc/mediatek/mt8195/mt8195-mt6359.c b/sound/soc/mediatek/mt8195/mt8195-mt6359.c
index f694618e7635..d143ce3406fe 100644
--- a/sound/soc/mediatek/mt8195/mt8195-mt6359.c
+++ b/sound/soc/mediatek/mt8195/mt8195-mt6359.c
@@ -328,44 +328,7 @@ static int mt8195_mt6359_init(struct snd_soc_pcm_runtime *rtd)
 
 static int mt8195_hdmitx_dptx_startup(struct snd_pcm_substream *substream)
 {
-	static const unsigned int rates[] = {
-		48000
-	};
-	static const unsigned int channels[] = {
-		2, 4, 6, 8
-	};
-	static const struct snd_pcm_hw_constraint_list constraints_rates = {
-		.count = ARRAY_SIZE(rates),
-		.list  = rates,
-		.mask = 0,
-	};
-	static const struct snd_pcm_hw_constraint_list constraints_channels = {
-		.count = ARRAY_SIZE(channels),
-		.list  = channels,
-		.mask = 0,
-	};
-
-	struct snd_soc_pcm_runtime *rtd = snd_soc_substream_to_rtd(substream);
-	struct snd_pcm_runtime *runtime = substream->runtime;
-	int ret;
-
-	ret = snd_pcm_hw_constraint_list(runtime, 0,
-					 SNDRV_PCM_HW_PARAM_RATE,
-					 &constraints_rates);
-	if (ret < 0) {
-		dev_err(rtd->dev, "hw_constraint_list rate failed\n");
-		return ret;
-	}
-
-	ret = snd_pcm_hw_constraint_list(runtime, 0,
-					 SNDRV_PCM_HW_PARAM_CHANNELS,
-					 &constraints_channels);
-	if (ret < 0) {
-		dev_err(rtd->dev, "hw_constraint_list channel failed\n");
-		return ret;
-	}
-
-	return 0;
+	return mtk_soundcard_startup(substream, MTK_CONSTRAINT_HDMIDP);
 }
 
 static const struct snd_soc_ops mt8195_hdmitx_dptx_playback_ops = {
@@ -428,98 +391,6 @@ static int mt8195_dptx_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
 	return 0;
 }
 
-static int mt8195_playback_startup(struct snd_pcm_substream *substream)
-{
-	static const unsigned int rates[] = {
-		48000
-	};
-	static const unsigned int channels[] = {
-		2
-	};
-	static const struct snd_pcm_hw_constraint_list constraints_rates = {
-		.count = ARRAY_SIZE(rates),
-		.list  = rates,
-		.mask = 0,
-	};
-	static const struct snd_pcm_hw_constraint_list constraints_channels = {
-		.count = ARRAY_SIZE(channels),
-		.list  = channels,
-		.mask = 0,
-	};
-
-	struct snd_soc_pcm_runtime *rtd = snd_soc_substream_to_rtd(substream);
-	struct snd_pcm_runtime *runtime = substream->runtime;
-	int ret;
-
-	ret = snd_pcm_hw_constraint_list(runtime, 0,
-					 SNDRV_PCM_HW_PARAM_RATE,
-					 &constraints_rates);
-	if (ret < 0) {
-		dev_err(rtd->dev, "hw_constraint_list rate failed\n");
-		return ret;
-	}
-
-	ret = snd_pcm_hw_constraint_list(runtime, 0,
-					 SNDRV_PCM_HW_PARAM_CHANNELS,
-					 &constraints_channels);
-	if (ret < 0) {
-		dev_err(rtd->dev, "hw_constraint_list channel failed\n");
-		return ret;
-	}
-
-	return 0;
-}
-
-static const struct snd_soc_ops mt8195_playback_ops = {
-	.startup = mt8195_playback_startup,
-};
-
-static int mt8195_capture_startup(struct snd_pcm_substream *substream)
-{
-	static const unsigned int rates[] = {
-		48000
-	};
-	static const unsigned int channels[] = {
-		1, 2
-	};
-	static const struct snd_pcm_hw_constraint_list constraints_rates = {
-		.count = ARRAY_SIZE(rates),
-		.list  = rates,
-		.mask = 0,
-	};
-	static const struct snd_pcm_hw_constraint_list constraints_channels = {
-		.count = ARRAY_SIZE(channels),
-		.list  = channels,
-		.mask = 0,
-	};
-
-	struct snd_soc_pcm_runtime *rtd = snd_soc_substream_to_rtd(substream);
-	struct snd_pcm_runtime *runtime = substream->runtime;
-	int ret;
-
-	ret = snd_pcm_hw_constraint_list(runtime, 0,
-					 SNDRV_PCM_HW_PARAM_RATE,
-					 &constraints_rates);
-	if (ret < 0) {
-		dev_err(rtd->dev, "hw_constraint_list rate failed\n");
-		return ret;
-	}
-
-	ret = snd_pcm_hw_constraint_list(runtime, 0,
-					 SNDRV_PCM_HW_PARAM_CHANNELS,
-					 &constraints_channels);
-	if (ret < 0) {
-		dev_err(rtd->dev, "hw_constraint_list channel failed\n");
-		return ret;
-	}
-
-	return 0;
-}
-
-static const struct snd_soc_ops mt8195_capture_ops = {
-	.startup = mt8195_capture_startup,
-};
-
 static int mt8195_rt5682_etdm_hw_params(struct snd_pcm_substream *substream,
 					struct snd_pcm_hw_params *params)
 {
@@ -1042,7 +913,7 @@ static struct snd_soc_dai_link mt8195_mt6359_dai_links[] = {
 		},
 		.dynamic = 1,
 		.dpcm_playback = 1,
-		.ops = &mt8195_playback_ops,
+		.ops = &mtk_soundcard_common_playback_ops,
 		SND_SOC_DAILINK_REG(DL2_FE),
 	},
 	[DAI_LINK_DL3_FE] = {
@@ -1054,7 +925,7 @@ static struct snd_soc_dai_link mt8195_mt6359_dai_links[] = {
 		},
 		.dynamic = 1,
 		.dpcm_playback = 1,
-		.ops = &mt8195_playback_ops,
+		.ops = &mtk_soundcard_common_playback_ops,
 		SND_SOC_DAILINK_REG(DL3_FE),
 	},
 	[DAI_LINK_DL6_FE] = {
@@ -1066,7 +937,7 @@ static struct snd_soc_dai_link mt8195_mt6359_dai_links[] = {
 		},
 		.dynamic = 1,
 		.dpcm_playback = 1,
-		.ops = &mt8195_playback_ops,
+		.ops = &mtk_soundcard_common_playback_ops,
 		SND_SOC_DAILINK_REG(DL6_FE),
 	},
 	[DAI_LINK_DL7_FE] = {
@@ -1089,7 +960,7 @@ static struct snd_soc_dai_link mt8195_mt6359_dai_links[] = {
 		},
 		.dynamic = 1,
 		.dpcm_playback = 1,
-		.ops = &mt8195_playback_ops,
+		.ops = &mtk_soundcard_common_playback_ops,
 		SND_SOC_DAILINK_REG(DL8_FE),
 	},
 	[DAI_LINK_DL10_FE] = {
@@ -1113,7 +984,7 @@ static struct snd_soc_dai_link mt8195_mt6359_dai_links[] = {
 		},
 		.dynamic = 1,
 		.dpcm_playback = 1,
-		.ops = &mt8195_playback_ops,
+		.ops = &mtk_soundcard_common_playback_ops,
 		SND_SOC_DAILINK_REG(DL11_FE),
 	},
 	[DAI_LINK_UL1_FE] = {
@@ -1136,7 +1007,7 @@ static struct snd_soc_dai_link mt8195_mt6359_dai_links[] = {
 		},
 		.dynamic = 1,
 		.dpcm_capture = 1,
-		.ops = &mt8195_capture_ops,
+		.ops = &mtk_soundcard_common_capture_ops,
 		SND_SOC_DAILINK_REG(UL2_FE),
 	},
 	[DAI_LINK_UL3_FE] = {
@@ -1148,7 +1019,7 @@ static struct snd_soc_dai_link mt8195_mt6359_dai_links[] = {
 		},
 		.dynamic = 1,
 		.dpcm_capture = 1,
-		.ops = &mt8195_capture_ops,
+		.ops = &mtk_soundcard_common_capture_ops,
 		SND_SOC_DAILINK_REG(UL3_FE),
 	},
 	[DAI_LINK_UL4_FE] = {
@@ -1160,7 +1031,7 @@ static struct snd_soc_dai_link mt8195_mt6359_dai_links[] = {
 		},
 		.dynamic = 1,
 		.dpcm_capture = 1,
-		.ops = &mt8195_capture_ops,
+		.ops = &mtk_soundcard_common_capture_ops,
 		SND_SOC_DAILINK_REG(UL4_FE),
 	},
 	[DAI_LINK_UL5_FE] = {
@@ -1172,7 +1043,7 @@ static struct snd_soc_dai_link mt8195_mt6359_dai_links[] = {
 		},
 		.dynamic = 1,
 		.dpcm_capture = 1,
-		.ops = &mt8195_capture_ops,
+		.ops = &mtk_soundcard_common_capture_ops,
 		SND_SOC_DAILINK_REG(UL5_FE),
 	},
 	[DAI_LINK_UL6_FE] = {
@@ -1195,7 +1066,7 @@ static struct snd_soc_dai_link mt8195_mt6359_dai_links[] = {
 		},
 		.dynamic = 1,
 		.dpcm_capture = 1,
-		.ops = &mt8195_capture_ops,
+		.ops = &mtk_soundcard_common_capture_ops,
 		SND_SOC_DAILINK_REG(UL8_FE),
 	},
 	[DAI_LINK_UL9_FE] = {
@@ -1207,7 +1078,7 @@ static struct snd_soc_dai_link mt8195_mt6359_dai_links[] = {
 		},
 		.dynamic = 1,
 		.dpcm_capture = 1,
-		.ops = &mt8195_capture_ops,
+		.ops = &mtk_soundcard_common_capture_ops,
 		SND_SOC_DAILINK_REG(UL9_FE),
 	},
 	[DAI_LINK_UL10_FE] = {
@@ -1219,7 +1090,7 @@ static struct snd_soc_dai_link mt8195_mt6359_dai_links[] = {
 		},
 		.dynamic = 1,
 		.dpcm_capture = 1,
-		.ops = &mt8195_capture_ops,
+		.ops = &mtk_soundcard_common_capture_ops,
 		SND_SOC_DAILINK_REG(UL10_FE),
 	},
 	/* BE */
@@ -1561,6 +1432,40 @@ static int mt8195_mt6359_soc_card_probe(struct mtk_soc_card_data *soc_card_data,
 	return 0;
 }
 
+static const unsigned int mt8195_pcm_playback_channels[] = { 2 };
+static const unsigned int mt8195_pcm_capture_channels[] = { 1, 2 };
+static const unsigned int mt8195_pcm_hdmidp_channels[] = { 2, 4, 6, 8 };
+static const unsigned int mt8195_pcm_rates[] = { 48000 };
+
+static const struct snd_pcm_hw_constraint_list mt8195_rate_constraint = {
+	.list = mt8195_pcm_rates,
+	.count = ARRAY_SIZE(mt8195_pcm_rates)
+};
+
+static const struct mtk_pcm_constraints_data mt8195_pcm_constraints[MTK_CONSTRAINT_HDMIDP + 1] = {
+	[MTK_CONSTRAINT_PLAYBACK] = {
+		.channels = {
+			.list = mt8195_pcm_playback_channels,
+			.count = ARRAY_SIZE(mt8195_pcm_playback_channels)
+		},
+		.rates = mt8195_rate_constraint,
+	},
+	[MTK_CONSTRAINT_CAPTURE] = {
+		.channels = {
+			.list = mt8195_pcm_capture_channels,
+			.count = ARRAY_SIZE(mt8195_pcm_capture_channels)
+		},
+		.rates = mt8195_rate_constraint,
+	},
+	[MTK_CONSTRAINT_HDMIDP] = {
+		.channels = {
+			.list = mt8195_pcm_hdmidp_channels,
+			.count = ARRAY_SIZE(mt8195_pcm_hdmidp_channels)
+		},
+		.rates = mt8195_rate_constraint,
+	},
+};
+
 static const struct mtk_sof_priv mt8195_sof_priv = {
 	.conn_streams = g_sof_conn_streams,
 	.num_streams = ARRAY_SIZE(g_sof_conn_streams),
@@ -1572,6 +1477,8 @@ static const struct mtk_soundcard_pdata mt8195_mt6359_rt1019_rt5682_card = {
 	.card_data = &(struct mtk_platform_card_data) {
 		.card = &mt8195_mt6359_soc_card,
 		.num_jacks = MT8195_JACK_MAX,
+		.pcm_constraints = mt8195_pcm_constraints,
+		.num_pcm_constraints = ARRAY_SIZE(mt8195_pcm_constraints),
 		.flags = RT1019_SPEAKER_AMP_PRESENT
 	},
 	.sof_priv = &mt8195_sof_priv,
@@ -1583,6 +1490,8 @@ static const struct mtk_soundcard_pdata mt8195_mt6359_rt1011_rt5682_card = {
 	.card_data = &(struct mtk_platform_card_data) {
 		.card = &mt8195_mt6359_soc_card,
 		.num_jacks = MT8195_JACK_MAX,
+		.pcm_constraints = mt8195_pcm_constraints,
+		.num_pcm_constraints = ARRAY_SIZE(mt8195_pcm_constraints),
 		.flags = RT1011_SPEAKER_AMP_PRESENT
 	},
 	.sof_priv = &mt8195_sof_priv,
@@ -1594,6 +1503,8 @@ static const struct mtk_soundcard_pdata mt8195_mt6359_max98390_rt5682_card = {
 	.card_data = &(struct mtk_platform_card_data) {
 		.card = &mt8195_mt6359_soc_card,
 		.num_jacks = MT8195_JACK_MAX,
+		.pcm_constraints = mt8195_pcm_constraints,
+		.num_pcm_constraints = ARRAY_SIZE(mt8195_pcm_constraints),
 		.flags = MAX98390_SPEAKER_AMP_PRESENT
 	},
 	.sof_priv = &mt8195_sof_priv,
-- 
2.44.0


