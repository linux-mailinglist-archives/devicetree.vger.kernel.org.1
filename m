Return-Path: <devicetree+bounces-308105-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N5Z0B2+BJmqpXgIAu9opvQ
	(envelope-from <devicetree+bounces-308105-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 10:46:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 736DA654308
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 10:46:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308105-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308105-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7ADF73015A5E
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 08:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55AD53B2FFD;
	Mon,  8 Jun 2026 08:36:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from r3-175.sinamail.sina.com.cn (r3-175.sinamail.sina.com.cn [202.108.3.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFDCE3B19DC
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 08:36:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780907795; cv=none; b=VtlPnPs6jJ03DLBEIyo5ACtkPHYROSJpFbUpGVO/qxPSaNYpVxyFl3R2SpZ6r84o6V+6P/UYnOrnKbGbf9pv+v+BHGBPb/GzenO7mPDAY+lRioZ/PpPrY17v/YYyyQtxPKnuHvKsbxCZT2tzjFh5IFkbZqClIDjH7diLygghlrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780907795; c=relaxed/simple;
	bh=Q9CiSCpbrlysNjNdadEm+d6AwmaU+vEub4Zy77NpfiQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=nYgytypk0FpYJyAUffTQbZ+lAc8+0SkEe3Jf4SvEpJULHo9kYD9LR5JkOQy4+Z4+R9L+pwGHdAFLPvWM+DgBQYOlJLZx/+CPusEMlXmGgT+5Y0G1tPlcXOJ/GRDucCJY6x3kGUQ2wP2kpsTUWHMBmviGJayk/9n5hMoo2wXThkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=202.108.3.175
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.38) with ESMTP
	id 6A267EDF00000BB8; Mon, 8 Jun 2026 16:35:48 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 063491E7DCA444D29271C2B4BA647408
X-SMAIL-UIID: 063491E7DCA444D29271C2B4BA647408-20260608-163548
From: Michael Zhang <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH v0 4/7] ASoC: codecs: ES8389: Modify the initial configuration
Date: Mon,  8 Jun 2026 16:35:37 +0800
Message-Id: <20260608083540.12581-5-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260608083540.12581-1-zhangyi@everest-semi.com>
References: <20260608083540.12581-1-zhangyi@everest-semi.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308105-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[everest-semi.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:alsa-devel@alsa-project.org,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:tiwai@suse.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:zhangyi@everest-semi.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,everest-semi.com:mid,everest-semi.com:from_mime,everest-semi.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 736DA654308

From: Zhang Yi <zhangyi@everest-semi.com>

Modify the initial configuration

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 sound/soc/codecs/es8389.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
index cd8284da8c62..ad016c255c77 100644
--- a/sound/soc/codecs/es8389.c
+++ b/sound/soc/codecs/es8389.c
@@ -792,7 +792,7 @@ static void es8389_init(struct snd_soc_component *component)
 
 	regmap_read(es8389->regmap, ES8389_MAX_REGISTER, &reg);
 	es8389->version = reg;
-	regmap_write(es8389->regmap, ES8389_ISO_CTL, 0x00);
+	regmap_write(es8389->regmap, ES8389_ISO_CTL, 0x56);
 	regmap_write(es8389->regmap, ES8389_RESET, 0x7E);
 	regmap_write(es8389->regmap, ES8389_ISO_CTL, 0x38);
 	regmap_write(es8389->regmap, ES8389_ADC_HPF1, 0x64);
@@ -844,7 +844,7 @@ static void es8389_init(struct snd_soc_component *component)
 	regmap_write(es8389->regmap, ES8389_SCLK_DIV, 0x04);
 	regmap_write(es8389->regmap, ES8389_LRCK_DIV1, 0x01);
 	regmap_write(es8389->regmap, ES8389_LRCK_DIV2, 0x00);
-	regmap_write(es8389->regmap, ES8389_OSC_CLK, 0x00);
+	regmap_write(es8389->regmap, ES8389_OSC_CLK, 0x10);
 	regmap_write(es8389->regmap, ES8389_ADC_OSR, 0x1F);
 	regmap_write(es8389->regmap, ES8389_ADC_DSP, 0x7F);
 	regmap_write(es8389->regmap, ES8389_ADC_MUTE, 0xC0);
-- 
2.54.0.windows.1


