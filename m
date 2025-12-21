Return-Path: <devicetree+bounces-248555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 68161CD3DED
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 10:38:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C6D6230073E0
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 09:38:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28FB3283FDD;
	Sun, 21 Dec 2025 09:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cYXaWRml"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56700283FD6
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 09:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766309844; cv=none; b=NuGDCMv68RavE+35I4+IG/9csux8Iv9GCjw2Jq67bz3tlhNwHQAaRlloL+IDAJrrCuOB9s4i8D916V2W5hg/juWMsJKa23YP92u5bnGugaWnVpzFH2VyK/kExuHkgY9IYiTH5eblumyxSVGmvKfBBjJv2EgUb4eMYj+7BZjKgqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766309844; c=relaxed/simple;
	bh=hQ3yIQ+LRbuFbg4idC7Bt8j/T1Iri2PmTgdBl9Lz8Vw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n8i+MXr+3NvG12qi/ZDh3a/LUVOU6GEEogKaoP6FxIMFlZnil9iZtiAe1G61K5roqQaiNyFeAMrQJhW/q20ZPXtyveb9pXDBkXAXz881JKQWy4LxBXL6VgdBek9tlxmIPIYMsqLgmSAa+CrzCiCHEAXcwNhAzYJj5NyFmiFsMt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cYXaWRml; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a07fac8aa1so32941585ad.1
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 01:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766309840; x=1766914640; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sytcPbDCFIWJAyTshVfbcn49iCD+Fu/IyW5F/eizSLg=;
        b=cYXaWRmlCBpmKneLWpX+F/JZLk6QEd7UZSO3Fhi9CBem6OkL+jpJJoHTXgkRtswpnp
         oCk6slBebaTpmu47RE3okRTPD8zIxgov6g/VsH2KPWyDdrcfYDRqDbuVFgUdWT4oGuoY
         EUaWPuxZCdDF81P42qfnZ+unBzPlsQeUZNZHf5DT9/PbXhvyUQ+0a44d2E/dnmr3mQAg
         dYxC/UE7yxkLuFHrs6bkTSPmI2t+iZXRLXcCXBaeU8+ApO4pIk1KUPKlSbMfDr4c/KKs
         tNLJ9VV+/Qx7jiz+XKmZsRGFOWYcWvDvs/BbtregKHZEwEhKOfqWXJXkK/3ms6tA1dlu
         mKUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766309840; x=1766914640;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sytcPbDCFIWJAyTshVfbcn49iCD+Fu/IyW5F/eizSLg=;
        b=atNVuAYx9x4WMlavXhpIcdz7wKq+Ilrxl50LrgneKi2dke7A/g9onMgNB4jgzl5WOJ
         3uCx0yIFMaFYxS7Mafrew1uzPco1mpZUtWsLDZj2GPUPs2za+vZvYr91mzlSXGc7UTaI
         e2XBgRZiBreJG464dVL9s2TJaWl7NLTe+ULteR0r7Ttuznh7emK9r/6WfLU9KBdszmg7
         olDUXkY3M/+RwCahYViETSwiOW6nn5War8bHG1fl+Oc+83zdOkSyM0AXlV0SkxFR5AAA
         1YUq+7ApODEEomuTVpv7lRMnb4MoJ462knT7HleR+L/OX1XegEUOEqsOt5omTKVIT8wB
         4+1w==
X-Forwarded-Encrypted: i=1; AJvYcCULC3S9xci9HFJz7uf/Ed7O9fQYicB8056KVyUK+gzNV7sAt5RS63bQMjHJzErWVvt/EABswucNlCup@vger.kernel.org
X-Gm-Message-State: AOJu0YwIMIN2uQtXT0fEBtRowzXoTL5MMoxscVy74OwQZ0EWnKM8/Som
	Y0EWdilkkp7ml/gqvQgZ/9bMCDI9iJMs5zcZn2jf7NWxND+jV2KLi8UA
