Return-Path: <devicetree+bounces-171840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E7BAA058D
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 10:23:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 94DC7485085
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 08:23:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E12A29C340;
	Tue, 29 Apr 2025 08:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V213g7fd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5CF22C322
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 08:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745914932; cv=none; b=KQ1IxNIy0mMzvA+p8VTTmEO3TgMSzg7gEB3jlW97uon87hfE8TmoIBUQD0PTxoooDHVUJW3LKHKmlywmlaEMbkjIAJ/Jqg3idoKa2MKT3o2z2B9say9ZTigfvIgXbaxlAZ6NiJu5EZmnxkWZ6uT0OiESQoDGormR3Ozf4Y5JzmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745914932; c=relaxed/simple;
	bh=4SBDb8RMix1AfTeAapS22vbsprNHW5kDlKivkfzgJb4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Atikxw2PyWY6Xo74zZ9aL2ZGgNiYq4s+9cXbNAKSguDHvbF3WLudwTw3hf+cimy+We2LgxK02K4iWVJ1kRy3tSDtCIIztXgE6WgT+QzjgdAR34kztZxFzknyusVBU1mF0TrWjacNMLNnPqoGj/FY8Y8HUBZPzURlqA01okHnqH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V213g7fd; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ac3eb3fdd2eso1002771466b.0
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 01:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745914928; x=1746519728; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UsPhnEzsIjMyr2jWNVlW883QIlYElONTjUn31M/bDFU=;
        b=V213g7fdjlzD8p0pydscPcSBtYQ2ey2pm02mGAtkuCKZXE+ufB8hHmidHEagPvSaqB
         FrJLdOpLwBOQ6dXgdxqqXYwE0/OnHZji3bdHZMPLlMyKPpYimz9V1poORaD40BEqrJe3
         zmJY+cAIbo2sfibyutyrhgttEVVkonQwPhnO66DqCkJcZpvPUA89Apy7h3lpygYGCzG9
         VkEBKxVgtcz2Ezw3fXK7gcEVo7UDZ4YTVhuIiU3JYb1E0AJyb2jhty9Y3jt/rEWhTQvU
         cEK5thfDTyEhid5YZlAO+w5j+PKktAiecXDVoli65xBQv7YonqrHPEmZgTFn5Wqd1iK3
         5eUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745914928; x=1746519728;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UsPhnEzsIjMyr2jWNVlW883QIlYElONTjUn31M/bDFU=;
        b=R8DAugws5Su8taSh44E6Uw7Le9Zyl8Ujw66x9QE6x/YjdfPAVFK9T7hMy/ejnlYR6R
         ytaAckr9YzGS0DHnN+KW6EpmCCGQkPJ2psrl/m8/dWlCnsIKs2QvVOtGnwIL6EyKqGJx
         K5ezl66FJUTaJuNvUe8SL1m6u4FZ4g73zDNtESX9hh0TXbU5nAX/4hEpquoQHwURjm7j
         m2+yPSciqGbLWipepeALE03rHWh8fLOT1/od3mfihK13WBxIs8FZtmyKZh+ZgOIsrA9r
         zFov/qFDrPDDbuGTojbTx63jQD5HC9VvlpvV2zZULsHVu1dhwBiLUyFX6sbSTFtZNyvz
         e25w==
X-Forwarded-Encrypted: i=1; AJvYcCUGWQFXkkW3ndNX1KYNpWqvJeP5hl1z/27Hj2FZw1tXFr3ryNLltAno0VEezSkro0qGPISezc8rf7HZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzYC7OG5fm7wSQBWOXDq2TOPQfw/9MFL1TuaLxivDexX3du/qi4
	p0n55ng0HETTK6+ZE5PN2G1E98QtHp7tt9mxx2zKo75hjU3zh+IpwcN1TFBoDvc=
