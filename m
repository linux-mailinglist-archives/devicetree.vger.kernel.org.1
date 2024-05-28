Return-Path: <devicetree+bounces-69892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B88E8D1E62
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 16:20:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 53C18B223B8
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE36016F85F;
	Tue, 28 May 2024 14:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="A/JoJJPe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B32F16F84D
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 14:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716906041; cv=none; b=LtAJkdP9JayaMPbvRQQJXFborrUKMcWDDjFXhLsj5sEEgueeaej3VNAUTzZi1xT2Krwjuzl4xWXf1i5AJSMKyqoKo5xhK0FHEjPL0GcilQdvIYyer6R1aw+lkFzWqeTsbzccrnmj6t77DAEdBpTHgPPi4/mGlNz6pAVtX8/PshU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716906041; c=relaxed/simple;
	bh=683ZTRUzgOFpnsYMQxwIT3dRKS4VdbeBjXmV0/zmGIw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dUK/lfNoIT1r9UBlbi1+96ZXUNo4VgMZ1YyZWrOnPDE5UoDZCs/YOVpi6byqruUz8OEQIonW0uQzcUCL8XU5FcD8K8lMoPFetHZS0SzaHzMRgp/c6KdDc/mt+tuGeXf3LX4rtm4GALYP1mO92bCYjJB5qg8rNPidMsPAGp2omQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=A/JoJJPe; arc=none smtp.client-ip=209.85.221.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f67.google.com with SMTP id ffacd0b85a97d-354de3c5c61so661411f8f.0
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 07:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716906038; x=1717510838; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lJIq545QK9y8AX4JlRGPouvkbkoDYm+eR9amBtMPUNM=;
        b=A/JoJJPejPsOxwB8IuiucbI6ezfVIjX/17Q/nvLzQWRHqxYRShm8ihE1HLxkfdzhzI
         nbPs623yHIs92fW+pquLICyr0TyCNqnsVs4i4FYXm2LChdBSa6sDQNwx6XMCM1AgCwRB
         Evp0MoQNd9wvJs5hhUfuRghMZnHQhfAWati1lI4w/FxbCLbqlE8Rxby8h6Krl1bgNkuM
         bCGcc/lBDxkIyahSA0aCO1ERKcb9fwI/iK7KUVU2e2UH+RXfeyYGL1RuNpw4Kevyu+VV
         1TDrp45/+L/cS+Hn1v/wy5jRFl72rYO0EyNiiD4UKEtCd1ADFgfRJ7Cb5D/0UUmNGIEi
         abpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716906038; x=1717510838;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lJIq545QK9y8AX4JlRGPouvkbkoDYm+eR9amBtMPUNM=;
        b=htsJidbSXAGnVADwsin+g41KIr17/rt98lNmU8zBByGer2VXaC3NXfnYVpvA22e+f/
         fYUfKMLTllQKSouMlieT5alHgmncfawWxW2MyU4FSAfFm0ty2Owsi0r8WMAp0zBf0OZx
         B2m5FKOLKOGtpIXI71ypjyzTikbewjVoYGz3TWMMUeRseX2lMgAg2wrIZYCNkvDCnE2q
         tSXGSxHdwA1s+WyVNJ3tRMnZFMhktWtkCFYME37TBIy4MfVq2LPAlkBo4+PZ8ukY1bl2
         t7t74heQAUCEpnr3aMvoZEMwkYCph0QX44jbha4qFzoMeP4oax/cVGNyQmcA7YJFzS6B
         0hpw==
X-Forwarded-Encrypted: i=1; AJvYcCW4AHe9FwrrEai9L5JJz+pK5qjszZHsmGPjOe6H4eJ8astJc0d+B+BxV85bM5YxPHCJO9Bvfo0MhhqEEjN9DOui2ch9gPaXFi6tjw==
X-Gm-Message-State: AOJu0Yz8sOFdIrLaEDa0A7A+jusSIMNsp7iqLauO+qqG+B7ZuBMeyH6F
	2MB9iKnNZ0nj901GGSZ3PAxMBi2m719ny50o9v5TbQucyuQ4g05tN08RxDegQyw=
