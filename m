Return-Path: <devicetree+bounces-172619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A5AAA5B3F
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 08:50:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3EC504C4C3F
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 06:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56BED27817A;
	Thu,  1 May 2025 06:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="NkvQCWE6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7A6426D4C9
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 06:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746082162; cv=none; b=u0MxsHyopqocZxbmdywbGI+v0VG2rVwVh2gkBBgYf4Ovdgqba2bhXaCDyU2ThG2ottAeXcMOkVyU/EtciehgBcz+qU9K1gAr+iiT3UTbnClLRjLUkHNobc4yigClWmfHuvwUCJmE4Stdjnlhhqe36qFwKQ/ws6B5/MzDWfJpmws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746082162; c=relaxed/simple;
	bh=j6c00ET8Nxx+FPWVkkikQOyolQ/2oogumLYl1rwobr8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PXl4hxsEdOMst6pNf5Eeqd42DJj/zurq9d9z9wNUu5TnUgjaubkcz+1bevcYUkSEWA/KRz8GxkSrnP2HcIJSOgQOO/4LtHRlCTvdbQD5K9M18v/jHSHVfeHB4EMK6DwkVSOVaSCskSP/6TKzTNUqb12F9ktCjmooIODl/FGmgeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=NkvQCWE6; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ace94273f0dso128676966b.3
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 23:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1746082157; x=1746686957; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4lUWQcPoDjPlS4TbnEJ+VKcF2YrS6UcuvK/GRv4EP14=;
        b=NkvQCWE6QdxGUOdyFCgTLho63TOEuRrokB/EvKZ1f5PyPzP08LKxXq98axHw/ek58U
         e47GM/mvup5I4yG9owU1t2oOBJcYWXJ/MfMTu5RgQhO4Jvtc7MS5WRwAxnRU0egNAAsj
         4b68VnNC/rtgSWl3JyIu+1ZT6BoxDVhP8Z49xIu9PJDaffBuwh8LfP6ODkIG8FZ5rQe9
         8Cjo/IqoOnh6hgxyFPNGm2mCMFPoo+Oqdunvxe6qWdwKTwRZa8YY2VtQ9kCg6Wfa70z2
         awqrZUm4gHGTCcQFrlMFJOOLOTlRo+y4JwMALOTlmLQFmDdrOVx4rQViBI/TgKRgfj6Q
         pJWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746082157; x=1746686957;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4lUWQcPoDjPlS4TbnEJ+VKcF2YrS6UcuvK/GRv4EP14=;
        b=EIeOPkXJkd/55KhaaRK9PdMvl/FboPG0zIZFslX2isPK1TLeMQ0YGIxJO5OsunAidO
         ACiIRn1u7K5W10Al9UPs5mA+9n04S5mkjEib7zJiCD/8nJf1CuCnGW5gxBYrBHFxcrym
         eVsddJAjEmCNwafrnBegkOrunAnYnRfsFkd6lHezXZP2HYme74+c8sCkPY6/ri4x3LOj
         OR2/RAOoG6o8RV9ryllKeaqnB5JShemQO41rozxbCor+SOgg9Kgsnue3FXt07df332Xn
         ahT9upcZVeZiz6EMJbAmKJ8co65Fe5ZVkndNZxNNaeXV/4Jg22ie2+BR18pER3oeivHs
         8Few==
X-Forwarded-Encrypted: i=1; AJvYcCXu7yFsZb+++ffCXQgYAdVVw7nu4yF0lByw7rbqilsI4WSvtzitoQNVRIxSWkAvZS6U8xl9tBoIL/6P@vger.kernel.org
X-Gm-Message-State: AOJu0YyA6rk9sWhpv0ZvK7EG67UyoxJgWiODgOzU+mdOnJBALxdnLP8N
	GJPsanF6+loASGplPKlOZI+RaR+vEgsgmWKMSA99urxd7fEctl2ieHMDiyItsgA=
X-Gm-Gg: ASbGnct3NeFhFA63d0munY5H+3ffMSs3SuzlbXnD15IxOwRz8RAdeDgEGtj8H5k7utA
	aB0cNVQTP/B/0aSGqrJfof04eYY/p08KEnYzkKG/mxi27yZuSVdDXBPtyQQ2pMMypuhcBjSv0ZZ
	O1MO1AL9IwhIX20Mb0nDlEM4Zt0o5kt+mTZcPGFnEnR5BkHNdxjyf2M/3Jm/N8Rfh0K2ZzqPqlb
	oROJjApVNt7N6SGO9Ol52y5oJLF4fUoeSOBWCNTbNRiJ3QgdQ1eqckcoqusIxfcGr6rXl1kImft
	uCf1vP5vDOL+fOzsUvzgQKWxpy6+GHf2UMDYvc5CINmyOjfv5Bx/JOBEw0GHofKq16FDWU8E+yU
	2mdM=
X-Google-Smtp-Source: AGHT+IG63RNYN4HNO9Ko5hFY2UpicLAgom7xY0lbRX66pdh+OA4P68D6+HAwzHg7Vtk5TsYdejiLEA==
X-Received: by 2002:a17:907:d0a:b0:ace:6a10:6bf with SMTP id a640c23a62f3a-acefbfa083cmr147786366b.44.1746082156726;
        Wed, 30 Apr 2025 23:49:16 -0700 (PDT)
Received: from [100.64.0.4] (31-151-138-250.dynamic.upc.nl. [31.151.138.250])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ecf8cc1sm1005486066b.89.2025.04.30.23.49.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 23:49:16 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 01 May 2025 08:48:49 +0200
Subject: [PATCH v2 3/5] ASoC: qcom: sm8250: Add Fairphone 4 soundcard
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250501-fp4-usb-audio-offload-v2-3-30f4596281cd@fairphone.com>
References: <20250501-fp4-usb-audio-offload-v2-0-30f4596281cd@fairphone.com>
In-Reply-To: <20250501-fp4-usb-audio-offload-v2-0-30f4596281cd@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>, 
 Srinivas Kandagatla <srini@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2

Add a compatible for the SM7225-based Fairphone 4 which can use this
machine driver.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 sound/soc/qcom/sm8250.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index 43c93e24d77259f232062c7e4182a39151111c59..0025c8957abddf54d0aab6eb68acc79f031917f9 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -208,6 +208,7 @@ static int sm8250_platform_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id snd_sm8250_dt_match[] = {
+	{ .compatible = "fairphone,fp4-sndcard", .data = "sm7225" },
 	{ .compatible = "fairphone,fp5-sndcard", .data = "qcm6490" },
 	{ .compatible = "qcom,qrb4210-rb2-sndcard", .data = "sm8250" },
 	{ .compatible = "qcom,qrb5165-rb5-sndcard", .data = "sm8250" },

-- 
2.49.0


