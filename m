Return-Path: <devicetree+bounces-170698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD52AA9C067
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 10:08:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DC4B65A2A69
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 08:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 741F223535B;
	Fri, 25 Apr 2025 08:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="E/ZeNWO4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760E4233715
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 08:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745568458; cv=none; b=umj/Xa0eLckoTprsvQHO2+SyCvfJzzk5mkS+Gehb9no5sgehSqUFoOSgJ1YHFlAVoeZ72T6xMAKf1moVL2nAIIsaDLM8dA4Hn2D3JDin1Kswkj5R7XY0Pr26CQmzdn7bYG3TavKt0zCPDznrkgv9P4Pna0lJDBY90wzc/Bipb+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745568458; c=relaxed/simple;
	bh=t2UqwPYP1B9XN/iC4TKLlBIAancDyLL4wrE626PGHow=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C9hadLYDIc80wzO/a0e+vw5bezvlZks2HrJgtu/t1qdoNE5kLY3dvgG8bRpVgY0JxaPMzc3FipTPFgHXz1wdvJLlG4uhN4oCjGnzDU2JO3CsE8gRWHuvt4Yj1PaBUmBdi4Tvjl6ai/uoNsTKO8sTlVyamX6oaK1wAEhV7uVbRP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=E/ZeNWO4; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-39149bccb69so1716475f8f.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 01:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745568454; x=1746173254; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mF78VVS1a3vgPm4/yr7suBZclt6DuZ16jbZS8capHhc=;
        b=E/ZeNWO4NOjvxBEyxrMqorhodK7sD0OA8gGwrzWhSZm+/Eruria3SxiWJoJC1dI8lk
         0qe2/F8iWfyDpJqHMckbEZtd510KWYkbyUhUbS3156V4Z2ZPTyV5OUtcUsVArq731Dkh
         +3fohrEDKlc6iTjK7AsMHPVAi44VjDgPIFQ+bCcGCbtCGlrJz9dgurhjAGYHt2UYTfvM
         VnBcMp52NSfSs4ffnjBfE6n7DFJ5Pf820fh1f5O8G46UBDBqRXl/3AbCqYVjwkZNOqWM
         xFLWhIfGezYoRtQjZi0tbRPWK8MaGYVIVoLESQxGqkMa+ViFlwhYGSiaZA+FAv6EPLYN
         FwQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745568454; x=1746173254;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mF78VVS1a3vgPm4/yr7suBZclt6DuZ16jbZS8capHhc=;
        b=MyYRwdnc/aINlMdVdV7zwTg0L+biwWe3qLLxVDghjT23+YcvkPRRJjXEGv0/OsN+vX
         Zp8sGrdNrCbcV5XlwqBJP0RJVuiW8Q5rh46/NK4wNNNFQyZsXSjNd0LWu/UiPbwpgJOa
         NmSJMtc/wxqLzoL8912OBh4YBwyQERw6ZYdVKAdnRj1F5cpGB1qzn+qYO8CO8+SOYUDQ
         jFi5rsfXV0yBCVqVQ5Es1QAFUnUnguk4HVry2NrQdOAxhsF6WDJ9JsvCKHx2Ff39vrRp
         zyIYgwmrfsAewhrX235xYRHNIBJA80yEqReF4ZttyLmJE64GtocH4kpCNR7T6zyPCFkY
         ZtJg==
X-Forwarded-Encrypted: i=1; AJvYcCU53EDlKOkyFOKDXAx6HPYukKIWgfMMRlOXidXDXNLk5qMlXp5KdQoFXU7TnfXc+jvnr2MZk262CABR@vger.kernel.org
X-Gm-Message-State: AOJu0YyRxC9q0pdjBqEF9jUMcfl//SBRZikqRXKChDZk9XqGLwPfWuqt
	GJIaZd2U09q5hm5clWQCYHVGudbsbBIoY17PMjg9DTcMSxi44Q7xCuz5nk+BNPM=
X-Gm-Gg: ASbGnctqQ/VcJymrHU9Dsd+0YVxPa0Z2xEEL1oIHVpF1ATOi1z7y97apVTbZpBoxAX1
	jZ+O/h+j2E9wRad6Xc59AMuNHZeiYmZ1Xs7uvQh9CQ2ha0YKaVCVMwxzg99nPL7LhtYVNB8nYm0
	A38ofGlN1Gh9krudDmIYOI52ZQrRdifavWRVNS3wAzqqxHpquZRcx3mRKRfCUSORT57HUB/Z6aQ
	AQtRb0uwaPOya88xMwEh0s69XWkoMnCT04vss6xF7NRRUkJc0OhEcUe1rOahuJ5+UKJnkIDkZf6
	qjRn/yKvfJNdfIGRe4+Y4vs5QnMLCw67uY/p2eknNWHE5vsInhM8DtVwmzG2Bs6Z0emfZwqRmRJ
	polBHArV5ajbboN6GU3x6Gq0NK42269aKvFpReFE311e1wP1AvujOqZH9
X-Google-Smtp-Source: AGHT+IFVDfaMfuOXmMfOCltuXID8xfqxstRaUVHZiIEzVJ71LDPZOd47+6G3giv9YW3kXwRnEPBUTA==
X-Received: by 2002:a05:6000:1848:b0:39c:30c9:815 with SMTP id ffacd0b85a97d-3a074e1e7b5mr964843f8f.21.1745568453788;
        Fri, 25 Apr 2025 01:07:33 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e461casm1593513f8f.74.2025.04.25.01.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 01:07:33 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 25 Apr 2025 10:07:26 +0200
Subject: [PATCH v3 2/5] ASoC: qcom: sm8250: set card driver name from match
 data
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fp5-dp-sound-v3-2-7cb45180091b@fairphone.com>
References: <20250425-fp5-dp-sound-v3-0-7cb45180091b@fairphone.com>
In-Reply-To: <20250425-fp5-dp-sound-v3-0-7cb45180091b@fairphone.com>
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
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2

Sound machine drivers for Qualcomm SoCs can be reused across multiple
SoCs. But user space ALSA UCM files depend on the card driver name which
should be set per board/SoC.

Allow such customization by using driver match data as sound card driver
name.

Also while we're already touching these lines, sort the compatibles
alphabetically.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 sound/soc/qcom/sm8250.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index b70b2a5031dfbf69024666f8a1049c263efcde0a..e920b413b762c803cfcc4049f35deba828275478 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -16,7 +16,6 @@
 #include "usb_offload_utils.h"
 #include "sdw.h"
 
-#define DRIVER_NAME		"sm8250"
 #define MI2S_BCLK_RATE		1536000
 
 struct sm8250_snd_data {
@@ -200,15 +199,15 @@ static int sm8250_platform_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	card->driver_name = DRIVER_NAME;
+	card->driver_name = of_device_get_match_data(dev);
 	sm8250_add_be_ops(card);
 	return devm_snd_soc_register_card(dev, card);
 }
 
 static const struct of_device_id snd_sm8250_dt_match[] = {
-	{.compatible = "qcom,sm8250-sndcard"},
-	{.compatible = "qcom,qrb4210-rb2-sndcard"},
-	{.compatible = "qcom,qrb5165-rb5-sndcard"},
+	{ .compatible = "qcom,qrb4210-rb2-sndcard", .data = "sm8250" },
+	{ .compatible = "qcom,qrb5165-rb5-sndcard", .data = "sm8250" },
+	{ .compatible = "qcom,sm8250-sndcard", .data = "sm8250" },
 	{}
 };
 

-- 
2.49.0


