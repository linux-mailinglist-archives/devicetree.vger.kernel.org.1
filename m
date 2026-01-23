Return-Path: <devicetree+bounces-259030-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGVkLKmYc2lgxQAAu9opvQ
	(envelope-from <devicetree+bounces-259030-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:50:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C85077F7B
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:50:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A5D9D3017503
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:49:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 524F528751D;
	Fri, 23 Jan 2026 15:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EW4TkWiA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714821E1A3D
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 15:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769183399; cv=none; b=HesNLHpgd55bjeJQVRoJgAZu4nhJDqWrhspBUE2mKSsrW3LNq2KFtznERoLHWb3ekK1uwXn+9lsj2IqdZcQFOefU31xikBwZZr78E7+dYWJc8xM92YScJhKECLB8Kmpix50MvZRK7v6dOLduETR4orKfIgQByBL8UQy5tkg+SS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769183399; c=relaxed/simple;
	bh=RSIjyh67J4oNAwk7mDsMofPNuS5DZ4/5iAABeUb+jFg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YrAg+L7q93mAS+wrmCO65qlzywYkuZ/SEpn9OV0Yf9r5pzSIAw1dSex6lSvFrp/sZsT8X1iT923A6AK9Sucr7/M0cI3ZhRqToUGcFP7YYKMSikzL5lbz335aNp3tIWEkKLvrlhb/fSscoqJO7GkaJ+Xoc4LbMHMn+2X2qo7Xumc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EW4TkWiA; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-7cfcb46ffc9so2223907a34.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769183396; x=1769788196; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cAQOo45zfQ7Ij+/i3gdsPC5IyBQDevj3+ZJ/OzpRF3w=;
        b=EW4TkWiAolUpu/rFuyOeAu+2ZjvMwz28jxyVg7x2qyHqSkOAEjTYyDR1gLfx0f7Jb5
         yzWpCsxQu1eVx+5blwamk0Knw/9Z9YeSO9b9QOQnL4hqZrLvT78rAxRTL3xEExiwRmAZ
         SnDCI5tXGc3gVF2ooL0Ju+f4fvCYuIp1LfUnDRI/+RQQt9g4E66hxLjYHhF/KX58bRsU
         kwrApKkO6o0Wa3p4S47p5VQmMq1POjpCJQtGvTfkZWU2mhY2YcZTpOYm9XVo77CHvQ3Q
         Bk6rxLGtaJz5udFLq4AHv6j5hjjvCJOwcBOd4Tj3XZIisSo2hbVRIWNg5/tmnCLRze5J
         ACDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769183396; x=1769788196;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cAQOo45zfQ7Ij+/i3gdsPC5IyBQDevj3+ZJ/OzpRF3w=;
        b=K3an7NLVk9npTLICqxA6kXYS9dT8VZEWAXDi8fs8s9+k8WDmoT0wa05w8KXCsUjW7W
         SNgUZ28+c1PPSYAVrMSEamWpvbO/FfVnQf8ju1fIQMjUYLx0MWjrwsTnYUiELRt/2ytc
         S7aHOErsPwrXwnwpUZccFqJHHzaDWjnhSJenId11G7NcEKwqnRq5Lzm9/e8bRPcL9g8z
         AuotpWPTpucic6/DsS0PIQlgWrTzCupCJ9B/e4NpAHCBCVgtzsVTnPgG9IpwOnuQBPVM
         l71a1JwfpJ1KY1lQq/gTh9YMdi8f1nwkXSEyzlunEEbbZhUKU/teFl2OHBT4rnSSgN4A
         KiPg==
X-Gm-Message-State: AOJu0YwibRVqQqYhezfSLwJHpimvWbSlyekWFQgW5jYmsW0uD2S6qKDm
	atfMq2v7FGJ0G8NF9sN4nAgEhMd6yRuP6GjCPX06v2WSPWutEjilbzMq
X-Gm-Gg: AZuq6aKLlYqWu7qgd9yGDikra7G2M2xh1Too4M9UYTxhuDpb1qBkPnHeD7NY6vqzY7H
	J/ET0brAGypxTNElHbTtd/L/WwJXr8isaIcWzBBYhtMGEe0hpMZHuZBj6iA1bcUydsfO+QPAxAJ
	9e8Hn15zqXOKMDyHLVgKKLKpyAxMmYfPqw7zOI9I66WlWFqfv1rVNDAzKBtzHIVexDFmmIHXcJl
	q6bt0ze6DPgk+09G0FR6HYWpwVmoDI7HsM1UwzbVv3XoWsoarxpTA7mbVznBR1nz1Bm261REyKl
	8e3W2w9fayoUzBNqXjHF1AyXCVnoLwv6ELhn2N4F7J98VW7GVGGuM48XkrMktLd0e2sEFGorDHi
	0L22Qvxr9nS8sUtEdiKs2LeeInc0Cfts5Fs5fBU7k55a7pZN/SK4XvjG+XjhskVv4b76wnSJDi2
	ZvURLNgpzO4A==
X-Received: by 2002:a05:6830:719e:b0:7cf:d42d:edb1 with SMTP id 46e09a7af769-7d15a808a44mr1694612a34.10.1769183396117;
        Fri, 23 Jan 2026 07:49:56 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::ffa])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d15b3e2789sm2074327a34.27.2026.01.23.07.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 07:49:55 -0800 (PST)
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] ASoC: codecs: aw87390: Add Anbernic RG-DS amplifier driver
Date: Fri, 23 Jan 2026 09:47:31 -0600
Message-ID: <20260123154731.130649-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260123154731.130649-1-macroalpha82@gmail.com>
References: <20260123154731.130649-1-macroalpha82@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,awinic.com,suse.com,perex.cz,kernel.org,gmail.com,hotmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259030-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2C85077F7B
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
 sound/soc/codecs/aw87390.c | 176 +++++++++++++++++++++++++++++++++++--
 sound/soc/codecs/aw87390.h |  86 ++++++++++++++++++
 2 files changed, 254 insertions(+), 8 deletions(-)

