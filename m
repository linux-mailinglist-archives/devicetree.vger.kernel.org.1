Return-Path: <devicetree+bounces-119351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3969BE09D
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:24:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F04302807DD
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 08:24:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA1241DED62;
	Wed,  6 Nov 2024 08:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="BD4T1vL+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC17C1DE8B3
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 08:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730881201; cv=none; b=MJIIPh0W55dzJ/PNgCd752YbIpXmXtCSwN2y6OqiwZsIHIX7I536/GcUDt2GYC+BcayrBgIAKKGD4WOij4YXWBDFP8RzRllGvoTgg6khSiM24yzu6fbv6zsu+AOUzsK2tbZSjLHIBVASCYpNseSproRy1wsWI1nsBib3vI6fdJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730881201; c=relaxed/simple;
	bh=BHXNEXC1/w9w0FhCNA8Ut+at5P9M9ABgSHfmJMFUoc0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Zt/gBdvTMB14ct1i+ZEy2Pa6PeMevrwpL3nD65kMswDmZ8VjsCdfHOahHePyudRIcdFdOqeV7AASe6qNFRKy6zrm64TdLNUiYdrU8+ELdSDj0CQDwM8yQbLwD/GRo7BKVsRyAbyqjDCIV3LGx9yUKv5RuF97D6qv1BOgG/vmc7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=BD4T1vL+; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a9a850270e2so1064145966b.0
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 00:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730881198; x=1731485998; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yECIox5RObecLN+cHaST8UhC3ewkjvCv9PiaN0/Ski0=;
        b=BD4T1vL+pSofDDjkuHh/NBYCRUH7bUE654GUEF01nEfk1H9npk68smUghBKMceYTBH
         X1lvjuxi/UMsc2Ybq6Q/HjhWvBZd2gqpyH9WjGmKhSSnu0qp4thb2dHM4qZsx2e4oDjo
         7qpdf0EDQMhBoXAWKou+b7uilzJDSTEtp7zt+4h/5ba/GIKF79Nw6WYj9gqsCTXqO+8+
         gt2ed6RhJO5gvYrHBf9xWykdPLIEcCYqJ0zWJeACqrXMByGTsRTgiECX7XGCJ8/En3eN
         AAaqnJrxL+94hSwQKmx684pXVdvnxduY+5nlB/qNRh0GYiq5Mdxu7IdgfF3kSJ9wDgGG
         WFVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730881198; x=1731485998;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yECIox5RObecLN+cHaST8UhC3ewkjvCv9PiaN0/Ski0=;
        b=h+iN8nA9afBrR9N4wzePTMlMKuE3QBQZQ5PkvZEGrehwQUKKuDN8Uu8Lb6OghZ/il7
         3+aChs1iSqP1wvpDNlGl0b3+qys8YQEi/iYQrPETAkS0C0WQuQ91wZ/fqpGg1KbTEnGv
         O7pezzjHZxNGTwESt1tMZjrhESxAiv9KDicELJaN8HTb+5Qhy3K9CoEUbAPU+CW7PHVD
         radEYJmR7fcjQH20bMrhRF9VbohH7CDVw3sa5vXoi5JmnAlJhHaRYT3wxvmyERZKtJOE
         np1Blc+xPKGg0lnNq5FxHk0Re0pfLG1zE5Jx8uObvP/z+ZscVU55gQeH8pYVCrEbNLps
         cgwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjztIx/yXgKPIIUY3q/zCv15CmFR63CX4+/EIkvXBTXoMMs7hxQAFH9F9dBgI6bzfxdUZVXwc7tzTk@vger.kernel.org
X-Gm-Message-State: AOJu0YxgXZDc/vc6I6bb5Zakt2uLbu3B1GrQzB1ij/QGG+baFfZGOxwx
	Z/gET1/aqr8IGjDWpzmDq6iOZEXlt9qeZaUMmex2B/nH3ehrBJTWcmJ5qBrDl9U=
X-Google-Smtp-Source: AGHT+IGEMFGGhO9PX5iPocUcuztLprgm6nLf2U8XtkwJ0kqqZVdV/QdchMWEvwv3n99+bkam1W7LXg==
X-Received: by 2002:a17:907:9408:b0:a99:f887:ec09 with SMTP id a640c23a62f3a-a9e655b92b0mr1712798466b.35.1730881198109;
        Wed, 06 Nov 2024 00:19:58 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb16a2dbcsm241369766b.40.2024.11.06.00.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 00:19:57 -0800 (PST)
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
Subject: [PATCH 20/31] ASoC: sh: rz-ssi: Add suspend to RAM support
Date: Wed,  6 Nov 2024 10:18:15 +0200
Message-Id: <20241106081826.1211088-21-claudiu.beznea.uj@bp.renesas.com>
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

