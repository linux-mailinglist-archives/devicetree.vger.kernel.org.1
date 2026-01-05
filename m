Return-Path: <devicetree+bounces-251387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5109CCF291C
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:02:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BDF49300C148
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E5BF32C943;
	Mon,  5 Jan 2026 09:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CU6sNGfP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B059A32AAD3
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603710; cv=none; b=XAxlr+OOeNnjpK0ShVpmUVW+R2DuCdZrzIe93cf4HF5BV2RCi86tVQz/gn65D/CdAiJsrNUt1BOTYVPeAQViS5OQJIafzUvU9JRv+DcbwUMWnIoGuqYuIvk4j9RrCDABVlgsmDcuJOujfetu5R+QJTlwiaJ69abZLdJJ8Vv1hxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603710; c=relaxed/simple;
	bh=hNm58sAFzxOO0mLfaUIDAAaiwFh3P1PTvPP9/eE7na0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JhsqYkaMKjyGVrHQiJuaM/rfHGJjKGRKyl/Mrv9x0UDd2OjpluHWioUQnw09uKBBLgz+QmeQ9l1ogPRW1q6zcrb0AI69tEzg+lalJUumL9pYpCcDUtJOGtZZqYJBRMf7reDdYElgiiZ+d7F0e3XAtoNUT9KIypoQ9cQn8So+pKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CU6sNGfP; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-64d80a47491so3866266a12.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767603704; x=1768208504; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ijeoVSxEaKK4ZCy9A7Kh1hnl7BcwzYQpACu/LfWJKFI=;
        b=CU6sNGfPjRjGtCFF9PNwXdGiJjWjT0BEeTGyJQx3i8W+4tOFoBf5xmvKu7Hfhj+Yj7
         DA3KNvyL48ydRIKq4+PoHY6pTcj1Iv6JB6+672Dq/QQqHcT2thCWTBuGx26FPtlRA1md
         1cMBRbIEiICPI0zZrZh9Q+9vyxwp+sdXXlZdhxKlGCJ7wzSkjv01waaqRrTYHhW3sTSC
         Vb1JGdGPyc+PVanfFdYGoWXPoOVIoUUmH3KDabfonKLI2NNqHDd4P4pclu3JWCl1MRNI
         HimNfQVdsy1totQqOH59EMNQwpBv36Ar70exFlWiYs/KclBmBs3FqLLAEeUT92b9E7pM
         6A0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603704; x=1768208504;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ijeoVSxEaKK4ZCy9A7Kh1hnl7BcwzYQpACu/LfWJKFI=;
        b=T8ZpVVNU2eXaQkXLUfX371OVzm6ZxdNXJ/0mX2YEL/sc/w8VS1VYKOCtw8T8hQzNSf
         4VPefMXbILZZg5gYeuKT/ssSwun7tKd9Z4WR1Hoev1nDUw59vffwLY7LzkeXuqArcCLb
         BgdxArGBryjmp5Ey+ePE1UJvR/YD76LE0hHSk8melaXU4MCXYsROoERwvLsSGPFCrCAh
         2tqFLTbveCf6Cyfm6JKWyRvH5QN4QSn911bUBleqjw4KvL5neeVR0kvsQD6GnRNPeFwY
         P2RCeZgjv4mSF6nY3oyeoN9Io9MbJif10KRfNZ3AyTJO5Udj6CAHekF7Oz/ooFbVzcET
         2B9w==
X-Forwarded-Encrypted: i=1; AJvYcCXALPYXA4DLjZtU5QonnwmRadcSfht8YykPcucJySIvBr0n7YqbWwXgQ6s42QQ3LkRsmdJOvE5sawzJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzXeP3ITHJH3BzcfbaI5ZYOu0D09rAYeMbJGq2itBQ9H9P4SBO9
	P3PlUiMQbF+ji1lI94h5NBZvovuttICmR4kXcKsDkWL5diDH7PG/dacr1s6qqaId2TvlE96Ei6I
	s3ro6dfE=
X-Gm-Gg: AY/fxX7K9v4Gx88g9Uf/xH9xXeAEJy9vmPrt0FIQUU57caWx9+roCV9mU+wnYPny3uQ
	uERNxVLGtPXJargswlicZa4BRdb/BVLf5GBukclrY9ZjhX48LIuFL1vdZwNWoPj+H4xeE3IHBdl
	8fTkwG4bdVHkGvHydWXS6z6akllMl3pYao9A4JrPbMmvC6bXz2v/uNr/5+LW+opPUpiL6TwPkqY
	xDvbSWZtYZq36TU8emZUNcggDORTFG26vXiZXi7J934KPFPSPQxDL8s6Wm3/nPTyYyn1sbPLZlD
	VIpowJoPYWvnK/QtjG3fyU8Dw54thoKjU0LF1GO42IIRVedIXlwTRU1WeZ1YCSLTrtbhpSF1XnB
	lwOyhJde5XRPK0WpEvPitTaaV1XLjV3W8GdivHxLN7fbGgLC3P1ijQ6YCK1/Pc/p3Ybb0fo7wVP
	9/ZZ4VVexoTQDFt2lHUFdf/maNlCIzkwAPidD3W0IDqQFWsfhHmNM6J6wiqCe91krayFkFhW/pg
	XTYrfq3anK81k0q
X-Google-Smtp-Source: AGHT+IE8n/Fu/jQSAKbIUh2ys1Az7EC4ri6lI+KFhpXoGcrZlyKkPWAmWirhfo8QdIeblvQe0+kGzQ==
X-Received: by 2002:a17:907:3d09:b0:b83:1341:b656 with SMTP id a640c23a62f3a-b83e275e093mr711608466b.22.1767603704037;
        Mon, 05 Jan 2026 01:01:44 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0ecb9sm5384010466b.56.2026.01.05.01.01.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:01:43 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 05 Jan 2026 09:01:43 +0000
Subject: [PATCH v6 07/20] dt-bindings: firmware: google,gs101-acpm-ipc: add
 S2MPG11 secondary PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260105-s2mpg1x-regulators-v6-7-80f4b6d1bf9d@linaro.org>
References: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
In-Reply-To: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>, Linus Walleij <linusw@kernel.org>
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


