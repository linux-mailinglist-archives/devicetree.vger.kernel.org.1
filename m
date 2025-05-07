Return-Path: <devicetree+bounces-174575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 776C2AAD9D9
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 10:15:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55EE03BB922
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 08:09:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47A5022A4F1;
	Wed,  7 May 2025 08:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="ko17DMo6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84894226CF6
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 08:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746604934; cv=none; b=mi+1749kO+Yh0ETDUrJzG6vGJcpVXcwrib2ZqG1O/agSkIYR1RFaTuZhFVHJ28KrTo92mrgV3afzwrV3BZL9ny0ZTH7vlOY8gC3CnBMGKjTunf8MHk+GV4xxN7uIzVBhgEOMi4+6p7JJ/rXwt/zM1zOfVMS1RVz/B6A8wcfwDAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746604934; c=relaxed/simple;
	bh=uXV98Zrpl4il+ECjXyEhMPhF7ON9sgsXksffGaRdVHA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uYmYZqYQK5q/m1nLPERxMMCMIcjscI5NsMS6oP8qiq8PE3cZaIFhV1+YlRa9586A1EBnyXpE2y8uxrjOC8LVWnSWtSTilAGtHvGIc62HN9Mi5jv0hQ5azJ42aopFCZFD1A84/SLtqI21ldvMwfb3mjbit1o8KrZWrJJuX0tayPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=ko17DMo6; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-acb5ec407b1so1166965566b.1
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 01:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1746604928; x=1747209728; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JdSfmOpjUf+n+Gt/wFek20I3+645i1PcH5llUxC+XYk=;
        b=ko17DMo6O+JSSVkFQO3Q0E+eIKhkfFGP/URYLW+dNHcqLVoH291C4djxftBeDjWJmj
         A8/5L7gZc6r/6/P5zYwjUAAf1TVd1TdRpHgXKt15I9stZ1X0wKYNkm8nXHVdC7ONDZ3Y
         zFpHFAG04ZIH52lEeK+iF2AnN6GuFPBv+xoRve+62/iLuZqNDvJwySGD/PumPWCSqFPA
         M6A8K6jhseTDOJn80AQhE9yvjnuDOSk6VtpU3ebQjirBjMq/CztibZTAmjWovWBoXdxs
         FPaQvWmPrarAHALQAYaVNlD7IPGRKoj9zkdErp/j1l0zZlOiqmZXYH0GhfcE2LNp1hfX
         AsxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746604928; x=1747209728;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JdSfmOpjUf+n+Gt/wFek20I3+645i1PcH5llUxC+XYk=;
        b=MMRQJ2aJLzY/5CKffE10uqDsK9WKwm2mFoxjqOsG70/72RFg3oz1GsAwDeYpQEKjJ5
         98TBfVSHdP5n2dOYefdQI9qERFcFOaWvHmGOxLcic7N3sU78k52+F1R4gKsOeHWcgCos
         ejwm1WON3dNcnrI5BiBBl76ztrLtnXXEnX31vHEAD6IkBphCHVU+S2SJ67uPXtNogiZ7
         GxgHswNczGSU2TZLYVSAZLqJd3ZeNPj1vSIROUNeVfg5PFnIubUY23venczC1UKXF5+K
         oNrHn0t3m3+Wz+OmfdsjECDbTwgntf04ls4tRkD+x7X3v1F9MIOrez2JkUj1muTW8/Xn
         gJKw==
X-Forwarded-Encrypted: i=1; AJvYcCUvu8jiViN1uYY5GDXtfsnJ7+VR3a7gGSGlktzfM0u8NREtYK3CUzQlXKSmgaFxkI+vfqUPkJS5UcrP@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3dR1M5CGcg3ESauthaaoHQSEEflip1Q0SQSkIuDmS7CR1lDRQ
	NGihgVbTkji9BVbpoEEsy586eavTd6SdgyI79Ir64XYs+R9LhSZLTGBspRaByA8=
X-Gm-Gg: ASbGncvgHieNGm1ogHyZQ1s4/SKeG0XMLG8L6MvhSlPZD51lBAihU/qwEF3On/ZNmNW
	ye6GAlxjdeHBoCcMgA+5n7d0lIYFp6YsReAOE+C+aZOejDDguIqG5B3xBP2qTI5RjDz57moGniU
	bi4A7Itfew2jTwio+N1aCBG2WZOrXSOBDsZ10jsetdF0k9qlWmqzdLQlnKkuV/klWI8fc98+xvE
	uTnu9tVvsaHqLWvrrwsF0QETFQhR0s2zDKKQe96sJYIHcKiyH38UkSGwTQdI81JCB/hUH26DVjy
	8WtRY9DLp32mKfBRJL2UwZBBk8JTkQLZmhCfWhRcJkzUDDIK+WsnSXteRHFEJJT+wtm9XpqowEt
	vaD/arndkOAdzIw==
X-Google-Smtp-Source: AGHT+IGAPRmQLx7xnwBq815f2zYCjZM2sBf1I1fFBdjt+vGkM/lX/FAon8S0MIUZj4B3CeheWCktWg==
X-Received: by 2002:a17:907:6e94:b0:acb:5f9a:7303 with SMTP id a640c23a62f3a-ad1e8c93689mr249348866b.35.1746604928202;
        Wed, 07 May 2025 01:02:08 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1894c0310sm855236066b.88.2025.05.07.01.02.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 01:02:07 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 07 May 2025 10:01:40 +0200
Subject: [PATCH v4 4/5] ASoC: qcom: sm8250: Add Fairphone 5 soundcard
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250507-fp5-dp-sound-v4-4-4098e918a29e@fairphone.com>
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
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2

Add a compatible for the QCM6490-based Fairphone 5 which can use this
machine driver.

As a note, QCM6490 RB3 board is using audioreach architecture while
Fairphone 5 uses pre-audioreach.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 sound/soc/qcom/sm8250.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index 2317fe285ee7d41689d7fac453164fbe706744ff..69c514fad0b1babafae4b61bb5ac944c6b4906dd 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -208,6 +208,7 @@ static int sm8250_platform_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id snd_sm8250_dt_match[] = {
+	{ .compatible = "fairphone,fp5-sndcard", .data = "qcm6490" },
 	{ .compatible = "qcom,qrb4210-rb2-sndcard", .data = "sm4250" },
 	{ .compatible = "qcom,qrb5165-rb5-sndcard", .data = "sm8250" },
 	{ .compatible = "qcom,sm8250-sndcard", .data = "sm8250" },

-- 
2.49.0


