Return-Path: <devicetree+bounces-308615-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qOwZHVuDJ2q5yQIAu9opvQ
	(envelope-from <devicetree+bounces-308615-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:07:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C791665BF8C
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:07:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308615-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308615-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58B3D3020A4C
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 03:06:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01676336891;
	Tue,  9 Jun 2026 03:06:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp153-182.sina.com.cn (smtp153-182.sina.com.cn [61.135.153.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424C14071DF
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 03:06:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780974399; cv=none; b=fkkJKS1DV1IlPTeD5O45ieWQJ5kehuwB94tKm704AuWzc2r8dpAuXpk7HOfiMZuxN3PZ9L286kX5yHJtqHSRUR2nOyc+wTN2wEqmIdi6LmsRQfiTafbVyudE5ImOd3ELsY3snfOaMin099pBgv3dpr6rbSsaCZ9Cbn8OKzypxyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780974399; c=relaxed/simple;
	bh=x13aTDQkJsNLQXl8zm5FTHT4vmY1CVYNLteeYpC8UN0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=Fn2YgJrScu+smi8ditEAJ++67LGS9t+yUbpc5XEHjV1v1SpXaytvpVvnu/I1qh5+aPdGwEB5ZB4a3CB2M4DAVgH6OpiBhnudSs2njrtJ90UJEIBWAcSphepoMZVu9daL4unbY5lop+qmr+qfxYv2GBCrz7byHxW89FLQG8EqHc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=61.135.153.182
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.38) with ESMTP
	id 6A278331000011AE; Tue, 9 Jun 2026 11:06:29 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 7350307DB00F457A98F3F299DB359A10
X-SMAIL-UIID: 7350307DB00F457A98F3F299DB359A10-20260609-110629
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH 6/7] ASoC: codecs: ES8389: Add INPUTL MUX and INPUTR MUX
Date: Tue,  9 Jun 2026 11:06:22 +0800
Message-Id: <20260609030623.17404-7-zhangyi@everest-semi.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308615-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[everest-semi.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:alsa-devel@alsa-project.org,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:tiwai@suse.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:zhangyi@everest-semi.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
X-Rspamd-Queue-Id: C791665BF8C

Add INPUTL MUX and INPUTR MUX in route

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 sound/soc/codecs/es8389.c | 35 +++++++++++++++++++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
index d1bcbbfcd..5e4afafd9 100644
--- a/sound/soc/codecs/es8389.c
+++ b/sound/soc/codecs/es8389.c
@@ -164,6 +164,16 @@ static const struct soc_enum alc_ramprate =
 static const struct soc_enum alc_winsize =
 	SOC_ENUM_SINGLE(ES8389_ALC_CTL, 0, 16, winsize);
 
+static const char *const es8389_adcl_mux_txt[] = {
+	"Normal",
+	"ADC2 channel to ADC1 channel",
+};
+
+static const char *const es8389_adcr_mux_txt[] = {
+	"Normal",
+	"ADC1 channel to ADC2 channel",
+};
+
 static const char *const es8389_outl_mux_txt[] = {
 	"Normal",
 	"DAC2 channel to DAC1 channel",
@@ -191,6 +201,20 @@ static const unsigned int es8389_pga_values[] = {
 	1, 5, 6
 };
 
+static const struct soc_enum es8389_adcl_mux_enum =
+	SOC_ENUM_SINGLE(ES8389_ADC_MODE, 5,
+			ARRAY_SIZE(es8389_adcl_mux_txt), es8389_adcl_mux_txt);
+
+static const struct snd_kcontrol_new es8389_adcl_mux_controls =
+	SOC_DAPM_ENUM("INPUTL MUX", es8389_adcl_mux_enum);
+
+static const struct soc_enum es8389_adcr_mux_enum =
+	SOC_ENUM_SINGLE(ES8389_ADC_MODE, 4,
+			ARRAY_SIZE(es8389_adcr_mux_txt), es8389_adcr_mux_txt);
+
+static const struct snd_kcontrol_new es8389_adcr_mux_controls =
+	SOC_DAPM_ENUM("INPUTR MUX", es8389_adcr_mux_enum);
+
 static const struct soc_enum es8389_outl_mux_enum =
 	SOC_ENUM_SINGLE(ES8389_DAC_MIX, 5,
 			ARRAY_SIZE(es8389_outl_mux_txt), es8389_outl_mux_txt);
@@ -319,6 +343,8 @@ static const struct snd_soc_dapm_widget es8389_dapm_widgets[] = {
 			   &es8389_adc_mixer_controls[0],
 			   ARRAY_SIZE(es8389_adc_mixer_controls)),
 	SND_SOC_DAPM_MUX("ADC MUX", SND_SOC_NOPM, 0, 0, &es8389_dmic_mux_controls),
+	SND_SOC_DAPM_MUX("INPUTL MUX", SND_SOC_NOPM, 0, 0, &es8389_adcl_mux_controls),
+	SND_SOC_DAPM_MUX("INPUTR MUX", SND_SOC_NOPM, 0, 0, &es8389_adcr_mux_controls),
 
 	SND_SOC_DAPM_MUX("OUTL MUX", SND_SOC_NOPM, 0, 0, &es8389_outl_mux_controls),
 	SND_SOC_DAPM_MUX("OUTR MUX", SND_SOC_NOPM, 0, 0, &es8389_outr_mux_controls),
@@ -332,10 +358,15 @@ static const struct snd_soc_dapm_route es8389_dapm_routes[] = {
 	{"ADCL", NULL, "PGAL"},
 	{"ADCR", NULL, "PGAR"},
 
+	{"INPUTL MUX", "Normal", "ADCL"},
+	{"INPUTL MUX", "ADC2 channel to ADC1 channel", "ADCR"},
+	{"INPUTR MUX", "Normal", "ADCR"},
+	{"INPUTR MUX", "ADC1 channel to ADC2 channel", "ADCL"},
+
 	{"ADC Mixer", "DACL ADCL Mixer", "DACL"},
 	{"ADC Mixer", "DACR ADCR Mixer", "DACR"},
-	{"ADC Mixer", NULL, "ADCL"},
-	{"ADC Mixer", NULL, "ADCR"},
+	{"ADC Mixer", NULL, "INPUTL MUX"},
+	{"ADC Mixer", NULL, "INPUTR MUX"},
 
 	{"ADC MUX", "AMIC", "ADC Mixer"},
 	{"ADC MUX", "DMIC", "DMIC"},
-- 
2.17.1


