Return-Path: <devicetree+bounces-227372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0EFBE136B
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 04:04:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A92A14E229A
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 02:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD5C120DD48;
	Thu, 16 Oct 2025 02:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y+Fw5Voz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F5F1F03FB
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 02:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760580270; cv=none; b=V+ePRqkPSnt/T68+x4NtF0HCK0yjH+gz88jNFp2g336SvULMPRlkaQ1O7HsEuJU5Uzo1MCVn2wmQUKZqCTTisv4iVcorBKyc+mrcyx2b7gySH5ttyxxPkSGIN32kIq+DJkIbks8QhMGTsb2EPKpYICUGZGfjG28VMEj3JHSY4mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760580270; c=relaxed/simple;
	bh=PoZl5grWD/NQZ3HMbnHj4LX4d7+4nvcz+PlDzUUThCs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BdwShsFmcgV29QcOW/tWxUsks5TUPU1ygSdY4JF9e0rZyUb9st7Qin3wZUINeEU89W7ox5doNmaMm5uxi8SNYFwyt7CHewm+ZC7jRgHT+skwxUEEXza19H5bjndCRTa0wToMCJteNzkSVjKD7EEqNvB+KgCh0H7T6FqPW/YI9y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y+Fw5Voz; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-58d8c50080cso31348e87.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760580267; x=1761185067; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tebtNfhgAB05GsDEYtuVI6Z+mVaFmi+5+oc7dw15j5Q=;
        b=y+Fw5VozOEiFOuPgKPBZ6wicZeyP2A8YXE1iC8E+XiQ37M4MbOlaZU3iCi/qwN7I4w
         KvAdM3zUj1YVS30pCHkOW+dIY49iiTJVDOKYcLpVuMC3dS6lGDB6zYWaMc9C6wAaAgH3
         /aAw2b0x5tA9aQn8kJzmYMQoLGkTKGEkbZTEKzHSSlpQX3h/B8+P2j0sWYbZnB/kjyw+
         fDU9VDDmsgvxyy8K8NMTssq3xzeICJPxFHIWCRK1U8ROzgkpbrF7pF76YaZ/Lypc/JgE
         Gogrv0mcUlbdPKIV/6p8svc5XAdzZvzZrkjPBY859Z7KofW0XohLPJqN2JFXNr/6po+3
         A2FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760580267; x=1761185067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tebtNfhgAB05GsDEYtuVI6Z+mVaFmi+5+oc7dw15j5Q=;
        b=aZ5qK97b3wU3xQv5IIflPDmLZzIy2mq5RlaeV2JuF17Dhzp9Xti1grQLq8D2GKAayh
         4XhFnETQ//Z2ex7Qy4gtl2C0ThBqe+Ay1g3bGxlmZ822qi8Le1O7y2EGDWglhKRgwx8S
         jOYV6Cu3dgDVRF/9IaFHsYDsqlgLalT4fH/KjFTxIwPjar6L7V2lwYLB9JSTi36r+RVM
         Eqhe66OY89x6F/ccFHCjgw4Ydz9bdesdUmIrL41NiLLF9WODlp/F4PX7vjQ15X8PncOQ
         cKnTkY4zKHsaOT1nvYO5nUYsqqTgmdA4T2qFZDsZZHHCCMuz+75/eWDipdZz9+PnOwsg
         OasQ==
X-Forwarded-Encrypted: i=1; AJvYcCWGwQP2ejAOXxQ3Rv4MPSNNv87LtCpawO6EY94qyqTi4/ZQVWCeBFOByk+2cn0V9zIVsRLQ3CgW67Sr@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv1BJqz4DpkbnfCZE9NM8fil+m/tZbfns2FVHDgYLbqhTrtTEU
	Wha8Cmknn8M6dRKLDdQ8VZM1CWYhysQhfQC/MSSfqqmGniLl7RaqMAjJ/8OFj3BrKdedXUQbIT8
	oqsbi
