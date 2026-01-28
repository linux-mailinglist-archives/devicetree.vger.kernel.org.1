Return-Path: <devicetree+bounces-260573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6J63NMVMemkp5AEAu9opvQ
	(envelope-from <devicetree+bounces-260573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:52:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CC6A73D8
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:52:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 99D3C3036EAF
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0839D36F40E;
	Wed, 28 Jan 2026 17:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WNRJh2lr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1C136F419
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 17:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769622530; cv=none; b=GN3CIoXmwqZZ5Za3sroXe11VzlctmUBfvfhCl5S9Mpl9rXFalBB4BI9+hTPtg+TWEhK3dPmCGu+1N/qStsemkDjn9bdHwT1a8WA8MVPM+kNd+aBt5YA6c6DSB8ArFqQ99FcInNF++599hMZD5NoxUhgI6IWT74tgq23MgOnmoIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769622530; c=relaxed/simple;
	bh=rmpRjZA6qfluUfLSjHubz9GIBWZHNte5ADtuwuRmytY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cZ5wMdjoKxU5RNILNgFYK8w3aPwHuA+IrYk3fmI/UDsewdMU48kIUw6tC4e6QWWUVOqvwm64kM/XqQtNPi0/Ra5uvD2vypXBDxxCzA4uwlrtSu7snjug574AttMC2wDdbrNWuXprTEFYDKam2TKJST1yHyUlP7Nim9X+BQvQ+2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WNRJh2lr; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7d148ddbb91so47370a34.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769622528; x=1770227328; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LI2PXO6QtqofNQG9xx+2bhCGL8mFGjiSxAqb+y/MmWY=;
        b=WNRJh2lrhQjv3UvLuwDsXvcS3VGwGlCrWqMXCT0FmgNrmfVNRsqKmIp+4qjKH+PLmL
         MYai874H+9UkMum0htRdubSZaKb7hQeXNpO7UAICYLBLqON5yFhOlqLuyrBj/mklXiiA
         vqKESjG2XiIKXN0wNTpavRiHF+v0+VJqCoAYRnnPlBNAlkypLU5y5z8qauqajDqzQ6V7
         vQFjOl3XA74FjQGibUKvIneDNLjtOJpAumr4drkSpCGTWsEdQ3s5cLoKHd0vIfo5i1HE
         hXbdS2gn6NQh7c58nqTDKOJTdev+i/7QRtL9RhvltXOFMsXthmowwV0WB5eTtgPNoFbP
         kJrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769622528; x=1770227328;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LI2PXO6QtqofNQG9xx+2bhCGL8mFGjiSxAqb+y/MmWY=;
        b=ek15llHMiI7wyvFVv8czUc8fNkMdYgjgY4iBk28FSEbP+h9ogdhI/lB03Viy3gAyyy
         riM3LHeSPUa8FRjtd+qknQobOY4nXpXARPxbzXgj3zBXHXKDyilAflNx97HQnOH9bW5l
         ri7gcLaHXey+3a6FFUt+2ah+H0xH2R/HKAVBKFgcRUzW+thl2qi4LI8nfJfv4MvRAAoA
         ttMEZ2sgILZLEvgpQEh24Sy0tDSu2KQE9xbgy1k7mwcaA9Uhep/yHSsPHfvUyXezW+/h
         O+V+aZqrciqcjpqbzVDnBA5nj4Bzv1rW9nGL+WMOu7LFasy2EfrylqjQzYYFOFiHbwoa
         W+UQ==
X-Gm-Message-State: AOJu0YxtPPrNu0ZDBuKZS8OkednqUyyW0txTf4T/tmsvpXTCeYULMiOM
	lNJYoUz7EZ/rdOiWdTpHKv4F4m6b93ggC9KKe3t44vhhiREHf4P1EfnH
X-Gm-Gg: AZuq6aJkbqEWKiLOHyBL7OhclFwnzi1YOVd1ep90LTlF09bACdGGNx+MaC9nUsAlTAE
	L0hi0DTjXAf3m6ERm4mxnWxHKaIZVXdIuvSh1wDc5ufOJn9Qxt7wBcvhomqw58+y9Y7s2dCrETk
	SKQQNTfISqO6xwR6WwVuCVchQt0edTAihJ7xJZAIiUHz/boCbZnhIhHDAm0ZoAaAM0Paa8QsGp2
	6Y+GFAJ0lgAKVNp7r16gbs2nG4YMr4VMHrIyiaDg+pkGW+mhsMuJHwQpJq6J2T+lWKfgIBsuD75
	RrZJL/1Yh2AZq5jrbm4ZE4EkzNW5npvHdF6TPAM0W5j71s7OFCajcz4JTtdE8t6yufr3gVXffYS
	XpRQL/kn3mPNyw7r1wCcqyHGfemrd39VzyH0mf4lMx5Wy+pSroZV+LZCE0an+h71V2KSqsGLqul
	lFhV7aVor7
X-Received: by 2002:a4a:e9ec:0:b0:662:f486:cc90 with SMTP id 006d021491bc7-662f486f145mr2553572eaf.4.1769622523363;
        Wed, 28 Jan 2026 09:48:43 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-409575b0a89sm2187647fac.20.2026.01.28.09.48.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 09:48:42 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sound@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	wangweidong.a@awinic.com,
	tiwai@suse.com,
	perex@perex.cz,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/3] ASoC: codecs: aw87390: Add Anbernic RG-DS amp driver
