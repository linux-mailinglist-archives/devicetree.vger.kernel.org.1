Return-Path: <devicetree+bounces-1346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 387AA7A5F99
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:32:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E86EF281D31
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:32:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D71C615BC;
	Tue, 19 Sep 2023 10:31:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CC02E649
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:31:41 +0000 (UTC)
Received: from mx0b-001ae601.pphosted.com (mx0a-001ae601.pphosted.com [67.231.149.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 941EEF5
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:31:38 -0700 (PDT)
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38J4KMC0022193;
	Tue, 19 Sep 2023 05:31:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	PODMain02222019; bh=MiZQzycTDUQoJWH55mk/Jeqxw7RC6OuM/QCFkp1lvYU=; b=
	ofYTe7h0Iz2s217vf/cFglEOqScUeaG/FAONW3+oIEytwMsSJsMjRqvospiD+uma
	nss+dhKwXY50LpzYkHf3P1CVy7YynEJ1yiWduqHwfF7LqEtWRubPuQpzJXbHveW8
	V2/54xODHTrHvTwmTrIAAmEW8jy/9JE5vcc/0dUzeaF5R9EHTNeImHUe5Qx74Qmw
	sY+qFXOu6Lh8aZboXB3vvLQ2nEn8nXwYoRG0OKoghXBJ6uSFPoJ2Q4h0s8JJfDDL
	/crGOD9j5SxmN58LLpfCe00/kxCpWf1ss/0+AGR8by1t6SSTKW+qHqmfHPu6ykTV
	9eKiBl1t3xEzdLfW6sOzIw==
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3t59ry3p1j-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Sep 2023 05:31:19 -0500 (CDT)
Received: from ediex02.ad.cirrus.com (198.61.84.81) by ediex02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.37; Tue, 19 Sep
 2023 11:31:16 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by
 anon-ediex02.ad.cirrus.com (198.61.84.81) with Microsoft SMTP Server id
 15.2.1118.37 via Frontend Transport; Tue, 19 Sep 2023 11:31:16 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 8922F11AA;
	Tue, 19 Sep 2023 10:31:16 +0000 (UTC)
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: <broonie@kernel.org>
CC: <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <alsa-devel@alsa-project.org>,
        <devicetree@vger.kernel.org>, <patches@opensource.cirrus.com>
Subject: [PATCH 4/5] ASoC: cs42l43: Move headset bias sense enable earlier in process
Date: Tue, 19 Sep 2023 11:31:15 +0100
Message-ID: <20230919103116.580305-5-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230919103116.580305-1-ckeepax@opensource.cirrus.com>
References: <20230919103116.580305-1-ckeepax@opensource.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: Y1BOLuZk31NAxN4HfatWPb8P8N_FcpLZ
X-Proofpoint-ORIG-GUID: Y1BOLuZk31NAxN4HfatWPb8P8N_FcpLZ
X-Proofpoint-Spam-Reason: safe
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Currently the bias sense is enabled along with the button detect, but
this has two problems. Firstly, the detections themselves arn't covered
by the bias sense, potentially resulting in pops and secondly, the
sequence of enabling/disabling looks like:

enable bias
enable bias sense
disable bias sense
disable bias

When the bias sense is disabled but the bias is still on the clamp is
removed and a pop results. Fix both of these issues by moving the bias
sense enable/disable to be along with the bias itself. With a resulting
sequence of:

enable bias sense
enable bias
disable bias
disable bias sense

Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 sound/soc/codecs/cs42l43-jack.c | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/sound/soc/codecs/cs42l43-jack.c b/sound/soc/codecs/cs42l43-jack.c
index 7bd7cc1779506..66923cf2fdaff 100644
--- a/sound/soc/codecs/cs42l43-jack.c
+++ b/sound/soc/codecs/cs42l43-jack.c
@@ -250,6 +250,15 @@ static void cs42l43_start_hs_bias(struct cs42l43_codec *priv, bool force_high)
 	if (!force_high && priv->bias_low)
 		val = 0x2 << CS42L43_HSBIAS_MODE_SHIFT;
 
+	if (priv->bias_sense_ua) {
+		regmap_update_bits(cs42l43->regmap,
+				   CS42L43_HS_BIAS_SENSE_AND_CLAMP_AUTOCONTROL,
+				   CS42L43_HSBIAS_SENSE_EN_MASK |
+				   CS42L43_AUTO_HSBIAS_CLAMP_EN_MASK,
+				   CS42L43_HSBIAS_SENSE_EN_MASK |
+				   CS42L43_AUTO_HSBIAS_CLAMP_EN_MASK);
+	}
+
 	regmap_update_bits(cs42l43->regmap, CS42L43_MIC_DETECT_CONTROL_1,
 			   CS42L43_HSBIAS_MODE_MASK, val);
 
@@ -267,6 +276,13 @@ static void cs42l43_stop_hs_bias(struct cs42l43_codec *priv)
 
 	regmap_update_bits(cs42l43->regmap, CS42L43_HS2,
 			   CS42L43_HS_CLAMP_DISABLE_MASK, 0);
+
+	if (priv->bias_sense_ua) {
+		regmap_update_bits(cs42l43->regmap,
+				   CS42L43_HS_BIAS_SENSE_AND_CLAMP_AUTOCONTROL,
+				   CS42L43_HSBIAS_SENSE_EN_MASK |
+				   CS42L43_AUTO_HSBIAS_CLAMP_EN_MASK, 0);
+	}
 }
 
 irqreturn_t cs42l43_bias_detect_clamp(int irq, void *data)
@@ -318,15 +334,6 @@ static void cs42l43_start_button_detect(struct cs42l43_codec *priv)
 	regmap_update_bits(cs42l43->regmap, CS42L43_MIC_DETECT_CONTROL_1,
 			   CS42L43_BUTTON_DETECT_MODE_MASK |
 			   CS42L43_MIC_LVL_DET_DISABLE_MASK, val);
-
-	if (priv->bias_sense_ua) {
-		regmap_update_bits(cs42l43->regmap,
-				   CS42L43_HS_BIAS_SENSE_AND_CLAMP_AUTOCONTROL,
-				   CS42L43_HSBIAS_SENSE_EN_MASK |
-				   CS42L43_AUTO_HSBIAS_CLAMP_EN_MASK,
-				   CS42L43_HSBIAS_SENSE_EN_MASK |
-				   CS42L43_AUTO_HSBIAS_CLAMP_EN_MASK);
-	}
 }
 
 static void cs42l43_stop_button_detect(struct cs42l43_codec *priv)
@@ -335,13 +342,6 @@ static void cs42l43_stop_button_detect(struct cs42l43_codec *priv)
 
 	dev_dbg(priv->dev, "Stop button detect\n");
 
-	if (priv->bias_sense_ua) {
-		regmap_update_bits(cs42l43->regmap,
-				   CS42L43_HS_BIAS_SENSE_AND_CLAMP_AUTOCONTROL,
-				   CS42L43_HSBIAS_SENSE_EN_MASK |
-				   CS42L43_AUTO_HSBIAS_CLAMP_EN_MASK, 0);
-	}
-
 	regmap_update_bits(cs42l43->regmap, CS42L43_MIC_DETECT_CONTROL_1,
 			   CS42L43_BUTTON_DETECT_MODE_MASK |
 			   CS42L43_MIC_LVL_DET_DISABLE_MASK,
-- 
2.39.2


