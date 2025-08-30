Return-Path: <devicetree+bounces-210760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B4EB3CAFD
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 15:00:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53821582D0F
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 13:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08ECC258EC8;
	Sat, 30 Aug 2025 13:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PupEOCZS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2842A1DE3C7
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 13:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756558838; cv=none; b=sr9VF5REXFF/19px2BUWCUHrfdbxJ9rtD4YwNmGiwrnmkfn5nz2/7aQA/6TY4mRfMLctfALD6T/90kTYXAbR1+8xe47aSLfmpRmO2LWId7SCbDW9ogQhHzp4eMyRHtJbqsXG0+/ruUmk7ZGXspNQ+71rQVZqiv8rwb3/aQvk9Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756558838; c=relaxed/simple;
	bh=yFbXJjlzfsFuZCCgVMCRBEgVOln4MKOWzsk05OwyRFc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kkXo0sBgYMaJQPzgo1VBhUsfZCeH44QGDn8AfRxQNlVtSzownYLhQDaVHypJv1wQn4kGY6vQDuxePzOMFwhy+OrXlFF6t2HzX6qcMCtihv32JXMsO2YX0PUm7GfzX+ZzWlHsK3+Zme4LcFFWBTZg7tGnhNixpBSs3lrgrDgXvVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PupEOCZS; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3ceed75169cso241550f8f.2
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 06:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756558835; x=1757163635; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G0YOj2I/Emxrd9bkiEwP9k7FvjfganDLhXhpwxzAHFQ=;
        b=PupEOCZS0Z6ZnYfJOP5PlC6iAieBBKwQYfcy7JxYn3/24dDBbr9OwzwD+v9ncG5111
         f4+XXNL/X8f8vRMyltxx9BbkyRqwyPx7nIUduYtoUgvOno+maPBZ3RCSr4myvRJwCC7Q
         hBm9uil+BboL29sotIGb2O/xkDqeuJSP0NMc3vrznIuJByEbWZS8aJ9nI2U6Fh+F+YGN
         /Ofc/gkBrOaWetD1FdLqQxz9HJAGJNO/0LFRWvNB4SHztG1cYbJCLybYzwoO1lbBXAVT
         +VvsKmuMCbYnQp1OAcQGXvkI2JjZB4Qcjq8jP3sTCNTEX0tXZoIiFr0nbmXLNrMxj5g1
         CXQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756558835; x=1757163635;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G0YOj2I/Emxrd9bkiEwP9k7FvjfganDLhXhpwxzAHFQ=;
        b=ru/gymcnrSgqMvGZ9o7ydvdHPqF7bMzto7OVRJNviXLUDDADX3KfUPgmcT55cOeDkI
         37izWvnR1+Bvqmcx2GrtJ3sXFYlXeuynctfz2EzqPTLi0A88OPCDdUTd6zSU/eNUFv3N
         5qHh6YoQGidO+dBZt4cUhGmmrGqzqUNEPD/cG5/b385eQdY33UZgzSMCfnpPLU9E2zLK
         bvYhVbqbKQ8HU0hqiZFG2oTiScCi7YhefbeXoZVCYIC0SUKVk5ETzEaWhxWlaS4jvNA1
         XOTXtCpvLA1f8I7snPwi0nMDQF9cl8r8nDAt60wc7HJ0dMsEVHUFQtkbPSSUG1ddGb7/
         SC6A==
X-Forwarded-Encrypted: i=1; AJvYcCW2kDiakyMxJQz+vAxSH+m3GqCqm8pjqUIIWozj4Q6J0uab2+HrrWFPxFLzBDR/QUd7uf61LAPZ3C0N@vger.kernel.org
X-Gm-Message-State: AOJu0YxmWEkk7XLKzgviHqINLHFwl163XlLM1kmILExCAdOaZ+gf1Rrf
	h1jEnwI8lYHMuA1fp42QL2VUpLMLIV/8cgNYfzNEh8QwbHTkJqf+3qtu8nYIJH8Tgvk=
X-Gm-Gg: ASbGnctEjNsDUvBFS84uWRaspyQprJmWQ1/AQNpXKErl7rguCCS++qZaK1kzkl62cHo
	b3YK07bk0pRQbNmGQFgMl93LjMaIMzj8umBGwgSbb444J1HE97Nm3NzRiYtUNks1PGmNE4u/+2B
	wsJLAbqxeoX7yDYJq8hNuooJ24ibHGQq7hZ9QZFQke0TDQesISs7F6Cljo0F9aSVrJS3VEVQ/Ka
	FLBxXPkS1rELsvISnc3HZIEEYv2g0FGQAXF8C6asuqoVRBjHk/jU+QEpONaK8eacrN347OGLuqM
	AUqsmd/0uvby7546Y7aGA6qFLaDxlWq/N4Ux2JeFDHm/W/Pvc9GiWtXEsfdNlfJK3zjRSYvt00O
	MDBC3Gb+dQl2KUE4SOmvl2ARr4A2v+2gXww==