The SSIF-2 IP is available on the Renesas RZ/G3S SoC. The Renesas RZ/G3S
SoC supports a power-saving mode where power to most of the SoC
components is turned off. Add suspend/resume support to the SSIF-2 driver
to support this power-saving mode.

On SNDRV_PCM_TRIGGER_SUSPEND trigger the SSI is stopped (the stream
user pointer is left untouched to avoid breaking user space and the dma
buffer pointer is set to zero), on SNDRV_PCM_TRIGGER_RESUME software reset
is issued for the SSIF-2 IP and the clocks are re-configured.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 sound/soc/renesas/rz-ssi.c | 46 ++++++++++++++++++++++++++++++++++++--
 1 file changed, 44 insertions(+), 2 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index f767a667c2bf..4fbcc8f11d54 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -782,6 +782,32 @@ static int rz_ssi_dma_request(struct rz_ssi_priv *ssi, struct device *dev)
 	return -ENODEV;
 }
 
+static int rz_ssi_trigger_resume(struct rz_ssi_priv *ssi)
+{
+	int ret;
+
+	if (rz_ssi_is_stream_running(&ssi->playback) ||
+	    rz_ssi_is_stream_running(&ssi->capture))
+		return 0;
+
+	ret = rz_ssi_swreset(ssi);
+	if (ret)
+		return ret;
+
+	return rz_ssi_clk_setup(ssi, ssi->hw_params_cache.rate,
+				ssi->hw_params_cache.channels);
+}
+
+static void rz_ssi_streams_suspend(struct rz_ssi_priv *ssi)
+{
+	if (rz_ssi_is_stream_running(&ssi->playback) ||
+	    rz_ssi_is_stream_running(&ssi->capture))
+		return;
+
+	ssi->playback.dma_buffer_pos = 0;
+	ssi->capture.dma_buffer_pos = 0;
+}
+
 static int rz_ssi_dai_trigger(struct snd_pcm_substream *substream, int cmd,
 			      struct snd_soc_dai *dai)
 {
@@ -790,8 +816,16 @@ static int rz_ssi_dai_trigger(struct snd_pcm_substream *substream, int cmd,
 	int ret = 0, i, num_transfer = 1;
 
 	switch (cmd) {
+	case SNDRV_PCM_TRIGGER_RESUME:
+		ret = rz_ssi_trigger_resume(ssi);
+		if (ret)
+			return ret;
+
+		fallthrough;
+
 	case SNDRV_PCM_TRIGGER_START:
-		rz_ssi_stream_init(strm, substream);
+		if (cmd == SNDRV_PCM_TRIGGER_START)
+			rz_ssi_stream_init(strm, substream);
 
 		if (ssi->dma_rt) {
 			bool is_playback;
@@ -819,6 +853,12 @@ static int rz_ssi_dai_trigger(struct snd_pcm_substream *substream, int cmd,
 
 		ret = rz_ssi_start(ssi, strm);
 		break;
+
+	case SNDRV_PCM_TRIGGER_SUSPEND:
+		rz_ssi_stop(ssi, strm);
+		rz_ssi_streams_suspend(ssi);
+		break;
+
 	case SNDRV_PCM_TRIGGER_STOP:
 		rz_ssi_stop(ssi, strm);
 		rz_ssi_stream_quit(ssi, strm);
@@ -958,7 +998,8 @@ static const struct snd_soc_dai_ops rz_ssi_dai_ops = {
 static const struct snd_pcm_hardware rz_ssi_pcm_hardware = {
 	.info			= SNDRV_PCM_INFO_INTERLEAVED	|
 				  SNDRV_PCM_INFO_MMAP		|
-				  SNDRV_PCM_INFO_MMAP_VALID,
+				  SNDRV_PCM_INFO_MMAP_VALID	|
+				  SNDRV_PCM_INFO_RESUME,
 	.buffer_bytes_max	= PREALLOC_BUFFER,
 	.period_bytes_min	= 32,
 	.period_bytes_max	= 8192,
@@ -1201,6 +1242,7 @@ static int rz_ssi_runtime_resume(struct device *dev)
 
 static const struct dev_pm_ops rz_ssi_pm_ops = {
 	RUNTIME_PM_OPS(rz_ssi_runtime_suspend, rz_ssi_runtime_resume, NULL)
+	SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resume)
 };
 
 static struct platform_driver rz_ssi_driver = {
-- 
2.39.2