X-Gm-Gg: ASbGnctDdqNL9TNx+jMLN2Bb/C/d/Mq10cmJmzNgC9yQcVxajPgqnZ97MvKFfJWhzNZ
	/5+QuZdgjA6oXCVma3E4sJ3L+zhOmxHoeWxTcrwzW2aD/3L2gfYLT98GUke95DCTg6AV6NZSQdK
	I0Plj8LlNzHZ9fa04pA1DJr0cmm/hHG7FwaTDpNXK/8CwJvoFMS0xjzaXNBxGqAHT29S8L8R4U4
	QD2ZZ4PWvKTzMPo7yJIAg4B+98Tr+svodJTViSYFhhyqAcBhUBFbagNJNlGKJ/Og9h18JY/1AEV
	xnr8CNTBN5YoDxDh2Xb/oMkjVCwBf+bmrWUPYj3BltCVWoPEI7oTbGYM3tlMiLoRywhRCIpTswY
	b09V1u0qufQ1amEtXRD+ueYOq
X-Google-Smtp-Source: AGHT+IFKdKniSEsGUnq1iYx8etj6NA6NxBliPsow0jh+bOsIlETHYTkVhBYFIQ8GlA5A8lzlAc2nDA==
X-Received: by 2002:a17:907:7b9a:b0:aca:c924:c14 with SMTP id a640c23a62f3a-acec69721e7mr248138766b.17.1745914927654;
        Tue, 29 Apr 2025 01:22:07 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41bbf4sm737905466b.36.2025.04.29.01.22.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 01:22:07 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 29 Apr 2025 09:21:37 +0100
Subject: [PATCH v8 1/6] dt-bindings: gpio: add max77759 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250429-max77759-mfd-v8-1-72d72dc79a1f@linaro.org>
References: <20250429-max77759-mfd-v8-0-72d72dc79a1f@linaro.org>
In-Reply-To: <20250429-max77759-mfd-v8-0-72d72dc79a1f@linaro.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Srinivas Kandagatla <srini@kernel.org>, 
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-hardening@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.14.2

The Maxim MAX77759 is a companion PMIC for USB Type-C applications and
includes Battery Charger, Fuel Gauge, temperature sensors, USB Type-C
Port Controller (TCPC), NVMEM, and a GPIO expander.

This describes its GPIO module.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v2:
* drop 'interrupts' property and sort properties alphabetically
---
 .../bindings/gpio/maxim,max77759-gpio.yaml         | 44 ++++++++++++++++++++++
 MAINTAINERS                                        |  6 +++
 2 files changed, 50 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/maxim,max77759-gpio.yaml b/Documentation/devicetree/bindings/gpio/maxim,max77759-gpio.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..55734190d5ebdbc351e1f91675dddd8a9db80cd7
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/maxim,max77759-gpio.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/maxim,max77759-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim Integrated MAX77759 GPIO
+
+maintainers:
+  - André Draszik <andre.draszik@linaro.org>
+
+description: |
+  This module is part of the MAX77759 PMIC. For additional information, see
+  Documentation/devicetree/bindings/mfd/maxim,max77759.yaml.
+
+  The MAX77759 is a PMIC integrating, amongst others, a GPIO controller
+  including interrupt support for 2 GPIO lines.
+
+properties:
+  compatible:
+    const: maxim,max77759-gpio
+
+  "#gpio-cells":
+    const: 2
+
+  gpio-controller: true
+
+  gpio-line-names:
+    minItems: 1
+    maxItems: 2
+
+  "#interrupt-cells":
+    const: 2
+
+  interrupt-controller: true
+
+required:
+  - compatible
+  - "#gpio-cells"
+  - gpio-controller
+  - "#interrupt-cells"
+  - interrupt-controller
+
+additionalProperties: false
diff --git a/MAINTAINERS b/MAINTAINERS
index 906881b6c5cb6ff743e13b251873b89138c69a1c..0c7bf694468e9798946baecdfd03d6eacdba2ce3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14663,6 +14663,12 @@ F:	Documentation/devicetree/bindings/mfd/maxim,max77714.yaml
 F:	drivers/mfd/max77714.c
 F:	include/linux/mfd/max77714.h
 
+MAXIM MAX77759 PMIC MFD DRIVER
+M:	André Draszik <andre.draszik@linaro.org>
+L:	linux-kernel@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/*/maxim,max77759*.yaml
+
 MAXIM MAX77802 PMIC REGULATOR DEVICE DRIVER
 M:	Javier Martinez Canillas <javier@dowhile0.org>
 L:	linux-kernel@vger.kernel.org

-- 
2.49.0.901.g37484f566f-goog


