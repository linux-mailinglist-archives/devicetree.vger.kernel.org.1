Return-Path: <devicetree+bounces-95098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DB695813F
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:44:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E848C1F25090
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 08:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08F2418B479;
	Tue, 20 Aug 2024 08:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yURJ4qOs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0A818A93A
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 08:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724143477; cv=none; b=X1eqimgDpp0ixgQDUS8iQvcylTg+nqfTx7FS6efqWRDo2zrxWNcRfgNeGFt/mx6v9s+R5MgHFQanQCi4Ot+OlgOr0O6USUqNZ7ChIr9QuI16pzCPDzKedpsggRIwYUv5BbPfTBQNTBfcVZ6p4C1Et64DqB1fcdQYMY8870TM314=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724143477; c=relaxed/simple;
	bh=9SgFoF/1U9vbH7ubSz57FgPtXpspU+Yt2V7v1Yq/dEE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OBVIucUk8+t0bXOGIPKAFHUv1QN72QNM2Yd2rSAzMtiXoRiS/xXIk30ckSFoJu0cROgEAtTmWmU+odZBf3xGZiZVdJ+a3X2fj+IsnbUPTW3gceS6u44eF6PrV0Jl3tqtoPxU7FTJqgMeX+IVWlbfx1cddJPeDy3AwOWqiEqto6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yURJ4qOs; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a86412d696cso112693766b.2
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 01:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724143474; x=1724748274; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CZAv/xsYrk1gB+zahz7A647WWXVOBPyHiwh7ndJMS/4=;
        b=yURJ4qOsdGa2LqORq53rH5y6q1dh0gMUXyKP7x2JHdE+peExOWL6a5Q46ohLgzCdLx
         wxa7ETlqkvlTs+LaCPJSJ/TmsdOrYivT47fVmI3J6rulquINj8qUqWSfZwVHdSnYZ5ZT
         BjL2Y2F0LtrU1dMgngio7zNBt81xdjKu2SgPSBCwUP7moeb7pzKDKOIGpQczpyESXejW
         dTiXdArb+A8xCApeCT+JJ8T2STLX98XsUCzbh8HK78qijIe2KDHd88we06feugBzYZEB
         0w7VJLdKg1KkAiakdPXtbYZdVVrT/7M5oX6MIY5/X/oTZ4jOYJti7tqbhko9efOJKJMf
         2RgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724143474; x=1724748274;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CZAv/xsYrk1gB+zahz7A647WWXVOBPyHiwh7ndJMS/4=;
        b=ilBjFswUHkJxIVAG1IEAr8IcWvShPBVnsIMm+TVlvGmO9eMKC3OALnnM3Sb/4IdAFa
         pB+P4UOZN/tLDGC0pyfnN4FornRoyeGil0c+aW7LQ0krzpsDXde5qx5bobmoOBGP6j6l
         YKMj8xxJJl55iYrp9Fty4U+Th1vRD9MXCJHW2ar0jWeboiNiVpl00on80mMzzl2UiUPO
         KIzzU0sJqHbC/rdMw6qgrKRfusUbST5LPhEaH1VUCwEM1gFjgnwvptiLw+b11CPJGnHw
         aQiLDycaD1qvgDJ6LziTJ2RatBzN0nmp5Qx99oOiB/ujH2mVGMI6TSTaLF5DxDRAeCQE
         PlJg==
X-Forwarded-Encrypted: i=1; AJvYcCVYUV1dosPmq9mzl9HWL9RaxYXEKHV74BMWOcw8nCXvGJFfkk6aK6P95T+rckTk8mJGlW5xtJZxHLqV+Ret+2YuLneuC6ha2icLyQ==
X-Gm-Message-State: AOJu0Yyost5Jyzl1WCYb/7BbpARG8MiNnCDpDH0mMG+aQdnaWXdIk+SL
	KlnlCEAQ5xStARtZgGtFpo33RXalQ5+/XrKfwzOJKnBIgMSs1o6iimQOTAC1h4o=
X-Google-Smtp-Source: AGHT+IGetYKO7zYAMQzgfmWfZjaZaw9VLujapZ5ygoHZBFflK17xTgaHWNHoNg6C0PizF7fvCO1F2w==
X-Received: by 2002:a17:907:e64e:b0:a86:41be:1d07 with SMTP id a640c23a62f3a-a8641be1ea1mr184460466b.67.1724143474400;
        Tue, 20 Aug 2024 01:44:34 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8383946973sm728037766b.160.2024.08.20.01.44.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2024 01:44:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 20 Aug 2024 10:44:24 +0200
Subject: [PATCH 1/3] dt-bindings: i2c: nvidia,tegra20-i2c: combine same
 if:then: clauses
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240820-dt-bindings-i2c-nvidia-v1-1-2763e9a9a1b0@linaro.org>
References: <20240820-dt-bindings-i2c-nvidia-v1-0-2763e9a9a1b0@linaro.org>
In-Reply-To: <20240820-dt-bindings-i2c-nvidia-v1-0-2763e9a9a1b0@linaro.org>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1170;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=9SgFoF/1U9vbH7ubSz57FgPtXpspU+Yt2V7v1Yq/dEE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmxFdtbgnyQ2+ahtu21VStBsrU5tivR1nFf0G2t
 cygINgxhKeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsRXbQAKCRDBN2bmhouD
 1ziQEACUwe8v4YHKSlFWsbimV+9ZID77BWIqWknW97lJ51F0356OwFcdgAH0Ip+d5bb8F/zXdK7
 7PD9z7ZALSJ3LH3GAgw/HBWJQQd4Jgoqq7VcMnnEWGKrsGIC3c/19NEz/tRyhZRIFYroOVgXsLk
 8YbRwIiHHjP0ptTW7GCPrBAuRm/vEouTm/Q8J5IAs67rE6XcaWWumqR09iZFpeA3UQQNYeAGx0M
 zOOkFQQEuQalw6Qo/y8rT8XjKN9SFr062mfJ57YwE+RVirinXoBCVt+L5E7vVWRqkCSWU52nMpU
 nzFyCusAehVNA87tV8fN/bmDwPOpy+NBJRrk324Hf4xVb+E9MfqIjM9Mek1tMubekQWO63k/cqe
 G9p8TQoaxCAms231eyw2srdhpRButugWI5vkX+4LQ7CgKaR0OfduJpCoZfn9VAJalCH4efOj6Xw
 E1BRHI9pEZocFA+nHnE7NrYMKPz5KoH1jzfMJOkdeUnjnG5UoeL1cuyvaeJ1yooqYcuSYjeigOA
 pKRpFJj1hFiVKEvs1KUhHlEboq5yB3R6V0c59VpN+0j+KQ3RY6h2QKYNz8s0GUlhq0nwxcwC1cT
 iPzxK6WVziBcyU1nu/UCfT3c9cdprQPlLX0CGTeJW/KfNBhlD0IJnQlLContG07nlpavoNVjU50
 kVoCpDvyCNFAgzQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

"if:then:" block for Tegra114 and Tegra120 I2C controllers has the same
"then" part (same clocks), so combine them.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml       | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml b/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml
index 92fbc1a2671a..5c92ef51287d 100644
--- a/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml
@@ -133,18 +133,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: nvidia,tegra114-i2c
-    then:
-      properties:
-        clock-names:
-          items:
-            - const: div-clk
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            const: nvidia,tegra210-i2c
+            enum:
+              - nvidia,tegra114-i2c
+              - nvidia,tegra210-i2c
     then:
       properties:
         clock-names:

-- 
2.43.0


