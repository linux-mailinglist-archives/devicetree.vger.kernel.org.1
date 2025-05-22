Return-Path: <devicetree+bounces-179676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C2DAC1258
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 19:41:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D34B31BC84BC
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 17:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD8CA28C030;
	Thu, 22 May 2025 17:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xuClYz/F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426CB192B8C
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 17:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747935662; cv=none; b=KNR5yEtBuNXL3u2jsqhSQEO1Ta22xiryEvkh/Z6c4fwiBeE9k0I2UHs0mZ8t9A57qtEyS+ip/hVrumn4138ZAGp+/SrrFLHN8JTx3kjfl3GjDyTKAoh01SuRdMz1XdhZnfad6kHJbfWRhkRDg9d9nTXyGUQzvOeizHyH/QG1I5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747935662; c=relaxed/simple;
	bh=BTGlPNBUqufLWTLKvpNxjSK3+Nvn4+q+dEmnWIZc2m0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hNZaX/auc9eLQXjUJGFXLcpC36QQcFjaCfwNWByHPnQGdNxs4tfQObxRdI6pLm/oF6mWtlqi9mmfWyAUv+cIbMGr37cOxLUenW0BkZt7JLXGSiwGXEKXwxpmJNZEgUYTAQ7qfunj20IzyaXaYze7FsbNoD60UxdLjfvXADWv6MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xuClYz/F; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-442ccf0e1b3so103463525e9.3
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 10:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747935656; x=1748540456; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QLQ39SsLjmpmIAzQnJOz4snESZPOPzY3BiAe6iDYGQ0=;
        b=xuClYz/FNAcR1XBd9lrteBSgwu079CrWakSSFOvN+AGBTh2bDUnfa3e37KFsfYqzmU
         Go8qmzJzm0dAbHptyDJ1NQF81Nk4oWWedSFUucy6ccFHPjwnrASDProjJhK8nhpPPqSJ
         y6BzFUWEVMHyq15AK25wwqr04K1j1nnAjTerHmpKilzO/T2462exJrY9QDT+/vV1nUPZ
         9H1Ig0hh7fuvIJD9Wk5/FSqY6z3RBIAJ3FoQHGuV0QmXPqw5xs9tlJshZPC93MuZFTW5
         wBU5GCzbab7hDhR+xAgMEBLo+cDamjHIOEYBHr95fnED1S3MttbHCeVZcBhOnqQlPohh
         LFKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747935656; x=1748540456;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QLQ39SsLjmpmIAzQnJOz4snESZPOPzY3BiAe6iDYGQ0=;
        b=Tj/9G30Rl8/K98Lek6QEwU89BEu84MNvZ5zHhqcI24eFnUBt4k86CUffu4rs88oElH
         c7x+ulGYhWCu04B4jBxx4K0whzot4sg5To+ijhO1SAOdJ564tbHhkcBrLWonP7S00yeB
         4OKqjdvHrGDXP6vyfbjE5msdowBVVtgsAIdRT13u5i2S/2svbbSr1ETzHh0b72C9PDu/
         1r0hrZzdLqzpwrc4YJ32dVAHg2wvjC2ZpbXTpS8Y4IbEpAmZLMVBXEL5pkGfHks4H0Kl
         47uoH5qV558Kt8E2S5/RMbf70b0Y2EotN8W9vNDhEGIcltqyHtHGIULuGgJHPizmWjT2
         3H8A==
X-Forwarded-Encrypted: i=1; AJvYcCWoneyxqCJ/pzZRf2GmLvXIjvz3G1dS828aOeXlXJj7Rs2GdpVkOyJJ9Uwa62w2K/nON6cylE9eGAf1@vger.kernel.org
X-Gm-Message-State: AOJu0YyVobZCv72ma+AXNJejvfLZ7Ms66vY970+Li4n0wFB9zclD6qw6
	imzZDw4+3bzZsRDk9UwUEK9ooggr5r34smHM+Wbj28gprxnIBb5dkXbXc9lp3h459nY=
X-Gm-Gg: ASbGncv26+3zBRZAQEsJIYO18Aio3/0rpkC6MrDrJ56YugvSR/miKRTCYLP0MmTZ80D
	QPcbou0u3O7ej/sNT7QptXwceiTR3CAVgEvi/ijdLXJYnpHbZJeAesGIYf08dF4RLvU0u4YgrvI
	3CUhEEYR6ojVzQQDq1lB4gSsEgMA4x5k4Xzsj1LcvXd6/gk1ARUOLuaKronjY3+RLempYSdKs4c
	nVmGGjxA3EeJdq6aGXY3Y8zcmuWY31P7oJ/ajfj/vaSaJMo44wlINRAqIvVE4Hjm5BARC+bvEX8
	kDK0WFjcJskyAmJHPqZSFYyi3hM5vCaJBmvn8LM7FY6wdnXekdIVveVBQwOKDgUH0h7o1A==
X-Google-Smtp-Source: AGHT+IEBbmBeEZeBEDTgs2S0bIt/X0hdjEoD/gWNab7fsmjGtWFgCjNCvRyckETck0ijr3VIY19D5w==
X-Received: by 2002:a05:600d:c:b0:442:ff8e:11ac with SMTP id 5b1f17b1804b1-442ff8e1221mr214812715e9.12.1747935656418;
        Thu, 22 May 2025 10:40:56 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7213:c700:6c33:c245:91e5:a9f4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f7bae847sm109563195e9.36.2025.05.22.10.40.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 10:40:55 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Thu, 22 May 2025 18:40:52 +0100
Subject: [PATCH v3 02/12] dt-bindings: arm: qcom-soc: ignore "wsa" from
 being selected as SoC component
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-rb2_audio_v3-v3-2-9eeb08cab9dc@linaro.org>
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
In-Reply-To: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, Mark Brown <broonie@kernel.org>, 
 linux-sound@vger.kernel.org
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
X-Mailer: b4 0.14.2

The pattern matching incorrectly selects "wsa" because of "sa" substring
and evaluates it as a SoC component or block.

Wsa88xx are family of amplifiers and should not be evaluated here.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom-soc.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom-soc.yaml b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
index a77d68dcad4e52e4fee43729ac8dc1caf957262e..99521813a04ca416fe90454a811c4a13143efce3 100644
--- a/Documentation/devicetree/bindings/arm/qcom-soc.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
@@ -23,7 +23,7 @@ description: |
 select:
   properties:
     compatible:
-      pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|sm|x1[ep])[0-9]+.*$"
+      pattern: "^qcom,(?!.*wsa)(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|smx1[ep])[0-9]+.*$"
   required:
     - compatible
 

-- 
2.47.2


