Return-Path: <devicetree+bounces-155064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD6BA55727
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 20:53:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D03B3B4B10
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 19:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A05127604A;
	Thu,  6 Mar 2025 19:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ThdNLfFC"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720B3276034;
	Thu,  6 Mar 2025 19:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741290793; cv=none; b=MtXuHz9gZR/O2WY1XVyfLrIXTZLDUZRBS/h8dlo+ooV5E/SEK4zVkmO0/XzrUe/ZNQwKsKEFr0Xyq4zue6H2bBSUiIoGJxER5JDSKz7Mo0Ov85vODFR7ZdZ0gSUDW6GX5D2uccqezKkgnAVfNno4JA29I95Lbhvpg5//8x1zhdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741290793; c=relaxed/simple;
	bh=8gQkP6DepN0m7HelKsDtGxBXCqBzzbYEFfCRfOoL0DA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IVkfDyZxMr9qmA1VkGmVJPo3Tnb8z3os+mrum8mP/FxPymhrUz1y0P7VZTDJ/dJ1/EkKtiURy2MiAmBGH88GsFiyDhBa+qw8ZjgbIOfpHWcRADVmfXmVaNAOxBOvAHhFOEeHqoplMkmsl8JdgGisiezE5iqUY8fg8BDHTCQXXBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ThdNLfFC; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741290789;
	bh=8gQkP6DepN0m7HelKsDtGxBXCqBzzbYEFfCRfOoL0DA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ThdNLfFCftGl5+VlpJzO+5pUeDX+7v2GV5+E7E/CxLH4GeG+vkDxAN7PAb9LSSP9J
	 hs++AkY0DGrx4FHvyhUL01kwTheQuyiYYJjKdHvqpZHMKKWwdxDE3S4dmuargRwimP
	 3FFletfVLHEEeKuMTaijspjlsvdr0lW95B0160kHA57ZnwsHXkx1UcDNtmw1K7t27F
	 P0DuSrwxvKHQbl2j6X98fYQbNW2/SXy6sY/BzsRLiQI02lf2EL0sEh8tRwUw3Cj3ml
	 KMXJccAa4DmpOJwwNssfLF8Oq6K0VEoXHaI2njQyDh4Ccy9Z7eV6sFPLXB7+FVTUIf
	 UHAgSP56hpJaA==
Received: from [192.168.0.47] (unknown [IPv6:2804:14c:1a9:53ee::1002])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nfraprado)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1989017E05F7;
	Thu,  6 Mar 2025 20:53:05 +0100 (CET)
From: =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
Date: Thu, 06 Mar 2025 16:52:16 -0300
Subject: [PATCH v3 2/4] ASoC: mediatek: common: Handle mediatek,accdet
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250306-mt8188-accdet-v3-2-7828e835ff4b@collabora.com>
References: <20250306-mt8188-accdet-v3-0-7828e835ff4b@collabora.com>
In-Reply-To: <20250306-mt8188-accdet-v3-0-7828e835ff4b@collabora.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Trevor Wu <trevor.wu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>
Cc: kernel@collabora.com, linux-sound@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
X-Mailer: b4 0.14.2

Handle the optional mediatek,accdet property. When present, retrieve the
sound component from its phandle, so the machine sound driver can use it
to register the audio jack and initialize the MT6359 ACCDET for jack
detection.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
---
 sound/soc/mediatek/common/mtk-soc-card.h         |  1 +
 sound/soc/mediatek/common/mtk-soundcard-driver.c | 19 ++++++++++++++++++-
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/sound/soc/mediatek/common/mtk-soc-card.h b/sound/soc/mediatek/common/mtk-soc-card.h
index 3f6e24dd22df13ddb3aef1625a77d2e29e46fccf..a1d2794ac1f717997fb47023d5951a9ac4897788 100644
--- a/sound/soc/mediatek/common/mtk-soc-card.h
+++ b/sound/soc/mediatek/common/mtk-soc-card.h
@@ -16,6 +16,7 @@ struct mtk_soc_card_data {
 	const struct mtk_sof_priv *sof_priv;
 	struct list_head sof_dai_link_list;
 	struct mtk_platform_card_data *card_data;
+	struct snd_soc_component *accdet;
 	void *mach_priv;
 };
 
diff --git a/sound/soc/mediatek/common/mtk-soundcard-driver.c b/sound/soc/mediatek/common/mtk-soundcard-driver.c
index f4314dddc46075d554b4e3f3aae8bcb5498f8ab5..713a368f79cf049f7879075c675457e91ba8332d 100644
--- a/sound/soc/mediatek/common/mtk-soundcard-driver.c
+++ b/sound/soc/mediatek/common/mtk-soundcard-driver.c
@@ -8,6 +8,7 @@
 
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_platform.h>
 #include <sound/soc.h>
 
 #include "mtk-dsp-sof-common.h"
@@ -192,7 +193,9 @@ EXPORT_SYMBOL_GPL(mtk_soundcard_common_capture_ops);
 
 int mtk_soundcard_common_probe(struct platform_device *pdev)
 {
-	struct device_node *platform_node, *adsp_node;
+	struct device_node *platform_node, *adsp_node, *accdet_node;
+	struct snd_soc_component *accdet_comp;
+	struct platform_device *accdet_pdev;
 	const struct mtk_soundcard_pdata *pdata;
 	struct mtk_soc_card_data *soc_card_data;
 	struct snd_soc_dai_link *orig_dai_link, *dai_link;
@@ -250,6 +253,20 @@ int mtk_soundcard_common_probe(struct platform_device *pdev)
 
 	soc_card_data->card_data->jacks = jacks;
 
+	accdet_node = of_parse_phandle(pdev->dev.of_node, "mediatek,accdet", 0);
+	if (accdet_node) {
+		accdet_pdev = of_find_device_by_node(accdet_node);
+		if (accdet_pdev) {
+			accdet_comp = snd_soc_lookup_component(&accdet_pdev->dev, NULL);
+			if (accdet_comp)
+				soc_card_data->accdet = accdet_comp;
+			else
+				dev_err(&pdev->dev, "No sound component found from mediatek,accdet property\n");
+		} else {
+			dev_err(&pdev->dev, "No device found from mediatek,accdet property\n");
+		}
+	}
+
 	platform_node = of_parse_phandle(pdev->dev.of_node, "mediatek,platform", 0);
 	if (!platform_node)
 		return dev_err_probe(&pdev->dev, -EINVAL,

-- 
2.48.1