Date: Wed, 28 Jan 2026 11:46:07 -0600
Message-ID: <20260128174608.1498-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128174608.1498-1-macroalpha82@gmail.com>
References: <20260128174608.1498-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,awinic.com,suse.com,perex.cz,kernel.org,gmail.com,sntech.de,lists.infradead.org,hotmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-260573-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 50CC6A73D8
X-Rspamd-Action: no action

From: Chris Morgan <macromorgan@hotmail.com>

Add support for Anbernic's RG-DS audio amplifiers, powered by
Awinic AW87391 amplifier ICs. These chips typically require an
init sequence provided by firmware, but the manufacturer did not
provide firmware in this case. As a result we had to hard-code
the init sequence and use a device specific binding (rather than
a binding just for the aw87391).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 sound/soc/codecs/aw87390.c | 175 +++++++++++++++++++++++++++++++++++--
 sound/soc/codecs/aw87390.h |  86 ++++++++++++++++++
 2 files changed, 253 insertions(+), 8 deletions(-)

diff --git a/sound/soc/codecs/aw87390.c b/sound/soc/codecs/aw87390.c
index d7fd865c349f..613daccca3af 100644
--- a/sound/soc/codecs/aw87390.c
+++ b/sound/soc/codecs/aw87390.c
@@ -314,6 +314,45 @@ static int aw87390_drv_event(struct snd_soc_dapm_widget *w,
 	return ret;
 }
 
