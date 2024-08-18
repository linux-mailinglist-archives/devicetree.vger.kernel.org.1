Return-Path: <devicetree+bounces-94542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 89587955DE4
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 19:28:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 949DE1C20996
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 17:28:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3416B148823;
	Sun, 18 Aug 2024 17:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jj2KxZMh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2622886250
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 17:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724002093; cv=none; b=KpQRsyJn12t3Ei7DEp9CjA8wWHZfdE19aaOpNmMbXYuAEbyXT23N1T3YRtUAOueYN18NtreGVykONsQ9ZsOyTTs6sn/L2mwy3IuaopBUqw0xX5dD9/lu2nweE0Q6ggOXRhRDzk4YOeQop+8cHl6SPpl66w9LT/+VUnRmmqtGTyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724002093; c=relaxed/simple;
	bh=SPkydbo04Wml8XphaO8qESnZXyNX30IBsQj8MDV21ss=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gBw0paICIEIdYJCt8bcPOhLP9Z21zKxmTCrMlMVyxIxjlHkuqKW2tHTWlQXtjSZqlHr6/tGLUfKGrCGYvgHxUu+en/w37e1tNbQJuU74l9pb1zIwCsfCa7pZur+W7qima4fQf6LVm12FjmxWOIVk47lF7KfgYhX9LRmtVl9q6Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jj2KxZMh; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a7ab63a388bso144821666b.1
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 10:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002089; x=1724606889; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q59A+6D918l2lKSIhGvv/s3xlwF7brT45paCG30NALE=;
        b=Jj2KxZMhzSiFwid7XVwojQKwBv3kDXQ8jKmt/cIrKSW4ZvADWqPcUb9azWSHJ2sTj1
         AFBhpYpnjHkGlBSlHiQ3KZ1XC06b0oBT0V//sY/kWl4TqJpOq8QM9qrhCt1gTiwOnMG3
         X9zuHvfN+Nkc24eL+zaktNiL+XTWUpzgnqu0nl8bYDctcVksab4aHZrid6sPF+8pGcFd
         WmGdZz1RA7ooO0qgHwXJMr29MDYdUUxHmTshIExeny4VXq4BTanmD3D8T9xzS8XnOOzl
         A7U4x/RbyShHVj6fOUA2JJXO67TxLZUG3IF06VNj1wbZuymsx98KFkT6XnBcK9sKDhuN
         lnaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002089; x=1724606889;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q59A+6D918l2lKSIhGvv/s3xlwF7brT45paCG30NALE=;
        b=EQS70vv87mNSWU/sxF08vt/DUoqB1M84Xves2elcg2iddI7msenAshpKKjEYA04uEH
         uOvqhHpjBL++oXEeA0WTWyxayBbaeivBIqUErF267BTjNKby7tbnuYAJuPXxrgzOe+rC
         0vzzE3kVxAdQV6drrFeU+p1TC1LjczkxhlZfaW4hqh7SRlsRrvk+HAbpmTLdWoQcXENE
         edWNvobX3X6SxWyWVS3Yfi98LgLja0wPHXGI5WTuIc8JVo0MtDwisPmWKddIJGgN1U6B
         hQjgnQSWZ4Hc8tKqLcFCOqQzW26VF2cGJkXvyNEqT5X+Y5VQtDtfU/sC7KNpp1QgGFvJ
         gtKA==
X-Forwarded-Encrypted: i=1; AJvYcCXYA0SX+GDnRAepAwetVJsPdSE7DvUyw2NYLejNCdToIoFmIK9ihx+9PFLNKsznVTWOI1Qak8ih/p4VOxcke0R4/3Qy4Nna4gvIHg==
X-Gm-Message-State: AOJu0YxGfqiA9Y3X/ZOZdrGLo5r4aeU6tcYLAl2jYXnTB5D2tkc9Iq/8
	x0aM/4n1vfwUCqCBuSE/C3rita03Hx/gwbYQaThOzc+NQK2rWAzJX1/bTn45aNU=
X-Google-Smtp-Source: AGHT+IF5Ibf/nk6PUhm+E8+bOs4tnaUPacfd7eLVpRUlGv7rXXuA/hyDfTTfa9/bpUwrZwlwn4UnZA==
X-Received: by 2002:a05:6402:278f:b0:5be:f112:b34 with SMTP id 4fb4d7f45d1cf-5bef1120fb8mr1822689a12.9.1724002089337;
        Sun, 18 Aug 2024 10:28:09 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bebc081bbdsm4609599a12.92.2024.08.18.10.28.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:28:08 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: samsung: exynos-usi: add missing constraints
Date: Sun, 18 Aug 2024 19:28:04 +0200
Message-ID: <20240818172804.121666-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Properties with variable number of items per each device are expected to
have widest constraints in top-level "properties:" block and further
customized (narrowed) in "if:then:".  Add missing top-level constraints
for reg, clocks and clock-names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/soc/samsung/exynos-usi.yaml          | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
index 8b478d6cdc30..f80fcbc3128b 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
@@ -32,11 +32,16 @@ properties:
       - enum:
           - samsung,exynos850-usi
 
-  reg: true
+  reg:
+    maxItems: 1
 
-  clocks: true
+  clocks:
+    maxItems: 2
 
-  clock-names: true
+  clock-names:
+    items:
+      - const: pclk
+      - const: ipclk
 
   ranges: true
 
@@ -113,9 +118,7 @@ then:
         - description: Operating clock for UART/SPI/I2C protocol
 
     clock-names:
-      items:
-        - const: pclk
-        - const: ipclk
+      maxItems: 2
 
   required:
     - reg
-- 
2.43.0


