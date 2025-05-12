Return-Path: <devicetree+bounces-176294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E51D6AB3693
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 14:06:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F6253AF21F
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 12:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89E84293734;
	Mon, 12 May 2025 12:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q1Bh3Wo+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A78293464
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 12:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747051556; cv=none; b=BMN9dQNOztiCIR0X+yKLEy/iLr5OamwoEWAuJgbcaeMa3CnNIUJHdYChFQZKBjZob+V7gixDxmmO6cgyQ9sY7RXMSetk5oe4+ijZyEhfJp6bNXPYYu5nm9kfdjxSbPVkGmbCqT62q6hVgAx31cR24LVMbjWMIkFopON+vAQPJt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747051556; c=relaxed/simple;
	bh=k57KumfTqkRBjwzB5nsewQ7XWlKYcQPp7x2UhedqkFQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jHrkgRjoPS++ydzIWm2LqqOfZ7QCeqjrI7koq2nsYlqc3z41WQ8BKAMX9kAuctfG1K+lwLs7NcU5uSn0eDNHITNbCLqQSmAeF0z+wB/x9OwC1xw/HBvV+nKbIdXFWwRh582H9hDi5VUHGlA4vRPuQoq6SdhGixrNOtC7LIeNkzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q1Bh3Wo+; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54c090fc7adso7241436e87.2
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 05:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747051552; x=1747656352; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Bizm6h1CDdffqhCM31Ev0bSZrO0bxrQbCDmltlpuTU=;
        b=Q1Bh3Wo+XPnTV2UqIoHN3y2HjZQl+GkL6S5vvXthyib7UlXr4LEvM4/CGQh/JFVpof
         evrowzs6LKWdFy05K93ExRBVItpOJqwF/+L/sRyRuxiIsPCtlOmzRzU1EkxGi5OPdkQg
         jO7O0tO7uaKjGK5tiyDTGe2uy3N0t7wTzKPv59lA3kQ29tLNKnbnCNaiLbKDT4sFgWaE
         hWCrP1SUnT2ScV4wGWSETwfOSleNJBmIoCLuI7Hu6/X7oqjL+r5NID7j7PbUK2LItbp3
         2v9h7i01CNjlNiBlTZIAtc7YgMsxcMgMFys9mTYb9cg+YeVejUmv0INZSFU81f46dGm2
         0Tjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747051552; x=1747656352;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Bizm6h1CDdffqhCM31Ev0bSZrO0bxrQbCDmltlpuTU=;
        b=ieNvHKe+CZItdKNDGYp5rqDcaZ/d6eWtp8jEol6IC/biVMAOscepHLTka0o84saUJE
         Ggb4oTyWPWMWLQAlVn5WZ2RJKrv5iNM1YpuGh837erqCSv48LzoVQI2CGfgkO/E3dgON
         J25CxLB3hwcI/lVyl3r6ZIveoDe46+jlB6WrgkOjagdhUv+oVYny+jZnJZAoXPc4lwcm
         qkiJSCYGEHNJcWZIkO36ZMHg/ZK+0gdmmTUi8luaZQDh5KPTN4fKR7Egrj3nx9uekcbd
         jMOqMhd6aq8I6IfHdUm5yuRCMFuvftqOUpFUpAbGWYmXZDxKKAGZm9Bhufrpxh8K/Zj9
         XxEQ==
X-Gm-Message-State: AOJu0YxFF3YiMdA+praraxpe1Az9pDNPGF7C6AuDIjVkCSCaJWM7DP++
	PImusiil36S0XurgegdeyI0ko9HGB9WPxTpWQgc9eICk2nRm93YJtzz29fdJjDE=
X-Gm-Gg: ASbGncu5eQskRAT5wuWSzgFSoIylvqfs0epS0ZKFvozByjlo/2FFpMOhwXxJiwbU/RI
	hgCaSd4XzwqJVYdmpq8Xr/qTA1fRRk3xAgReq05ddZvqpr2GXtMPnBcN5tyGGDArMMj4MMfUhFJ
	90D1YButLBdltIWBeaJD3GngVNSA5xTP3zcoqyAnmpp8pjHtLPIJExlk/87x/gbRmJLj/s4JhG+
	Elr5bGlNDu5Bfv9j5cppOHGlB6ba4VkLukBqKk1Aua/KAhYO1mazQUA/QiQN5z2lYvPyRSb4GwB
	H8sIDwD7nZGNQ65tAf+0NI6pHuEptmFkLJQclYbTWfEzlTQmevOCX4yiGeb2Jw+ammjI/6fq
X-Google-Smtp-Source: AGHT+IHUoH9YybM7VLnMAo3tNgj/P/n5qW5oBE3DnYE8EyBisEgdXJTrVYzEQwzEU3pLBUrAseEOfw==
X-Received: by 2002:a05:6512:461b:b0:54e:751f:4094 with SMTP id 2adb3069b0e04-54fc67c95cfmr3214756e87.23.1747051552532;
        Mon, 12 May 2025 05:05:52 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64bf8a3sm1466033e87.189.2025.05.12.05.05.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 05:05:51 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 12 May 2025 14:05:48 +0200
Subject: [PATCH v3 02/12] dt-bindings: rng: r200: Add interrupt property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250512-bcmbca-peripherals-arm-v3-2-86f97ab4326f@linaro.org>
References: <20250512-bcmbca-peripherals-arm-v3-0-86f97ab4326f@linaro.org>
In-Reply-To: <20250512-bcmbca-peripherals-arm-v3-0-86f97ab4326f@linaro.org>
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


