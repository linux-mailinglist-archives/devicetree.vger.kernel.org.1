Return-Path: <devicetree+bounces-119350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D85F59BE09B
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:24:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 577C61F217B3
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 08:24:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAB071DED46;
	Wed,  6 Nov 2024 08:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="SVDL58sz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E77C1DE4E0
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 08:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730881200; cv=none; b=LOmQsyPBH4qaMaUiT5yoOHezMtKNlh0lKg5/3hpfbwYgy93YVI9706afp6Q6E845UWqAX7Zl0yDw6sfosYTsuS0ZVmwzhiMpBglke655CpS4oUFTSdZlmJYd/ZmulbaMUFtq5CWp+Shm9U1/3dfzUb+B0aOCxf0XZfNmywNVQec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730881200; c=relaxed/simple;
	bh=9yQU3pibX+brmIMUzz7o55brbRDQsa2RoJOTqH73gG0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gWcejrMcglqs5eG62wRJhZ+DjYyhU/AzCy7eNRe/k8ORc+YzqDC/sHwkIglZczrcRigf9u+JBXyXq8S3yND4lEhVg2Gpyn1Mm+buLS0KdWn3AeUm+aEvAYoSSpr5WRa2pC3uru1bPfLYdA7cGbM2lgYmh6nPyu9THkTKJ3jQ+FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=SVDL58sz; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a9a16b310f5so1003319266b.0
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 00:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730881196; x=1731485996; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OUZqrVOVAOQx25I2zGtXcv17LnnQ6riSA+Z+YzfJ800=;
        b=SVDL58szJnYKWVvmFWspKC1i80x8zvAMbs8+eAPpjeTXHEsyuDBkdfQT/fTGRMbhR1
         rgj+wWgyZs0NBtwVDmLo7BjXpqEDwGCMD6uEpIwj7v0i9uiSJq8YevrCEcu/hybX9v84
         1mmV2az9Sqx4O0/dH8mmf9BhWZiUaSCve07QqJKBWn444ETcEHqLvMzTTKUf+WuBcMTn
         M7wuZU4Av+HJoQd1u4CVU7rcaunRhi9GYds173TuRsR58F6FgerMlT1CGgO9PikTL3YY
         yfZwGKzPoxWP1udJ0/Oz+NFQiqVsDYHGmaxwqUmD0chS3wwVkwYf0AvYSnWR5D57H2vp
         ZCyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730881196; x=1731485996;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OUZqrVOVAOQx25I2zGtXcv17LnnQ6riSA+Z+YzfJ800=;
        b=DuJUVitPAct+ZZk74DFq/C/S/0C864cmFvXeYOgrHyXs+f6JQq4y8AxV0O6ZWQoWuQ
         3oxrmQCqccEdN0Sd1x18HEDx2ZTQrlevDi83m/jjiHx/D0/D4PsBhw0lzCNJ3e4GmCbY
         hhIQ9IgYcPELBkS9iGoz/51/D2eQuKwTbgX4sADq5srgpAATXg7lJ96FgXyOWzfU9szQ
         NuMyVO4caw4NgQvpxma3lhSZ/WozSVPOUcjDxuy+/nZWDaeWgMMTx+oiU8bDy416A925
         JIKhAcd3mkiYljV5DulSk9kZ4+lXBlHaJLhABqbPvkqyAfGYX6+oht0WT4HiZ11q2Qdg
         7XBg==
X-Forwarded-Encrypted: i=1; AJvYcCXlOcnJF5ZyptSweW6yS7d4JoR2GscHxE9bWyc2vyMScNYENPt3xEu2KvUf0E0V0wvDtSRMLeigcuZT@vger.kernel.org
X-Gm-Message-State: AOJu0YxFtTnZJFYuTX9ghiynczNUjrfal8szJbdQ9AXtSyPWL8b6zY1T
	Jn6S+aUpc/I2SSrlC7kVV9hualCgjd6v1zhOEP4drETjOpYHJ2g05CvpLuyv7dM=
