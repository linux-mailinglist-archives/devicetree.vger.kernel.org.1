Return-Path: <devicetree+bounces-111261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD4F99DEF0
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 09:00:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B325282CC0
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 07:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 129651A76DD;
	Tue, 15 Oct 2024 06:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PCFsuZzK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE451ABEBB
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 06:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728975537; cv=none; b=bCopX0PhO8t0vuH1D+kvUWQT7PlIBSrzagCohUrTHqoTAQovnNIWB5YlQn50S5qRgZh1FMx2fTbkamvRk0/uGbSG3nvn61SU2EXHKAy3CeyEP9VfCboAPXAr56x6efhZPtSrdn33V29SoD/PcZVjwLeI3d137nZZWRJtN6JSBDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728975537; c=relaxed/simple;
	bh=HHRjomsRYsJDwBzUt/stxykgtORGhKkWesiG8s2sUzQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GMAykxlP905SitGMxaSdB8qcBQyhvlB2CGPj7NxboOtZW7TSnGu0/UrQvADqNuF3O0pROamWrmK9/9Ptv4g9Xy0/E7SmHjWbDB2IekPspm0HLOwxXHmo9Jta4KHLprgvjcsGfOUU0G0DLOTj4lpvQXvO9uSnyOjJFPOMUzjt4eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PCFsuZzK; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-430549e65a4so6060005e9.0
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 23:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728975534; x=1729580334; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3Rg9CafE1YGkVl9KvHL3hkpJVC1sI0hUFkBUJZbx7bE=;
        b=PCFsuZzKQAR9kOL6ni8Kn0H9p+6MTkmTF4D+Fp053Ojk/c0Du5nfr2xqGqiYwee+kB
         YOcC8WBKZQSMVX3hgMZL8vriWYVmNTdRp9piSGURLmPXoiZJB3E9HgQazfgc0g9AkYyz
         uPBDLHOtBgeWZFKvjP/tQ0+vTT987www5QA5+vPUq8BmE1O/uQwKOya/G9v7wQ5hmsfH
         7DYnA4kvWqz33GL9wvZi9wNEZH8i30eD4weWbViSxizGIPrKorkf+sywal49bRhzm5Gu
         crES1KWqZAqLsIUQFAQ1r/s0pJg2zcLNiBi+XqO3y4aG8vJMfIysFr0BXiU62JaFCPbv
         DkHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728975534; x=1729580334;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Rg9CafE1YGkVl9KvHL3hkpJVC1sI0hUFkBUJZbx7bE=;
        b=IZpNnOaRmjUeh++6vi3Qwvb1hNcY/87gX3gtfq/YgPdbjMnGaoT767l/b4JLa6KJgh
         xBACm46CoG5LcozeMVv6TnJNdH+AAwf6iea3zMuDrk4tdK5xdQTgRrfDI0n9amfz0xBC
         RfViKjxj3NLKXPiAC3YymDYQQr6ftNFmkhEHyJH8jcKwgW7OQUPjORyVDxMJ+KbTKCO+
         lifLThbp7rbxPk2n1BwrHwXpgWQS0q7ZpnBWXX2rYzcAyoFLMgEJbhOjC0MLGLS2iqyg
         7In9SwVKgh3GXxtQh9xbx2n2FUaPC+MbUmONXyhU+1QojtS4JAFwWXF1uRseMTn6C0PD
         zUxg==
X-Forwarded-Encrypted: i=1; AJvYcCWeHLHh8+E+3RMKZnJ2QIiT1YbmeyGLXS52puBj1n5M0jP5uAJ6G2M+eR9KT5pGrk9HgJmwc9vR3ZYP@vger.kernel.org
X-Gm-Message-State: AOJu0YyAka4AwVapOYFNmqVJGkPg5mopP2XedSN+Q0US/HkIdwj989Ip
	yb9TCAjcs9rsrePxi52Y9rDW9ZJx3RB4Id9HbJSCRK/Do6XT4J7NtLLkBVFYcsI=
X-Google-Smtp-Source: AGHT+IGbPMxgc3DOJjQs7sGqlYcjADDsKE8cdCECGo3sJ7ddzUzXMkKiJhT5InhJZ4au28jZv0tx4A==
X-Received: by 2002:a05:600c:5122:b0:42c:b63d:df3 with SMTP id 5b1f17b1804b1-4311ddff73dmr55330175e9.0.1728975534141;
        Mon, 14 Oct 2024 23:58:54 -0700 (PDT)
Received: from krzk-bin.. ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4313f6c5d22sm8461645e9.40.2024.10.14.23.58.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 23:58:53 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Jaewon Kim <jaewon02.kim@samsung.com>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	stable@vger.kernel.org,
	Igor Belwon <igor.belwon@mentallysanemainliners.org>
Subject: [PATCH 1/2] dt-bindings: pinctrl: samsung: Fix interrupt constraint for variants with fallbacks
Date: Tue, 15 Oct 2024 08:58:47 +0200
Message-ID: <20241015065848.29429-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit 904140fa4553 ("dt-bindings: pinctrl: samsung: use Exynos7
fallbacks for newer wake-up controllers") added
samsung,exynos7-wakeup-eint fallback to some compatibles, so the
intention in the if:then: conditions was to handle the cases:

1. Single Exynos7 compatible or Exynos5433+Exynos7 or
   Exynos7885+Exynos7: only one interrupt

2. Exynos850+Exynos7: no interrupts

This was not implemented properly however and if:then: block matches
only single Exynos5433 or Exynos7885 compatibles, which do not exist in
DTS anymore, so basically is a no-op and no enforcement on number of
interrupts is made by the binding.

Fix the if:then: condition so interrupts in the Exynos5433 and
Exynos7885 wake-up pin controller will be properly constrained.

Fixes: 904140fa4553 ("dt-bindings: pinctrl: samsung: use Exynos7 fallbacks for newer wake-up controllers")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Igor Belwon <igor.belwon@mentallysanemainliners.org>
---
 .../samsung,pinctrl-wakeup-interrupt.yaml     | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
index 91516fedc872..49cb2b1a3d28 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
@@ -92,14 +92,17 @@ allOf:
   - if:
       properties:
         compatible:
-          # Match without "contains", to skip newer variants which are still
-          # compatible with samsung,exynos7-wakeup-eint
-          enum:
-            - samsung,s5pv210-wakeup-eint
-            - samsung,exynos4210-wakeup-eint
-            - samsung,exynos5433-wakeup-eint
-            - samsung,exynos7-wakeup-eint
-            - samsung,exynos7885-wakeup-eint
+          oneOf:
+            # Match without "contains", to skip newer variants which are still
+            # compatible with samsung,exynos7-wakeup-eint
+            - enum:
+                - samsung,exynos4210-wakeup-eint
+                - samsung,exynos7-wakeup-eint
+                - samsung,s5pv210-wakeup-eint
+            - contains:
+                enum:
+                  - samsung,exynos5433-wakeup-eint
+                  - samsung,exynos7885-wakeup-eint
     then:
       properties:
         interrupts:
-- 
2.43.0