X-Gm-Gg: AY/fxX4ef1QO980iLdw62qV4ChfvlS5m1zwD2x9GdmvjVNgK5JlM6p/KKoiIkIOSNvI
	Dqb2lh6ltqFuzHjTS10mXhcfkWBOABbrDkf9LAi4XOOhUuMr12oc7dODRkLlX3wNDeoqAgDKSwL
	n77Xz/jFVNDT0OsYpmfdzDLEOmeoef0rNYRi16yYoIdC7xaM14l6PHpSays7Pe3EkDdvtfcQuc8
	uIBdC9zlyGDekY7fEsWMzTGZS9iMROYNBp4AY7Sb8Ae0hBJ2IEOPe+Gubp5nqOiCdnmAnNycXvL
	OI9BdY/+FbLGpJB1VLUiyHWxAeTYlW0duRxtOCPhJitX9YAlCOR1TfoUpFzOjURIstzE0sXhzsN
	guA5dIxcEcPMKQVWktdiKZROYDAFJDwtUx3rfVlxN+KBC1iFY0LH8p1BGFq3uxHF5auVasZ3vb8
	GRD1tbyL/jszM0vsMxX8oxApGHnFGoIaGBF23pkYbph4RSWiLAolwyJXuDWPCYyFz56FwAniLFM
	b2LfZ5UBFHU8RR4Y1sivFNf4sXDyOwUA2GRTN5s/nef58fvEuUsoDe+HH25MBrQJ22CCnUNecYd
	sUHMfuozfuUGA0RwANCajDwAb5HUsWrYia/LM/MG8EKa4O/e1g0=
X-Google-Smtp-Source: AGHT+IG3qoMi1pT3L1mx8WGusEqRkmhnU95IldSZ76zQsfA/ovZNAZJZT0w8l8bvTDKlgtAC1QBfZg==
X-Received: by 2002:a17:902:e541:b0:29f:1bf:6424 with SMTP id d9443c01a7336-2a2f221ff92mr79985445ad.18.1766309840329;
        Sun, 21 Dec 2025 01:37:20 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4d363sm67629495ad.62.2025.12.21.01.37.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 01:37:19 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Sun, 21 Dec 2025 19:36:03 +1000
Subject: [PATCH v2 7/7] ASoC: tas2770: expose SDOUT bus keeper via
 set_tdm_idle
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251221-tdm-idle-slots-v2-7-ed4d96413aec@gmail.com>
References: <20251221-tdm-idle-slots-v2-0-ed4d96413aec@gmail.com>
In-Reply-To: <20251221-tdm-idle-slots-v2-0-ed4d96413aec@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 Shengjiu Wang <shengjiu.wang@nxp.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Shenghao Ding <shenghao-ding@ti.com>, 
 Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4520;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=hQ3yIQ+LRbuFbg4idC7Bt8j/T1Iri2PmTgdBl9Lz8Vw=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJnu+yfrR21YfWKb47yGtwc+xpW/9c6z/JkwvT6vOXraG
 cUJZmskOyayMIhxMViKKbJsaBLymG3EdrNfpHIvzBxWJpAh0iINDEDAwsCXm5hXaqRjpGeqbahn
 aKhjrGPEwMUpAFNt+oDhf9rmVdsiknuYdpu3fMtLPui2w+6rv+XNqN5K1Qs2BV2aSxgZNsq6aS5
 aNXflmtX5286cmq/g+1sz6eHq6U9fZc14/rAngRUA
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

TAS2770 includes a bus keeper which can be used to control the behaviour
of the SDOUT pin during specified TDM slots. The chip can either pull
the pin to ground, actively transmit zeroes, or keep the pin floating
(default/uninitialised behaviour).

Expose the bus keeper via the set_tdm_idle DAI op so that it can be
configured by consumers.

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 sound/soc/codecs/tas2770.c | 75 +++++++++++++++++++++++++
 sound/soc/codecs/tas2770.h | 12 ++++
 2 files changed, 87 insertions(+)

diff --git a/sound/soc/codecs/tas2770.c b/sound/soc/codecs/tas2770.c
index 6f878b01716f..d4d7d056141b 100644
--- a/sound/soc/codecs/tas2770.c
+++ b/sound/soc/codecs/tas2770.c
@@ -492,11 +492,86 @@ static int tas2770_set_dai_tdm_slot(struct snd_soc_dai *dai,
 	return 0;
 }
 
