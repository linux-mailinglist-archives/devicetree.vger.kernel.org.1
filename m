Return-Path: <devicetree+bounces-130065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D63B9EDCD2
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:50:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F34718868C7
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E39418B470;
	Thu, 12 Dec 2024 00:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cf0yDtv6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CEA187FEC
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733964482; cv=none; b=AvLSbA738fU4Vjomke21LmhqJoVdcuVxVaEEr28GIIXqJFX+5RWKjih14fWqNYP27KdhvQSrjaH1zuxXLnA0R90ek8diHwiBgcjPkPlDxU4Vrz8dDgTlvfCii1z1AJbHlfwc0169MCMZsrFXk70cmF5bR3ANBrqPcPltpDxXUrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733964482; c=relaxed/simple;
	bh=QzuIeMsbqn06WI5qhPV1wr/oyc12cKZ+XBOtXN5CYbk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jAaRf1scOtqdaDATKRGRLg+RcaqtgczouXjqnfqsAvv0AGZrThKTfn2cJuhLhwwJq2HmmCDjcyDzF7joB60/iwiYswbQlEyWw5DIuo3WjVYTy49bZ5fBgjDi3hmHDuwOVbjCmU3HXVQNuZeMYbvtba5wa8fB3fVhlk9PNu7Y8Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cf0yDtv6; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-385ef8b64b3so24272f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:47:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733964478; x=1734569278; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8YUv9wXf1xeMulszUqTOEITp7UUlDCUgSWoOEuWnA1U=;
        b=Cf0yDtv61ODSF0SdIoYHtgfcMmCSDWWtc/iE3ul6sPR6qU4XVCOI3tDDXgvhgF6SQG
         n10ix4qfFx+qAvU4XHjm3zpvwLR9N/FqS1MsByQMCwwz4N1aKH6C81c66QDnQv9FKze/
         cjfo+YgZsKg3mzhObTqbx8tYbOwDFY/2kRS7mvQQvA+RpeEyHujBB8AOuM88t661GzAu
         JiUZwBW31X2g0Zfv7rZHUxRGz3QDWTPI51FZbn1uOM62LY+zWaFOKfRrr8wwtcLcTTIj
         jS6plzepqGM15KRz3j9Vl4F4oyslsOCBZji7jeqx2SGjL0pF1qGg39EDnkTzHXwlYqY2
         kPHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733964478; x=1734569278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8YUv9wXf1xeMulszUqTOEITp7UUlDCUgSWoOEuWnA1U=;
        b=RWlNXaA41iomc5SwY21p2CaSTNqnCzMU4DiMyG0rpURBxsHingu7oheALBUTjsXxI1
         kDwD/pxUpgt5VPr26rvzxAZhaMsE2EChcWnBzMQQVRO+SjqYVC4P823eYjhOj92WkUQO
         XoGrKULeU0ODW9etS0awpwRADD3AtU2CYDwNY0Kv+F1upplg9ilLBW25JnFNLYErLTiy
         LlRFcUvQ/scNeylb8ltTdJeFDvqZ83w+IOSkF6qcfIysnf35dpqmgfUEFtu9PgoRpLFp
         2UJAYoC2EyIaaXdYbZjuN86BI8IHQk3kzI4kEu6t8TjH3nFFDVY3ofGXcFaXfj7BAx5r
         PHFw==
X-Forwarded-Encrypted: i=1; AJvYcCUjLhr3QiFVkZegGPnSiUjnJVbjkz4s3vWH9Oq7VFf4csuSz3jmPn4LcyYcT2/IIy3oyG9W9Olk8xVO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8XRPIGJ5J4ztK1R8UxRJdgCn6GLeIHuJpj3I+MT0/RJvCZk9x
	CJuL+ZbLzUcZx9rDw4EEZMfGJyxPu6RXuQ2605Ygp6At+kRtkx+oJ7ctebXLUIU=
X-Gm-Gg: ASbGncueciZby7MmlqkFwiVGlvCi9lQ1L6RYOzs9rimPNqU8mrs6rIilRe2UAIWWZ2e
	UoOFJgvsNqC94m37Gmm5axKS89dTFM9pLNQi7lX/KReNFTKIyx9wZGzM5F5NO+g2NZH+szHlAcz
	fUlgczXAtO8MF4lrCv4Yq8yigiqYze+8fU+UCI4kjjACYB29FtHKtDxUghGTUyRbJisc8eR0TOa
	9ulu5SC4ZvFnD6mN5CM83kxhxTh4lYqMBp64r5oD8n1KM2D811dZzTT5HIEiV6YYGptQDl5
