Return-Path: <devicetree+bounces-183385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 688D1AD048A
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 17:04:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3A683A4771
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 15:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61B5128A3F3;
	Fri,  6 Jun 2025 15:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ec1L5vsC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA8519D07A
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 15:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749222202; cv=none; b=g5HEZvwnmhHAYslMKKKadpP6vFVPQfP1QaPuyJetw79PlyB6R91dSj2HKBI/MrUvKMf2FirN/XFfqLXaFAkNCp9WUGFf1xaXvD3VqRR5v6NVRX2qey5W/TDKVM0LugtPSBwtJ4XOP62xGMvwydxDthPP0SYMNaX85CEMenGOHnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749222202; c=relaxed/simple;
	bh=m6C+4e8MF9g9uyaiWWf0DHMTRnXGKt+eaez/jyh0Jb8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AC/qQdHZaf5UISvY5zdhvaB7Fs1VrtnHnOUianEGZCWkNF+1qSZ2g8lRaKp9EBVKkD9oR8fgeyGofhaMMt3gBNfynli4OQ1ybAbLbdMVTQzafacDPlwVU5tqzNn0CRwRJ/y8faI6v1Ci2a3p0l6149ofX+EWRN/rL7p0wtlCBio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ec1L5vsC; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-606fdbd20afso4202848a12.1
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 08:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749222195; x=1749826995; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KcdkpDlPLd/iSFNV2Kj6M/PjoKJqD05ckr9tkCHHeGY=;
        b=ec1L5vsC4FwYLCU6CodPUPMVj9fbeo7x+WlOFJiS9TpWpW8isRG/iNqRobRNxLaWHu
         BcjW2WEAWxhzlKTLOjrx2BgsO2c2zXf4hW+iIt/es7ijylZSFKEzJlnuSPFVqYYt0EFX
         XP1JEPaRxp/J0Vx4BPyRl2JEbb+Ml5dr2aH1RclyW3/Zt6wRQcAfIgpsM0lABvyjHEps
         /RxDZeLhnJMCKbg38CSAfSEiMQRGqBSZK9elGB2Osd+VItvqLi8/SwK2CvwuePm7W5Ni
         K2BLMOXgtJgQHGd+nvkSlyEvsYcJ6HAN+N/rw6u5GktiWud69jKAgZpkhTf6e+jQQ7O4
         qiwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749222195; x=1749826995;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KcdkpDlPLd/iSFNV2Kj6M/PjoKJqD05ckr9tkCHHeGY=;
        b=TiDgRH/4zg97mpyQ4hzr1E7v38SSR63BvtvaCV8vhDQJpEirgG+YpcmrV6pOrEpNYo
         u4J0Xe0kJF473zet/WBDSOQooM5r8F8R8XXq4ITDP6w27SHyu36wVVgds5bSCFeioeb4
         N6WiMIR85xIzb3qZC+PHfV7PbhWT+ZJr0MNrA8vCMpPazqFcQi8N70OgmC0kJ9us/6NB
         qaGk08acXY1/XNKuu08OvgwH2T+A1FVHZ2RgA6WSwesssOIMouoxExyvnrK69Ih4+lVm
         HwnNnRToUK3WsVhbFlCppj3I2vCdgB2inutNHJhFRYVN8NGTpyRbuofv2e8GlkWue5/v
         1vRA==
X-Forwarded-Encrypted: i=1; AJvYcCXxS5GuC1GqnGipQugpMYG3iTNSqu0cxOS1C7X/FZAIGY/oGVT+jdzIH5kAbKWhLyR7LKQq/GPAlwAE@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7Gjri4ZzPCmcXgkgEOPNG8yCOjbN0F8w4GHBrQ51gKm/7dHmM
	WtYGSnC4jAAQlilL/csQgu6V2jcz3uTOw3DXgZLMV6JrAlAUqA0mccHWoPvxbAn8BTg=
