Return-Path: <devicetree+bounces-180513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D21AC3E1B
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 12:51:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A7F1B189814A
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 10:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 587881FDA9B;
	Mon, 26 May 2025 10:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FrFKl1rp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3CF1FBEB3
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 10:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748256613; cv=none; b=pH43hq1j8Ge2WJfEuSqW3DsXYE9Hc+jS/2YekMdwFu3TE6k+XrrefPRVuEBdKP0INtnC2ad1hAiMIrKXgTmW63Lm9deBrLgCqoZcTA910UzVikYrkkYnTvDFyuazqJ2vg0znErQ/yk1LyAIusYT0b+yKB9KeDWoWjq8o2x3UjNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748256613; c=relaxed/simple;
	bh=ZrdzTcfjUGSR0yWCXEjXZS0NUv9q8i0Hdkr7tuUh74g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gFZotdnuTzoFT5LB9ukYh/yhhYzsCvAvHbiHA2KUeHyhBQHQFL7w63He6BrG26bx1Af0MPsRBEVa2W41K3iY44EL20MUIR8KnVk1mZjhQZxCkfcnCTj5UKHZXazHIerdb1QZBblW2bbssTjJKB3DF4l4P7buM+vrtwvoQF75OgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FrFKl1rp; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3a4cfa5c8ddso340102f8f.0
        for <devicetree@vger.kernel.org>; Mon, 26 May 2025 03:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748256610; x=1748861410; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UVQ9CzZhsmaSNU4Qn5Q0sFWe1e8bN4jvT/YOnDNAKJI=;
        b=FrFKl1rpkeegaeITaVWPs/hoWaMxxZBm46My6D4c0X+v2ejkKel2bRZoJVPl0DNLIM
         idwXZfdx8XIc6nEqwDCzVfFCEQjK53gl6rlNJJe7uHQCoqpVHcVQV8O87vFPosMcO+gN
         70wX6e2jNH2GH8lyRKPYJwQ3uUU/x4xIPMH5EpqP8dMnsfJ9xKPRDJp1nM+S048uS3eK
         dCRIDVHbO5twQNd7php48c73xADn9UypZY8ifMsxZa0GJ+4aaMANPpOKasEywrAN1ogk
         nh204lOBaGRBEb1Gy/u4wVhFn7vCtRcPrsnSYgj431F0Gii2Sux5FP4qXGuFcd1FuS6y
         jjGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748256610; x=1748861410;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UVQ9CzZhsmaSNU4Qn5Q0sFWe1e8bN4jvT/YOnDNAKJI=;
        b=c+01/SxrZDBuSEZJJ/+arVsvlyB7Mq8cUlvEwgttdY1hnygfvBLTuHxRWEWkDTuIrj
         n5+/7hAhiCMULpvVzaOtuCYbM3do1bLLjNVLtsBcAqUpkuG/URXNnEGiWNlzFEIlxk6f
         cp2HC5hL97srW0MJ571Cv+BYJ7EjqnaucP1Hnh67OvZgt3atq7lytBhG7BJvQyBFFU/p
         hgjHhSYvt3NM4Zbg/vXR5c9n+acn0yuHKdBQmLqZCn69swiYR2DiHbHn+KfCbLfiL7NG
         41JZ5BcRJGb+gR/OPshbjCCJ2P8R0NYh4X9l28ZxjR2tv3ondF/pq2zWbWNWwPWjyggJ
         ugIQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8XddmBNSUJQuH+FPGTJ4+EZX379Ml2XoILjTZxeVQNdkB8oEavRM/G4Eaexk4jSa0Dy60v86Q5W9T@vger.kernel.org
X-Gm-Message-State: AOJu0YzXNUGtDcCxG4/rvq0lmzu0aL5GlY58SL0mMP6++MF/bm9BtB8j
	a4qX5lZLip2IkjgbKmENRrY1xa+z7g0JvuWJiqqJ9I9pKAY/j8j2LZHypBVPWNLslfA=
X-Gm-Gg: ASbGncsxDOZyqiY6Wt+EES3fYd0nLJctlSPD3rWMejbvqfpLxC3mpC1mQJNRohykRQx
	EgsvgaZ5DV5/vND2BRWEKweBl1doTGFV9oB7o+xXhVKlhXgXgQupWOLGXYVyUqsbAAl37V5Xk3q
	e+bLNG6hTZlh2dXC8d1982hPmzBlYS+FtWHPoZV2v+QFIqjOpYiSqviNoNtlOzuY3UTzvtDRP+2
	ZseqWGX+ucNfCOcsyaEczc6aMyPvFwrSC7/p1GqJEmoTrc3veeWGVj6KUWlLEZ9vXcPvcZEZPIk
	3TlzNRm/A/GlXBcG2xCI2b+VElV6F5YXLPdQ7GNZPteoalartmYH5C/qKkI/7L6Jxabo9BM=
