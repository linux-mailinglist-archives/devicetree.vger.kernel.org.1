Return-Path: <devicetree+bounces-165006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 031B6A83218
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:37:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 94F1B3A89B1
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 718C6213E9C;
	Wed,  9 Apr 2025 20:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I0kxE7NS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAB4202C39
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231055; cv=none; b=DuGzHJwEIFdkz590rZaJgx3uhG/492KC8sXX/MhRNF18+TH7sLZIUJqhJLpBB4CybKR+wqN4S6YnvgUAJeS8TbjcFz7QNlbOu2FbHvSvgTBS05yiTu2j0M0ls4+RiPY6D15TbNe4NiC3crqLhz/M6PyIw+dJsxUHUdoS0q6xJaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231055; c=relaxed/simple;
	bh=RcRt0jlJL86GJhitXVjW6XXaG8VYI54Lns//RyeOLMo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MRURT3DgY9l/eMgTuE+vOf/Xdx9cuMCK/1jgHUUclYZyyX9klvD553CHe3c8l+8obIhWhEMzRrF9odwSRilHeBsCONab4NZtM6A2Kztw3XNBh7rZlvDR2yr9WW/P+gq3zyqWBEZQ12OtjxdPZaN391PDi+1P1AM/8/TSSBKcLCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I0kxE7NS; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5e6c18e2c7dso204729a12.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231050; x=1744835850; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fkaEGUM0nmTBd/L91+ubJHG0un6i+kZ4jUPyHnK90Ec=;
        b=I0kxE7NSp6U2K6lKe63ep9drDmA1XCoQcLtSfDcU7q+KrRDnSv9lf58V4ndqHNjRVk
         hb8jiIxvX1JegiI2Fti+IJo2svsxVuntI9aBoseipHFmmLDqSKOEXd9Gm+wqn/MdYvnh
         JaQDwtDtkAnOpoBZHR/B70NHDj6x5gHq3xVmKz92f/TnnL1icH75G/7yfrJdd3OtKgh2
         TWKdn7sTlhByuBBlYJFCd8kQlD96cC0Tl5YcFwXP/G6oSSgc387ivRsHMWQVBvctqdvF
         IjPxjdpHSt3BKlrJvk6ROqVURuDldrZTvtYhQimihhitzgwHBGSTsMoXk95/v/8xCmT4
         Ul4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231050; x=1744835850;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fkaEGUM0nmTBd/L91+ubJHG0un6i+kZ4jUPyHnK90Ec=;
        b=A+1IiKZCd7YSYuJRdOQWrhQuY2CwpOa1NfnOKDF8A6uO9L3eAwFOUMLVKj5UD/7svu
         a36mLiv91OyUiVhjGnNDnjGKH8RmvZlGOGjbPZaqIjE8uRwTUZKVgDXxx9sS2vp3HDY6
         deKD0vf8uuFBX3LLKGrwbFOtHnKHtQZqaRdEFcJGO+ODnLH9wPdi5gcOmfRJ5GVj+Jep
         oBdV5SkqbUizTfAxxaXZKYMJGTdk8unQGBvRuCddxfFX1b3sS8rxoEaYV3gmRs1aDuzP
         Ijf5ALFoBVXXQZAPNynBo4uFAol57Fl/qp+FqVe4onHtkTkOxFyHcSapw4+ZM+1fr7ya
         1d2w==
X-Forwarded-Encrypted: i=1; AJvYcCU7dHYGFIS1ed4A5Q7ufMzS6ydOq+WyCWplzWr65CcNNv0weqivJSDEz1DhNBKAL9r8v/7WneW4+m1u@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6TfUqVdrMGztuauo//z+uU0fZK8/kPQWoaMzBuXDB19kO7GZT
	Ku1JIiDB1ACaOcPpWYorEjEUoYJLx/5eEF0dqls7oE+yYZKZO0BHERPodb0LnDM=