X-Gm-Gg: ASbGncukq/8u3/UyG7M1BqRSirY4B01nKox9+oXT4/qboGCijIG94nusKO/ZPcFsmKS
	Uh0EJgeAXRXLnJZqvk3H4t+GyOqq4Y4cDDYVlLxwo0L5tPess7BYOSdCo1tBE70vf3KlIB7x7oj
	daeFkYSMdx/q9fIFs8ij4yVszrSmFijFeUPDfku2Vd3W3gec3Q7nkhaEtgL2B3iQmJb6fMw91WY
	3s+Y0A19/+49NZzZ4aWoUekXohC1yiT2nmNIPzfcUteYNpbAYuD0GxjOPsSb5S3Ntlwfde9XoNq
	gOwHye2uBYHsEXmZGcaUJLLTTbE4si2KHQAHNcSgnUZT5uMnM1qYuQQQY9HaL0gM9KnedWVt3Go
	HVrXVFGKdA3DcKoVotNOtJ9J2zwTOWyyixfI=
X-Google-Smtp-Source: AGHT+IGi995dmBrb/2Bf+v4TOAYVLEzAcRx6/H11eC1SAEVv/9wy2tgK9WC20nkFydysTHvJuQz9Ug==
X-Received: by 2002:a17:907:7295:b0:ad2:2dc9:e3d3 with SMTP id a640c23a62f3a-ade1ab32464mr349066166b.57.1749222194843;
        Fri, 06 Jun 2025 08:03:14 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc38cf2sm127735066b.121.2025.06.06.08.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 08:03:14 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Jun 2025 16:03:02 +0100
Subject: [PATCH v2 06/17] dt-bindings: firmware: google,gs101-acpm-ipc:
 update PMIC examples
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250606-s2mpg1x-regulators-v2-6-b03feffd2621@linaro.org>
References: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
In-Reply-To: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

In a typical system using the Samsung S2MPG10 PMIC, an S2MPG11 is used
as a sub-PMIC.

The interface for both is the ACPM firmware protocol, so update the
example here to describe the connection for both.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../bindings/firmware/google,gs101-acpm-ipc.yaml   | 40 ++++++++++++++++++++--
 1 file changed, 37 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
index 62a3a7dac5bd250a7f216c72f3315cd9632d93e1..408cf84e426b80b6c06e69fda87d0f8bfc61498d 100644
--- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -36,6 +36,15 @@ properties:
       compatible:
         const: samsung,s2mpg10-pmic
 
+  pmic2:
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
@@ -52,7 +61,9 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/regulator/samsung,s2mpg10-regulator.h>
 
     power-management {
         compatible = "google,gs101-acpm-ipc";
@@ -63,12 +74,20 @@ examples:
             compatible = "samsung,s2mpg10-pmic";
             interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
 
+            vinl3m-supply = <&buck8m>;
+
             regulators {
                 ldo1m {
                     regulator-name = "vdd_ldo1";
                     regulator-min-microvolt = <700000>;
                     regulator-max-microvolt = <1300000>;
-                    regulator-always-on;
+                };
+
+                ldo20m {
+                    regulator-name = "vdd_ldo1";
+                    regulator-min-microvolt = <700000>;
+                    regulator-max-microvolt = <1300000>;
+                    samsung,ext-control = <S2MPG10_PCTRLSEL_LDO20M_EN>;
                 };
 
                 // ...
@@ -77,8 +96,23 @@ examples:
                     regulator-name = "vdd_mif";
                     regulator-min-microvolt = <450000>;
                     regulator-max-microvolt = <1300000>;
-                    regulator-always-on;
-                    regulator-boot-on;
+                    regulator-ramp-delay = <6250>;
+                };
+            };
+        };
+
+        pmic2 {
+            compatible = "samsung,s2mpg11-pmic";
+            interrupts-extended = <&gpa0 7 IRQ_TYPE_LEVEL_LOW>;
+
+            vinl1s-supply = <&buck8m>;
+            vinl2s-supply = <&buck6s>;
+
+            regulators {
+                buckd {
+                    regulator-ramp-delay = <6250>;
+                    samsung,ext-control = <S2MPG11_PCTRLSEL_UFS_EN>;
+                    samsung,ext-control-gpios = <&gpp0 1 GPIO_ACTIVE_HIGH>;
                 };
             };
         };

-- 
2.50.0.rc0.604.gd4ff7b7c86-goog


