Return-Path: <devicetree+bounces-249833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 553C2CDFA80
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 13:26:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D24630184DC
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E281633030D;
	Sat, 27 Dec 2025 12:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hUTcqBfY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E0732F746
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 12:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766838276; cv=none; b=ByxcWQ9fqxT3pLHF5VUTWyOT7ob2PIISKUrXObr2lTUYaSHY3Cp8FbFVcqjMFqF1+XQQSfPbflfiJjt/kcUxn+IMBTcMMf2CgXgDZuSeAF1X2H8enrVUP7uNDdxIFS7++KN8O4N10QoUQWjexn9AQJCHROyvKFFgbFKJmnYoXmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766838276; c=relaxed/simple;
	bh=hNm58sAFzxOO0mLfaUIDAAaiwFh3P1PTvPP9/eE7na0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FcN/w9ARg0tKAYlFVFfwlIQ4yCRKpG5whtLuGnIaZdzIORXG/4GsuMvq9zZmMdX73WVnIF7u5RJyexATicv8nt7Tf/5vj5lmUpqFtz6n6XK32KAZmKLebyohSawqovQdP2OhXYqTgpRCNYLCPA/Es6We8vZmAy2hegXi5NkSdJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hUTcqBfY; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-64d0d41404cso8673225a12.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 04:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766838271; x=1767443071; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ijeoVSxEaKK4ZCy9A7Kh1hnl7BcwzYQpACu/LfWJKFI=;
        b=hUTcqBfYxiG/4Y+wIMOkmqQtTWHzwU8IvJfIPttMG7ZbN+vMnOytnjzv3UP+sE0t15
         Qro0CnHMUQZ4vF/5+Y14EKRWQpp4DlBRkxkBm+X74+DdJuswWfNV0WZeL2jF0izbsk15
         sJP835BU4AV8rdOewy3F4ZkFydgAI6fHIB8d3kQn/GlYZUyYiNC36v2bPIpuXuBY0vGQ
         sY1+pNk7Gvv607DNgZpGK9y8n5QQ+0LpToUBy5iTj9asa9aSwm8sziIeYE0/jhsWMT0p
         ZVrFj6pxqk3tP1uhRhD2zRlzrzb3VdJw1oac3g82Ls+4hl7z4whwqd7fZhOs8QyJEIE/
         TJow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766838271; x=1767443071;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ijeoVSxEaKK4ZCy9A7Kh1hnl7BcwzYQpACu/LfWJKFI=;
        b=r4MrA8zKkdakKbvGf659002Kt34sQa4kD2udgSZCJJJC8y/VyovXxTMiS30gg1v/Lm
         dg3Lts0gRO0ez1u5xaJEGBqjAyQLMBbXz1sOajOr/9jzgMMBRctBXJiFwRmN+b2mE8OA
         2fPCQOgwTe6rqzG/GrjeExIEqzCCkg/L4VsTY0kuavo7jE6xpYRqQ4p57rdUnsudk5PI
         yEgKUKXz7YuNF1pwmPjogQHJ+iGq4r4BlInrovg9SvyhlP/GuOZKO6N1wShn+iIRrhRK
         XjfsR0BWQafNUZVoxAbRnsgO6OvYwNHR6PDOlY69zNseSFjMCvr1Xe683EN2zyt1uLB2
         3g0A==
X-Forwarded-Encrypted: i=1; AJvYcCU5HpbqBDXH/+e+BumEWtz0sKkskEvtjhWlPqH6zlLMcT+YoqKkbeJGq0AbJGucK8zfBAdU53sKzX0q@vger.kernel.org
X-Gm-Message-State: AOJu0YxCZr5EFMZv/IX/tzzE/HmXzTyUBT8a4MHiiKeR1NZiZ4ho0IrD
	CNQ/WZespxemcZHMPsziFLB+cy0+zO2JpY28ObQHvHwNWrvQcFZ2PB1AFyeWqVRYGxKD/LLZ8jy
	nwxtSUK4=
X-Gm-Gg: AY/fxX4KUQAaK4sf4mRYt5SjNvQEFKf6LtwuV+WZ+TXYI3vw1iBxmyuEAssm+lHEKSa
	4scEHs5tWSBbhkli12yybCLypS+yXsO9VHN2tLPUQ1oTz6BVc7/c/bq0v8GFSDltjbVwlv4aQGc
	2jWWYcXE/uq5y7QDr6D6Jlv4hjM0LbQxhhAIIwAb1doAYj0c3atFk1hYAMW+rOWj6zRDGGCvSSM
	GkjsHdogd2q3Aw1Am2E3mZaYb4kGh7GbS2nqZnsZCyzEZTQTT1Ni00XiqoW7LXBnhTQqQsFK1pa
	mNXWgvhhw99K7R1vfcGlo9h9Vk1IIodv92T6MLgWf8EH0udF8NqpZr78Ilgf3DE1m4TK6Ge+uTT
	IXZoteSyYWxP2D+3n6KFCmN7OELdF7A77lwNeRQBringw2pNQO60GrFNf2sX133EMq8Ccx+ylWa
	YWrE9HGQY4qGpq1M2s8QUDhW4H0cy4UxSQTcZHknO/1lGe63yDvzKYzCY33itXSy43GUpr8vvgV
	aemOA==
