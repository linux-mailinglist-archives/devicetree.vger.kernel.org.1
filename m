Return-Path: <devicetree+bounces-214983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B90B4FEA4
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 16:04:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1ED424E21E3
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:04:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95097343D89;
	Tue,  9 Sep 2025 14:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fQ5FG2+m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7E323278D
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 14:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757426623; cv=none; b=ijo0z6uXdSx5H5D26ge5g9OFWASpY+OaQcrK+DX0c3c2OMeiCFz5AUF0I442ZhM4dnLW3SOnHAQuEVQ55GemWCBZlp0k0yfdTjoWlqAbvrSCJ7SDqvDswZJfEbn1Yos8hxQ4vmG4S6Ewnvudkr8bLvjX1cm2gINpA4dTSwxU1J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757426623; c=relaxed/simple;
	bh=kg5Xw/CZm9HjqXmiEvNrDXQY55QrcPnRUdquA+eckKc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=r5hycQBoFDnAxBBDDpgUp+lI9XpmUf/Aq3ffZIjXwl/cWrvfibOaHcR1X/ziNSPlxu/7pDAGouCiQsxck7UpPze5ytJcAfSG66tmK1VKbXE/XmWK6rBEQqIGi+ExHHRaX+jFLyj0loK9o8gKAzlUN4vNQ851YVuj3gWVVHgWfh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fQ5FG2+m; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b041264542eso81673966b.2
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 07:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757426620; x=1758031420; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=60uLhSl/0uAu4Ftj/dSCCuqQiKJnyoS7V/Oz88gSfnE=;
        b=fQ5FG2+mZcG/mahvla1EX6TlnuWkADgfBYv1mBtkZ4pJ84v2lGBEHgcnpGHxTTetsF
         7ozPjZSqsGqKQLAR3fThxOL82uxA1MPc6m/nv672YCGKPS7vBDI1HSOEW66RIhDbWTDY
         TuLpmG86VDFtap8rtotFLp6kCrPmjc87AyLHDF9yKa4zGD6QSkrRJY4zkdfLoxnNxvSy
         2pMo049edKP2HGt1pnyGIrUgAOORd6K2YcMBFug1rIi3SS+T8ciSfKRG/9AZK9273/AU
         E/r5dswXfxqLBNw0ZmoHFgSCFfhOe59QONrlLj4sZ4wf+LNAhyDvJAFSU7DIxCE71aXv
         aNJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757426620; x=1758031420;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=60uLhSl/0uAu4Ftj/dSCCuqQiKJnyoS7V/Oz88gSfnE=;
        b=H9LXUouLnoAX5cMB8X9jroLcofUMaU7HE+dUFjTj5+FMYpRaZQA+MJjiY8oFure6yi
         fRpUGwhiaw/Fn/mKOTUDGrR7eiSsKyktff3CS7cHPL3m6MSJlLKOxevyHyCZAFxZSyzd
         OMf7t+qVpQyA5hPCn1vuKP8kuI1gU2lNyjid/mdYJowgOwb5EprXt6tBSzgjVnxZcBHy
         xFak3kJj1l59pRapEkeavSf7hlnvqhgJqjpgIeA1UzQKrtJ8ANQih4NVTFKE/dh6rmnI
         fYcFwC7Vbj6LrSbF5QX4wJAAekQNrRIo/b4wpb85IkGOXuMCNhiEFMZWSLE0PncKmK9U
         2AMA==
X-Forwarded-Encrypted: i=1; AJvYcCX1y8VmrO0etfGbEHRyKdFj4C5kwfN/jmg3diSEfQSWWxHbluCb7A+hCk59gyoz2LNa9Jim6Y2Y2kS7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5jcxIvN6SI9NT+Ai8C6f1MFrsj7BcHKf0erVel5t1leCbhw36
	Kf9wFFhf+Y6jrPk/EY4A52cygESQ5p8R9iq5M+x0MII3FialgZWpl1ebY1/Sk8Fhk8U=
X-Gm-Gg: ASbGncsklQZkZXouR9av3LBq+MofSIk3hDcPQ/e/25pm1MWg6YQbaH/rK71ld1zu4Z3
	Z4h+7NWue1i4alc0lBR9lzQKCcxZnJM2syw4YkjWa2tIDtE3bDI42UpdDGnV9hv+OYrRHwmDhoS
	vL6hhu6VJ51FCn9LPf2zxOJFv0kQeyN/THe0laaRWD9MdbkrZWUi8BdCuBYuoZNSL7dxNZB4F0g
	oqh7WngZv2kPjJZhXxZOF9PLXpeoaN6FIhjLeowFSGOSPhJUdzXKfGH2VT8mlk0E/bKyiHc8grc
	BZhEB1Qk44Ohwb/xLke2Qm84vDzjzw5xkKI++biM8ijbu/AIe1baSUbXseriQNUKMRWTZHwhrmn
	VCi/crC8eK5u9b+t/dW55be3iAu9nfL43N7HAD6xXENrT
