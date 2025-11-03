Return-Path: <devicetree+bounces-234493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B25ECC2DD43
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 20:15:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 040E64EFB0F
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 19:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1FD5320CB3;
	Mon,  3 Nov 2025 19:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iMq5PpOZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E08D320393
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 19:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762197292; cv=none; b=KGYZgjkiSivQa/PvMhRhwTW4F4HVP6lPRpMfeWXQtDTSycDIa6thlBX+lUWST0/aT2S+3mtyC6r9DmlFbkZNd3DYSNm/NMp2CX5D7S72tMNOddPbRXyAZZ37ldDV16J0aOO9Pv7LMjLrWNuQmffojSQbNUHa/o6PNTxZNQ4GqiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762197292; c=relaxed/simple;
	bh=c/xrRD600w1Dsyuw4U+hAJBnYZyF9dXpxSSF3rQ6G0s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RwKiF2qdJniPzpVSsJTGNFZowxz6Dc//Jv+p3cKKGL2Rjzyxd22vl1XBxb+g8ZAcOc/3lyLiemiABcePMSS4thJoDRJXuIzmqQvDllj1+3Kdf0gPmRb8wTGKj5IOgNJIWbF6uDZXnA7ygHBRFnbHNS7ZNhIsFnCWO6HgCwAGtno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iMq5PpOZ; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-640b4a52950so1805399a12.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:14:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762197287; x=1762802087; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hpU3+dPMBGal6bIAhOfb10JFhOSohjDVXIH9FUT9R/s=;
        b=iMq5PpOZ5+33YJBuGg/lCjGFjd2KBqHC8X8O30/DXTnVzOQAH8gMpqY3Y+/1SKqZ1c
         lgKvQlb1/vG8k0CCTEYe4yKpIqqi5AFcbJJJE+NT3qKzThrL13/AEbRo0lsn68FfAviI
         JqrIbfe7ui8P0DJskMBnz5BSgpQKq2SihqDx35Gn0g3FDFPTgVEwOm1ud8N4Csl7WSG/
         5ILFp+wiZab9JaR0Q3hS9j62em3eAzXELHHkdS9HLWeRSfRHb1yt8mh9tI4Rb3Y7Dxv6
         KPsxFvLe6TOiVwfNh576nr4+8T+1REQqETVNLiRxiIdkKoUFJ2D7vdwRN5jPxUnCAFU+
         vDlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762197287; x=1762802087;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hpU3+dPMBGal6bIAhOfb10JFhOSohjDVXIH9FUT9R/s=;
        b=kbl8RVF5GzNpiLy3D0hzPEk8QLbFkjlEhCM9n78ljBE+MlgS8eNPMTZ/EQPMX9Fp6q
         rv5oBrj3fqdqqpm4w6h+yqlrZiNA1HfyI31wiL+PDr+YaELHrUaGwSqxlI87aYMtpX/m
         GcE6bekmeoCK2Wznz5NKMw1eVM8Y8dlOCdxAK3FWDK/MhIhYgBMpmxaro5j+4Upw5PWV
         V3yGtoXkgVg2KPDzxxWMF1QRFDcePaE+9pHs1iM6HX6k5zq0xy60ab/eF6WncTDxgcbp
         IJMQaotgS4ChdezSKaaLQZv1ClY9GenO/KsEyegp5qUmSuZkuE6xSX6194kUysEEttsc
         pNBg==
X-Forwarded-Encrypted: i=1; AJvYcCX7I/4/170/v2GrEMHWcoqQepxxa3s1xV2JFhvyCPeKuE6sOpK2cyJk+hmyX+sM36quv5cgN6BAPeVv@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7PuCjWYTxHpsls8xpftws0AQCHlUsauQgqPk6ahi7nTyZtzLZ
	EvFEsAs5nrgFrJ1rZexNijc5UOQYA5xRUh1l7b1RfZz8W30xvDrkSV/x3UoWt8w1W6o=
X-Gm-Gg: ASbGncss0oOY3L/SwI7J+lq8izL1kOVGvc0ADTAMhiTC4pi6uX59QtArt6eyGZrQcJf
	mgU5YQ4tf+PMAmB2H5VX5zvczqWEHZOqQtHX/F9d86Eb7EvpviKE7N0jhNYL6gZck4TG3jJE2IN
	i0noN6ZmRNnEmEhHLrEiu8G6tVObrmod/qOqdnszPCFkmZtvYN7+9B7k/iahqi6b5YnhmSMFQwt
	OcV37LjbavFoks49ACEMcpbkPyXneZAzPAH+4ArAj1C8coz43kneD/JgAIiXFnIYkwp5P89KP/Z
	kAHRAvbul53vqHWXXXmVY6kTWv5tikvpNzXrMhBr3pguBtB3LeA03ZEfDvG2reLZPWNm4EhEcZu
	h1ud23/1XgIfkjqQJMZPmPYJvMaQPnlBIng/r4SAYBRZm7wgPUU2/74qNVE68NZVFXFnrV1Nqkz
	17EUOWwhDqFrp8VQybKTWIcAYLMdDtnvO3+ghwj8MjsEabPEc0MmH7UObCzQM0kESFN+2O/DxOR
	SQhgSZcBg==
X-Google-Smtp-Source: AGHT+IGKx04tsYPLBvcqXY7Ecx3PC4XIi2xWV2nuoXlJTghX703VWRsq3RlhzHc4VON/CJmYFIqs2A==
X-Received: by 2002:a17:906:c10b:b0:b6d:8e29:8f67 with SMTP id a640c23a62f3a-b70701ae016mr1456556066b.26.1762197286776;
        Mon, 03 Nov 2025 11:14:46 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70b9f29c8asm466765066b.8.2025.11.03.11.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 11:14:46 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 03 Nov 2025 19:14:46 +0000
Subject: [PATCH v3 07/20] dt-bindings: firmware: google,gs101-acpm-ipc:
 update PMIC examples
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251103-s2mpg1x-regulators-v3-7-b8b96b79e058@linaro.org>
References: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
In-Reply-To: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
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
index 4a1e3e3c0505aad6669cadf9b7b58aa4c7f284cb..c25e155926e5f44bd74f195cdbff3672c7499f8e 100644
--- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -45,6 +45,15 @@ properties:
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
@@ -62,7 +71,9 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/regulator/samsung,s2mpg10-regulator.h>
 
     power-management {
         compatible = "google,gs101-acpm-ipc";
@@ -74,12 +85,20 @@ examples:
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
+                    regulator-name = "vdd_dmic";
+                    regulator-min-microvolt = <700000>;
+                    regulator-max-microvolt = <1300000>;
+                    samsung,ext-control = <S2MPG10_EXTCTRL_LDO20M_EN>;
                 };
 
                 // ...
@@ -88,8 +107,23 @@ examples:
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
+                    enable-gpios = <&gpp0 1 GPIO_ACTIVE_HIGH>;
+                    samsung,ext-control = <S2MPG11_EXTCTRL_UFS_EN>;
                 };
             };
         };

-- 
2.51.2.997.g839fc31de9-goog


