Return-Path: <devicetree+bounces-168555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D26A937B2
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 15:14:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7334817A77D
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 13:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DA2A278175;
	Fri, 18 Apr 2025 13:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="SyiuupG7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC8D277805
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 13:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744982045; cv=none; b=mm08jdd6sxTISFizZMPbXUc6CwVZERMeZxe/tQOlHW08mmdgb0t4W+EZx6DI95XuINUXVTf/YnHdIj35geT7U1XemazaGdk9VP6/nJMliZ8LMQF00wiO0JBSb4YaPelmuFFiM+vRdil/xC2giIWxrBSSPTMky6Btt+C04SzP2ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744982045; c=relaxed/simple;
	bh=6LWWCl+fw76HY+PZdOokf+xdGWSBmr74emQwtZNOoaw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i95MDyHVAGr8x5cL2u8/t6tPvMkLoSNCTZA+L5rW7Du1Fw0UwI8zUKCNh7xtk/iarRIfDHJ/CGxtQlNZniK4ibIWouAmOilIDLUm9/URelKVxdSUGYHELhNLjgK3/wC2fpDZLUGbpVzL/d9QFcQC9YmmzwE+Z9ZeRMtiucrUBvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=SyiuupG7; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ac6ed4ab410so278592866b.1
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 06:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1744982041; x=1745586841; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ih9KqGuWJ1rc0JvwhZbwATHF/82WoHzu4xe2IRdIO6A=;
        b=SyiuupG7H306YWVn0b4dY0TBaDmRtwIL6sVFw4/ennSWl1NemCLouC80dO3bUVG9Um
         5M/dfjs/DRX5qDbpVBdQpLP1xQsr8pxzAZFgxyTRCmaQVwQc67Rso8gQedp4lsJiBnpH
         kMLuz0gB851OwXqYcAQw7KMa47CZrLt8c0e/WZwmkWTvYK4xGWTQtja1tBUSnf8bzHrY
         H4VWnrlbLy7K4TQ4qxq/w1L+Qw4zGb2DVJzmL6SvpPm+13fTrsbvW+H/FBZ++BMqJa4a
         TwuEzCX82+WpaikrPTmMnHehN5DtBl6feHHLoAF7v5WD7Ewk8p2KFaxAYRXpS7c28OQZ
         apXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744982041; x=1745586841;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ih9KqGuWJ1rc0JvwhZbwATHF/82WoHzu4xe2IRdIO6A=;
        b=gbcML4olwgWRK0kU+2LLLbT2X19YfKdyUJ46eQKdCzSDdP/8j/jn+lM9+YQ5M7i2UU
         lmc0+IpvlnDmGUiI+f/or8JUOt6yMqODKPE1QFsMG9J2VNXPszlqrGmqofm2ofRBTOdt
         sZtvFANJ7CMhhMhFj+DpLnJt3NIt5Rck/af6unsosU27alWUN++K95Y4wswelvg7V2c9
         z4L1YLsi/RjgqJUE5dvWRzitjF0nw0x55SIX/potrmvva49gwgjSlaG5QB/bu1FJoDtV
         OGR3kwu08wSZ6eU5dtZV9WCOOzJnHOiw5PtTqRamy05AqbnjyGp3/jT9YcARtvFpbVfK
         2f8w==
X-Forwarded-Encrypted: i=1; AJvYcCUPAPOjB0cY5RevWnxAf0IM4hDD5pzR6m/tQ/tH59k+F58POwiHHO3c7jgaQnJHqD06XN3xXS0OCJO8@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0bGeaIPnU9f2TpoMr4h7LVyyA1SZjdw46T75c7EGiSahD4XI3
	x4Bt14itAEPCJ+zVLlPE9Sl/zNv0yHWtgbcxvHZZygNhURGvQOWWqRoiqrqChOY=
X-Gm-Gg: ASbGncsriDXC0EEQsNhMx7NWizh+lzOA468omRh19S+KDxvHv/OphOQH7fh1yNp86V/
	598fZB+LDWNzJhucVy18b23JQH7M60BFV2AnL2rnGHF9yzxDoYJGqHk7qQvp/UG4O3grgxgLneW
	C37SlcsdWJmzCzZZ8ZAwUICgtHno4VzitGovpddnSEPQFxNHkzkqPB1aqPagxALrdXuZxmSZU4s
	gs5WbQpR9XAlBqP6+sPjcVIaO2BGhC7p3yAjlR1bxx77OAXvBRQZbzeWnZUaKdDZS/LwMUiE9bS
	aWrDHVICi892lM17aukhUMxor4DkVsGj74ayBjkS8s71qqRv1TkyrcYyWjEv63cdKY1DvQgrq2Z
	Hw0AcTIPRTLoQrQ==
X-Google-Smtp-Source: AGHT+IEQnUcQbXMaqk61okzrXh46x/KQ61UJQzrcCrJS6MAJvzXtug796hcDtEBAuUVns86R4gHd4w==
X-Received: by 2002:a17:906:6a23:b0:ac7:391a:e158 with SMTP id a640c23a62f3a-acb74dda17dmr237991466b.59.1744982041377;
        Fri, 18 Apr 2025 06:14:01 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef41605sm115901966b.124.2025.04.18.06.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 06:14:00 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 18 Apr 2025 15:13:44 +0200
Subject: [PATCH v2 3/5] ASoC: qcom: sm8250: add DisplayPort Jack support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250418-fp5-dp-sound-v2-3-05d65f084b05@fairphone.com>
References: <20250418-fp5-dp-sound-v2-0-05d65f084b05@fairphone.com>
In-Reply-To: <20250418-fp5-dp-sound-v2-0-05d65f084b05@fairphone.com>
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
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Add support for DisplayPort Jack events, so that user space can
configure the audio routing correctly.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 sound/soc/qcom/sm8250.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index e920b413b762c803cfcc4049f35deba828275478..aa3b4bc3fcc7b8a8dccc75ef1309bb26a2a8105a 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -25,6 +25,7 @@ struct sm8250_snd_data {
 	struct snd_soc_jack jack;
 	struct snd_soc_jack usb_offload_jack;
 	bool usb_offload_jack_setup;
+	struct snd_soc_jack dp_jack;
 	bool jack_setup;
 };
 
@@ -34,12 +35,17 @@ static int sm8250_snd_init(struct snd_soc_pcm_runtime *rtd)
 	struct snd_soc_dai *cpu_dai = snd_soc_rtd_to_cpu(rtd, 0);
 	int ret;
 
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
+		break;
+	}
+
+	return qcom_snd_wcd_jack_setup(rtd, &data->jack, &data->jack_setup);
 }
 
 static void sm8250_snd_exit(struct snd_soc_pcm_runtime *rtd)

-- 
2.49.0


