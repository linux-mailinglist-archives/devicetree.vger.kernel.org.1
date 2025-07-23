Return-Path: <devicetree+bounces-199102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AA9B0F4D6
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 16:04:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EB9A18974E8
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 14:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E155B2F3627;
	Wed, 23 Jul 2025 14:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="j/Mx/3+x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36442F2C44
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 14:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753279452; cv=none; b=MUoGiuNDhJCLfdrvzIPFmO58c/HUrsNR1cbRIMUFXk03kA7d/k5hRyQe9mv74BDnHwE/cJajgceYTiaLP1NGU8XIn6F+73ncHVpOyYDzJzER3zZ2adcsSP1xgmeftVu5HwZMaM4Dg0fMiEADnoNA0UrgKSbURYvhsa6ZtJqw6m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753279452; c=relaxed/simple;
	bh=0DEgaxktWtylE9tS47CHiAD37SUMRWPVx+JL0++K0w4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DT8W7zsvNRj7oQqScf2ZMkaL1DNQtq5PTQgsEpj9TC9A94S8y1hrS4PXdOMseGpGHY0FJo5wua/t7189f//3FtAYuuRB3Us2VfIgdKCZyYBmXLxdth3A9blwqIPah0ThXN2aMORDdFjAoQeeEehk/xojz6VEKZEPLAxeY05AxRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=j/Mx/3+x; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ae708b0e83eso1212009266b.2
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 07:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1753279449; x=1753884249; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CBk3e+ZeNvt/w69kQtejS7uDHZHCYnTulCyNIFzv8gY=;
        b=j/Mx/3+xc/XSy5nydHMfiBdlGr7U38LNfvKfdufoxuXRNy5/pvHa/sTcLcN3HU8j3L
         UFdH3pQwEGMDh4e2L0NukJJ/Lym1TSPKzcZnj8pgfyb5YJrPQpNCk/WATy47ebJtVhs3
         K2Ln9tXAXbv3imWTEg4myxpgFAxEoyWbwjobRdRX2xG8aM95TAWkQh3gi4MLNui6PdYz
         LgM7hAPOcZ8ejCyzbCmwtMTcfiwdFHec7BwRCzg8WgKxfZ8LjV16Jwfvd0WHeLvnutXy
         OL4Xw4UXh4z4G7PnsznF06MM2H3ShvFoUCf0N3m2lNUaBoETGYNOWGymixRrI32RhdiL
         fN0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753279449; x=1753884249;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CBk3e+ZeNvt/w69kQtejS7uDHZHCYnTulCyNIFzv8gY=;
        b=Qc/O0NdHQ37UnftWd9Xthj3zn6+aN8OVoNv3tx+YwKbIjUbKX7F9Y78ozcWa/+jfJ/
         YgJWN9Z6D2FmDCBUuk11PRlx0bAWwsPOAODgzRGQqxj+Qer/DQPBJ9dmhR7bogokEKlN
         ZiawC22Znr5IA6yAUXMrGYrL5LIwmpDvHFCbjX+b7IukZ1BcF5uIN0cAxFRJZWjhIlFK
         vcSZge2XotP0UMkp//dIE1fAQHsIQse1vcjd31IzxWu0u3iV/3+uYUiw9ZnuNrOsj/t8
         hO5pz3Or2Zo9f1IyrK0xDcKRMew0qf57Daz8OtfkN0xS+eQx+2Ia2405beSjKT9z+ZMJ
         On6w==
X-Forwarded-Encrypted: i=1; AJvYcCXcZMv4SeA3QVoAn50RB++uu2tY4z3vG4gW/k4hb1aH8n2DV++nSTGjEnSWPLdsvGXdOpaA1WMb/wNp@vger.kernel.org
X-Gm-Message-State: AOJu0YyUcSRngTuFTNsylcIK7K7085DQcIyiIQUk4DhuZZMSknzqiZBi
	tvkOE3QQb8B8fi1p8fQCBWzDznW569LgAMeHDqzui/MyS22EVZMozbM9itt3Izfo/ws=
X-Gm-Gg: ASbGnct2FwzbVGvblUqEKIma0s7MesoEsMymxMVKvpNzFXV8tz2jug5LUPQAJItTZvf
	LI2F0n5Gfld0xQY1H/yHrJwZfmb3KxaNaARtNzMui83gdnRv2kbr3thZjD50zqpgBK4tF/RfAgC
	dl7hbDorFV5FYMYil+IHaaVGsLbCY8pMNO0vAxawO/Bkywlw8raTlYgiSHmL0REo822DGTJU8Tv
	VK7KYSvTig2OD6HoR7cmB26lOgtNLd1tvnxNzrCviTWVg0Ov5FLpe7TE0oqirLCSKb2Q1lwNTK3
	5fvo6kleutwJ5/L7xb6fMzu+yo6Ua7gQm9TEM3BPO5FocBpJbNEfdfYZhugYJVr43f6kv1QKg4l
	N+NT9aoQfpNok86jGiDPkV4QXuLBWg9rf/1q/tQehEUg9y8feKm9yiuX4UAjqjQIAOu5A
X-Google-Smtp-Source: AGHT+IFIf87TC3ZSe5JBmPzIIxrTRzYL4zD8nVpLsuTYwJfJNPVnPKmaSJbEvn9fuMpNBzzUCHRPOw==
X-Received: by 2002:a17:907:3ea6:b0:ae0:be38:64bf with SMTP id a640c23a62f3a-af2f9178962mr309369766b.58.1753279448707;
        Wed, 23 Jul 2025 07:04:08 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6c7d46ffsm1054830466b.42.2025.07.23.07.04.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 07:04:08 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 23 Jul 2025 16:03:40 +0200
Subject: [PATCH v3 3/3] ASoC: qcom: sm8250: Add Fairphone 4 soundcard
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250723-fp4-usb-audio-offload-v3-3-6be84ed4fc39@fairphone.com>
References: <20250723-fp4-usb-audio-offload-v3-0-6be84ed4fc39@fairphone.com>
In-Reply-To: <20250723-fp4-usb-audio-offload-v3-0-6be84ed4fc39@fairphone.com>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753279445; l=935;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=0DEgaxktWtylE9tS47CHiAD37SUMRWPVx+JL0++K0w4=;
 b=hPyNXoVJuPYBMO+z6fAdDJs+EMudff8F0d7QdXv5K9C7/1HEfTM0wMp+5A3PFEbn7KuJ2hALH
 IImnnwDdPE8A7AM4nyhN1JunBzXdF5RT/1FdCq0Vv2juqAMDtAEm055
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add a compatible for the SM7225-based Fairphone 4 which can use this
machine driver.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 sound/soc/qcom/sm8250.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index 69c514fad0b1babafae4b61bb5ac944c6b4906dd..f5b75a06e5bd20e00874f4cd29d1b947ee89d79f 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -208,6 +208,7 @@ static int sm8250_platform_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id snd_sm8250_dt_match[] = {
+	{ .compatible = "fairphone,fp4-sndcard", .data = "sm7225" },
 	{ .compatible = "fairphone,fp5-sndcard", .data = "qcm6490" },
 	{ .compatible = "qcom,qrb4210-rb2-sndcard", .data = "sm4250" },
 	{ .compatible = "qcom,qrb5165-rb5-sndcard", .data = "sm8250" },

-- 
2.50.1


