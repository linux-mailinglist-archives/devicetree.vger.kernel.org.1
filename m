Return-Path: <devicetree+bounces-129401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E829EB7CA
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:14:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05E63281CE7
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21232232385;
	Tue, 10 Dec 2024 17:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="RxkgtaoU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5658B23EBF9
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850648; cv=none; b=u44iWPKiFGCvewbGbcjxRtTDE9GyTejdl7m0JzHjorPhtCx9JJbzF9jSPMKccqARHbe/CVEXEu/969ImATQYldq+Veyz/zz2IcazFxSxaW9xvTh03hh7qGYavPj3KvT44V85X9n0wnk75kS4Kd7/eUluedVGH8TD/GShemdO9Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850648; c=relaxed/simple;
	bh=JQNGPZYkGQRQ2sTS79lFZ6me2mcLImriGT7BK3n9sx8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=G7nLpF8V/6+45Sa82IBq3GFYkDPSsHd438X/eTIhl6XdmeZNnSMj9LDkOxk2rhJAScNjpXd6zl30JfzOvXlf6O3uHMI4GcXpePBt8b9T011yZYIHPS0rAAvpTuz42hkWhsZXu702pDsVjKMlAN6QnaXwEgk/fVptJRfEjoyCqFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=RxkgtaoU; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5d3d2a30afcso6572116a12.3
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850645; x=1734455445; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zdorf6J6oUWOvTlM/ckHP3yguOeZKUZzy/Da078XD3Q=;
        b=RxkgtaoUMawCkOLuYSCT0LaqBXe0bXBvLgBy/pgjEtbXQNA8Vqy5k636ofhxNKac5Z
         euouPsNyepl84zZmi1DHJ57gUxsm4a4ZMnOXZnO5n9tTgpmC1IjGud8k5RQvqfer6dl6
         5BlooiNDCoggtL79AHgEC9LkU8fE7fo+U7sVSwvu8w2URX970dpGlgGJ1xW7RJOdAf2e
         c/m0Jd+uARwv2JQ7MTVqrHJDjU3lwWw1Z0wlgEZm+04vghaA3jzfQdhpI+ZkjHV01CA3
         ZqPWHBXF6RkDUQGeLYHOdYHrJUG6MIz9WwYtVRaMFWn8NPC0K6pyL2PSOL8iah+PegfE
         2IWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850645; x=1734455445;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zdorf6J6oUWOvTlM/ckHP3yguOeZKUZzy/Da078XD3Q=;
        b=dl7Es8/tqXkIHi1jgXy7MPETy+xqjlcHD5YrM5c6C3fQikkILMH+8nYh/r0CUoyO0w
         HAlzqx3kmEVCegObu8gzkpYncunkQBc3EVvvd+O8/6cngf2T7NtlkwcnjIMLE9nITVVz
         mY7ot8bQMEzWNUEMz3v9FJIOWFoX/+yLXf/pCnSe4UUGeSnDNwVV2aZxr/ESPvjy54Rg
         VHNuBgkQnDv6KdHga7ZkgpMCzTISvP7JLp9roH1CDTdwbR7j8FfFIX5gNmo7QBPdGf35
         q/1JgBoEbYob58U3VeYq1Sh7GVLkZa6RC1jXZBd0z+lu2Xu16zEzPZETYo4bv621NErL
         mdJQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8zkQZyxuY8hXHg+PO6IfGQfgA7ygpZSBo8dB5acvZE3imWjivTdwsRWTueOHb2PGbOMkYRQMSHM4/@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2bpqHGMh2RnCn8X1cfaoo5t0p+IJ4OLL8+RBx+gS/e/dRWRmQ
	wY5X5eY+F+aXV+eNAseqhiyPeDhTfPyGZS6K1qvftR8ExVRKUWVHHld/XeH4y/s=
X-Gm-Gg: ASbGncv57Laaby0vjtogMqwZ0BScgEuHx6CK0XQwDZo8QafS7QAHJ+CVjWaYhsAxjEk
	d4WYcjXAgp/jiit1TDKoR+/UtBZh2CizZRc5UWlebo++qxMbPOKpLDQxN2Bd+0hvP+Cfar3sCW6
	3dzWrQPn1d2hGMwp3cHn76eMsTO8IIeHpy4liEYy8Xn4hxB6/snASaiJyp5K8RHAwSXUrUmur//
	mPcqCwuQgR6XnKf/dtiozdfZ/dn0SBDA3aIJHNGlltDkar8HMvxu983iPlDc/h8/uEstKF6ggdy
	NipSr1QL
X-Google-Smtp-Source: AGHT+IG0YYavl8GoEPcOWdjWdvPZujuBgG2HJ16HofI4S8uWOgmyS/RSRLDoRpiWfKoP6RlhHB13MA==
X-Received: by 2002:a05:6402:3493:b0:5d3:e9fd:9a15 with SMTP id 4fb4d7f45d1cf-5d3e9fd9b71mr12243945a12.32.1733850644830;
        Tue, 10 Dec 2024 09:10:44 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:43 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 17/24] ASoC: renesas: rz-ssi: Add suspend to RAM support
Date: Tue, 10 Dec 2024 19:09:46 +0200
Message-Id: <20241210170953.2936724-18-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
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

Changes in v4:
- none

Changes in v3:
- s/sh/renesas in patch title

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 46 ++++++++++++++++++++++++++++++++++++--
 1 file changed, 44 insertions(+), 2 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 486822d79458..d48e2e7356b6 100644
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


