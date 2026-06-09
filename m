Return-Path: <devicetree+bounces-309223-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sKdHBBtBKGpvBAMAu9opvQ
	(envelope-from <devicetree+bounces-309223-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:36:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B8C662745
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:36:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="J8/RfBDt";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309223-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309223-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2DDD63068968
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:24:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 316C143C048;
	Tue,  9 Jun 2026 16:23:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D261F436366
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:23:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781022205; cv=none; b=hwZKp0x77MLtDNa6OjujQ7kiqDlZJvlyKnyilg9X2vXO/At70yf+0E/sdvRNYi6Fujoax1imcDFjCWmSpuTZEuOpp7GNs3kO2KKMEbMT5QHtRHauqcYa3ZjP0XFQzk8q3FpC8dV1ftTvXzsgLezQO8GqmTu3/YcLcwyD1iXLXCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781022205; c=relaxed/simple;
	bh=lSUFMq9Iap1rdJNlT3oDAV2LcIWyyogUVtvmIuYB+vA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EbztANLSQnMIq3gxZL2NHKtipubuXo5+bG8JzHq/jXIRjbjm0oKaRu09Uvm7VXUxV0KPWTORveUw6hjpIq05Tt9Z4pTKuXcIl04oE7G1NIw0tT32dlMVbDJMt/DTHNEW6fQpLCeXbGzNvzJ5/ZI8HvxxxIjC0Q6ipRtT6S8GvN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J8/RfBDt; arc=none smtp.client-ip=209.85.160.179
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-517b1f2c6adso27148651cf.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 09:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781022203; x=1781627003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZQauIJKMkpkl88TicZuiGE6oI1IQBcGG5Fit1zxYJvY=;
        b=J8/RfBDtJnRt7LHHPpAJtzHjTLTX2s+6DDH10xLhE8B0vMBCz05NNucl/zUSBQprJ7
         x/HWxMFgdCcUUEuDZEq80j0AJksjCG9C7I93QdHEC7WJrDaQmNEPgEa/0op0jCbP0LuW
         PL6EoIEfUywYied4qcCbqAfur/rAeZFUlKPfybw0LmZFm2RuZpiW+4/BpculZkKPCIAo
         NYs6IqXiLp4sBmp924hutpVOqS2X1EGTmwXlwdJdgh4h7032GVgLq+RZmNVCAadJWlGQ
         xOtcUV1J/NsRT33aPfLq/QItermPYBvN8rkHgbT6zuoiXikX6gS/eCW3uOORa50qCR1p
         SVIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781022203; x=1781627003;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZQauIJKMkpkl88TicZuiGE6oI1IQBcGG5Fit1zxYJvY=;
        b=sf4i0vw5g6YWPqbLbdSOhS25qR9pso9atjcnXhPuKFOzQ/f87AC2g9g3Zb49t2PKrv
         CzYE/lDrrMJxHn1EOzqgUS2IqcYv+3A/TVaTUhHRYVP3GMo7tKpP1ZIQRHA3SKOMBS2f
         cZQ9SzWpDTbWG+kB988gTN1cFlVlovnFWaPaC/pG8x3jIubdJchH/bwHQg9AUZB4ex0V
         QDmVIUzM3O7D9L0Lssw2rugSYHHAyOswUHyPsd6/G1Ep1mXagrg9Dr6JziSe/MYiOLuo
         aqIQrmJvOMDvZCgzzFsqiPJPonzcqxOBRHTgCzczswhAV8PCldVUtP4MZUGsrk5IRTf6
         7i2w==
X-Forwarded-Encrypted: i=1; AFNElJ/3KLMjQbAP5vmKH/EmBG8Mcuyd43HbfAU84oaUwkQHafXIOtUem5TTLsDuIxcZFG0ZjdhJLn8hEiMX@vger.kernel.org
X-Gm-Message-State: AOJu0YwE6AcCxJLZJ1OMQ8SvvUjx/yV5NW18AIEK8rJmlkW2ioMQv7hN
	1cOuhmBgo8Pkv2dvWg3HtenzKklOShvh8Ftifwr6taPRYOOyxOJkegJM
X-Gm-Gg: Acq92OHqfGun5doLzGvgx8fV25Btqs67YpyDz82LRoNdW+RP1ZNfnmQzqJVvFqyPIwd
	jaH920slzUS5X1PSJ/3cUOAyKOVPXe6gsGKbeAijGTUppbJcpCAgLH29TkkhiLk5PpBndAn5kxw
	WR4Ew4sc7uEYGb97eF9oa8NlZ9JdTdQtCWm5PZc4I9bUo5w9R+G2njfFGNFy0o89lQ1ZKRGH72w
	m+Ix+T6Vz/hy5uPq19naCuQk9X45LuuEIDhkQ+nkTE/yqGtYII4Vrauu4RiEt6cxME2XAIUeXMk
	uhw00YOJHqEPg2rKIIlCi9PQsYt0RQIztC1lI9VHexUEoJXhS/hmnwIcPkpaPmL3ZOejnEnD9yn
	QR8l2FOqKJrhD1vBFSHDNMaTkNqyPatkK8Gwp/+dCUxec8A7+TwrY27SceocbDewV+Vft3H9zMU
	wRSbKJKSXbvI23mxyixnMbvEk7T5YPs/+rsL3TQg==
X-Received: by 2002:a05:622a:4cd:b0:517:79f0:ae3d with SMTP id d75a77b69052e-51795a42fd9mr300851311cf.21.1781022202696;
        Tue, 09 Jun 2026 09:23:22 -0700 (PDT)
Received: from localhost ([142.181.163.192])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-51775c07eb0sm208386171cf.5.2026.06.09.09.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 09:23:21 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Nickolay Goppen <setotau@mainlining.org>,
	Adam Skladowski <a39.skl@gmail.com>,
	Vladimir Lypak <vladimir.lypak@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
	Johan Hovold <johan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v5 15/15] ASoC: msm8916-wcd-analog: add quirk for cajon 2.0
