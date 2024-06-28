Return-Path: <devicetree+bounces-81098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D8891B475
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 03:07:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 638CC281EE1
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 01:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03B5B18B14;
	Fri, 28 Jun 2024 01:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gGnAZwGz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C931F51B
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 01:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719536842; cv=none; b=qJhjduzoVzbdopGEWFQLbFzT/SClmephQpHQUEpAPZ43ecr8Dv7b+Ga/Acz+sqX0an6d9PqnhL+cg4szFoquP6fmauuWodcjQaemIqorw2zfweNvObnOTcErYDqMqYTlCG6l1tdh8pzSuXeIlDKEelaml4mCGRE0AqPjgvg1amg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719536842; c=relaxed/simple;
	bh=2fLNT1nXHgsFGK9SfQggEdsqimQIX4e/hXkHKmU5TxU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qnleXOSnTgy34iEId65betRhHx8RZ82m4u1EMaPlvCPamD7MS/kGsY67blAReTD8Hkfp2V4lZ6J/VbW0WyB/qeHaKkAiby9B9j49r1YbRJPi9PMCEVKm7oZOnTT1eS7SaWhk3+YNpA87KqlZ0dSAeXENtXtZ7s0+L0Ci2cr2XbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gGnAZwGz; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4249196a361so624005e9.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 18:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719536840; x=1720141640; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gJhqgpKH8xpri6xgGQ+p8sz4lqzbwizt046mSH+TQQE=;
        b=gGnAZwGzeCf9L+vAFtNpC6xQIzRdapCBXUSfbID2tHLXGsEalawoMfnZvfamAgb0FF
         HYuOjEa85cv2N21kkg0FBtxFdiVc3qbwJHnj2zZG+QP/Cq1ml0L89bEw77BHAehMUTVk
         MFRO2nzGUbs5l+b/UbEgIK50+D1mmjfUirLdOVzTyeEzWLKxwisc2bg9XF7YfH1j0U67
         WMcVN6yb/CDnDgqR/OuhXiATBZ2zWJJL+aaskB9XCJvfzJxBmg3daysWB5DJhiDNbvgN
         102gk80Hlp2mvAZxRs1rXwqCJtnWTeftoOeNM8Uw3qSu9nJP+trF3qiNVQa+kyo17Q91
         1u+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719536840; x=1720141640;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gJhqgpKH8xpri6xgGQ+p8sz4lqzbwizt046mSH+TQQE=;
        b=TaiQqSWcJj+9ehtPxs0ziJ4yn+r3G8Bv6rlHLeyiLhbq0OW7QHx9PFcVk7CoxE/EQ1
         Szr5wHzl/nxQxlWpWJE890G2AfxrUpGJ/WLgG/WjcCpikHe1rwRoUfnkUmVEel7VzFd8
         zdtPGaToIE6z6haLv9ZXnwxU3A0KMfeF1z5KzlKpoTIbzmoXwun1pAiGM2M62TFXNiyl
         XbSrkXr40wFqFBWpRxvqLi2kWKmpCze8vBevf1LcpgYMO34M4xOur/50KSj6kzuTHD2K
         +5SxDRZFzMIHSZq1cwKE4WZ4nJcn7dk0o3OkUY8v+icAR4S+6nVJ1FnujYXpithpFODj
         +0FQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJI9zFlpopAGkhjBaO2yHC65yVJlB+zxLdBXZmVbx7MDqxo4iQ2s54ztPQdahH8TxnR925HQBsxZnWGbQ50jpgV539mN0OA3OKwQ==
X-Gm-Message-State: AOJu0YxgFrNOeh0cnyygG+siKoO+SIVs9h916yRd3He/06WiqB3NgZMB
	wZWa5hmdwvVsJFPSTT+5M5rH9PfpBVMftz/qr3eShW2V0TqsjAtIGU4SsdPQoKE=
X-Google-Smtp-Source: AGHT+IHxICLv8rGCo59jeDyowuTcbYQXuR/fFVeImMfjYukUzMJrpYuiyKtWcPlrPunnuKXL3er48A==
X-Received: by 2002:a7b:c8cf:0:b0:425:63a9:f96e with SMTP id 5b1f17b1804b1-42563a9fadbmr30979815e9.36.1719536839842;
        Thu, 27 Jun 2024 18:07:19 -0700 (PDT)
Received: from fuerta.Home ([2a02:c7c:7213:c700:2cd1:b0e8:abb:540])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af3c27dsm13075805e9.7.2024.06.27.18.07.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 18:07:19 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	bgoswami@quicinc.com,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	elder@linaro.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	linux-kernel@vger.kernel.org,
	alexey.klimov@linaro.org
Subject: [PATCH 3/7] ASoC: qcom: sm8250: add handling of secondary MI2S clock
Date: Fri, 28 Jun 2024 02:07:11 +0100
Message-ID: <20240628010715.438471-4-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240628010715.438471-1-alexey.klimov@linaro.org>
References: <20240628010715.438471-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add handling of clock related to secondary MI2S_RX in
sm8250_snd_startup() and sm2450_snd_shutdown().

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 sound/soc/qcom/sm8250.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index 50e175fd521c..9864d803114d 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -55,6 +55,14 @@ static int sm8250_snd_startup(struct snd_pcm_substream *substream)
 	struct snd_soc_dai *codec_dai = snd_soc_rtd_to_codec(rtd, 0);
 
 	switch (cpu_dai->id) {
+	case SECONDARY_MI2S_RX:
+		codec_dai_fmt |= SND_SOC_DAIFMT_NB_NF | SND_SOC_DAIFMT_I2S;
+		snd_soc_dai_set_sysclk(cpu_dai,
+			Q6AFE_LPASS_CLK_ID_SEC_MI2S_IBIT,
+			MI2S_BCLK_RATE, SNDRV_PCM_STREAM_PLAYBACK);
+		snd_soc_dai_set_fmt(cpu_dai, fmt);
+		snd_soc_dai_set_fmt(codec_dai, codec_dai_fmt);
+		break;
 	case TERTIARY_MI2S_RX:
 		codec_dai_fmt |= SND_SOC_DAIFMT_NB_NF | SND_SOC_DAIFMT_I2S;
 		snd_soc_dai_set_sysclk(cpu_dai,
@@ -77,6 +85,16 @@ static void sm2450_snd_shutdown(struct snd_pcm_substream *substream)
 	struct sm8250_snd_data *data = snd_soc_card_get_drvdata(rtd->card);
 	struct sdw_stream_runtime *sruntime = data->sruntime[cpu_dai->id];
 
+	switch (cpu_dai->id) {
+	case SECONDARY_MI2S_RX:
+		snd_soc_dai_set_sysclk(cpu_dai,
+			Q6AFE_LPASS_CLK_ID_SEC_MI2S_IBIT,
+			0, SNDRV_PCM_STREAM_PLAYBACK);
+		break;
+	default:
+		break;
+	}
+
 	data->sruntime[cpu_dai->id] = NULL;
 	sdw_release_stream(sruntime);
 }
-- 
2.45.2


