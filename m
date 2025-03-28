Return-Path: <devicetree+bounces-161591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18815A74B20
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 14:42:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3C558815E8
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:36:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1016E21420C;
	Fri, 28 Mar 2025 13:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IUsUDsty"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E851619F11E
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 13:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743168660; cv=none; b=Z3/AKTRo06QxAIizU1UWGn6Z+sbSaEQEEbdZLNPQIWQdZZbXt4ioDA53sW0bi6R9GmDsxrjA0o+Pkipb6ceWYNb7pgR5PgotVwLOKas6OWOQeHIhoWRNPhpLbBvNq9ncySDDf/tXJX6fCoZlfAD9t7x/bndaN5rhiy8+wtecbM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743168660; c=relaxed/simple;
	bh=qCh6oRLfLTgTThIJ6lv+09+QKw9X55onfRfdQJjsxHI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rPTByhpfO1l/Q6yagu4KYjkfqmlEALEjOAerj00pVvQAfr//lOp9xhj3w8AZC6QEdSNsxjyvPmSqe2kkNq4wrcJduVUsBewRovMfyRknnHvQJF/hS7C5vm88kfsKuXqbug1q/80CwUlvmnifGiDzx0Py6WzhAxnh2dvxKuAoLwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IUsUDsty; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-aaee2c5ee6eso326639566b.1
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 06:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743168655; x=1743773455; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E1w11rlVw/TNBQvhMqe/HobIw1/0AFB8/Oe+GpWOJoY=;
        b=IUsUDsty209X8KDYmlOHZZUCwwfH3dNQZN6IEd8gF0m+DviV3e0ysaK43kubxQ+4iu
         yP2d3C5+5d/f1X1oIWNwHxlEew9DaKhyJFQi6y5Y/M6YIVEyvYoLtZezW6H7DmlhZk72
         Ih5D3imEE1lSKmtAG9UBX3DbnApu1w/3nLb51YLY3iQnja4Nh+6g4bkzia1nET8C2E3O
         t9/IC5yPqM3vDw3BiPO8qkuOuxWn6C9oV2OpZ6woFpcAzUnLgHMKCSpZpU/9FsvvouZt
         33ACMOHxhBGHr/MQZqLPEJtOImI2V53474tN0AhzQ+7CtbIcZFHFZGO6BwDEUl8fxV1w
         T00g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743168655; x=1743773455;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E1w11rlVw/TNBQvhMqe/HobIw1/0AFB8/Oe+GpWOJoY=;
        b=RvcfusC65q61YFXf//UhlMctfNLdAOUtT2175czGzpy/tZHW43JZDufOUQ9TlyTp7s
         E1Y0TMc8Haj0ezH+swHW+KozTT9/ieQ0ASSUG1dvkEtZe3uYYmqy7IGSRnrJ4VKzKQEZ
         yJ4fSR8eAv8VYsyg2trXMnyaHjo34B9pmRxL53pxJV8Ey1WVUJfdrtBrAwLRkNfIjL79
         /g9YljA7qNQAkycgdWgv18U4ry1b3UvMtkGZfwK8bRHr79RGFEsGMnrP2/3JsMMQjruM
         MoOhSggZ4f3Td+d963KMfissoSHY2Obp63Ps8oOTvtnBNQVWTOsltMbDqSY4zAMQq+al
         xlRA==
X-Forwarded-Encrypted: i=1; AJvYcCU2O+SoHOnhfoO1qLxahe/8tAnFoqxeqAtpazo35P1fjRdX3tJ+2IMpM1bVzaVeo8rTgECYx6HzLKP0@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn28ZpfEYm88mrKVU+v0uN0rTB0tuKOQ9f4xX2oiqvF6GsUfXk
	G/+AcT/mBoeDSb81vqmWzwmYx+fLfACsTG6J6fFz3aOoFJatgvihP3q9+PKt4+8=
X-Gm-Gg: ASbGnctxU2ZkwtZq+p6d2wCa7AhCKglboxrWZYfppc+L7L88mlpbw7NkbFkXWjweYkU
	P/LP66NBHdXfa8/nhHGrOp5P4jjIzk7RrEoLqimCtIJYb0vhxmjEaU5VMk2mTvSiXKreOxL6aHw
	r5iE391huug6eD59oeDQPI7cd+kobIEi8ZfQ32rmccun74pQkOSeTM54SRvf/QDJyyxZC2wI8gL
	gyeRchDhnJI6sqntxYrBPogBSI3dTMrlK4Hx2zZIfa/Vy9KPnR6pNCGXr073SWFEduisjEgaiX+
	p0DWghRn0pwty3v4fKsXq1iL3bmFIyiQXe/jirY/0ZdZJOaOkGVfn+4x8/bYOagX8iSzeuJo7Tm
	bYI8vG0Qtw+PgVjWTl5UGTj7RWTM7
X-Google-Smtp-Source: AGHT+IEq06ryYPSRFnijp9zBT7TVwvuxmad5wvipQF5Or+uJmUZMEkHYbtpAEod3NTnJDeU/8eOeEA==
X-Received: by 2002:a17:907:7b99:b0:ac2:7ec8:c31d with SMTP id a640c23a62f3a-ac6faea0f0amr608739366b.17.1743168654961;
        Fri, 28 Mar 2025 06:30:54 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc17e01f7sm1355284a12.79.2025.03.28.06.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 06:30:54 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 13:28:49 +0000
Subject: [PATCH v2 03/32] dt-bindings: firmware: google,gs101-acpm-ipc: add
 PMIC child node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-s2mpg10-v2-3-b54dee33fb6b@linaro.org>
References: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
In-Reply-To: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The PMIC is supposed to be a child of ACPM, add it here to describe the
connection.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../bindings/firmware/google,gs101-acpm-ipc.yaml        | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
index 2cdad1bbae73bb1795eccf47e1a58e270acd022c..5524f2af5bda2d29b5113f8fe14ece7f02366a60 100644
--- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -27,6 +27,16 @@ properties:
   mboxes:
     maxItems: 1
 
+  pmic:
+    description: Child node describing the main PMIC.
+    type: object
+    $ref: /schemas/mfd/samsung,s2mps11.yaml
+    unevaluatedProperties: false
+
+    properties:
+      compatible:
+        const: samsung,s2mpg10-pmic
+
   shmem:
     description:
       List of phandle pointing to the shared memory (SHM) area. The memory
@@ -43,8 +53,15 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
     power-management {
         compatible = "google,gs101-acpm-ipc";
         mboxes = <&ap2apm_mailbox>;
         shmem = <&apm_sram>;
+
+        pmic {
+            compatible = "samsung,s2mpg10-pmic";
+            interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
+        };
     };

-- 
2.49.0.472.ge94155a9ec-goog


