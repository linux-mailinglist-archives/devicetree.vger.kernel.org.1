Return-Path: <devicetree+bounces-308617-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sUJSDkmDJ2qvyQIAu9opvQ
	(envelope-from <devicetree+bounces-308617-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:06:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C9065BF79
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:06:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308617-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-308617-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 30937301F825
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 03:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D604360EED;
	Tue,  9 Jun 2026 03:06:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp153-182.sina.com.cn (smtp153-182.sina.com.cn [61.135.153.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F17A35F185
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 03:06:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780974407; cv=none; b=sfKdK/O2BJwnx/p6ddD5WxQA48vkndM71QUKiJfK+1bA+GVxFBgQaOwwzc50J/+L8bqLYKjej98diE+YQw4iPVn73NZDcdmHHcCWch1Av9VJGw3NQ6TbnaKAao0vUCsRdoeHPH0MnQ/LVQlW/Zp4I2mwlOXOn3PCj1E/01JuFfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780974407; c=relaxed/simple;
	bh=+kC23fJfWIEtRyY0mFE6HKJ7pCVaiysAEoG86s4/l0s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=iOb6wgy1m2uC1rmo4SMGrNh6PQZsbjURPhXsXhnDI7HmQUsohsQDxSN6+fxWFPKn2FW8ie6HDLcBtmsbH2gnoRgTZVnBtQTLVn/tKP8YfkLzisKty2p0CTHHwBfL04AKF3OGAdKyb07PTHksdXBGedG05SErOqQ7twHiKLSGoWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=61.135.153.182
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.38) with ESMTP
	id 6A278331000011AE; Tue, 9 Jun 2026 11:06:28 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 733DC5E870944A7AAAC4C35F8F652549
X-SMAIL-UIID: 733DC5E870944A7AAAC4C35F8F652549-20260609-110628
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH 5/7] ASoC: codecs: ES8389: Add private members related to HPF
Date: Tue,  9 Jun 2026 11:06:21 +0800
Message-Id: <20260609030623.17404-6-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260609030623.17404-1-zhangyi@everest-semi.com>
References: <20260609030623.17404-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308617-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[everest-semi.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alsa-devel@alsa-project.org,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:tiwai@suse.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:zhangyi@everest-semi.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,everest-semi.com:email,everest-semi.com:mid,everest-semi.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B4C9065BF79

Add private members related to HPF.
And defines ES8389_HPF_DEFAULT

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 sound/soc/codecs/es8389.c | 18 ++++++++++++++++--
 sound/soc/codecs/es8389.h |  1 +
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
index 8e47b4e32..d1bcbbfcd 100644
--- a/sound/soc/codecs/es8389.c
+++ b/sound/soc/codecs/es8389.c
@@ -36,6 +36,8 @@ struct	es8389_private {
 	unsigned int sysclk;
 	int mastermode;
 
+	u8 hpfl;
+	u8 hpfr;
 	u8 vddd;
 	bool mclk_src;
 	int version;
@@ -742,8 +744,8 @@ static int es8389_mute(struct snd_soc_dai *dai, int mute, int direction)
 			regmap_update_bits(es8389->regmap, ES8389_DAC_FORMAT_MUTE,
 						0x03, 0x00);
 		} else {
-			regmap_update_bits(es8389->regmap, ES8389_ADC_HPF1, 0x0f, 0x0a);
-			regmap_update_bits(es8389->regmap, ES8389_ADC_HPF2, 0x0f, 0x0a);
+			regmap_update_bits(es8389->regmap, ES8389_ADC_HPF1, 0x0f, es8389->hpfl);
+			regmap_update_bits(es8389->regmap, ES8389_ADC_HPF2, 0x0f, es8389->hpfr);
 			regmap_update_bits(es8389->regmap, ES8389_ADC_FORMAT_MUTE,
 						0x03, 0x00);
 		}
@@ -901,6 +903,18 @@ static int es8389_probe(struct snd_soc_component *component)
 
 	es8389->mclk_src = device_property_read_bool(component->dev, "everest,mclk-from-sclk");
 
+	ret = device_property_read_u8(component->dev, "everest,hpfl", &es8389->hpfl);
+	if (ret != 0) {
+		dev_dbg(component->dev, "hpfl return %d\n", ret);
+		es8389->hpfl = ES8389_HPF_DEFAULT;
+	}
+
+	ret = device_property_read_u8(component->dev, "everest,hpfr", &es8389->hpfr);
+	if (ret != 0) {
+		dev_dbg(component->dev, "hpfr return %d\n", ret);
+		es8389->hpfr = ES8389_HPF_DEFAULT;
+	}
+
 	for (i = 0; i < ARRAY_SIZE(es8389_core_supplies); i++)
 		es8389->core_supply[i].supply = es8389_core_supplies[i];
 	ret = devm_regulator_bulk_get(component->dev, ARRAY_SIZE(es8389_core_supplies), es8389->core_supply);
diff --git a/sound/soc/codecs/es8389.h b/sound/soc/codecs/es8389.h
index 7f1212219..81353dcec 100644
--- a/sound/soc/codecs/es8389.h
+++ b/sound/soc/codecs/es8389.h
@@ -105,6 +105,7 @@
 
 #define ES8389_MIC_SEL_MASK           (7 << 4)
 #define ES8389_MIC_DEFAULT            (1 << 4)
+#define ES8389_HPF_DEFAULT            (0x0A << 0)
 
 #define ES8389_MASTER_MODE_EN         (1 << 0)
 
-- 
2.17.1


