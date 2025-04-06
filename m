Return-Path: <devicetree+bounces-163442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A8507A7CEA0
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 17:32:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BFA4188C61F
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 15:33:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFE7721E0AF;
	Sun,  6 Apr 2025 15:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b2JMIHcy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FDF17BD6
	for <devicetree@vger.kernel.org>; Sun,  6 Apr 2025 15:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743953570; cv=none; b=TwzryBgujJeLEyaozIQzQ6j7DLdObhfORC9UHaCuLUnnsEE6+7iahjNcj2R9TEnE133wyTatTbc1Ld8zm3a4mbRc2MgFFJJWBBP3BuGUKkFubQWwtomBNbBD7YdCCvPQ/zXA+KD/rAICcLpOXd2R9ahLsqBSX8zbOe/8Tad+5zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743953570; c=relaxed/simple;
	bh=k57KumfTqkRBjwzB5nsewQ7XWlKYcQPp7x2UhedqkFQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YySWmeMl/Y9wT+UeMNtKbeUceyZ/2AQCG/gxl9ikP0Yw3QNQNMG7kF3PWT2ykgpScMfb+O+jJytSWCBIk2zQkkXc2b9uOSNnRwYPkXJWC18VpcnZXtnoLY+Hc8aV5hF0KFo64cBm50bRVHupXM9JCewYWueYLDYDlKe7O2C9HIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b2JMIHcy; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5493b5bc6e8so4501764e87.2
        for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 08:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743953567; x=1744558367; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Bizm6h1CDdffqhCM31Ev0bSZrO0bxrQbCDmltlpuTU=;
        b=b2JMIHcycwhOrIfYbrGnxbkkW+crKBUlu9h3fIguR6WWNna3C+0EpeG8wCOWK5GH8Y
         RcdGlBrsbR/PRJ55ctvGAikiDcfgM5Ov+NLwoK+wuzIgZawAQULwD1Vd+MCgSrBbaUVi
         oirxYtsNfN9MuhoP1X/NIIF3P4enJ19/useKpwHxZ7Pm+SLsli2uiE+fPUlGvOryAHFE
         +qoJZZu1cyf0ovegrJATVMdNMcaM3581823IkkXhg0frtpr8C+9zNnJ4b5BlA8k0DRit
         Wwg+YWXxTwBIQhv3hCQFl9lne51W5/fs+ZgHHZsARuqjEdlxwDSjruKke2fkI/ZcBN2c
         /2Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743953567; x=1744558367;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Bizm6h1CDdffqhCM31Ev0bSZrO0bxrQbCDmltlpuTU=;
        b=mf7VF5ZgQoxAnYoBc0GCogBiPUYgu2mNDEN2gAbYW6S80PXSeWp1IDF14qyuEuPvIy
         0Y+ouWHm/SUZM8FVaiPFpPPHz6hl15kffLGkdWECOSxnTn+1Z1/FWoClfAwtAt1Hdoua
         kA06nHUszXOGRNy12DhICb2nk9+SrVtrcSWMciEkp8Cc5NnsW6BtxQsCeO6XCppzTMiy
         /v/3uttenVzzIi02ld5Y4l1MAT4lQHBQCLoHOivmsLDaZ7TKjwsxQhWcdVkbzzSaOuoZ
         htgTptErzj4j4oH5/nXWrxxD0xl2zfimYuOe+zh5eNuv8qbHfeZiJghmeqJFfU/UnFr6
         EWGA==
X-Gm-Message-State: AOJu0Yzps/KqtpzT6uo8qb0oWbKKAXyrVkZ4cY9y3bklQ6pUGl4dlYMT
	ZnmNYG3CI3W5Mt++gtFpxP6feXzzYWQQ8QfvrwgI9NAICyE5Nrj1xDP7BWFRk+c=
X-Gm-Gg: ASbGncuYWsZ5Q6gHu3j8OKIkrgYsjnh//jXWEW6o+0cB0j/VB2JL2WRIjDfY8OKcXN6
	lHeVWwWX5s39D9eAw3X0AVsAx1q0OsGxWe/5/w0UeRIPEepVu9Q66mMLeunQqjeDZtbpU0+MQga
	e9AL3G5SVAX7TEfV4rOFOHYu7IIaChElyKBDug7yz5Upfp+bfkO+eBfhdK/RqZ8CnmQ+j6yB+5L
	9Vbd6bnHCBtviAxyMDcYbZvJ1aaruSjQ5wkKNq9NRzO0is2r6OoN/9Bcy6rEvAt1A9+nue9e4Gf
	pPtAYuDtEsQ2vpX1os+VU0GnMNVkTPLldbl3mr1UxiD6jynMPQK1ur4=
X-Google-Smtp-Source: AGHT+IFie+5iQdZTFiEqXLdGG/9Obz2+zMwWEcSfzmmzsP0hfhvXebqGm8T5GChopGRfGqsSOpyx0g==
X-Received: by 2002:a05:6512:1253:b0:549:7330:6a5a with SMTP id 2adb3069b0e04-54c232e23d2mr2694580e87.23.1743953567253;
        Sun, 06 Apr 2025 08:32:47 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e671fa8sm989747e87.218.2025.04.06.08.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 08:32:46 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 06 Apr 2025 17:32:42 +0200
Subject: [PATCH v2 02/12] dt-bindings: rng: r200: Add interrupt property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250406-bcmbca-peripherals-arm-v2-2-22130836c2ed@linaro.org>
References: <20250406-bcmbca-peripherals-arm-v2-0-22130836c2ed@linaro.org>
In-Reply-To: <20250406-bcmbca-peripherals-arm-v2-0-22130836c2ed@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Olivia Mackall <olivia@selenic.com>, Ray Jui <rjui@broadcom.com>, 
 Scott Branden <sbranden@broadcom.com>, 
 Florian Fainelli <f.fainelli@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-crypto@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

This IP block has an interrupt. Add it and add it to the
example as well.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/rng/brcm,iproc-rng200.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.yaml b/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.yaml
index 827983008ecf707019f45847cd86d5686e3b2469..817cbdaa2b2d75705eda212521186c40a9975ea0 100644
--- a/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.yaml
+++ b/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.yaml
@@ -20,11 +20,17 @@ properties:
   reg:
     maxItems: 1
 
+  interrupts:
+    maxItems: 1
+
 additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
     rng@18032000 {
         compatible = "brcm,iproc-rng200";
         reg = <0x18032000 0x28>;
+        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
     };

-- 
2.49.0