X-Google-Smtp-Source: AGHT+IHOsZcTI7UEfdgo1fLZAipybkP0owKVRNTuB1jpnww6CtR037zAeuvHuyQO/estCgAm7u+9Xg==
X-Received: by 2002:a05:600c:1c24:b0:439:9ec5:dfa with SMTP id 5b1f17b1804b1-44c938cb1e6mr28426795e9.7.1748256609774;
        Mon, 26 May 2025 03:50:09 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f73d4b68sm236337215e9.23.2025.05.26.03.50.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 May 2025 03:50:09 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 26 May 2025 12:49:53 +0200
Subject: [PATCH 4/6] ASoC: codecs: wcd939x: Simplify return from
 devm_gpiod_get() error
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250526-b4-asoc-wcd9395-vdd-px-v1-4-64d3cb60313b@linaro.org>
References: <20250526-b4-asoc-wcd9395-vdd-px-v1-0-64d3cb60313b@linaro.org>
In-Reply-To: <20250526-b4-asoc-wcd9395-vdd-px-v1-0-64d3cb60313b@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1073;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=ZrdzTcfjUGSR0yWCXEjXZS0NUv9q8i0Hdkr7tuUh74g=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoNEdVecFPbjX6JYFFxQlwwYCpkVFzD7vXFrX2D
 HYU/bWST+CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaDRHVQAKCRDBN2bmhouD
 17c2D/9gaiXizasSYMwA+a5cJk7IpdYFuqPOoFSZHkcUbGVU5Q8psDMoUkI6yoXlqrytEwgpcbQ
 DFAZT4BFFFZx714wvQ6gatZfyDSP3lDfOA6YJw2fwyIskhqsBMKj2EL20bGu7SNSs9vgGZgcycK
 ZQ5A9OWQMoXAgyQpWwfcWdJed8pWUl6mZv983TIb7Le9Wxz4Me3c3rtNFXysG4JpE2q7P1Qylhi
 WJvdcyzbZTTUlyyCPhwEg/wnSiPViXWA5fjiwyOXhs5u6vQUycaDmjKRyF8Gshh8KpL55tcIrtG
 pVjvunBE6g9BQgv/eArB4u6biW5FlHW0ZWGsbMpdPpLJR5mwVcs0fKZXGItESzz6DE6zpnCUC6p
 MCQ8R3Dw5ZNLpmw0c8tBcSl/s+RXOm/PIfPt8Tve2TLaAF11EkdkeyoM0C/Ukfr3d450aUctTAD
 Ei1t8+9IbXgfLfRtIHd04rVJeohTXBv7odCdMOFzPniYKf7qAJo/s5XlE6GfJR/V33luDW03QM6
 Dex/OAOwzhVjMsuOWE+TdghNegFnMp8dJn9R5jndluYmKe8YrmYFBfHc09kVdSLPUYHAvPcdUO5
 nvItgqB3c2fnOz0/UlqDG8XcGruK35oPgVRP8mZ0lYFeSC8bqorts/av81nordMJE6gNvhVyuq+
 H6y/2MMsedBCGfg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

No need to store devm_gpiod_get() error code in temporary variable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 sound/soc/codecs/wcd939x.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/sound/soc/codecs/wcd939x.c b/sound/soc/codecs/wcd939x.c
index 95cd88a37acb5ef455d4a40948284ae45e2dfb28..9592462f2d6e3067a2ed3339ddd5f676eaf3b5ed 100644
--- a/sound/soc/codecs/wcd939x.c
+++ b/sound/soc/codecs/wcd939x.c
@@ -3241,10 +3241,9 @@ static int wcd939x_populate_dt_data(struct wcd939x_priv *wcd939x, struct device
 	int ret;
 
 	wcd939x->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
-	if (IS_ERR(wcd939x->reset_gpio)) {
-		ret = PTR_ERR(wcd939x->reset_gpio);
-		return dev_err_probe(dev, ret, "Failed to get reset gpio\n");
-	}
+	if (IS_ERR(wcd939x->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(wcd939x->reset_gpio),
+				     "Failed to get reset gpio\n");
 
 	ret = devm_regulator_bulk_get_enable(dev, ARRAY_SIZE(wcd939x_supplies),
 					     wcd939x_supplies);

-- 
2.45.2


