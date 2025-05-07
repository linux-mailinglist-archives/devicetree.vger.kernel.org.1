Return-Path: <devicetree+bounces-174573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F05D0AAD9D6
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 10:14:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CAB79A38D2
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 08:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B38A9227E87;
	Wed,  7 May 2025 08:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="sr2/yM6d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D29225A23
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 08:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746604931; cv=none; b=tfn/Q+v17v2TG0+Fr472GjsaMuR6ldCGIflquGv4tjAxFmip32sDvEtib5mm05zcNZ6w9SSmE3JY+vYLMZoCQThyObtVi7fHAFyX2b38OaOg+p/zxgCP4LJ9Pb6G0ywWjdVZTg6nIGXuJRbAiEqkCV5RNdmAAcaP+NxO552OcCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746604931; c=relaxed/simple;
	bh=+NkIa3tRR6OnKKuCWg/7/UZBXPY1qcvu5koCiqXLwVo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NmpIGhXX6FKlXkF6otLhGg9LLf2k2TZKHjCCaxwJ80XNHazN95azSWG1Bt2W7XpEW7/3UGff1nn54xU2xCAcPJYjMbmGaKpxABzH0WSJxBkYdzBuiA4FOLZcXHaj1VdpkxZ6U4udG7A5pLPZcnt5Ww3fOEL3XE/M5RWoCISXS/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=sr2/yM6d; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5fbda5a8561so1566139a12.2
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 01:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1746604927; x=1747209727; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zEN0PXya3Y5YPAUDTh8Px+2+gU/KgrKVkv5tePKDfas=;
        b=sr2/yM6dnxNxPqEHg7gCYUuKwRBECOSfEJcdnvo8d6k3Y0fbTC+lzYN1ySoX+B9wFR
         OpwnnTJo6XCqDloc4AjkolinjkcOVJiEj+nVIA16RoxP9xaEyjp7UG8AIe2o0KsdPO7g
         5NO9D91cNCq9MHACcJzNuI7XhMgN2cAQLLd8qHi21JyUR4CiX9uOicZUo6thFNcjwoZ3
         UEz2P3pKTxRyaCA6C8DUojZkD/lvVBZ2425B6SxiXw3CWjZGG6yVzQjZ4N+C+9c9vdRQ
         sGPc/WNFNYc1julwKGKHXFyOW6LMRJ55b4PB+DCEUBdG6j1MmOo18o4VFCMBK3FGpBaL
         huvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746604927; x=1747209727;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zEN0PXya3Y5YPAUDTh8Px+2+gU/KgrKVkv5tePKDfas=;
        b=lBKFn2ayQ/7f7+icrw0xh7dn5aez6aQg5qx/wtoU9lc4p7MC6j4rGPYXs066MKd9tV
         vNuRYat2ENp90UDlEuFiftP/v57p/NDbxwyh4gfO4N8hKo+wvOZUg1ABTg+rKFijo71A
         HjTwGV28wdQXi/FUha9NbtPYL8PUounLo4RzSvKVNTh8mVuMeXcE7/ddYNOrjMTmXPeY
         CciKgnednYQCarf1EC8JmI9zYhDe7AjjfEFvZ/Pao7oh80IEktazSxCRB0Yf1MPOuDYY
         oSFDLNF5KEqpCcT1k2+RUazk9hNThzFZt0vi6Xp5Kc2U2ZH4oDXOjcC5JLMlGErZ4DOZ
         N5IQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAMm1EFjsKQ2yf78yyX1dgkn+cT15ujU27JLGg3TbkPne7SLmCKPQSI4I81JSefdBFJuoXoR+ZUH+W@vger.kernel.org
X-Gm-Message-State: AOJu0Ywjo/Km3d2UitM/ZgzGjQLRQQyIuVTX/ShLkSAVn4riEGZEysS6
	YgLBL4Uae8ciUlBfJA89Tm/nKfBNDmmWDBoxThQ3X/a2sbIZTwNgygJoyIlOWCE=