Date: Tue,  9 Jun 2026 12:22:55 -0400
Message-ID: <20260609162255.31074-16-mailingradian@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260609162255.31074-1-mailingradian@gmail.com>
References: <20260609162255.31074-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309223-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:srini@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:setotau@mainlining.org,m:a39.skl@gmail.com,m:vladimir.lypak@gmail.com,m:dmitry.baryshkov@oss.qualcomm.com,m:mohammad.rafi.shaik@oss.qualcomm.com,m:johan@kernel.org,m:kees@kernel.org,m:ckeepax@opensource.cirrus.com,m:kuninori.morimoto.gx@renesas.com,m:mailingradian@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:a39skl@gmail.com,m:vladimirlypak@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[mainlining.org,gmail.com,oss.qualcomm.com,kernel.org,opensource.cirrus.com,renesas.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D1B8C662745

The codec version CAJON_2_0 on the Snapdragon 670 requires touching the
HPH test registers. Add the quirk so this driver can also support
SDM670.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 sound/soc/codecs/msm8916-wcd-analog.c | 63 ++++++++++++++++++++++++++-
 1 file changed, 61 insertions(+), 2 deletions(-)

diff --git a/sound/soc/codecs/msm8916-wcd-analog.c b/sound/soc/codecs/msm8916-wcd-analog.c
index b9325290c28d..87f8a47cc293 100644
--- a/sound/soc/codecs/msm8916-wcd-analog.c
+++ b/sound/soc/codecs/msm8916-wcd-analog.c
@@ -217,9 +217,11 @@
 #define CDC_A_RX_HPH_BIAS_LDO_OCP	(0xf195)
 #define CDC_A_RX_HPH_BIAS_CNP		(0xf196)
 #define CDC_A_RX_HPH_CNP_EN		(0xf197)
+#define CDC_A_RX_HPH_L_TEST		(0xf19A)
 #define CDC_A_RX_HPH_L_PA_DAC_CTL	(0xf19B)
 #define RX_HPA_L_PA_DAC_CTL_DATA_RESET_MASK	BIT(1)
 #define RX_HPA_L_PA_DAC_CTL_DATA_RESET_RESET	BIT(1)
+#define CDC_A_RX_HPH_R_TEST		(0xf19C)
 #define CDC_A_RX_HPH_R_PA_DAC_CTL	(0xf19D)
 #define RX_HPH_R_PA_DAC_CTL_DATA_RESET	BIT(1)
 #define RX_HPH_R_PA_DAC_CTL_DATA_RESET_MASK BIT(1)
@@ -705,6 +707,59 @@ static int pm8916_wcd_analog_enable_ear_pa(struct snd_soc_dapm_widget *w,
 	return 0;
 }
 
+static int pm8916_wcd_analog_enable_hphl_pa(struct snd_soc_dapm_widget *w,
+					    struct snd_kcontrol *kcontrol,
+					    int event)
+{
+	struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
+	struct pm8916_wcd_analog_priv *priv = dev_get_drvdata(component->dev);
+
+	/* This quirk is not required for revisions prior to CAJON_2_0 */
+	if (priv->codec_version < 4)
+		return 0;
+
+	switch (event) {
+	case SND_SOC_DAPM_POST_PMU:
+		usleep_range(7000, 7100);
+		snd_soc_component_update_bits(component, CDC_A_RX_HPH_L_TEST,
+				0x04, 0x04);
+		break;
+	case SND_SOC_DAPM_POST_PMD:
+		/* wait 20 ms after the digital codec has powered down */
+		msleep(20);
+		snd_soc_component_update_bits(component, CDC_A_RX_HPH_L_TEST,
+				0x04, 0x00);
+		break;
+	}
+	return 0;
+}
+
+static int pm8916_wcd_analog_enable_hphr_pa(struct snd_soc_dapm_widget *w,
+					    struct snd_kcontrol *kcontrol,
+					    int event)
+{
+	struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
+	struct pm8916_wcd_analog_priv *priv = dev_get_drvdata(component->dev);
+
+	/* This quirk is not required for revisions prior to CAJON_2_0 */
+	if (priv->codec_version < 4)
+		return 0;
+
+	switch (event) {
+	case SND_SOC_DAPM_POST_PMU:
+		usleep_range(7000, 7100);
+		snd_soc_component_update_bits(component, CDC_A_RX_HPH_R_TEST,
+				0x04, 0x04);
+		break;
+	case SND_SOC_DAPM_POST_PMD:
+		msleep(20);
+		snd_soc_component_update_bits(component, CDC_A_RX_HPH_R_TEST,
+				0x04, 0x00);
+		break;
+	}
+	return 0;
+}
+
 static const struct reg_default wcd_reg_defaults_2_0[] = {
 	{CDC_A_RX_COM_OCP_CTL, 0xD1},
 	{CDC_A_RX_COM_OCP_COUNT, 0xFF},
@@ -954,11 +1009,15 @@ static const struct snd_soc_dapm_widget pm8916_wcd_analog_dapm_widgets[] = {
 	SND_SOC_DAPM_MUX("EAR_S", SND_SOC_NOPM, 0, 0, &ear_mux),
 	SND_SOC_DAPM_SUPPLY("EAR CP", CDC_A_NCP_EN, 4, 0, NULL, 0),
 
-	SND_SOC_DAPM_PGA("HPHL PA", CDC_A_RX_HPH_CNP_EN, 5, 0, NULL, 0),
+	SND_SOC_DAPM_PGA_E("HPHL PA", CDC_A_RX_HPH_CNP_EN, 5, 0, NULL, 0,
+			   pm8916_wcd_analog_enable_hphl_pa,
+			   SND_SOC_DAPM_POST_PMU | SND_SOC_DAPM_POST_PMD),
 	SND_SOC_DAPM_MUX("HPHL", SND_SOC_NOPM, 0, 0, &hphl_mux),
 	SND_SOC_DAPM_MIXER("HPHL DAC", CDC_A_RX_HPH_L_PA_DAC_CTL, 3, 0, NULL,
 			   0),
-	SND_SOC_DAPM_PGA("HPHR PA", CDC_A_RX_HPH_CNP_EN, 4, 0, NULL, 0),
+	SND_SOC_DAPM_PGA_E("HPHR PA", CDC_A_RX_HPH_CNP_EN, 4, 0, NULL, 0,
+			   pm8916_wcd_analog_enable_hphr_pa,
+			   SND_SOC_DAPM_POST_PMU | SND_SOC_DAPM_POST_PMD),
 	SND_SOC_DAPM_MUX("HPHR", SND_SOC_NOPM, 0, 0, &hphr_mux),
 	SND_SOC_DAPM_MIXER("HPHR DAC", CDC_A_RX_HPH_R_PA_DAC_CTL, 3, 0, NULL,
 			   0),
-- 
2.54.0


