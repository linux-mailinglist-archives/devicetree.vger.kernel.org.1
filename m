Return-Path: <devicetree+bounces-245346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9EACAF768
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 10:34:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2928530C5B9E
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 09:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36BEA2F60B2;
	Tue,  9 Dec 2025 09:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ctO9zKQC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E602D6E44
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 09:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765272733; cv=none; b=DxtOlAzXu78twB/ziEDcEVsRmzuSzuRxx3uHApwGMnOpOM1u8l/BLA1JzQaFI4OtAfMH/8/I3uCMtBIXMpyvJxiMWO1cpUbNauz2/xgQMdq0n+gKlKzKAlQhqSz1LruIz5nlLJK8WhGtLwxO2NpDzhXHk1rNmorLhRMWQ7ifmKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765272733; c=relaxed/simple;
	bh=9X7Ik0ab5d6Iz/18MVVGvVc22VgP6m21NK5Flfc6r74=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u0U++q1RJ25kx/LUp4S7IlsHxBAOc+5zXNpu+18sGN9pnG7547LxMb/gJt6rilSPASmPxDwCdu41Ewi7iWivkb/hQtwtXG230VVSG8pwA2EGJGCQUcz1ej4OQyhOyJckcgeM7+2yEq6SWlkVd00WfFsvOaR/Q6MyTR0s61FOLK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ctO9zKQC; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-349bb6f9c86so3227267a91.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 01:32:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765272729; x=1765877529; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wT5Tpa0cRknM+Vnr1JQ25hhT3yDeTWdGEabrHv7VB7g=;
        b=ctO9zKQCCcjO9oGYVTm1b1j2oT3lrbMQ9LRNkBrCjlAO5+DOC8BHoq7oEQbAcFqSs4
         PAazpflPQqvokCfmocCikbAlSgqpCTIHU+Lw02E422diEfop9wb/RlG9hLR7h2j4r9YA
         IKuMYEft9EylZFvWz2Xm/cG4yUI2unMekipCM1OT9Xp4zI5KqYRI3k5C6WcM5BpY7JqL
         MhcqSMVuVBPGvmDduPOwMQ2fHoUW6LhuHSlGqijxikHdksMF58hoEW8QlNDIpmA5AJJy
         GcVr8SbLRgTqqETlPIjsdrF802M1nWANFhYVwg+Ow5JT9kmdYu3k/r8oVbiPI+AABhSO
         PBFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765272729; x=1765877529;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wT5Tpa0cRknM+Vnr1JQ25hhT3yDeTWdGEabrHv7VB7g=;
        b=WID/Le6gnAH+OjpbvBfB7A3CAeHKCMCjbKsncrTtyCncdW58/1DNi7UYwiLkyoqZjj
         +kGCikwu2uU9wJvICKxqAhtZKzRa9otZVGSn8Iiv4/e0ZhUwEcJPZj6v7wiAB544seXC
         fEz8zmPwpiFPj5R1FpMVCwm7rEmVn+Dr084IXK8m+SBG9qfYbhiwpxNdoQSIoYbuZdTR
         rqP00kl0ZCuBKaEC/00kooWjFB9goW6dPaqrSVB7v8UqipQ2HPlqfWMMssFCgE+bJE4t
         TUezDxp4yz+/Ok+YX3yeHC0IauxtUBje6r6poowQrdfcOXCBnMR3Y5MQ3vqVX0N5W77e
         pReA==
X-Forwarded-Encrypted: i=1; AJvYcCXoTuHSonBm30xpZBC0+5egZWItn8QhtxG59CS1USIvaXGlYdPVC/6S41I6ugDslsSrGlJHcyxd/lAb@vger.kernel.org
X-Gm-Message-State: AOJu0Yxud9LSVUgCHx/wetO7vUtcMBykS5KgeMV32cpZ3D5Zi8MjPdH/
	tYl8d8x8zQvu05QBc0cunRndbiu+4TACb9zsWBrkUGGDsTHHeqPs55Ok
X-Gm-Gg: ASbGncvMk6Og/dNyeXDX1xEEPBF4VGNs94iXLPuP0Sh8yd89OJOgJbwNH92t4jXzmV3
	mttnPWYfHvkdtzQL1W1aaLIXn9KiZK2VtM7EeyI9ifEiLmuB566/sdtImk2H1t7BXf0WxNKNaST
	K2Swk3WxXZqb2zUzGU1XFKopqyuReh9HIQGRSOpqVhRGknJ6Z4uOfscrW81aOCEWvfkxIQmo7CY
	azgAKaOugUMPRGBvVakfXNujDR/oG6zS5faSCVNSjXZbbAVlHii6s7NEGl4NT4Vr5DA65iOwoAC
	UPAWxAsFeUOCTVo6BplqCHNt5fHNE8KH+RCbIESj/ZSbfRArABqnfXrChPjy5PvtLa72VSvzAf0
	CVYNCK3M8kDKNfMwOfQoEfSMBbd+FXFkPukKCx9jTkWAr+6U3+tYvy/QahGR4lBp/wvI/wmt5Av
	91qtfhGH4A3bl0uyNJrodWtw9cgB1F9D0qOzOJvLMOj8XFKDCM7bB3xHztq4/P8JBPr+seCUbwb
	MVMLXEFjUvWOSy57/SnTmEtnvPIZOafNTrolk9s20euTr/wwIJrVe4nfKICy/vp+SP5SqRt1YEX
	QPDx8qRS427elkGjdvf8v8Ff/q07bd8Fagh8jz0L3cgpiKVDO8o=
