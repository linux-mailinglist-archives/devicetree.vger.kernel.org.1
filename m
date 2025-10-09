Return-Path: <devicetree+bounces-225038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D5EBC9BF4
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 17:25:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ADC884EFC13
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 15:25:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 826E91EF09B;
	Thu,  9 Oct 2025 15:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fEh42Sh4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341681E492D
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 15:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760023510; cv=none; b=iJH1BhHCjDWVFv7QSCi/Fvi1n1RAiPIhjuxKccI5p2CJZC5lo7ulnpC6DuzM8z5jtnmDuigJ6fYvntmnW/tHM8niRI+qblIrE8ixs6PB/JhA2oTnTioPuvZISw2BnoG69P1V2NScuhFHaa4W21gxDGFcRGPqg4WPiTh1N5NUpog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760023510; c=relaxed/simple;
	bh=81jybtZ3s587CJJH0yCGA5kZLJlEWI3joc5fyisw8bc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FGzMUOSuRga4zY9q14vQT9jVr8+CwwXFUGTFLWvme246zt4sQO5tydOyKsxemZZmrH0aDb3I9Sxo53E5u+UT979TURqyfM/RWPVCCfHcBFNlP5rkP36Mf3Dhd5u4KtFshMtn+KlUoNIjHGdBR1C5YOaMxDtAcq6rzMLD5Xy/y4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fEh42Sh4; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b3f5e0e2bf7so188043966b.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 08:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760023505; x=1760628305; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B84jNTg7Yo8n7BGFGvQ15A/U09IRq0iw+ObZ/DfjbTI=;
        b=fEh42Sh4ZTts64I9k2hI4wxmvYV/aV2JAlYlunGkCTwvM9L1hUhnv7+dYxSRe4YS53
         pj3QAapZrKEXQIPUuCZ7bvfbr8HT51lpgDtkdd1CHWkhq42Zf9WMzdoyfB6CLtUSZsiF
         6fuIHhLr8YETYNth6R6Cavjvxz8YKrQzoab2cxpXsHMucxSKzQpQTxcXzYbe5ZtyMtCO
         kZ/xcXEO6gwJQvsPKdR7MBbcT7oXMCELC5KXR/POQ/v6+wquLb0Mxe+yPQ4eRXXkIh+n
         +EgGyx4mL9FB3Gf6b/MZCemuqlIPSMSHcetaEhukHJcexbl4dH5KJDvNDZSbTPY+Yicx
         cFCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760023505; x=1760628305;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B84jNTg7Yo8n7BGFGvQ15A/U09IRq0iw+ObZ/DfjbTI=;
        b=rtZBLTp9AkjhVbxrseMiHOPhW41GZYrmAY+3d3aZhKUPO1XXu1QaXNCV+MzZu+UBgs
         JU3TRvkGt28mJrHnK9/zlCgmU5jWG9K/ngC3xA9ERb9/FDJJ/rUbZxBjurCbcRZqEjey
         wbyNMI9Azibv4FGFQhcoKlgkN448pHD8Tj7FZcAj6jFCj9wWfTn3j/34Nuv3s0WJab6j
         vW/LSwKadhsn2f+jg10o/cdj5i7GelmmyyJunAxkCdUjfC0bBSBKf+72R20pGRXJGVW+
         QmvQ0QqwxMxxdPVctXY9dpT5GzM2VSf925FPA25+hEcFU7EsdmptncXBcOCdSJPHkWne
         TzAg==
X-Forwarded-Encrypted: i=1; AJvYcCXek6TqSF47PAFNKWUvtrIi23njRRBJbxocnMc4uoYMetWvZaFktO1a7RLOAqWOInUw4qgl7HegDlsA@vger.kernel.org
X-Gm-Message-State: AOJu0YyVS9017EJJjuJ7sjyOO9Tu+7TWe04wxfT+xqZ4gRxoBQasvXZl
	aTeq7R/VBq/mEwM+fOyOyhCrjks5iifCfgNy3UD7Frvsg5pRY1ZBvmCtWxtuCvgCXnA=
X-Gm-Gg: ASbGncuyxxYjScy7XQJIQ8XduoRd0NKz5oAYKS64FU5Vb9PyCGSjLlb8mS9OZb8BnPb
	pkjHfeRi75WnxKIUzeIPGbrHV/Ilz8yPyKiSJdDtDthlJ2r0X3NNCBLWSpUOsw6wgmVt1I6IN2o
	6vSIe9j/ku4bzYIphFl+tIqWJBu5So1VJXQhQugu6WHiCOeWY6nySdrc0Hhkeye+46ulHbOSFE/
	JsfcBnS9oOY0lE2kxOW+Os3McdGp7aw1oGHghfKn31u6w9jIUP/MBiCBix8K7nmBoNDFbEoDqk0
	JQpxtB+4iQay9eigBYR9cYz6EsefMPjjFwItqLrJ+vzepozLrA39kylcP5Nyr6jAe16soHj9HqG
	0+Gcq+IgsAQAxEB609adfJpkZAog/9HuQtpFoQ1mBHmzshcHqfbXJDpPY+QwXv3oC8TwXkOapv1
	jruMRdau12o1BMeiZA/b6DmuCp5R03XL789wQbLEO+
X-Google-Smtp-Source: AGHT+IG4E2/BkqY+k6KCaob1FvNFhboNdxx7lEaSwbr4nblUCdc4u24xC8dmKvD/tTwPIY9VM74oUA==
X-Received: by 2002:a17:907:6d19:b0:b45:60ad:daff with SMTP id a640c23a62f3a-b50aa99e0f1mr827465866b.28.1760023505329;
        Thu, 09 Oct 2025 08:25:05 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970b36fsm1908967566b.62.2025.10.09.08.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 08:25:04 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 09 Oct 2025 16:25:03 +0100
Subject: [PATCH v2 01/10] dt-bindings: power: samsung: add google,gs101-pd
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251009-gs101-pd-v2-1-3f4a6db2af39@linaro.org>
References: <20251009-gs101-pd-v2-0-3f4a6db2af39@linaro.org>
In-Reply-To: <20251009-gs101-pd-v2-0-3f4a6db2af39@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Add support for the Google gs101 version of the Exynos power domains. A
new compatible is needed because register fields have changed.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/power/pd-samsung.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/pd-samsung.yaml b/Documentation/devicetree/bindings/power/pd-samsung.yaml
index 9c2c51133457112ca0098c043e123f0a02fa1291..c35c9cb0115d79e5c36142da2c2a5dd30cd2ad47 100644
--- a/Documentation/devicetree/bindings/power/pd-samsung.yaml
+++ b/Documentation/devicetree/bindings/power/pd-samsung.yaml
@@ -19,6 +19,7 @@ allOf:
 properties:
   compatible:
     enum:
+      - google,gs101-pd
       - samsung,exynos4210-pd
       - samsung,exynos5433-pd
 

-- 
2.51.0.710.ga91ca5db03-goog