X-Google-Smtp-Source: AGHT+IGJvDlNsdYx4DutxMjQy1pOyYpJ0oJ3EbMe3FkPnkQ/U4TLzzGqGgOOv0KPDA2qNTcXJbpfuQ==
X-Received: by 2002:a5d:6f1e:0:b0:385:ea11:dd92 with SMTP id ffacd0b85a97d-3878768e6a0mr1224692f8f.15.1733964477946;
        Wed, 11 Dec 2024 16:47:57 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a4ef4sm2459660f8f.39.2024.12.11.16.47.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 16:47:56 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 14/14] ASoC: qcom: sm8250: force single channel via RX_1 output for qrb4210
Date: Thu, 12 Dec 2024 00:47:27 +0000
Message-ID: <20241212004727.2903846-15-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241212004727.2903846-1-alexey.klimov@linaro.org>
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In case of mono configurations we need to enforce single channel
output. This is required for audio playback on QRB4210 RB2 board
since it has only one WSA8815 amplifier.
Implement data variant for qrb4210-rb2-sndcard with
sm8250_qrb4210_fixup_params() that does that.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 sound/soc/qcom/sm8250.c | 28 +++++++++++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index 45e0c33fc3f3..b54acaee8dd1 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -23,8 +23,23 @@ struct sm8250_snd_data {
 	struct sdw_stream_runtime *sruntime[AFE_PORT_MAX];
 	struct snd_soc_jack jack;
 	bool jack_setup;
+	void (*sndcard_fixup_params)(struct snd_interval *channels,
+				     struct snd_soc_dai *cpu_dai);
 };
 
+static void sm8250_qrb4210_fixup_params(struct snd_interval *channels,
+					struct snd_soc_dai *cpu_dai)
+{
+	/* QRB410 RB2 board has only one WSA8815 amplifier */
+	switch (cpu_dai->id) {
+	case RX_CODEC_DMA_RX_1:
+		channels->min = channels->max = 1;
+		break;
+	default:
+		break;
+	}
+}
+
 static int sm8250_snd_init(struct snd_soc_pcm_runtime *rtd)
 {
 	struct sm8250_snd_data *data = snd_soc_card_get_drvdata(rtd->card);
@@ -35,14 +50,19 @@ static int sm8250_snd_init(struct snd_soc_pcm_runtime *rtd)
 static int sm8250_be_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
 				     struct snd_pcm_hw_params *params)
 {
+	struct sm8250_snd_data *data = snd_soc_card_get_drvdata(rtd->card);
 	struct snd_interval *rate = hw_param_interval(params,
 					SNDRV_PCM_HW_PARAM_RATE);
 	struct snd_interval *channels = hw_param_interval(params,
 					SNDRV_PCM_HW_PARAM_CHANNELS);
+	struct snd_soc_dai *cpu_dai = snd_soc_rtd_to_cpu(rtd, 0);
 
 	rate->min = rate->max = 48000;
 	channels->min = channels->max = 2;
 
+	if (data->sndcard_fixup_params)
+		data->sndcard_fixup_params(channels, cpu_dai);
+
 	return 0;
 }
 
@@ -168,6 +188,7 @@ static int sm8250_platform_probe(struct platform_device *pdev)
 	if (!data)
 		return -ENOMEM;
 
+	data->sndcard_fixup_params = device_get_match_data(&pdev->dev);
 	card->dev = dev;
 	dev_set_drvdata(dev, card);
 	snd_soc_card_set_drvdata(card, data);
@@ -181,9 +202,10 @@ static int sm8250_platform_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id snd_sm8250_dt_match[] = {
-	{.compatible = "qcom,sm8250-sndcard"},
-	{.compatible = "qcom,qrb4210-rb2-sndcard"},
-	{.compatible = "qcom,qrb5165-rb5-sndcard"},
+	{.compatible = "qcom,sm8250-sndcard", .data = NULL },
+	{.compatible = "qcom,qrb4210-rb2-sndcard",
+	 .data = sm8250_qrb4210_fixup_params },
+	{.compatible = "qcom,qrb5165-rb5-sndcard", .data = NULL },
 	{}
 };
 
-- 
2.45.2