X-Gm-Gg: ASbGncsNQCT1MBbp0g0hzavGvudaw8BzKc8TMuP0+IOoiE9MS08P1rxjCASwHaENDG/
	RFtEgideOqOmcpMPdqE2i1jA3KapUovp31UwlIQqOeEKKXCjr67ZIE6fGoSKCL2t6BHi3YVBRwt
	nzks0FjK8Y8BFIeSBeXBNjlqbLEmZELk3+r3JDU6NJAAIpc9qLiuT8vXc6ddpLRL39z8uzTCDil
	a6lYxhN3bi6GSpqSpA8tEBAHiGfFGeNHVzY2WqY7cKQWIK6B9i8W3cB9WCqlqfKTZ/G1LzcvMGC
	Fz8IziuVz5B/pQkzfg5asNnc5cPHleZQCv7R8VCRCJ3XRha1R1WZZjyTMobj46u8YUgB8U0Qx55
	1AYk9SM2oUKP/7ZAvAcnyx+L2AxpgKp4a3ocMwdS2sPvK+fpRnmzBRaaeQzwR9/HA5Cek5Hl9gY
	3/YR4hGk7wxveOuilBlNgUsM5hWpJEG0UWdXKnDAWiFsQrCiI=
X-Google-Smtp-Source: AGHT+IHqfMl8gv1F8rsb4SStR8YvLqcKsNJa6UUQ2bSh0cOxqdo4nDlQ0B7TUka5LMWHCixYALln3A==
X-Received: by 2002:a05:6512:159b:b0:55f:5965:e4e5 with SMTP id 2adb3069b0e04-5906d8ed3f1mr5250959e87.6.1760580266879;
        Wed, 15 Oct 2025 19:04:26 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563c98sm6703951e87.74.2025.10.15.19.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 19:04:26 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Hans de Goede <hansg@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: media: i2c: Add Samsung S5KJN1 image sensor
Date: Thu, 16 Oct 2025 05:04:18 +0300
Message-ID: <20251016020419.2137290-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251016020419.2137290-1-vladimir.zapolskiy@linaro.org>
References: <20251016020419.2137290-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings documentation for Samsung S5KJN1 image sensor.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../bindings/media/i2c/samsung,s5kjn1.yaml    | 95 +++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml b/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
new file mode 100644
index 000000000000..2220b3e528d4
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/samsung,s5kjn1.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S5KJN1 Image Sensor
+
+description:
+  Samsung S5KJN1 (ISOCELL JN1) image sensor is a 50MP image sensor.
+  The sensor is controlled over a serial camera control bus protocol,
+  the widest supported output image frame size is 8160x6144 at 10 frames
+  per second rate, data output format is RAW10 transferred over 4-lane
+  MIPI D-PHY interface.
+
+maintainers:
+  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: samsung,s5kjn1
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    description: MCLK supply clock.
+    maxItems: 1
+
+  reset-gpios:
+    description: Active low GPIO connected to RESET pad of the sensor.
+    maxItems: 1
+
+  afvdd-supply:
+    description: Autofocus voltage supply, 2.8-3.0 volts.
+
+  avdd-supply:
+    description: Analogue voltage supply, 2.8 volts.
+
+  dovdd-supply:
+    description: Digital I/O voltage supply, 1.8 volts.
+
+  dvdd-supply:
+    description: Digital core voltage supply, 1.05 volts.
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+        required:
+          - link-frequencies
+
+required:
+  - compatible
+  - reg
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+      #include <dt-bindings/gpio/gpio.h>
+
+      i2c {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          camera@56 {
+              compatible = "samsung,s5kjn1";
+              reg = <0x56>;
+              clocks = <&camera_mclk 0>;
+              assigned-clocks = <&camera_mclk 0>;
+              assigned-clock-rates = <24000000>;
+              reset-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
+              avdd-supply = <&vreg_2p8>;
+              dovdd-supply = <&vreg_1p8>;
+              dvdd-supply = <&vreg_1p05>;
+
+              port {
+                  endpoint {
+                      link-frequencies = /bits/ 64 <700000000>;
+                      remote-endpoint = <&mipi_csi2_ep>;
+                  };
+              };
+          };
+      };
+...
-- 
2.49.0