X-Google-Smtp-Source: AGHT+IEBSl+0hYWrK+DC8PhG+Ph6J1GOfmGHMm4fDyffFTq5iRMAUOqC0B5ilD6HzpC8eImZz7CR8A==
X-Received: by 2002:a05:6402:1e92:b0:64d:589a:572b with SMTP id 4fb4d7f45d1cf-64d589a59f3mr20595200a12.17.1766838271162;
        Sat, 27 Dec 2025 04:24:31 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm25932659a12.31.2025.12.27.04.24.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 04:24:30 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 27 Dec 2025 12:24:29 +0000
Subject: [PATCH v5 07/21] dt-bindings: firmware: google,gs101-acpm-ipc: add
 S2MPG11 secondary PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251227-s2mpg1x-regulators-v5-7-0c04b360b4c9@linaro.org>
References: <20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org>
In-Reply-To: <20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2

In a typical system using the Samsung S2MPG10 PMIC, an S2MPG11 is used
as a sub-PMIC.

The interface for both is the ACPM firmware protocol, so update the
binding to allow the relevant node and update the example here to
describe the connection for both PMICs.

Since we have two PMICs here, but can not use the 'reg' property (as
the addressing is based on software, i.e. the ACPM firmware), the node
names reflect that with their respective suffix. The existing 'pmic'
therefore becomes deprecated in favour of 'pmic-1'.

While at it, update the example.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v4:
- Krzysztof:
  - update commit message / subject
  - pmic -> pmic-1, pmic2 -> pmic-2
---
 .../bindings/firmware/google,gs101-acpm-ipc.yaml   | 50 +++++++++++++++++++++-
 1 file changed, 48 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
index 4a1e3e3c0505aad6669cadf9b7b58aa4c7f284cb..e68f9c3ca5e2619bacc0c8d843ec4984c0947fd8 100644
--- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -37,6 +37,7 @@ properties:
     maxItems: 1
 
   pmic:
+    deprecated: true
     description: Child node describing the main PMIC.
     type: object
     additionalProperties: true
@@ -45,6 +46,24 @@ properties:
       compatible:
         const: samsung,s2mpg10-pmic
 
+  pmic-1:
+    description: Child node describing the main PMIC.
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: samsung,s2mpg10-pmic
+
+  pmic-2:
+    description: Child node describing the sub PMIC.
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: samsung,s2mpg11-pmic
+
   shmem:
     description:
       List of phandle pointing to the shared memory (SHM) area. The memory
@@ -62,7 +81,9 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/regulator/samsung,s2mpg10-regulator.h>
 
     power-management {
         compatible = "google,gs101-acpm-ipc";
@@ -70,10 +91,12 @@ examples:
         mboxes = <&ap2apm_mailbox>;
         shmem = <&apm_sram>;
 
-        pmic {
+        pmic-1 {
             compatible = "samsung,s2mpg10-pmic";
             interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
 
+            vinl3m-supply = <&buck8m>;
+
             regulators {
                 ldo1m {
                     regulator-name = "vdd_ldo1";
@@ -82,7 +105,13 @@ examples:
                     regulator-always-on;
                 };
 
-                // ...
+                ldo20m {
+                    regulator-name = "vdd_dmics";
+                    regulator-min-microvolt = <700000>;
+                    regulator-max-microvolt = <1300000>;
+                    regulator-always-on;
+                    samsung,ext-control = <S2MPG10_EXTCTRL_LDO20M_EN2>;
+                };
 
                 buck8m {
                     regulator-name = "vdd_mif";
@@ -93,4 +122,21 @@ examples:
                 };
             };
         };
+
+        pmic-2 {
+            compatible = "samsung,s2mpg11-pmic";
+            interrupts-extended = <&gpa0 7 IRQ_TYPE_LEVEL_LOW>;
+
+            vinl1s-supply = <&buck8m>;
+            vinl2s-supply = <&buck6s>;
+
+            regulators {
+                buckd {
+                    regulator-name = "vcc_ufs";
+                    regulator-ramp-delay = <6250>;
+                    enable-gpios = <&gpp0 1 GPIO_ACTIVE_HIGH>;
+                    samsung,ext-control = <S2MPG11_EXTCTRL_UFS_EN>;
+                };
+            };
+        };
     };

-- 
2.52.0.351.gbe84eed79e-goog