X-Gm-Gg: ASbGncvscWEke1MDb2IzZtYgV2DpI7Jc+uRHhpnPBNiPZ/ugO3BP1vhfUriwHqU0ekL
	cjHmoESLs4W6LoD5yrgSmLeDxzst7xdQMcBomaHQa1xj7fyjTMZuxd3IEIfN3atglzA25YAwk4O
	im8jcnBQsj1m7e/T0r2E0wtt/avxy5lvdO2XtxA7OjIIUqizEB295MYivl9d6QvY/I+b8E1HYGh
	uO6jQtDsFZ+0t/7cMTm2VyadwQ8pVxXNkpbqCy6eb+m6hDgfOQ/nYerS808EWy2GXxEt5sU6Y4C
	erhkaXwGkOc2p6uOafzvgj///j7fTloXiZOfavyE3VqiIkgfyVXfYhc7+cpmzjlNjFwsBL9xuvN
	YLMKCKajBMX/rAMStJESbpqJoqtM=
X-Google-Smtp-Source: AGHT+IEPjIei3RK/9A8Tp+rrhp1bR2HYslRxdh3PdoW9/JZ8jdttJ9N/bFj93kTMX29T5OJTm7P8YA==
X-Received: by 2002:a17:907:720a:b0:ac7:ec90:2ae5 with SMTP id a640c23a62f3a-acabd20157cmr6631666b.25.1744231050061;
        Wed, 09 Apr 2025 13:37:30 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:29 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:22 +0100
Subject: [PATCH v4 01/32] dt-bindings: mfd: samsung,s2mps11: add s2mpg10
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-1-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
In-Reply-To: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

The Samsung S2MPG10 PMIC is similar to the existing PMICs supported by
this binding.

It is a Power Management IC for mobile applications with buck
converters, various LDOs, power meters, RTC, clock outputs, and
additional GPIOs interfaces.

Unlike other Samsung PMICs, communication is not via I2C, but via the
Samsung ACPM firmware, it therefore doesn't need a 'reg' property but
needs to be a child of the ACPM firmware node instead.

S2MPG10 can also act as a system power controller allowing
implementation of a true cold-reset of the system.

Support for the other components like regulators and power meters will
be added in subsequent future patches.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v3:
* keep 'regulators' subnode required even for s2mpg10 (Krzysztof)

v2:
* drop ACPM phandle 'exynos,acpm-ipc', and expect this to be a child
  node of ACPM directly instead
* allow, but still don't enforce, regulators subnode, to ease adding it
  in the future
* deny 'reg' property, it's incorrect to optionally have it for S2MPG10
* enforce 'interrupts' or 'interrupts-extended' property. S2MPG10 can
  not work without. Note this is done as-is using the oneOf, because
  dtschema's fixups.py doesn't handle this nesting itself
---
 .../devicetree/bindings/mfd/samsung,s2mps11.yaml   | 26 +++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml b/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
index ac5d0c149796b6a4034b5d4245bfa8be0433cfab..d6b9e29147965b6d8eef786b0fb5b5f198ab69ab 100644
--- a/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
+++ b/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
@@ -20,6 +20,7 @@ description: |
 properties:
   compatible:
     enum:
+      - samsung,s2mpg10-pmic
       - samsung,s2mps11-pmic
       - samsung,s2mps13-pmic
       - samsung,s2mps14-pmic
@@ -58,16 +59,39 @@ properties:
       reset (setting buck voltages to default values).
     type: boolean
 
+  system-power-controller: true
+
   wakeup-source: true
 
 required:
   - compatible
-  - reg
   - regulators
 
 additionalProperties: false
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,s2mpg10-pmic
+    then:
+      properties:
+        reg: false
+        samsung,s2mps11-acokb-ground: false
+        samsung,s2mps11-wrstbi-ground: false
+
+      oneOf:
+        - required: [interrupts]
+        - required: [interrupts-extended]
+
+    else:
+      properties:
+        system-power-controller: false
+
+      required:
+        - reg
+
   - if:
       properties:
         compatible:

-- 
2.49.0.604.gff1f9ca942-goog


