Return-Path: <devicetree+bounces-245348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CC289CAF7C8
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 10:42:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 534C53047446
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 09:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDD602D7393;
	Tue,  9 Dec 2025 09:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FvFVeafZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DD12D6E44
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 09:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765272746; cv=none; b=TUVXC3tU7oKvL4y/IDcXgCTmt1mCSopMgvzRyX4KXOtUtfBqrqcuivJhDWJyufiJYcZfyQAPpO6I4CLHeRjrNyT289SiZHLgKGcEZ35rTQp5vj32Y619uaCG3JgQ0bpfoUh5AIjy+TQy+9aySAlfYOMsfmRvp1zOYsvh7lTpbXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765272746; c=relaxed/simple;
	bh=hQ3yIQ+LRbuFbg4idC7Bt8j/T1Iri2PmTgdBl9Lz8Vw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mIcDVe3mQ48NOkY3WYp/JitKhQ661un3fiHhEiKn72Ru3CCaG1wG+j5cnqQ8Gj2CBqjbC1eFmIkkeoYMzprTjAgq//6N7Jy9/B5zmuN9Snr3XopDO9oksUV6HuTEf2GgzOMIX2xWdYPD6lMFOj01677r0X7326fbQlph/7VV5Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FvFVeafZ; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-340a5c58bf1so3694699a91.2
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 01:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765272744; x=1765877544; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sytcPbDCFIWJAyTshVfbcn49iCD+Fu/IyW5F/eizSLg=;
        b=FvFVeafZckq03GfFuwKbU9C/u/VSTKUq3I6XzbGrVdxdsHNQLFwECM4CSBgZkWrnbv
         KqPzsY2d6hlqXnDnL/BGI9Ik581eosTEI3CfXHl6nMZ5fQSxgUMMPeLpsNZNlUN7IGJo
         J8UgRBm50o9Z4JHThaW0IAdSVOtzbsBDIsfMutPsLoPxWe1idMmhIcLb+Ipivs+449XS
         7+kCXtvnz86QDkHrSX2gj8SjGieaTlaMlu626BslqBEGpaew0154Xy+bGi0E4BkwUAvV
         FZLg2XMSbQBI5Znb6JrBwmAe9q+iXanhvQFOOx35l2ZndL2ASk0OqtDqEyvsJWE1E8Xe
         8rHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765272744; x=1765877544;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sytcPbDCFIWJAyTshVfbcn49iCD+Fu/IyW5F/eizSLg=;
        b=qWoRM2em0cCMmDzJ2wXr8tja3v0Q6Wa7EbqTgBhPTitwlVCRRTEHeGaVhIz97b3wNu
         0056LZ7u/XYUmXwHk6AmIlHsszJXf+u+aII9JMxpA9cfWxE1G5yOKl2JGJwKE9NZyuIQ
         33KPRaMULYQk8Pw04eJ/Wf6XHYnf/tANwrRwiPb/GlmX6d5UP1wwEOw9H4otbOZOVI4c
         nzJpBcR11Zicgh/Fabkalc+20XqiYbpG/Ym6svZw5zayj3bI2UzObr1XW6cAliBFOv9N
         /j39fGkVcUslJu6WdSVporceZHGKyc0ZjScgmORVxQmRKCd3mkeNfRQpA/QSNg6Rdxbg
         /RTA==
X-Forwarded-Encrypted: i=1; AJvYcCW4fspkoDWbfKPz4Jw6PXW3GZZEd8wXH8/j9lmK9P9ss9SKduzTu8V1QPcjOTmVT93bE1EIbjcZkOBr@vger.kernel.org
X-Gm-Message-State: AOJu0YyJXYIzqdWYcyjEcvJXhW7Y5rQVAD6bOsZcLFF5R+hfYbpGFH2J
	VZenKjqsB/YQnxl7rc2P0deqlV+OO6cAnBgAc7wMKn5gcuT31/qwrBn2
X-Gm-Gg: ASbGncv8eY8SU5ndRUIrjGiVBMd5OoxaWAYDGHRdiMjMBSllcIRz9mWFUWJTrrIJJQ5
	vbLAvSwANgQ5UW8prGmlNqRtlp1ocpTSAL3moZluLmJLjE4V891B4WBA8asq3Dmqy36xEhNq5GF
	xA3V7IkLW8djrpB07hFZoNUnhDtGZFzzPMk8xWg5nHRyMeD1TIBdy+KBtkkkVVrV6VI3OMVDpVr
	MAs4Gmzoyqivu4a08/9M3cvwTaHvXoczaIGC0vf9NDkLkNiumDFz+oNpJCHYY0wRcVbRRaNOEjd
	7YAutsiGmYMhbObnbxP5JX8mu4otfP2mA5xE08+xdsNBtM+L+JP30xn0EOWQl6ikESFSnRbFw2S
	yxbAi9HPdXlPGZweJu2bHcvwaEbzP+btkelh6PyE+luX+b+NlBMcsNFgafJLhjG/XdWcvsT6kso
	kIBU0EzY8qxg3g4gzSLlM6YBad/3H5fUpTJQnuImDz4X55qbM0jzPjCcOnzIZAYPYJN6yBjvrUK
	Qfl+JN0LEkXZGXdxUzflzWB2afXgI8ZzkUxpeY6PEmSjpwUGgzbddILVURxcQhx6RjPYjQg6wS6
	OwjSw7iGXgniASpzzBPK2qMI6DXU0g0wfqs3okopmm0vP5eUnDuOwiaQVDSdpw==
X-Google-Smtp-Source: AGHT+IHshWKoIvDGYXvDIhmbIHXx+eRzKnkbv3j7ltjnhSQGKLSVw2gL9b8YPyFcCo5W0olsRE/M9w==
X-Received: by 2002:a17:90b:390f:b0:340:f05a:3ed3 with SMTP id 98e67ed59e1d1-349a268665bmr9074422a91.17.1765272744486;
        Tue, 09 Dec 2025 01:32:24 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a49658704sm1800408a91.6.2025.12.09.01.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 01:32:24 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Tue, 09 Dec 2025 19:31:20 +1000
Subject: [PATCH 7/7] ASoC: tas2770: expose SDOUT bus keeper via
 set_tdm_idle
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-tdm-idle-slots-v1-7-38dabf6bc01e@gmail.com>
References: <20251209-tdm-idle-slots-v1-0-38dabf6bc01e@gmail.com>
In-Reply-To: <20251209-tdm-idle-slots-v1-0-38dabf6bc01e@gmail.com>
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
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJnmb7IPlyhL6Uu6eG8tPd/1Q3SR2v6KynBNJ+Oqo+syC
 zJyDzN3TGRhEONisBRTZNnQJOQx24jtZr9I5V6YOaxMIEOkRRoYgICFgS83Ma/USMdIz1TbUM/Q
 UMdYx4iBi1MApvpPJsM/020srMGnkqR/HGyTX+x85Moq67CKyEOXP/GGJqm+Fr2/ipFhuf4ktV0
 Fqk9nqfjJLHtnY16gJWL952ahxyKW61suer3kAQA=
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


