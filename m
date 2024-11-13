Return-Path: <devicetree+bounces-121531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D51D69C710E
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 14:42:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 668081F28883
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 13:42:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C17C20F5D3;
	Wed, 13 Nov 2024 13:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="miJMegoR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8EB20ADEC
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 13:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731504988; cv=none; b=e6miydGcaIQ2dqswmsQoF53TRoFWQaq+j+K4gCvByEfppF5b5dJMNVIRD5E9BexuRdiQPbIrbLg9dr+r+88l9hhl0+35TXqquCiCvs9S2nhrU81pCty9fNPiTHap7WdpioIdB9xSrb7N8bsaw6jCHz6URij1z8xt0JO9RZNA2u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731504988; c=relaxed/simple;
	bh=LV91bwoXWlhlxgMQ4GB9XRzgGclzqP04XzJyr0ej6OM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ErOmO1ZLnbevRECm3GFS5TsXR41OwMvskhwr4R1Tdxd+f5JzxxLTATi8HImF6nPJSttmsv3WRTpD6Ia93aYsU/lV2t8/k0hsaKPGKjQIi0uqbl/ns/vdPuqBp2BNaa4maiztNeF5enLi4CU8ZvfMlrojNSZfZaPVgFXibmP8Xd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=miJMegoR; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43161e7bb25so56434235e9.2
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 05:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731504983; x=1732109783; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WtUBr3jV38UFLkTXmRm1D/6voPjWdBhNnwQnsPaaUvc=;
        b=miJMegoRZX2wWOXV5qKzvk2mejN22iyKqrjZFgyNbdAxivvDi9xCrwcMT20zTMo1Sz
         EaWCA5iV1yrg8yPfoKd2IW2SsBtkCt4NxKPOmFgJfqC/Y5FxgYmkmUuaV1OltXUFYd0h
         nBdzQqTjIg9Z8IulwXn0ynJcYn389Zr17wogU5Uz50CZnu/rsQ63RoupHkvlLyft8Ecf
         BH0MnxawZJdm54e6kuMWdzBhqg1uIgyVdAY6UI3nl3la+/g9z6sKXvwz8spj5Ol5PV6c
         FwVw28zt+9qPfvqaaW4b0oy3NXMbrHIuY8Uxg3pxcPwTS3YA5/m39a4W3yMUWzbjBjLF
         3Dcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731504983; x=1732109783;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WtUBr3jV38UFLkTXmRm1D/6voPjWdBhNnwQnsPaaUvc=;
        b=OVKCL/LX26ZKmjkgiReNc3teCh1T1btZfGBziOO9eNoXUWQNYajCeWK8Cbag6tVN14
         UgCv5YphzpguGCmEm8D9f6np9RjUsZM0mHs62LVL9dFuXnLl+AOUBUTeKcvWOdOty5WV
         Sb7pwgF+t3GSsX0LvFx9OkPJ7MrctLlJaQWSY85nu904kcaO8XNx08XrpBMl6TZfm2cd
         o+FxrANDvhVX7DyeMoGKoJ9lKbZHJZcavzOVq/aqJJx7Sl8Z6pOUgUYt7Yz5HTf2Wj4h
         nj6FbxIeQt754QvSlUI56zb//CBNoock8yqLExz6sy6CE32CBB4S+rKpy3eV1Ecyv/LB
         SEqw==
X-Forwarded-Encrypted: i=1; AJvYcCVqkmzgd7Ds26FFvYSkNX4qehei5J/PFTEowfhnQyBg1g97K1qiEWQHLmqwqkG/TQK5E7G/bB5xXnNR@vger.kernel.org
X-Gm-Message-State: AOJu0YxoMe4AdNPo7YJPZZJif3H4deKBAoxdORoiDHx2NXSJE/VXn3Oi
	YIe7AsWYge8+yd7ZNUT37r0WwZdEY14Wtoz2nO+mJe3Ya/VwDoGfK+jDQWEvxgY=
X-Google-Smtp-Source: AGHT+IHYaAB1VGO4IFn/DIJKzMAa0KUZXqhtBn2mZeUOrZECvdY2Hj48tOrHGijj+2dQBlDCVnwcjw==
X-Received: by 2002:a05:600c:1e12:b0:431:55af:a230 with SMTP id 5b1f17b1804b1-432cd47db54mr53031255e9.33.1731504983374;
        Wed, 13 Nov 2024 05:36:23 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432d54e2f2esm25664165e9.1.2024.11.13.05.36.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 05:36:22 -0800 (PST)
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
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 19/25] ASoC: renesas: rz-ssi: Add suspend to RAM support
Date: Wed, 13 Nov 2024 15:35:34 +0200
Message-Id: <20241113133540.2005850-20-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241113133540.2005850-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241113133540.2005850-1-claudiu.beznea.uj@bp.renesas.com>
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

Changes in v3:
- s/sh/renesas in patch title

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 46 ++++++++++++++++++++++++++++++++++++--
 1 file changed, 44 insertions(+), 2 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 10dd973a1c85..c6bedb58d3ae 100644
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