+static int aw87391_rgds_drv_event(struct snd_soc_dapm_widget *w,
+				struct snd_kcontrol *kcontrol, int event)
+{
+	struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
+	struct aw87390 *aw87390 = snd_soc_component_get_drvdata(component);
+	struct aw_device *aw_dev = aw87390->aw_pa;
+
+	switch (event) {
+	case SND_SOC_DAPM_PRE_PMU:
+		if (!IS_ERR(aw87390->vdd_reg)) {
+			if (regulator_enable(aw87390->vdd_reg))
+				dev_warn(aw_dev->dev, "Failed to enable vdd\n");
+	}
+		break;
+	case SND_SOC_DAPM_POST_PMU:
+		regmap_write(aw_dev->regmap, AW87391_SYSCTRL_REG,
+			     AW87391_REG_VER_SEL_LOW | AW87391_REG_EN_ADAP |
+			     AW87391_REG_EN_2X | AW87391_EN_SPK |
+			     AW87391_EN_PA | AW87391_REG_EN_CP |
+			     AW87391_EN_SW);
+		break;
+	case SND_SOC_DAPM_PRE_PMD:
+		regmap_write(aw_dev->regmap, AW87390_SYSCTRL_REG,
+			     AW87390_POWER_DOWN_VALUE);
+		break;
+	case SND_SOC_DAPM_POST_PMD:
+		if (!IS_ERR(aw87390->vdd_reg)) {
+			if (regulator_disable(aw87390->vdd_reg))
+				dev_warn(aw_dev->dev, "Failed to disable vdd\n");
+	}
+		break;
+	default:
+		dev_err(aw_dev->dev, "%s: invalid event %d\n", __func__, event);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static const struct snd_soc_dapm_widget aw87390_dapm_widgets[] = {
 	SND_SOC_DAPM_INPUT("IN"),
 	SND_SOC_DAPM_PGA_E("SPK PA", SND_SOC_NOPM, 0, 0, NULL, 0, aw87390_drv_event,
@@ -321,6 +360,14 @@ static const struct snd_soc_dapm_widget aw87390_dapm_widgets[] = {
 	SND_SOC_DAPM_OUTPUT("OUT"),
 };
 
+static const struct snd_soc_dapm_widget aw87391_rgds_dapm_widgets[] = {
+	SND_SOC_DAPM_INPUT("IN"),
+	SND_SOC_DAPM_PGA_E("SPK PA", SND_SOC_NOPM, 0, 0, NULL, 0, aw87391_rgds_drv_event,
+			   SND_SOC_DAPM_PRE_PMU | SND_SOC_DAPM_POST_PMU |
+			   SND_SOC_DAPM_PRE_PMD | SND_SOC_DAPM_POST_PMD),
+	SND_SOC_DAPM_OUTPUT("OUT"),
+};
+
 static const struct snd_soc_dapm_route aw87390_dapm_routes[] = {
 	{ "SPK PA", NULL, "IN" },
 	{ "OUT", NULL, "SPK PA" },
@@ -339,6 +386,80 @@ static int aw87390_codec_probe(struct snd_soc_component *component)
 	return 0;
 }
 
+/*
+ * Firmware typically is used to load the sequence of init commands,
+ * however for the Anbernic RG-DS we don't have a firmware file just
+ * a list of registers and values. Most of these values are undocumented
+ * in the AW87391 datasheet.
+ */
+static void aw87391_rgds_codec_init(struct aw87390 *aw87390)
+{
+	struct aw_device *aw_dev = aw87390->aw_pa;
+
+	/* Undocumented command per datasheet. */
+	regmap_write(aw_dev->regmap, 0x64, 0x3a);
+
+	/* Bits 7:4 are undocumented but provided by manufacturer. */
+	regmap_write(aw_dev->regmap, AW87391_CP_REG,
+		     (5 << 4) | AW87391_REG_CP_OVP_8_50V);
+
+	regmap_write(aw_dev->regmap, AW87391_AGCPO_REG,
+		     AW87391_AK1_S_016 | AW87391_AGC2PO_MW(500));
+
+	regmap_write(aw_dev->regmap, AW87391_AGC2PA_REG,
+		     AW87391_RK_S_20_48 | AW87391_AK2_S_41 | AW87391_AK2F_S_41);
+
+	/* Undocumented commands per datasheet. */
+	regmap_write(aw_dev->regmap, 0x5d, 0x00);
+	regmap_write(aw_dev->regmap, 0x5e, 0xb4);
+	regmap_write(aw_dev->regmap, 0x5f, 0x30);
+	regmap_write(aw_dev->regmap, 0x60, 0x39);
+	regmap_write(aw_dev->regmap, 0x61, 0x10);
+	regmap_write(aw_dev->regmap, 0x62, 0x03);
+	regmap_write(aw_dev->regmap, 0x63, 0x7d);
+	regmap_write(aw_dev->regmap, 0x65, 0xa0);
+	regmap_write(aw_dev->regmap, 0x66, 0x21);
+	regmap_write(aw_dev->regmap, 0x67, 0x41);
+	regmap_write(aw_dev->regmap, 0x68, 0x3b);
+	regmap_write(aw_dev->regmap, 0x6e, 0x00);
+	regmap_write(aw_dev->regmap, 0x6f, 0x00);
+	regmap_write(aw_dev->regmap, 0x70, 0x00);
+	regmap_write(aw_dev->regmap, 0x71, 0x00);
+	regmap_write(aw_dev->regmap, 0x72, 0x34);
+	regmap_write(aw_dev->regmap, 0x73, 0x06);
+	regmap_write(aw_dev->regmap, 0x74, 0x10);
+	regmap_write(aw_dev->regmap, 0x75, 0x00);
+	regmap_write(aw_dev->regmap, 0x7a, 0x00);
+	regmap_write(aw_dev->regmap, 0x7b, 0x00);
+	regmap_write(aw_dev->regmap, 0x7c, 0x00);
+	regmap_write(aw_dev->regmap, 0x7d, 0x00);
+
+	regmap_write(aw_dev->regmap, AW87391_PAG_REG, AW87391_GAIN_12DB);
+	regmap_write(aw_dev->regmap, AW87391_SYSCTRL_REG,
+		     AW87391_EN_PA | AW87391_REG_EN_CP | AW87391_EN_SW);
+	regmap_write(aw_dev->regmap, AW87391_SYSCTRL_REG,
+		     AW87391_REG_VER_SEL_LOW | AW87391_REG_EN_ADAP |
+		     AW87391_REG_EN_2X | AW87391_EN_SPK | AW87391_EN_PA |
+		     AW87391_REG_EN_CP | AW87391_EN_SW);
+	regmap_write(aw_dev->regmap, AW87391_PAG_REG, AW87391_GAIN_15DB);
+}
+
+static int aw87391_rgds_codec_probe(struct snd_soc_component *component)
+{
+	struct aw87390 *aw87390 = snd_soc_component_get_drvdata(component);
+
+	aw87390->vdd_reg = devm_regulator_get_optional(aw87390->aw_pa->dev,
+						       "vdd");
+	if (IS_ERR(aw87390->vdd_reg) && PTR_ERR(aw87390->vdd_reg) != -ENODEV)
+		return dev_err_probe(aw87390->aw_pa->dev,
+				     PTR_ERR(aw87390->vdd_reg),
+				     "Could not get vdd regulator\n");
+
+	aw87391_rgds_codec_init(aw87390);
+
+	return 0;
+}
+
 static const struct snd_soc_component_driver soc_codec_dev_aw87390 = {
 	.probe = aw87390_codec_probe,
 	.dapm_widgets = aw87390_dapm_widgets,
@@ -349,6 +470,14 @@ static const struct snd_soc_component_driver soc_codec_dev_aw87390 = {
 	.num_controls = ARRAY_SIZE(aw87390_controls),
 };
 
+static const struct snd_soc_component_driver soc_codec_dev_anbernic_rgds = {
+	.probe = aw87391_rgds_codec_probe,
+	.dapm_widgets = aw87391_rgds_dapm_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(aw87391_rgds_dapm_widgets),
+	.dapm_routes = aw87390_dapm_routes,
+	.num_dapm_routes = ARRAY_SIZE(aw87390_dapm_routes),
+};
+
 static void aw87390_parse_channel_dt(struct aw87390 *aw87390)
 {
 	struct aw_device *aw_dev = aw87390->aw_pa;
@@ -366,6 +495,10 @@ static int aw87390_init(struct aw87390 *aw87390, struct i2c_client *i2c, struct
 	unsigned int chip_id;
 	int ret;
 
+	aw_dev = devm_kzalloc(&i2c->dev, sizeof(*aw_dev), GFP_KERNEL);
+	if (!aw_dev)
+		return -ENOMEM;
+
 	/* read chip id */
 	ret = regmap_read(regmap, AW87390_ID_REG, &chip_id);
 	if (ret) {
@@ -373,22 +506,24 @@ static int aw87390_init(struct aw87390 *aw87390, struct i2c_client *i2c, struct
 		return ret;
 	}
 
-	if (chip_id != AW87390_CHIP_ID) {
+	switch (chip_id) {
+	case AW87390_CHIP_ID:
+		aw_dev->chip_id = AW87390_CHIP_ID;
+		break;
+	case AW87391_CHIP_ID:
+		aw_dev->chip_id = AW87391_CHIP_ID;
+		break;
+	default:
 		dev_err(&i2c->dev, "unsupported device\n");
 		return -ENXIO;
 	}
 
 	dev_dbg(&i2c->dev, "chip id = 0x%x\n", chip_id);
 
-	aw_dev = devm_kzalloc(&i2c->dev, sizeof(*aw_dev), GFP_KERNEL);
-	if (!aw_dev)
-		return -ENOMEM;
-
 	aw87390->aw_pa = aw_dev;
 	aw_dev->i2c = i2c;
 	aw_dev->regmap = regmap;
 	aw_dev->dev = &i2c->dev;
-	aw_dev->chip_id = AW87390_CHIP_ID;
 	aw_dev->acf = NULL;
 	aw_dev->prof_info.prof_desc = NULL;
 	aw_dev->prof_info.count = 0;
@@ -406,6 +541,7 @@ static int aw87390_init(struct aw87390 *aw87390, struct i2c_client *i2c, struct
 static int aw87390_i2c_probe(struct i2c_client *i2c)
 {
 	struct aw87390 *aw87390;
+	const struct snd_soc_component_driver *priv;
 	int ret;
 
 	ret = i2c_check_functionality(i2c->adapter, I2C_FUNC_I2C);
@@ -434,16 +570,38 @@ static int aw87390_i2c_probe(struct i2c_client *i2c)
 	if (ret)
 		return ret;
 
-	ret = devm_snd_soc_register_component(&i2c->dev,
-				&soc_codec_dev_aw87390, NULL, 0);
+	switch (aw87390->aw_pa->chip_id) {
+	case AW87390_CHIP_ID:
+		ret = devm_snd_soc_register_component(&i2c->dev,
+					&soc_codec_dev_aw87390, NULL, 0);
+		break;
+	case AW87391_CHIP_ID:
+		priv = of_device_get_match_data(&i2c->dev);
+		if (!priv)
+			return dev_err_probe(&i2c->dev, -EINVAL,
+					     "aw87391 not currently supported\n");
+		ret = devm_snd_soc_register_component(&i2c->dev, priv, NULL, 0);
+		break;
+	default:
+		return -ENXIO;
+	}
+
 	if (ret)
 		dev_err(&i2c->dev, "failed to register aw87390: %d\n", ret);
 
 	return ret;
 }
 
+static const struct of_device_id aw87390_of_match[] = {
+	{ .compatible = "awinic,aw87390" },
+	{ .compatible = "anbernic,rgds-amp", .data = &soc_codec_dev_anbernic_rgds },
+	{},
+};
+MODULE_DEVICE_TABLE(of, aw87390_of_match);
+
 static const struct i2c_device_id aw87390_i2c_id[] = {
 	{ AW87390_I2C_NAME },
+	{ AW87391_I2C_NAME },
 	{ }
 };
 MODULE_DEVICE_TABLE(i2c, aw87390_i2c_id);
@@ -451,6 +609,7 @@ MODULE_DEVICE_TABLE(i2c, aw87390_i2c_id);
 static struct i2c_driver aw87390_i2c_driver = {
 	.driver = {
 		.name = AW87390_I2C_NAME,
+		.of_match_table = of_match_ptr(aw87390_of_match),
 	},
 	.probe = aw87390_i2c_probe,
 	.id_table = aw87390_i2c_id,
diff --git a/sound/soc/codecs/aw87390.h b/sound/soc/codecs/aw87390.h
index d0d049e65991..f48b207e4bb4 100644
--- a/sound/soc/codecs/aw87390.h
+++ b/sound/soc/codecs/aw87390.h
@@ -52,6 +52,90 @@
 #define AW87390_I2C_NAME		"aw87390"
 #define AW87390_ACF_FILE		"aw87390_acf.bin"
 
+#define AW87391_SYSCTRL_REG		(0x01)
+#define AW87391_REG_VER_SEL_LOW		(0 << 6)
+#define AW87391_REG_VER_SEL_NORMAL	(1 << 6)
+#define AW87391_REG_VER_SEL_SUPER	(2 << 6)
+#define AW87391_REG_EN_ADAP		BIT(5)
+#define AW87391_REG_EN_2X		BIT(4)
+#define AW87391_EN_SPK			BIT(3)
+#define AW87391_EN_PA			BIT(2)
+#define AW87391_REG_EN_CP		BIT(1)
+#define AW87391_EN_SW			BIT(0)
+
+#define AW87391_CP_REG                  (0x02)
+#define AW87391_REG_CP_OVP_6_50V	0
+#define AW87391_REG_CP_OVP_6_75V	1
+#define AW87391_REG_CP_OVP_7_00V	2
+#define AW87391_REG_CP_OVP_7_25V	3
+#define AW87391_REG_CP_OVP_7_50V	4
+#define AW87391_REG_CP_OVP_7_75V	5
+#define AW87391_REG_CP_OVP_8_00V	6
+#define AW87391_REG_CP_OVP_8_25V	7
+#define AW87391_REG_CP_OVP_8_50V	8
+
+#define AW87391_PAG_REG                 (0x03)
+#define AW87391_GAIN_12DB		0
+#define AW87391_GAIN_15DB		1
+#define AW87391_GAIN_18DB		2
+#define AW87391_GAIN_21DB		3
+#define AW87391_GAIN_24DB		4
+
+#define AW87391_AGCPO_REG               (0x04)
+#define AW87391_AK1_S_016		(2 << 5)
+#define AW87391_AK1_S_032		(3 << 5)
+#define AW87391_PD_AGC1_PWRDN		BIT(4)
+/* AGC2PO supports values between 500mW (0000) to 1600mW (1011) */
+#define AW87391_AGC2PO_MW(n)		((n / 100) - 5)
+
+#define AW87391_AGC2PA_REG              (0x05)
+#define AW87391_RK_S_5_12		(0 << 5)
+#define AW87391_RK_S_10_24		(1 << 5)
+#define AW87391_RK_S_20_48		(2 << 5)
+#define AW87391_RK_S_41			(3 << 5)
+#define AW87391_RK_S_82			(4 << 5)
+#define AW87391_RK_S_164		(5 << 5)
+#define AW87391_RK_S_328		(6 << 5)
+#define AW87391_RK_S_656		(7 << 5)
+#define AW87391_AK2_S_1_28		(0 << 2)
+#define AW87391_AK2_S_2_56		(1 << 2)
+#define AW87391_AK2_S_10_24		(2 << 2)
+#define AW87391_AK2_S_41		(3 << 2)
+#define AW87391_AK2_S_82		(4 << 2)
+#define AW87391_AK2_S_164		(5 << 2)
+#define AW87391_AK2_S_328		(6 << 2)
+#define AW87391_AK2_S_656		(7 << 2)
+#define AW87391_AK2F_S_10_24		0
+#define AW87391_AK2F_S_20_48		1
+#define AW87391_AK2F_S_41		2
+#define AW87391_AK2F_S_82		3
+
+#define AW87391_SYSST_REG               (0x06)
+#define AW87391_UVLO			BIT(7)
+#define AW87391_OTN			BIT(6)
+#define AW87391_OC_FLAG			BIT(5)
+#define AW87391_ADAP_CP			BIT(4)
+#define AW87391_STARTOK			BIT(3)
+#define AW87391_CP_OVP			BIT(2)
+#define AW87391_PORN			BIT(1)
+
+#define AW87391_SYSINT_REG              (0x07)
+#define AW87391_UVLOI			BIT(7)
+#define AW87391_ONTI			BIT(6)
+#define AW87391_OC_FLAGI		BIT(5)
+#define AW87391_ADAP_CPI		BIT(4)
+#define AW87391_STARTOKI		BIT(3)
+#define AW87391_CP_OVPI			BIT(2)
+#define AW87391_PORNI			BIT(1)
+
+#define AW87391_DFT_THGEN0_REG          (0x63)
+#define AW87391_ADAPVTH_01W		(0 << 2)
+#define AW87391_ADAPVTH_02W		(1 << 2)
+#define AW87391_ADAPVTH_03W		(2 << 2)
+#define AW87391_ADAPVTH_04W		(3 << 2)
+
+#define AW87391_I2C_NAME                "aw87391"
+
 #define AW87390_PROFILE_EXT(xname, profile_info, profile_get, profile_set) \
 { \
 	.iface = SNDRV_CTL_ELEM_IFACE_MIXER, \
@@ -63,6 +147,7 @@
 
 enum aw87390_id {
 	AW87390_CHIP_ID = 0x76,
+	AW87391_CHIP_ID = 0xc1,
 };
 
 enum {
@@ -80,6 +165,7 @@ struct aw87390 {
 	struct mutex lock;
 	struct regmap *regmap;
 	struct aw_container *aw_cfg;
+	struct regulator *vdd_reg;
 };
 
 #endif
-- 
2.43.0


