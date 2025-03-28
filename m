Return-Path: <devicetree+bounces-161474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A1AA7447B
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 08:45:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9A3B3BE7ED
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 07:44:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38DEA211A0D;
	Fri, 28 Mar 2025 07:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RbsBcD1S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5478718871F
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 07:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743147850; cv=none; b=vGi//FDfgSil6TUpUGywJrfNYGcNxb6giQZlv1ROSMq4clV1DQ5CFQzg0sBoB8M3o7fm0Nt6kBfLbqstrQsAF8GbERgjK+nzNuhoy4+5lhZ05+7VL2HdtSlOphySV0b0KAwjGFYFfEOyWl21KbmJgHthQdiWgtl29T0W27rTtCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743147850; c=relaxed/simple;
	bh=8sRjf1g9G04U48+0KKrsadx9Nhw1Z3mfbjcZNLZU8co=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Hph8zuO21KGyzlFcgqoixE0A7cNQI9LKcKfX6ZUH6D+8pBaVJlJrc0zYvAvz7s2c7Q2k1ECanrZIe75B7+dlBGdX4CENcjkXaKqNApr84eDai1kdMgTqJflfupUXHZZhWClhy1SHvRPDg0n9pFt1IAsuupggUhbKyYxFu6pgKA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RbsBcD1S; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5499c5d9691so1934834e87.2
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 00:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743147846; x=1743752646; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e4+m0DQrar8QI/tlP9bedfL21OK40rHqMTDJEYU92jM=;
        b=RbsBcD1SzKNSnB9tPgszYP3qeT5dqjch7UMRsqd6IlonJoQECSgEmTusmEj7edDbdg
         b0gHpIUSgbcZwuWH5pG2LWysAohwyMdyZQquLA/6azXtFmprD5bfSouFgusJY6wGTxRl
         Bh0payVrA1zjrYvCXldGSO6m+1U0R3fSFS5OtviUclxaAqA0FZm/sp0pfN0hXRWgKcYu
         tGZd4bc+Tgg/d4Emat0pvCEArO9mIb/cRwW2Bl1w6IdIh3DVS8SrfkToxH8RzGW1gPSM
         bNSVDQX6X8MFZQOaTcypfGoIauWGgzuakJHcKSUYXPaf1r5tAq5wZ4xM2UjrYKk+4+oa
         2tjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743147846; x=1743752646;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e4+m0DQrar8QI/tlP9bedfL21OK40rHqMTDJEYU92jM=;
        b=huQAb/EKn4pHTPaRRdLkvVZC3eiTfsZXIevTwQ7EKZcCsDldGzka3QT8LamKWIB194
         ucIIIqX48EDKVxzJ72bs0R+FCxZwT6161/Wa3AvvKvEwM8FnHRsKUwWT8zDZqTgbELpV
         LYxORuBURvNAcpblCXvJceZiNWRF6Le+bVoRfSesEcuTdtFZEYvuL7eBq+C7w8OKmalN
         NiNsTG6SNO/wFubkOclCuMiKxzzOJIGIpRX1w+eCXdhldvZ1QpWiXecJEWrbvx7Qbfi2
         UMWHQ5EAb/DUmO8dez9/vImIcKEa+s8D1nxn/t6I3ABwxAQIPtDL1qyVctH3t4qvwU/Z
         jtMQ==
X-Gm-Message-State: AOJu0Yx7q2+PYGmVzJ53wx0WpDLdWLFF8mvIVx7lmuFiy1qI8PtFBqKu
	3hBEpMiPzURf4GBJD54Ndi03DktE4ZPeaKbzxFyRQn0+w+Qst0B9EJ0Gf/R630g=
X-Gm-Gg: ASbGnctYoBBjzoa41sA3J8B9dsN7IGYFML53U77lC0K66VM3PHw4fRkSXEjLYlP/xSp
	9wiAUi5A4Q68bcLHCthFdG4SCCaJVjKflaqqqX6823sdNEn8ka2smKw4OsvyXwxqVPtMGpFO7KV
	WsjSyvK64Qu9+0Blpq0f8fSUWWTlguWa3X9KlVFgblwcVDMXNKtRfFf99k7KItrL1TmU0Af9ERz
	Zzz/Y/KDbo2doKQ5sbAFeh7ljBePQ8DEvxKkBO6+5NqbNsxq4nOOAIdC1OeU+Eg+wU57CR2Cx0L
	lpQRXoR6eb59X0r65dotbirNJ+i6JYsb6fhfF1pSKc4wxUQXXR/2KMa5OEaz7txJYw==
X-Google-Smtp-Source: AGHT+IGEJLYduYUPeoDkIamTghfK6td5L59kTNjPxXBCyjG4pfVB1wPpXcD2GVk/GNmyMa7totuByg==
X-Received: by 2002:a05:6512:1196:b0:548:91f6:4328 with SMTP id 2adb3069b0e04-54b011d5afamr2870433e87.15.1743147846331;
        Fri, 28 Mar 2025 00:44:06 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b094bb32esm215589e87.26.2025.03.28.00.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 00:44:05 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Mar 2025 08:43:52 +0100
Subject: [PATCH 02/12] dt-bindings: rng: r200: Add interrupt property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250328-bcmbca-peripherals-arm-v1-2-e4e515dc9b8c@linaro.org>
References: <20250328-bcmbca-peripherals-arm-v1-0-e4e515dc9b8c@linaro.org>
In-Reply-To: <20250328-bcmbca-peripherals-arm-v1-0-e4e515dc9b8c@linaro.org>
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
 linux-crypto@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

This IP block has an interrupt. Add it and add it to the
example as well.

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
2.48.1


