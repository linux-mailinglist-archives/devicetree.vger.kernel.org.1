Return-Path: <devicetree+bounces-153906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E659AA4E383
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 16:34:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CCEAE17E8FA
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 15:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 108C8291FA9;
	Tue,  4 Mar 2025 15:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="jrmmNLdW"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165E2291F9B;
	Tue,  4 Mar 2025 15:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741101421; cv=none; b=YzQgvUd1IEsakCZTFQqcVbmc8VFCyeuD3BdFPoe5bLnj/Di4B+OReR9vwCbi5k920LhyBVY33Gi3+0RdMjTzE6HvLSy0IZPdW9F3bsKxgThQBAsee7xCSrXKCAsjHMk6yPYNNfAQhyqiULm4PozCQatIBI3yhQZHEx/EN8c/UWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741101421; c=relaxed/simple;
	bh=IdQRXefJHAutmxRMMaOnaOXyfBJYqlOoGdfVopRotEs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VNarGT5FaiMf3k4kIGDKiAO9pCuS9OFScDbMs/7NnX57ZK/sP7CeJlkhsup3YV3pLTgjRfbUtZaiu9A79FUWhAzn032ur/NIBEOmj+lIvvRk8OkQjD3i5JMLwPLsbXdnTS1zTcCATstZKpuq30y+LZSgBuiaWDQpKoVaLsj3pdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=jrmmNLdW; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741101417;
	bh=IdQRXefJHAutmxRMMaOnaOXyfBJYqlOoGdfVopRotEs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=jrmmNLdWOLtrjvXwAAaV+NSmtLBQcqsvW6s2E4AZ+RDXYe9K3GR59t3AVIQ1esfDx
	 M7Mzsz0fx6MKUND+kAZr85Bk8z39okblTEaWAoJ1GWXBizkLq6HTi1ujJd3As96SU9
	 me1OZQy7hhsYqBvjav4S8GyAjzCY8dP0DU4wcUvM4lZpsON1ECjXamHPOkRzgg0IIz
	 FZlMQuTmf6OHil/MQceVPrSx7d1X1TINy2uarcAodBD2OqnWGMO3q+2mdJYRjUffUI
	 88QmV0PXQDvgc23KaaBscczJMEJDqwVNncI+mLRwaqCl5e9aW+q9IJQ6QVjDd8fByD
	 0Lb/f0YirvBdg==
Received: from [192.168.0.47] (unknown [IPv6:2804:14c:1a9:53ee::1001])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nfraprado)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 967A917E0B56;
	Tue,  4 Mar 2025 16:16:52 +0100 (CET)
From: =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
Date: Tue, 04 Mar 2025 12:15:50 -0300
Subject: [PATCH v3 09/20] ASoC: mediatek: mt6359-accdet: Drop dead code for
 button detection
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250304-mt6359-accdet-dts-v3-9-5b0eafc29f5b@collabora.com>
References: <20250304-mt6359-accdet-dts-v3-0-5b0eafc29f5b@collabora.com>
In-Reply-To: <20250304-mt6359-accdet-dts-v3-0-5b0eafc29f5b@collabora.com>
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

The button detection functionality depends on a calibration voltage
value which is currently not updated anywhere in the driver code, and
hence it doesn't actually do anything. Remove this unused code.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
---
 sound/soc/codecs/mt6359-accdet.c | 92 ++--------------------------------------
 sound/soc/codecs/mt6359-accdet.h | 17 --------
 2 files changed, 3 insertions(+), 106 deletions(-)

diff --git a/sound/soc/codecs/mt6359-accdet.c b/sound/soc/codecs/mt6359-accdet.c
index a21c6544174517e3eebc8cf25d1ea3029ba014f6..6b0178976d91e37c32540991693ebfd8e29c11f5 100644
--- a/sound/soc/codecs/mt6359-accdet.c
+++ b/sound/soc/codecs/mt6359-accdet.c
@@ -37,9 +37,6 @@
 
 #define ACCDET_PMIC_RSV_EINT		BIT(7)
 
-#define ACCDET_THREE_KEY		BIT(8)
-#define ACCDET_FOUR_KEY			BIT(9)
-#define ACCDET_TRI_KEY_CDD		BIT(10)
 #define ACCDET_RSV_KEY			BIT(11)
 
 #define ACCDET_ANALOG_FASTDISCHARGE	BIT(12)
@@ -255,7 +252,6 @@ static void mt6359_accdet_recover_jd_setting(struct mt6359_accdet *priv)
 			    priv->data->pwm_deb->debounce3);
 
 	priv->jack_type = 0;
-	priv->btn_type = 0;
 	priv->accdet_status = 0x3;
 	mt6359_accdet_jack_report(priv);
 }
@@ -318,45 +314,10 @@ static void mt6359_accdet_jack_report(struct mt6359_accdet *priv)
 	if (!priv->jack)
 		return;
 
-	report = priv->jack_type | priv->btn_type;
+	report = priv->jack_type;
 	snd_soc_jack_report(priv->jack, report, MT6359_ACCDET_JACK_MASK);
 }
 