X-Google-Smtp-Source: AGHT+IHlC7ysRbsLcBtEPKwS9FBVQoedjhJLnYOWxUsoDRK2aWs4dk5zeB2gqXHe4+Cg7/2Yb9pX9g==
X-Received: by 2002:a05:600c:4f8b:b0:455:f12f:e3fc with SMTP id 5b1f17b1804b1-45b81e92f7fmr21916495e9.2.1756558835309;
        Sat, 30 Aug 2025 06:00:35 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf34491a5asm7077534f8f.55.2025.08.30.06.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 06:00:34 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] dt-bindings: rtc: s3c: Drop S3C2410
Date: Sat, 30 Aug 2025 15:00:27 +0200
Message-ID: <20250830130024.142815-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250830130024.142815-4-krzysztof.kozlowski@linaro.org>
References: <20250830130024.142815-4-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2143; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=yFbXJjlzfsFuZCCgVMCRBEgVOln4MKOWzsk05OwyRFc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBosvXsgOxVuQ1krqadUAKXr8+ZKXJ3/DOITkL4T
 5uhnPsOqRGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLL17AAKCRDBN2bmhouD
 1/TzEACPR1uNynFBvE9S1nGD1EBp56FenjGhj3C1Y4nspLO7n8L+TEfdLDqM2mLpPi5Yeneem0I
 O6QP/XDuhCnZeo7JTIt4Wt/6Js5MxTm3lH/my7r2ZKh+03RqnJ9DCgvOTODLpmaCV7YhHKp6KvS
 lBvRyu5cUsJfAXFqFIrnYOPkaMRQrGIEsLmdpydrkkbv7p7MzXdONwRMfPozKoTUoSKCHnWtzHc
 UxCognoaDPRH87NBkkNNN04DF/AeWfvSiBOthq80Jw/STaI/8YAsrmcHThnrtx9G5ctBB0vSvTF
 ulZa3xO009pUw+OEzxrrq2LoRyrT0f91DvvGKZFPqRFKx8VALbX7DptU9lWMd3gX2yyWd4/xdwM
 uuF1mmzlewQZaLfdwiJuE6Yd3qBtq3Ectkp26Gg88ikLhytgWlhDwvIAqGZYrL8SlImyHirQNt9
 arqDq6dqHgP8QjNqRSOd4jxh6uR7fQIfADDszqzVtlHHzGKAFk173So+wYt3L6Fr4JFsVxZmBQz
 irhja6+hjtFdb1khE5dx0EQ7Hq1dIDFY5KwDEKDFrz+ik6MMLe8AzLtSYG411T1gJHN7ePUxY5T
 gtKiCq9mRYaS01/eziIYd5V1LNyiwM+b4IZMuOZqLpMqvl5w30P9hSvQtV2EwUzUFXXjASXfUe7 v3x8oLWuDtieM+g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Samsung S3C24xx family of SoCs was removed the Linux kernel in the
commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
2023.  There are no in-kernel users of remaining S3C24xx compatibles.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/rtc/s3c-rtc.yaml      | 40 ++-----------------
 1 file changed, 3 insertions(+), 37 deletions(-)

diff --git a/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
index bf4e11d6dffb..338874e7ed7f 100644
--- a/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
@@ -13,9 +13,6 @@ properties:
   compatible:
     oneOf:
       - enum:
-          - samsung,s3c2410-rtc
-          - samsung,s3c2416-rtc
-          - samsung,s3c2443-rtc
           - samsung,s3c6410-rtc
       - items:
           - enum:
@@ -29,19 +26,12 @@ properties:
     maxItems: 1
 
   clocks:
-    description:
-      Must contain a list of phandle and clock specifier for the rtc
-      clock and in the case of a s3c6410 compatible controller, also
-      a source clock.
-    minItems: 1
     maxItems: 2
 
   clock-names:
-    description:
-      Must contain "rtc" and for a s3c6410 compatible controller
-      also "rtc_src".
-    minItems: 1
-    maxItems: 2
+    items:
+      - const: rtc
+      - const: rtc_src
 
   interrupts:
     description:
@@ -54,30 +44,6 @@ properties:
 
 allOf:
   - $ref: rtc.yaml#
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - samsung,s3c6410-rtc
-              - samsung,exynos3250-rtc
-    then:
-      properties:
-        clocks:
-          minItems: 2
-          maxItems: 2
-        clock-names:
-          items:
-            - const: rtc
-            - const: rtc_src
-    else:
-      properties:
-        clocks:
-          minItems: 1
-          maxItems: 1
-        clock-names:
-          items:
-            - const: rtc
 
 unevaluatedProperties: false
 
-- 
2.48.1