X-Google-Smtp-Source: AGHT+IF3FvDi4jMOALZ3OiK9MgNpFVAhQ84sNI68o78zApuPB0dqYxkHxn+M0cNd9xu6BiJS20mTsg==
X-Received: by 2002:adf:f585:0:b0:355:361:5672 with SMTP id ffacd0b85a97d-3552fdfa501mr8561849f8f.66.1716906037880;
        Tue, 28 May 2024 07:20:37 -0700 (PDT)
Received: from [192.168.1.63] ([2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35579d7db5esm11999275f8f.15.2024.05.28.07.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 07:20:37 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Tue, 28 May 2024 16:20:28 +0200
Subject: [PATCH v7 1/7] dt-bindings: iio: adc: Add binding for AD7380 ADCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240528-adding-new-ad738x-driver-v7-1-4cd70a4c12c8@baylibre.com>
References: <20240528-adding-new-ad738x-driver-v7-0-4cd70a4c12c8@baylibre.com>
In-Reply-To: <20240528-adding-new-ad738x-driver-v7-0-4cd70a4c12c8@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: kernel test robot <lkp@intel.com>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Julien Stephan <jstephan@baylibre.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0

From: David Lechner <dlechner@baylibre.com>

This adds a binding specification for the Analog Devices Inc. AD7380
family of ADCs.

Signed-off-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Julien Stephan <jstephan@baylibre.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/iio/adc/adi,ad7380.yaml    | 82 ++++++++++++++++++++++
 MAINTAINERS                                        |  9 +++
 2 files changed, 91 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
new file mode 100644
index 000000000000..5e1ee0ebe0a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/adi,ad7380.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices Simultaneous Sampling Analog to Digital Converters
+
+maintainers:
+  - Michael Hennerich <Michael.Hennerich@analog.com>
+  - Nuno Sá <nuno.sa@analog.com>
+
+description: |
+  * https://www.analog.com/en/products/ad7380.html
+  * https://www.analog.com/en/products/ad7381.html
+
+$ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    enum:
+      - adi,ad7380
+      - adi,ad7381
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 80000000
+  spi-cpol: true
+  spi-cpha: true
+
+  vcc-supply:
+    description: A 3V to 3.6V supply that powers the chip.
+
+  vlogic-supply:
+    description:
+      A 1.65V to 3.6V supply for the logic pins.
+
+  refio-supply:
+    description:
+      A 2.5V to 3.3V supply for the external reference voltage. When omitted,
+      the internal 2.5V reference is used.
+
+  interrupts:
+    description:
+      When the device is using 1-wire mode, this property is used to optionally
+      specify the ALERT interrupt.
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - vcc-supply
+  - vlogic-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        adc@0 {
+            compatible = "adi,ad7380";
+            reg = <0>;
+
+            spi-cpol;
+            spi-cpha;
+            spi-max-frequency = <80000000>;
+
+            interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
+            interrupt-parent = <&gpio0>;
+
+            vcc-supply = <&supply_3_3V>;
+            vlogic-supply = <&supply_3_3V>;
+            refio-supply = <&supply_2_5V>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 758c202ec712..4f162600e982 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -427,6 +427,15 @@ W:	http://wiki.analog.com/AD7142
 W:	https://ez.analog.com/linux-software-drivers
 F:	drivers/input/misc/ad714x.c
 
+AD738X ADC DRIVER (AD7380/1/2/4)
+M:	Michael Hennerich <michael.hennerich@analog.com>
+M:	Nuno Sá <nuno.sa@analog.com>
+R:	David Lechner <dlechner@baylibre.com>
+S:	Supported
+W:	https://wiki.analog.com/resources/tools-software/linux-drivers/iio-adc/ad738x
+W:	https://ez.analog.com/linux-software-drivers
+F:	Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
+
 AD7877 TOUCHSCREEN DRIVER
 M:	Michael Hennerich <michael.hennerich@analog.com>
 S:	Supported

-- 
2.44.0


