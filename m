Return-Path: <devicetree+bounces-133174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 515EA9F9988
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 19:30:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EAF691982AEC
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 18:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC85D221445;
	Fri, 20 Dec 2024 18:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="bc3Fd/+T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA3421E094
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 18:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734718290; cv=none; b=Va84Wb0JEuQVIeQ0EePIpPYQiB7clCu/C32q1UKXZ1q4jifk8YgBTXYqhlnBratRQ6QKLJgMZrjNSo1n6UWbgjmh7VD/n6XltaSL5rpP3GTTqILcHvSo1Wl9yhnYcYpyzM3wspdAalHyyAdTQ77Cwdd6u0Jxj9lkM5jwadhbGV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734718290; c=relaxed/simple;
	bh=f4JY6yOakOEmuyUC4NcRoVc5/HAIx8k6tCo3tXdIsWY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Nc3yXH/A9OBK4O3UyHavP2MXWKmOO/+/t4SFuK0I0zlLFM2u8CzMU5VXW/lY26OqFsEwjA9jobXof4denRgSOUHcVUsA0LU+/039R+OvVXHZCQ6yo2HkiAwNQyt1rOC2qIteF5KbP25tc8cmGLf19wQD90VIaGXpbyKG2kBToKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=bc3Fd/+T; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43621d27adeso15464485e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 10:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734718286; x=1735323086; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VdlpFNH3uxbIb6jb7BUkFAfn6xTxvwPpL6GXsJonkco=;
        b=bc3Fd/+Th5cqI+TKDeiUhgnsEJ/Jx1OQpO/cUfFJxOP7HdSaYOl3220MAc5cHOhOV/
         vQVfMtmz1GAffmoptyCbBNrXe1jul7da5WafKwiab5IGg37ej29C82VuIAXSB7t7K5Fo
         luCDVznrFKT3v9wu0KkXl7duZXswEMbetckN+LMq/j4xPmpRgwXSjRXn9+7JD4r8WdN1
         +kcc6Pf7Z+peaCBOdQtIgfGx08hNM7xexs6l7lBqdS5Z1o2ql/ZgAgT91j0gXkDwo9e1
         u8ZGQ1D6BH50s78tSqdvpg5YKwcMG8WkjyKvnEkAT3UYqR1QXAefofyhDqB6EURxfoc0
         +iFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734718286; x=1735323086;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VdlpFNH3uxbIb6jb7BUkFAfn6xTxvwPpL6GXsJonkco=;
        b=BlK2xaay0Wn9e3sTVzFCsA48iayVKYh7K6v9MzicIRBEmC3B+MenybYzD8MqkhMb/w
         f7zfjzDEwTLzl155P4sgtCM4bvNeyAPWOuJw0skNpHh3lGFW6u4+bvSh4vCWoIc8jpo5
         xM0xyjtxftLnd5Dvc4NOfPeoSpShQm7yq74GqsfHkvYa/BG4LRQ0t8Hy7w5DNMtlSMf2
         QwxO5iukofeuT2HV6oTq/TaXoXriZhRgIfRzwA3czZ/RRVdEFFfGtAobBAXK0U6saN/A
         r3Px1AAUT/xXSdRpn2ccoqULb5O5lZgUyS6jslEA1mYyLmhSGeOlFq4gi2iXdD4C6Tzu
         eBCA==
X-Forwarded-Encrypted: i=1; AJvYcCUUyt438XVaZyC8DBk8QC2DCftBF4oBEnDQ5NJ2iq2WijYGDYVbkARxvukPrGtJ8MnwY50TyGPaYmpE@vger.kernel.org
X-Gm-Message-State: AOJu0YySFk83hYWdowZQs8D4XDbbUyLlfXndhgArJUVi9dAtiYWUrIYF
	qsG/22RUrnOvstr9CrAuj7ZMKDI4cM7CC1TA77zA+QjZTwoEnZWSuclN2gqbX/4=
X-Gm-Gg: ASbGnctNhs4/MfkCU0jecyoxLcNEDkbi+Z14R9oHr0O9fMwr0hMlIV9h+X2yCGuTsuP
	Vonhn5pig/jVi6kzHsw9kPEeSE/035FK7qhuydHtvWKdy1oqYM8MeNnet+OJ9pwyQuOD53fstFo
	RHfdV9bqySU2yLUhJ1a3vuGwGjF8h1Jlha4NFIcCWkeuNMEVsqbb5pmsmZJrYHCz5CUQnSNvQLk
	3BnBoZvbWGGb/T53VK2VKwNZOrTA8BNXJGtnJ1o9z1K7FLA
X-Google-Smtp-Source: AGHT+IGkUJ6wiQ+PFzhrRg9QEs0JFLnzOAYHhAM3qA2cpb4nCgeQZdE914UHndE0hNBgPmIssevaTg==
X-Received: by 2002:a05:600c:4586:b0:434:a902:97cd with SMTP id 5b1f17b1804b1-4366864364dmr37590895e9.12.1734718286362;
        Fri, 20 Dec 2024 10:11:26 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4366127c488sm51460075e9.27.2024.12.20.10.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 10:11:25 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 20 Dec 2024 18:11:13 +0000
Subject: [PATCH v5 3/3] dt-bindings: interrupt-controller:
 brcm,bcm2836-l1-intc: Drop interrupt-controller requirement
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-dt-bcm2712-fixes-v5-3-cbbf13d2e97a@raspberrypi.com>
References: <20241220-dt-bcm2712-fixes-v5-0-cbbf13d2e97a@raspberrypi.com>
In-Reply-To: <20241220-dt-bcm2712-fixes-v5-0-cbbf13d2e97a@raspberrypi.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Eric Anholt <eric@anholt.net>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Doug Berger <opendmb@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Thomas Gleixner <tglx@linutronix.de>, 
 Stefan Wahren <wahrenst@gmx.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
 linux-gpio@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1

Since commit 88bbe85dcd37 ("irqchip: bcm2836: Move SMP startup code to
arch/arm (v2)") the bcm2836-l1-intc block on bcm2711 is only used as a
base address for the smp_boot_secondary hook on 32 bit kernels. It is
not used as an interrupt controller.

Drop the binding requirement for interrupt-controller and interrupt-cells
to satisfy validation on this platform.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/interrupt-controller/brcm,bcm2836-l1-intc.yaml  | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836-l1-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836-l1-intc.yaml
index 5fda626c80ce..2ff390c1705b 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836-l1-intc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836-l1-intc.yaml
@@ -34,8 +34,6 @@ properties:
 required:
   - compatible
   - reg
-  - interrupt-controller
-  - '#interrupt-cells'
 
 additionalProperties: false
 

-- 
2.34.1