X-Google-Smtp-Source: AGHT+IE9xCVTVdqT2u9dI/G+heLKnP1NNhdiI9CtfIYdTO/CcYuKZEAr3OR47E5E6uuiPGrWVXyIcw==
X-Received: by 2002:a17:907:7f8c:b0:b04:36bb:54e with SMTP id a640c23a62f3a-b04b14d6129mr621629666b.1.1757426619229;
        Tue, 09 Sep 2025 07:03:39 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b048009e7d1sm1279289466b.69.2025.09.09.07.03.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 07:03:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Courtney Cavin <courtney.cavin@sonymobile.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Luca Weiss <luca@lucaweiss.eu>
Subject: [PATCH] dt-bindings: input: qcom,pm8941-pwrkey: Fix formatting of descriptions
Date: Tue,  9 Sep 2025 16:03:32 +0200
Message-ID: <20250909140331.69756-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1947; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=kg5Xw/CZm9HjqXmiEvNrDXQY55QrcPnRUdquA+eckKc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBowDOznk95c0Z2ZGr5PsOvUnj4a2XFn7vxsxxot
 4eyTXL72xaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaMAzswAKCRDBN2bmhouD
 1+oiD/0amjqhOpCCqQyOcDS052xCbmMJFa9awROyI+2qZYsLiZa2bRsoj+J6oZc31GIyk3emynV
 bauVh0C6YYcEHOEMwdMkjKiqGnri/hFy0KKGNFRh+yQWhh6c1iPPrDMJmYMJgzGfwB08VZSFyJo
 EcqFOOf+jbJk/kzR4OrvxNIHViWHz32K6aMdEmZr2lfXuSFH/KxGsypCPrKdtUbGpj0EYwAXPSD
 7dJw7Vfk4MmvGnUW35LzGObHr1JyEg1EccKcEnJjpJqpXf+9h1fUdopcDFvq0IdhuBsjDDA5aVi
 yUw+SPefzELS6/iwsZXjyMuFQwigViJz4CybZfiU9TEdG3W1nTWIalcNzt5aUPHMzUPf5SImIHW
 hQ8qyKapvmWFISvvY6bEF9E+gbVtAWryzAwQun8ESnS86NDcyNj3eBObvrG/j0laBAfWRK/3U8Z
 +JLh/PZjSUb01X8K0SEJYa4nJ8tXo//iJ444iu9lgCNB0T4T0Lj/gdTfgIKROpqMJWWTT2APyef
 0ckgejAHxUN3Jp22o5kOZNq87DV16P9Q1IEa9cgLNelQsoddu7na6YzvBZihean0tPdlqLy5/si
 cPPjqIsuHhRxsOpmppCyhfgi7N4BXeBGgPcyOo60VW+eNU3aK6bvQh7NgL37HyycKDyvX0wxglr GJzrKLUuqdPXDxA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Property descriptions should indent with two spaces and they do not need
to preserve formatting.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Luca Weiss <luca@lucaweiss.eu>
---
 .../bindings/input/qcom,pm8941-pwrkey.yaml    | 21 +++++++++----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/qcom,pm8941-pwrkey.yaml b/Documentation/devicetree/bindings/input/qcom,pm8941-pwrkey.yaml
index 62314a5fdce5..72006a14fd41 100644
--- a/Documentation/devicetree/bindings/input/qcom,pm8941-pwrkey.yaml
+++ b/Documentation/devicetree/bindings/input/qcom,pm8941-pwrkey.yaml
@@ -25,23 +25,22 @@ properties:
     maxItems: 1
 
   debounce:
-    description: |
-          Time in microseconds that key must be pressed or
-          released for state change interrupt to trigger.
+    description:
+      Time in microseconds that key must be pressed or released for state
+      change interrupt to trigger.
     $ref: /schemas/types.yaml#/definitions/uint32
 
   bias-pull-up:
-    description: |
-           Presence of this property indicates that the KPDPWR_N
-           pin should be configured for pull up.
+    description:
+      Presence of this property indicates that the KPDPWR_N pin should be
+      configured for pull up.
     $ref: /schemas/types.yaml#/definitions/flag
 
   linux,code:
-    description: |
-           The input key-code associated with the power key.
-           Use the linux event codes defined in
-           include/dt-bindings/input/linux-event-codes.h
-           When property is omitted KEY_POWER is assumed.
+    description:
+      The input key-code associated with the power key.  Use the linux event
+      codes defined in include/dt-bindings/input/linux-event-codes.h.
+      When property is omitted KEY_POWER is assumed.
 
 required:
   - compatible
-- 
2.48.1