X-Google-Smtp-Source: AGHT+IEf8k2cGwcYziNVTfhJRUNWm4Blk7mY9yN2+i0tDJn66zOZx4itoz7PdkJwqZ4b134kt4zn5Q==
X-Received: by 2002:a17:90b:3506:b0:340:bde5:c9e8 with SMTP id 98e67ed59e1d1-349a2613605mr9150879a91.22.1765272729310;
        Tue, 09 Dec 2025 01:32:09 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a49658704sm1800408a91.6.2025.12.09.01.32.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 01:32:09 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Tue, 09 Dec 2025 19:31:18 +1000
Subject: [PATCH 5/7] ASoC: soc-dai: add common operation to set TDM idle
 mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-tdm-idle-slots-v1-5-38dabf6bc01e@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3549;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=9X7Ik0ab5d6Iz/18MVVGvVc22VgP6m21NK5Flfc6r74=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJnmb7I1nvHsL9CcfHRpJM/b7PymxSXtYfH8PI94VRjWN
 Nop1LR1TGRhEONisBRTZNnQJOQx24jtZr9I5V6YOaxMIEOkRRoYgICFgS83Ma/USMdIz1TbUM/Q
 UMdYx4iBi1MApvpKJcP/hCPlHm6PuVo3nGwJWLYz+8wxVlu1PgahH335M3Z3v1DmYWR4cPhcbHe
 w4rJdj2QFo7h+m50xEP60+dIS0Qn7l+jL39VkAQA=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Some audio devices, like certain Texas Instruments codecs, can be
configured to alter their behaviour when idle on the bus. Now that we
have definitions for various idle modes, add a snd_soc_dai_set_tdm_idle()
operation to control this in a standardised way.

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 include/sound/soc-dai.h |  7 +++++
 sound/soc/soc-dai.c     | 40 +++++++++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/include/sound/soc-dai.h b/include/sound/soc-dai.h
index a5784ef8e3f7..1f411237dde5 100644
--- a/include/sound/soc-dai.h
+++ b/include/sound/soc-dai.h
@@ -194,6 +194,10 @@ int snd_soc_dai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt);
 int snd_soc_dai_set_tdm_slot(struct snd_soc_dai *dai,
 	unsigned int tx_mask, unsigned int rx_mask, int slots, int slot_width);
 
+int snd_soc_dai_set_tdm_idle(struct snd_soc_dai *dai,
+			     unsigned int tx_mask, unsigned int rx_mask,
+			     int tx_mode, int rx_mode);
+
 int snd_soc_dai_set_channel_map(struct snd_soc_dai *dai,
 	unsigned int tx_num, const unsigned int *tx_slot,
 	unsigned int rx_num, const unsigned int *rx_slot);
@@ -310,6 +314,9 @@ struct snd_soc_dai_ops {
 	int (*set_tdm_slot)(struct snd_soc_dai *dai,
 		unsigned int tx_mask, unsigned int rx_mask,
 		int slots, int slot_width);
+	int (*set_tdm_idle)(struct snd_soc_dai *dai,
+			    unsigned int tx_mask, unsigned int rx_mask,
+			    int tx_mode, int rx_mode);
 	int (*set_channel_map)(struct snd_soc_dai *dai,
 		unsigned int tx_num, const unsigned int *tx_slot,
 		unsigned int rx_num, const unsigned int *rx_slot);
diff --git a/sound/soc/soc-dai.c b/sound/soc/soc-dai.c
index a1e05307067d..2f370fda1266 100644
--- a/sound/soc/soc-dai.c
+++ b/sound/soc/soc-dai.c
@@ -282,6 +282,46 @@ int snd_soc_dai_set_tdm_slot(struct snd_soc_dai *dai,
 }
 EXPORT_SYMBOL_GPL(snd_soc_dai_set_tdm_slot);
 
+/**
+ * snd_soc_dai_set_tdm_idle() - Configure a DAI's TDM idle mode
+ * @dai: The DAI to configure
+ * @tx_mask: bitmask representing idle TX slots.
+ * @rx_mask: bitmask representing idle RX slots.
+ * @tx_mode: idle mode to set for TX slots.
+ * @rx_mode: idle mode to set for RX slots.
+ *
+ * This function configures the DAI to handle idle TDM slots in the
+ * specified manner. @tx_mode and @rx_mode can be one of
+ * SND_SOC_DAI_TDM_IDLE_NONE, SND_SOC_DAI_TDM_IDLE_ZERO,
+ * SND_SOC_DAI_TDM_IDLE_PULLDOWN, or SND_SOC_DAI_TDM_IDLE_HIZ.
+ * SND_SOC_TDM_IDLE_NONE represents the DAI's default/unset idle slot
+ * handling state and could be any of the other modes depending on the
+ * hardware behind the DAI. It is therefore undefined behaviour when set
+ * explicitly.
+ *
+ * Mode and mask can be set independently for both the TX and RX direction.
+ * Some hardware may ignore both TX and RX masks depending on its
+ * capabilities.
+ */
+int snd_soc_dai_set_tdm_idle(struct snd_soc_dai *dai,
+			     unsigned int tx_mask, unsigned int rx_mask,
+			     int tx_mode, int rx_mode)
+{
+	int ret = -EOPNOTSUPP;
+
+	/* You can't write to the RX line */
+	if (rx_mode == SND_SOC_DAI_TDM_IDLE_ZERO)
+		return soc_dai_ret(dai, -EINVAL);
+
+	if (dai->driver->ops &&
+	    dai->driver->ops->set_tdm_idle)
+		ret = dai->driver->ops->set_tdm_idle(dai, tx_mask, rx_mask,
+						     tx_mode, rx_mode);
+
+	return soc_dai_ret(dai, ret);
+}
+EXPORT_SYMBOL_GPL(snd_soc_dai_set_tdm_idle);
+
 /**
  * snd_soc_dai_set_channel_map - configure DAI audio channel map
  * @dai: DAI

-- 
2.52.0


