Return-Path: <devicetree+bounces-153081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7579A4B359
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 17:34:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E92E160558
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 16:34:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 502811EFF8F;
	Sun,  2 Mar 2025 16:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hEQhQ+G2"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF491EF363;
	Sun,  2 Mar 2025 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740933145; cv=none; b=eX4e+NlWf+VS59r6cjbYu5G7hhpHtsbfVxXsNp+x65HuVOP7iDoLVGcjQqTRA9tvZUFTHfF8oeaAcnqC6p/ZUDEQ/U9JqSW5pEpoYCvSwQmcNUTEd7cRr+ocN6VxpfCx1GIMX8rMWwwJxOhKmPPJuyoC7PFD9gJrZJB5q27J15k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740933145; c=relaxed/simple;
	bh=fSvxu65EsLQP1GMLlD2XfRLcDs630tFxak4ygH/TyRg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aznIhC8qPtilvAJTxtPE0IQraM+wRCbon7wMQmHAHEllMrj47j2TzZ4LD5icZmKh6xe2o8P58Ir1p3NygRzGuemJw4+OP/U2yqg1YSimlOZdY40YpBlOBde+gWwsZGycnfNQTQ9IwrRrlebkkZ+KPl373TBxdjQj7f5HzgCjYxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=hEQhQ+G2; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740933141;
	bh=fSvxu65EsLQP1GMLlD2XfRLcDs630tFxak4ygH/TyRg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hEQhQ+G2PJn+0eM5LdIrMmZJUnp38jR410PYD3DA7dP82OYRdMP7+Noeuxljhe9yU
	 TP5mmrxrw2XSOAOHsjqeuJ+WkwJL//GuYrorgafg/5tefr+3W3CLVlP99jZFVoZCpG
	 DJd7KcaqQ6aWuO7sRFEocu2G8d4X/Su3SZVbG5dOIq9a8nkyXqsVGNS0840QZ6bjVc
	 ahlY8IYAvsniBUXOgjJp/06U1zE03/5sVi21lMR7amvK4lmmrsyj1jwEpLtLJVNMUm
	 831nryAStP9YWdgm57xhsh+uyc4wtcoT2ixFdiE8ErlJQCLPJSnUDmTedw1nAw82UJ
	 9qE6yEvaCnwGw==
Received: from [192.168.0.47] (unknown [IPv6:2804:14c:1a9:53ee::1002])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nfraprado)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 97B4017E023F;
	Sun,  2 Mar 2025 17:32:16 +0100 (CET)
From: =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
Date: Sun, 02 Mar 2025 13:30:54 -0300
Subject: [PATCH v2 15/20] ASoC: mediatek: mt6359-accdet: Always set
 micbias1 to 2.8V
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250302-mt6359-accdet-dts-v2-15-5bd633ee0d47@collabora.com>
References: <20250302-mt6359-accdet-dts-v2-0-5bd633ee0d47@collabora.com>
In-Reply-To: <20250302-mt6359-accdet-dts-v2-0-5bd633ee0d47@collabora.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
 Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: kernel@collabora.com, linux-sound@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
X-Mailer: b4 0.14.2

The driver currently reads a mediatek,mic-vol property from DT to
determine the micbias1 setting to configure in hardware. Since there are
no current users of the property and the default value (2.8V) is known
to work on multiple boards, remove the code handling this property and
instead always configure the micbias1 to 2.8V. The property can be
properly introduced in the binding in the future if it really turns out
that different boards need different configurations.

Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
---
 sound/soc/codecs/mt6359-accdet.c | 23 +++--------------------
 sound/soc/codecs/mt6359-accdet.h |  1 -
 2 files changed, 3 insertions(+), 21 deletions(-)

diff --git a/sound/soc/codecs/mt6359-accdet.c b/sound/soc/codecs/mt6359-accdet.c
index 83e65b6d5845dea00a8a77d68df4b7df1f62a87c..a31e084560c7643b14fb71871699e3167075d9d9 100644
--- a/sound/soc/codecs/mt6359-accdet.c
+++ b/sound/soc/codecs/mt6359-accdet.c
@@ -494,11 +494,6 @@ static int mt6359_accdet_parse_dt(struct mt6359_accdet *priv)
 	if (!node)
 		return -EINVAL;
 
-	ret = of_property_read_u32(node, "mediatek,mic-vol",
-				   &priv->data->mic_vol);
-	if (ret)
-		priv->data->mic_vol = 8;
-
 	ret = of_property_read_u32(node, "mediatek,mic-mode",
 				   &priv->data->mic_mode);
 	if (ret)
@@ -657,22 +652,10 @@ static void mt6359_accdet_init(struct mt6359_accdet *priv)
 		      ACCDET_RISE_DELAY));
 
 	regmap_read(priv->regmap, RG_AUDPWDBMICBIAS1_ADDR, &reg);
-	if (priv->data->mic_vol <= 7) {
-		/* micbias1 <= 2.7V */
-		regmap_write(priv->regmap, RG_AUDPWDBMICBIAS1_ADDR,
-			     reg | (priv->data->mic_vol << RG_AUDMICBIAS1VREF_SFT) |
-			     RG_AUDMICBIAS1LOWPEN_MASK_SFT);
-	} else if (priv->data->mic_vol == 8) {
-		/* micbias1 = 2.8v */
-		regmap_write(priv->regmap, RG_AUDPWDBMICBIAS1_ADDR,
-			     reg | (3 << RG_AUDMICBIAS1HVEN_SFT) |
+	/* micbias1 = 2.8v */
+	regmap_write(priv->regmap, RG_AUDPWDBMICBIAS1_ADDR,
+		     reg | (3 << RG_AUDMICBIAS1HVEN_SFT) |
 			     RG_AUDMICBIAS1LOWPEN_MASK_SFT);
-	} else if (priv->data->mic_vol == 9) {
-		/* micbias1 = 2.85v */
-		regmap_write(priv->regmap, RG_AUDPWDBMICBIAS1_ADDR,
-			     reg | (1 << RG_AUDMICBIAS1HVEN_SFT) |
-			     RG_AUDMICBIAS1LOWPEN_MASK_SFT);
-	}
 	/* mic mode setting */
 	regmap_read(priv->regmap, RG_AUDACCDETMICBIAS0PULLLOW_ADDR, &reg);
 	if (priv->data->mic_mode == HEADSET_MODE_1) {
diff --git a/sound/soc/codecs/mt6359-accdet.h b/sound/soc/codecs/mt6359-accdet.h
index ff5cd6ea1b06f045b6e1b9f6bc53ef80d78e3b92..46dcd4759230a5190434b9b7c785e8b9ed12fd3d 100644
--- a/sound/soc/codecs/mt6359-accdet.h
+++ b/sound/soc/codecs/mt6359-accdet.h
@@ -51,7 +51,6 @@ enum {
 };
 
 struct dts_data {
-	unsigned int mic_vol;
 	unsigned int mic_mode;
 	bool hp_eint_high;
 	unsigned int eint_comp_vth;

-- 
2.48.1