diff --git a/sound/soc/codecs/aw87390.c b/sound/soc/codecs/aw87390.c
index d7fd865c349f..5ca97e2bb352 100644
--- a/sound/soc/codecs/aw87390.c
+++ b/sound/soc/codecs/aw87390.c
@@ -314,6 +314,46 @@ static int aw87390_drv_event(struct snd_soc_dapm_widget *w,
 	return ret;
 }
 
+static int aw87391_rgds_drv_event(struct snd_soc_dapm_widget *w,
+				struct snd_kcontrol *kcontrol, int event)
+{
+	struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
+	struct aw87390 *aw87390 = snd_soc_component_get_drvdata(component);
+	struct aw_device *aw_dev = aw87390->aw_pa;
+	int ret;
+
+	switch (event) {
+	case SND_SOC_DAPM_PRE_PMU:
+		if (!IS_ERR(aw87390->vdd_reg)) {
+			if (regulator_enable(aw87390->vdd_reg))
+				dev_err(aw_dev->dev, "Failed to enable vdd\n");
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
+				dev_err(aw_dev->dev, "Failed to disable vdd\n");
+	}
+		break;
+	default:
+		dev_err(aw_dev->dev, "%s: invalid event %d\n", __func__, event);
+		ret = -EINVAL;
+	}
+
+	return ret;
+}
+
 static const struct snd_soc_dapm_widget aw87390_dapm_widgets[] = {
 	SND_SOC_DAPM_INPUT("IN"),
 	SND_SOC_DAPM_PGA_E("SPK PA", SND_SOC_NOPM, 0, 0, NULL, 0, aw87390_drv_event,
@@ -321,6 +361,14 @@ static const struct snd_soc_dapm_widget aw87390_dapm_widgets[] = {
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
@@ -339,6 +387,80 @@ static int aw87390_codec_probe(struct snd_soc_component *component)
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
@@ -349,6 +471,14 @@ static const struct snd_soc_component_driver soc_codec_dev_aw87390 = {
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
@@ -366,6 +496,10 @@ static int aw87390_init(struct aw87390 *aw87390, struct i2c_client *i2c, struct
 	unsigned int chip_id;
 	int ret;
 
+	aw_dev = devm_kzalloc(&i2c->dev, sizeof(*aw_dev), GFP_KERNEL);
+	if (!aw_dev)
+		return -ENOMEM;
+
 	/* read chip id */
 	ret = regmap_read(regmap, AW87390_ID_REG, &chip_id);
 	if (ret) {
@@ -373,22 +507,24 @@ static int aw87390_init(struct aw87390 *aw87390, struct i2c_client *i2c, struct
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
@@ -406,6 +542,7 @@ static int aw87390_init(struct aw87390 *aw87390, struct i2c_client *i2c, struct
 static int aw87390_i2c_probe(struct i2c_client *i2c)
 {
 	struct aw87390 *aw87390;
+	const struct snd_soc_component_driver *priv;
 	int ret;
 
 	ret = i2c_check_functionality(i2c->adapter, I2C_FUNC_I2C);
@@ -434,16 +571,38 @@ static int aw87390_i2c_probe(struct i2c_client *i2c)
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
@@ -451,6 +610,7 @@ MODULE_DEVICE_TABLE(i2c, aw87390_i2c_id);
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