X-Gm-Gg: ASbGnctFZ4hEIVJaP4d2M2MAx/5Y5tpO6qVvhdXFo2EB0cFlYU69tLkYbNScKHSnEG0
	qFTt9uyoDaCB4gVlBjqCFxB9Sk76gbMCqE1DtsHSNZLbaxRR0PvwJfFQ5vvM216/KMavajjNb5N
	ix/adJ91UQqP0/PaYLXD20IW8pBlFkVC1/AtFsKOSXSCkR2d2y48bQVpjX/s+Td9UuqWf3vUpuT
	q6x42fylsbg0XrmDxzRitX84ET4t/SBtvL7rc5eZETa9fElFArjrP/EYHg6T8JR/327Rc3Ze2b5
	M+cNVtIF/XzBHTINj2eyIUNCNZB/d3aoRIR0F0heLaJJEe/Ik9kDEg5G8fha3w0Lm7V9JvvbW9R
	OtYAgNDs8tHhysg==
X-Google-Smtp-Source: AGHT+IFM7Oq1Xn0VIuxfyz3KRNIFNY5cp5qjc6oWjmusZGZM8KjZIdX1ZYRy5EquRLMrIpwTTSPwwg==
X-Received: by 2002:a17:907:c28e:b0:acb:5f17:624d with SMTP id a640c23a62f3a-ad1e8d2ce68mr215405466b.57.1746604927193;
        Wed, 07 May 2025 01:02:07 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1894c0310sm855236066b.88.2025.05.07.01.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 01:02:06 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 07 May 2025 10:01:39 +0200
Subject: [PATCH v4 3/5] ASoC: qcom: sm8250: add DisplayPort Jack support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250507-fp5-dp-sound-v4-3-4098e918a29e@fairphone.com>
References: <20250507-fp5-dp-sound-v4-0-4098e918a29e@fairphone.com>
In-Reply-To: <20250507-fp5-dp-sound-v4-0-4098e918a29e@fairphone.com>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2

Add support for DisplayPort Jack events, so that user space can
configure the audio routing correctly.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 sound/soc/qcom/sm8250.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index f0d83a843765d8dcdd51569e7cbc95eb72292497..2317fe285ee7d41689d7fac453164fbe706744ff 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -25,6 +25,7 @@ struct sm8250_snd_data {
 	struct snd_soc_jack jack;
 	struct snd_soc_jack usb_offload_jack;
 	bool usb_offload_jack_setup;
+	struct snd_soc_jack dp_jack;
 	bool jack_setup;
 };
 
@@ -32,14 +33,16 @@ static int sm8250_snd_init(struct snd_soc_pcm_runtime *rtd)
 {
 	struct sm8250_snd_data *data = snd_soc_card_get_drvdata(rtd->card);
 	struct snd_soc_dai *cpu_dai = snd_soc_rtd_to_cpu(rtd, 0);
-	int ret;
 
-	if (cpu_dai->id == USB_RX)
-		ret = qcom_snd_usb_offload_jack_setup(rtd, &data->usb_offload_jack,
-						      &data->usb_offload_jack_setup);
-	else
-		ret = qcom_snd_wcd_jack_setup(rtd, &data->jack, &data->jack_setup);
-	return ret;
+	switch (cpu_dai->id) {
+	case DISPLAY_PORT_RX:
+		return qcom_snd_dp_jack_setup(rtd, &data->dp_jack, 0);
+	case USB_RX:
+		return qcom_snd_usb_offload_jack_setup(rtd, &data->usb_offload_jack,
+						       &data->usb_offload_jack_setup);
+	default:
+		return qcom_snd_wcd_jack_setup(rtd, &data->jack, &data->jack_setup);
+	}
 }
 
 static void sm8250_snd_exit(struct snd_soc_pcm_runtime *rtd)

-- 
2.49.0