-static unsigned int check_button(struct mt6359_accdet *priv, unsigned int v)
-{
-	if (priv->caps & ACCDET_FOUR_KEY) {
-		if (v < priv->data->four_key.down &&
-		    v >= priv->data->four_key.up)
-			priv->btn_type = SND_JACK_BTN_1;
-		if (v < priv->data->four_key.up &&
-		    v >= priv->data->four_key.voice)
-			priv->btn_type = SND_JACK_BTN_2;
-		if (v < priv->data->four_key.voice &&
-		    v >= priv->data->four_key.mid)
-			priv->btn_type = SND_JACK_BTN_3;
-		if (v < priv->data->four_key.mid)
-			priv->btn_type = SND_JACK_BTN_0;
-	} else {
-		if (v < priv->data->three_key.down &&
-		    v >= priv->data->three_key.up)
-			priv->btn_type = SND_JACK_BTN_1;
-		if (v < priv->data->three_key.up &&
-		    v >= priv->data->three_key.mid)
-			priv->btn_type = SND_JACK_BTN_2;
-		if (v < priv->data->three_key.mid)
-			priv->btn_type = SND_JACK_BTN_0;
-	}
-	return 0;
-}
-
-static void is_key_pressed(struct mt6359_accdet *priv, bool pressed)
-{
-	priv->btn_type = priv->jack_type & ~MT6359_ACCDET_BTN_MASK;
-
-	if (pressed)
-		check_button(priv, priv->cali_voltage);
-}
-
 static inline void check_jack_btn_type(struct mt6359_accdet *priv)
 {
 	unsigned int val = 0;
@@ -368,15 +329,11 @@ static inline void check_jack_btn_type(struct mt6359_accdet *priv)
 
 	switch (priv->accdet_status) {
 	case 0:
-		if (priv->jack_type == SND_JACK_HEADSET)
-			is_key_pressed(priv, true);
-		else
+		if (priv->jack_type != SND_JACK_HEADSET)
 			priv->jack_type = SND_JACK_HEADPHONE;
 		break;
 	case 1:
-		if (priv->jack_type == SND_JACK_HEADSET) {
-			is_key_pressed(priv, false);
-		} else {
+		if (priv->jack_type != SND_JACK_HEADSET) {
 			priv->jack_type = SND_JACK_HEADSET;
 			accdet_set_debounce(priv, eint_state011, 0x1);
 		}
@@ -603,48 +560,6 @@ static int mt6359_accdet_parse_dt(struct mt6359_accdet *priv)
 	if (ret)
 		priv->data->eint_comp_vth = 0x0;
 
-	ret = of_property_read_u32(node, "mediatek,key-mode", &tmp);
-	if (ret)
-		tmp = 0;
-	if (tmp == 0) {
-		int three_key[4];
-
-		priv->caps |= ACCDET_THREE_KEY;
-		ret = of_property_read_u32_array(node,
-						 "mediatek,three-key-thr",
-						 three_key,
-						 ARRAY_SIZE(three_key));
-		if (!ret)
-			memcpy(&priv->data->three_key, three_key + 1,
-			       sizeof(struct three_key_threshold));
-	} else if (tmp == 1) {
-		int four_key[5];
-
-		priv->caps |= ACCDET_FOUR_KEY;
-		ret = of_property_read_u32_array(node,
-						 "mediatek,four-key-thr",
-						 four_key,
-						 ARRAY_SIZE(four_key));
-		if (!ret) {
-			memcpy(&priv->data->four_key, four_key + 1,
-			       sizeof(struct four_key_threshold));
-		} else {
-			dev_warn(priv->dev,
-				 "accdet no 4-key-thrsh dts, use efuse\n");
-		}
-	} else if (tmp == 2) {
-		int three_key[4];
-
-		priv->caps |= ACCDET_TRI_KEY_CDD;
-		ret = of_property_read_u32_array(node,
-						 "mediatek,tri-key-cdd-thr",
-						 three_key,
-						 ARRAY_SIZE(three_key));
-		if (!ret)
-			memcpy(&priv->data->three_key, three_key + 1,
-			       sizeof(struct three_key_threshold));
-	}
-
 	of_node_put(node);
 	dev_warn(priv->dev, "accdet caps=%x\n", priv->caps);
 
@@ -1015,7 +930,6 @@ static int mt6359_accdet_probe(struct platform_device *pdev)
 
 	priv->jd_sts = M_PLUG_OUT;
 	priv->jack_type = 0;
-	priv->btn_type = 0;
 	priv->accdet_status = 0x3;
 	mt6359_accdet_init(priv);
 
diff --git a/sound/soc/codecs/mt6359-accdet.h b/sound/soc/codecs/mt6359-accdet.h
index a54a328bdf3797ce642da446c0cc6792f72ec939..09e1072b61a4c929bf6b764b4fab3c4b26f7cf4a 100644
--- a/sound/soc/codecs/mt6359-accdet.h
+++ b/sound/soc/codecs/mt6359-accdet.h
@@ -50,19 +50,6 @@ enum {
 	eint_inverter_state000,
 };
 
-struct three_key_threshold {
-	unsigned int mid;
-	unsigned int up;
-	unsigned int down;
-};
-
-struct four_key_threshold {
-	unsigned int mid;
-	unsigned int voice;
-	unsigned int up;
-	unsigned int down;
-};
-
 struct pwm_deb_settings {
 	unsigned int pwm_width;
 	unsigned int pwm_thresh;
@@ -88,8 +75,6 @@ struct dts_data {
 	unsigned int plugout_deb;
 	bool hp_eint_high;
 	struct pwm_deb_settings *pwm_deb;
-	struct three_key_threshold three_key;
-	struct four_key_threshold four_key;
 	unsigned int moisture_detect_enable;
 	unsigned int eint_detect_mode;
 	unsigned int eint_use_ext_res;
@@ -112,10 +97,8 @@ struct mt6359_accdet {
 	struct mutex res_lock; /* lock protection */
 	bool jack_plugged;
 	unsigned int jack_type;
-	unsigned int btn_type;
 	unsigned int accdet_status;
 	unsigned int pre_accdet_status;
-	unsigned int cali_voltage;
 	unsigned int jd_sts;
 	struct work_struct accdet_work;
 	struct workqueue_struct *accdet_workqueue;

-- 
2.48.1


