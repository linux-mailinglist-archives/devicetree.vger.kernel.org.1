Return-Path: <devicetree+bounces-308599-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RKb0Mv+AJ2pAyQIAu9opvQ
	(envelope-from <devicetree+bounces-308599-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 04:57:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 465D265BEB4
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 04:57:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308599-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308599-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A533B300D154
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 02:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62A4D35E943;
	Tue,  9 Jun 2026 02:56:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from r3-175.sinamail.sina.com.cn (r3-175.sinamail.sina.com.cn [202.108.3.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969A332B11A
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 02:56:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780973780; cv=none; b=TTBmE/O+y8SmlgiAnu9I6BeVCtkVY0kPVYaE0GfyVZz/LQ3eugCb8zmnANKCweXUNnhNkkCINaCBnKqGN8T4uYNmbHNyBi1c6xGtfPmI0mESn86jxc2vivNEBXrybfAOvsOfPjYhWNuOPX3ChdCNE+4JAmhLdb7uhZZk/uqK5CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780973780; c=relaxed/simple;
	bh=ISZ8nJfvDhXac2Hegcw7uLqndxcBGKRll03oM0neP5U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=b/oLVJb+m+fDrJr1F5e3EVGw05/w4NFfULr70W3ZTCHRGup3gLmTw/9z+OGo5HZVmIKUl7qra55BUOn/MeqzrXzUB4R3ZfVRTnnwVuEegZgxzTO1+uQho0yTgaVdfvfenhQi3fpry+gprqr0Du9n3XDyE5zbta+YR8zThxSvBDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=202.108.3.175
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.38) with ESMTP
	id 6A2780C700004488; Tue, 9 Jun 2026 10:56:10 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 4336C287E3AA48578C91BD82B24240EC
X-SMAIL-UIID: 4336C287E3AA48578C91BD82B24240EC-20260609-105610
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH 2/7] ASoC: codecs: ES8389: Fix the issue about mclk_src
Date: Tue,  9 Jun 2026 10:56:00 +0800
Message-Id: <20260609025605.16945-3-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260609025605.16945-1-zhangyi@everest-semi.com>
References: <20260609025605.16945-1-zhangyi@everest-semi.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308599-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[everest-semi.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:alsa-devel@alsa-project.org,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:tiwai@suse.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:zhangyi@everest-semi.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,everest-semi.com:email,everest-semi.com:mid,everest-semi.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 465D265BEB4

Fix the issue with incorrect modifications to mclk_src

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 sound/soc/codecs/es8389.c | 12 ++++--------
 sound/soc/codecs/es8389.h |  5 ++---
 2 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
index 9c8164916..7a9d5d42a 100644
--- a/sound/soc/codecs/es8389.c
+++ b/sound/soc/codecs/es8389.c
@@ -36,8 +36,8 @@ struct	es8389_private {
 	unsigned int sysclk;
 	int mastermode;
 
-	u8 mclk_src;
 	u8 vddd;
+	bool mclk_src;
 	int version;
 	enum snd_soc_bias_level bias_level;
 };
@@ -607,9 +607,9 @@ static int es8389_pcm_hw_params(struct snd_pcm_substream *substream,
 	regmap_update_bits(es8389->regmap, ES8389_ADC_FORMAT_MUTE, ES8389_DATA_LEN_MASK, state);
 	regmap_update_bits(es8389->regmap, ES8389_DAC_FORMAT_MUTE, ES8389_DATA_LEN_MASK, state);
 
-	if (es8389->mclk_src == ES8389_SCLK_PIN) {
+	if (es8389->mclk_src) {
 		regmap_update_bits(es8389->regmap, ES8389_MASTER_CLK,
-					ES8389_MCLK_SOURCE, es8389->mclk_src);
+					ES8389_MCLK_MASK, ES8389_MCLK_FROM_SCLK);
 		es8389->sysclk = params_channels(params) * params_width(params) * params_rate(params);
 	}
 
@@ -897,11 +897,7 @@ static int es8389_probe(struct snd_soc_component *component)
 	int ret, i;
 	struct es8389_private *es8389 = snd_soc_component_get_drvdata(component);
 
-	ret = device_property_read_u8(component->dev, "everest,mclk-src", &es8389->mclk_src);
-	if (ret != 0) {
-		dev_dbg(component->dev, "mclk-src return %d", ret);
-		es8389->mclk_src = ES8389_MCLK_SOURCE;
-	}
+	es8389->mclk_src = device_property_read_bool(component->dev, "everest,mclk-from-sclk");
 
 	for (i = 0; i < ARRAY_SIZE(es8389_core_supplies); i++)
 		es8389->core_supply[i].supply = es8389_core_supplies[i];
diff --git a/sound/soc/codecs/es8389.h b/sound/soc/codecs/es8389.h
index d21e72f87..7f1212219 100644
--- a/sound/soc/codecs/es8389.h
+++ b/sound/soc/codecs/es8389.h
@@ -116,9 +116,8 @@
 #define ES8389_TDM_SLOT               (0x70 << 0)
 #define ES8389_TDM_SHIFT              4
 
-#define ES8389_MCLK_SOURCE            (1 << 6)
-#define ES8389_MCLK_PIN               (1 << 6)
-#define ES8389_SCLK_PIN               (0 << 6)
+#define ES8389_MCLK_MASK              (3 << 6)
+#define ES8389_MCLK_FROM_SCLK         (1 << 6)
 
 /* ES8389_FMT */
 #define ES8389_S24_LE                 (0 << 5)
-- 
2.17.1