+static int tas2770_set_dai_tdm_idle(struct snd_soc_dai *dai,
+				    unsigned int tx_mask,
+				    unsigned int rx_mask,
+				    int tx_mode, int rx_mode)
+{
+	struct snd_soc_component *component = dai->component;
+	struct tas2770_priv *tas2770 = snd_soc_component_get_drvdata(component);
+	int ret;
+
+	/* We don't support setting anything for SDIN */
+	if (rx_mode)
+		return -EOPNOTSUPP;
+
+	if (tas2770->idle_tx_mode == tx_mode)
+		return 0;
+
+	switch (tx_mode) {
+	case SND_SOC_DAI_TDM_IDLE_PULLDOWN:
+		ret = snd_soc_component_update_bits(component, TAS2770_DIN_PD,
+						    TAS2770_DIN_PD_SDOUT,
+						    TAS2770_DIN_PD_SDOUT);
+		if (ret)
+			return ret;
+
+		break;
+	case SND_SOC_DAI_TDM_IDLE_ZERO:
+		ret = snd_soc_component_update_bits(component, TAS2770_TDM_CFG_REG4,
+						    TAS2770_TDM_CFG_REG4_TX_KEEPER,
+						    TAS2770_TDM_CFG_REG4_TX_KEEPER);
+		if (ret)
+			return ret;
+
+		ret = snd_soc_component_update_bits(component, TAS2770_TDM_CFG_REG4,
+						    TAS2770_TDM_CFG_REG4_TX_FILL, 0);
+		if (ret)
+			return ret;
+
+		break;
+	case SND_SOC_DAI_TDM_IDLE_HIZ:
+		ret = snd_soc_component_update_bits(component, TAS2770_TDM_CFG_REG4,
+						    TAS2770_TDM_CFG_REG4_TX_KEEPER,
+						    TAS2770_TDM_CFG_REG4_TX_KEEPER);
+		if (ret)
+			return ret;
+
+		ret = snd_soc_component_update_bits(component, TAS2770_TDM_CFG_REG4,
+						    TAS2770_TDM_CFG_REG4_TX_FILL,
+						    TAS2770_TDM_CFG_REG4_TX_FILL);
+		if (ret)
+			return ret;
+
+		break;
+	case SND_SOC_DAI_TDM_IDLE_OFF:
+		ret = snd_soc_component_update_bits(component, TAS2770_DIN_PD,
+						    TAS2770_DIN_PD_SDOUT, 0);
+		if (ret)
+			return ret;
+
+		ret = snd_soc_component_update_bits(component, TAS2770_TDM_CFG_REG4,
+						    TAS2770_TDM_CFG_REG4_TX_KEEPER, 0);
+		if (ret)
+			return ret;
+
+		break;
+
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	tas2770->idle_tx_mode = tx_mode;
+
+	return 0;
+}
+
 static const struct snd_soc_dai_ops tas2770_dai_ops = {
 	.mute_stream = tas2770_mute,
 	.hw_params  = tas2770_hw_params,
 	.set_fmt    = tas2770_set_fmt,
 	.set_tdm_slot = tas2770_set_dai_tdm_slot,
+	.set_tdm_idle = tas2770_set_dai_tdm_idle,
 	.no_capture_mute = 1,
 };
 
diff --git a/sound/soc/codecs/tas2770.h b/sound/soc/codecs/tas2770.h
index 3fd2e7003c50..102040b6bdf8 100644
--- a/sound/soc/codecs/tas2770.h
+++ b/sound/soc/codecs/tas2770.h
@@ -67,6 +67,14 @@
 #define TAS2770_TDM_CFG_REG3_RXS_SHIFT 0x4
 #define TAS2770_TDM_CFG_REG3_30_MASK  GENMASK(3, 0)
 #define TAS2770_TDM_CFG_REG3_30_SHIFT 0
+    /* TDM Configuration Reg4 */
+#define TAS2770_TDM_CFG_REG4  TAS2770_REG(0X0, 0x0E)
+#define TAS2770_TDM_CFG_REG4_TX_LSB_CFG BIT(7)
+#define TAS2770_TDM_CFG_REG4_TX_KEEPER_CFG BIT(6)
+#define TAS2770_TDM_CFG_REG4_TX_KEEPER BIT(5)
+#define TAS2770_TDM_CFG_REG4_TX_FILL BIT(4)
+#define TAS2770_TDM_CFG_REG4_TX_OFFSET_MASK GENMASK(3, 1)
+#define TAS2770_TDM_CFG_REG4_TX_EDGE_FALLING BIT(0)
     /* TDM Configuration Reg5 */
 #define TAS2770_TDM_CFG_REG5  TAS2770_REG(0X0, 0x0F)
 #define TAS2770_TDM_CFG_REG5_VSNS_MASK  BIT(6)
@@ -115,6 +123,9 @@
 #define TAS2770_TEMP_LSB  TAS2770_REG(0X0, 0x2A)
     /* Interrupt Configuration */
 #define TAS2770_INT_CFG  TAS2770_REG(0X0, 0x30)
+    /* Data In Pull-Down */
+#define TAS2770_DIN_PD  TAS2770_REG(0X0, 0x31)
+#define TAS2770_DIN_PD_SDOUT BIT(7)
     /* Misc IRQ */
 #define TAS2770_MISC_IRQ  TAS2770_REG(0X0, 0x32)
     /* Clock Configuration */
@@ -146,6 +157,7 @@ struct tas2770_priv {
 	int pdm_slot;
 	bool dac_powered;
 	bool unmuted;
+	int idle_tx_mode;
 };
 
 #endif /* __TAS2770__ */

-- 
2.52.0