X-Google-Smtp-Source: AGHT+IFAj61o8T1/nrUGKe90uLoFOCY22Ct9IQWDiN3o35dikaofTS2OgMHrWcjZ/bVf05WTZ+Y+2A==
X-Received: by 2002:a17:907:3f83:b0:a9a:6633:3a90 with SMTP id a640c23a62f3a-a9e508ac3c0mr2121950966b.8.1730881196065;
        Wed, 06 Nov 2024 00:19:56 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb16a2dbcsm241369766b.40.2024.11.06.00.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 00:19:55 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	biju.das.jz@bp.renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	linus.walleij@linaro.org,
	support.opensource@diasemi.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	Adam.Thomson.Opensource@diasemi.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 19/31] ASoC: sh: rz-ssi: Issue software reset in hw_params API
Date: Wed,  6 Nov 2024 10:18:14 +0200
Message-Id: <20241106081826.1211088-20-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The code initially issued software reset on SNDRV_PCM_TRIGGER_START
action only before starting the first stream. This can be easily moved to
hw_params() as the action is similar to setting the clocks. Moreover,
according to the hardware manual (Table 35.7 Bits Initialized by Software
Reset of the SSIFCR.SSIRST Bit) the software reset action acts also on the
clock dividers bits. Due to this issue the software reset in hw_params()
before configuring the clock dividers. This also simplifies the code in
trigger API.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 sound/soc/renesas/rz-ssi.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 16bca493a254..f767a667c2bf 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -388,6 +388,15 @@ static int rz_ssi_start(struct rz_ssi_priv *ssi, struct rz_ssi_stream *strm)
 	return 0;
 }
 
+static int rz_ssi_swreset(struct rz_ssi_priv *ssi)
+{
+	u32 tmp;
+
+	rz_ssi_reg_mask_setl(ssi, SSIFCR, SSIFCR_SSIRST, SSIFCR_SSIRST);
+	rz_ssi_reg_mask_setl(ssi, SSIFCR, SSIFCR_SSIRST, 0);
+	return readl_poll_timeout_atomic(ssi->base + SSIFCR, tmp, !(tmp & SSIFCR_SSIRST), 1, 5);
+}
+
 static int rz_ssi_stop(struct rz_ssi_priv *ssi, struct rz_ssi_stream *strm)
 {
 	strm->running = 0;
@@ -782,14 +791,6 @@ static int rz_ssi_dai_trigger(struct snd_pcm_substream *substream, int cmd,
 
 	switch (cmd) {
 	case SNDRV_PCM_TRIGGER_START:
-		/* Soft Reset */
-		if (!rz_ssi_is_stream_running(&ssi->playback) &&
-		    !rz_ssi_is_stream_running(&ssi->capture)) {
-			rz_ssi_reg_mask_setl(ssi, SSIFCR, 0, SSIFCR_SSIRST);
-			rz_ssi_reg_mask_setl(ssi, SSIFCR, SSIFCR_SSIRST, 0);
-			udelay(5);
-		}
-
 		rz_ssi_stream_init(strm, substream);
 
 		if (ssi->dma_rt) {
@@ -914,6 +915,7 @@ static int rz_ssi_dai_hw_params(struct snd_pcm_substream *substream,
 					SNDRV_PCM_HW_PARAM_SAMPLE_BITS)->min;
 	unsigned int channels = params_channels(params);
 	unsigned int rate = params_rate(params);
+	int ret;
 
 	if (sample_bits != 16) {
 		dev_err(ssi->dev, "Unsupported sample width: %d\n",
@@ -940,6 +942,10 @@ static int rz_ssi_dai_hw_params(struct snd_pcm_substream *substream,
 	rz_ssi_cache_hw_params(ssi, rate, channels, strm->sample_width,
 			       sample_bits);
 
+	ret = rz_ssi_swreset(ssi);
+	if (ret)
+		return ret;
+
 	return rz_ssi_clk_setup(ssi, rate, channels);
 }
 
-- 
2.39.2


