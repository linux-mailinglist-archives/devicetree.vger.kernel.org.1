Return-Path: <devicetree+bounces-197316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC1EB08D2F
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:40:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0AEC74A0044
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F0B62D0C63;
	Thu, 17 Jul 2025 12:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hs/4HcAK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B8EF2C158D
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752756008; cv=none; b=spdpZViD9MJzGlDCxqQsNMPe3khI4zDdhEXsAyE2tE8fmKT+uACFoVr7TTsGqTYIp5lOPjPLL4KCK2/wP+4pcqzZMQOYkEDN2KeufzKs0hL838T0wzEucn5yLiROyNTyypiGZ0hSlp1fBvUYE+mhVdX2wWPfZPRD0/ZeVmB5YMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752756008; c=relaxed/simple;
	bh=iNcyV6f8QJhDFde6k2bHSrnKeQfUFrXm/xA266oY4fw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k4g9Ih4BX7tyQxewLKlHpp4gwmv34lbbyvSLcKVroBEaDum324btMFoXZTdt26lgk4Fggnlw1wPoDL7J2CpiR2bqGuxOfesMX/BKuHqxWAgV1iwkC9EVeydnVx9/dhCTjaHwuV98NrOXAQSBuKngCIM191xzkVFxQeYuVK2gXSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hs/4HcAK; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-32f474ded39so663131fa.3
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 05:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752756004; x=1753360804; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=veyGOvvYMjg6Y3VsI97vNOtI76vebSeLA+JieY8L0FY=;
        b=hs/4HcAKwvtnuTmBh4/NHkZKnl3+0P+72zIgFvx1z9w/oau76TXAW1jCMTDeV6P6BT
         YURtFc0I+T7lcd8BPXj/7l4bPZks1dAcR44WKhLz3+wIakxnda8tg16NHCXipH/whMmU
         L+oS8ip+TxzWAiUVpz2Ow1AsHGLIp8qusgKzi8Sax1ThtaRMMmZAaC6EpY/QJIm6hmE4
         FLy28wn9T+LroAOUSw/J5kjI26OsbMbNqrOz+VMFzi2+0m41hR/riClZCfx0zOIlu1RG
         PRneqbOey+ok2dk8CGHPmI5u4mHC8uC558e6nCHoUwTtmJQnO/UbID9TLhGoPwceL8kJ
         BDNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752756004; x=1753360804;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=veyGOvvYMjg6Y3VsI97vNOtI76vebSeLA+JieY8L0FY=;
        b=sTobmPETo/qKpvtYK6GZn9ItBSarp8T+tBqFkwkluM8MKKqmYJqeKMPo+QGoXdn2LB
         A+ww7bKZufWMnuqJ1ba6WBnbG1Vfu3SwH228TTILoxwFFQe79xVDYWLGzS/o4SnYWr0p
         imhg7d9w9vrleuElOXweH23MTgyRtjeEcOpItjvVJRZO1hJhTWQzrETVfgSJ5WWEnqMV
         58WUHkIePCEYd0oz3yRtQL0REfzE+i9yXZLeVMDkeqdbfEhc79YyfXbLvi0n1t5ETTs1
         jXQd70o0zKUvUS1F3hEb/Rvcl7jMCS6Y/WCouqvJ4bqMdxBOCvaS566J2uUnlSpL93k8
         KK+A==
X-Forwarded-Encrypted: i=1; AJvYcCVirkSEeL2iWRfHgGp+CrtqpAT7ArlrEap624kqCHdztPHyI2lcy0+eILIIshLvCkJuyucZ9/ghdrNw@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe2VrloiQncgrTDTXz8RzJBp1O+Mw6aaCbpD/Nl03y25emxw1f
	t9D1tw56hL0sxIeG/dkRjNnA3ilc08k0Jz7VprXlJePQVoZ9FxM96jm96equxymw7dA=
X-Gm-Gg: ASbGncvavsjLwGOsjor+z931Qi2b/Jw2xrF9ob9mKcAj6w5NPiSmc70X9X9Sn+rtR4W
	tdTjuaSkqaTttUtC8Ot3tU22KiP7oWai3Gs2dbSt1oNavdB7/7si2fKnRi/jFCoMPnN+Dwpu0+I
	XwJJr926GxdkfpD7e2SuBFpy/tSrmJULhkVEbNh91zAGf+b+B0HGpll6xVMKaFUFZ/JmxpOPOuE
	2DlprVXOJ7hN06zuPEzVQxDWR6mt6BB9peIKux4foBPB3unB5ZQjDZXhkvfYOvtgPjdeknQjIPQ
	NT1FMPRIEEwqTP8LES3SU40q3ghOacT2zv1ZnD1PkZK3gy9SpkxP8qZfHOzNVmXVxi5OMrqx2oh
	HLx1Uexwfkuy/Yoa88RRjaMpeA28f6l6RSMbV3q4Q+CyUPm9oSb4AkjAR8fRBc9V4StmrqxcbzZ
	0tdj+alJrQ
X-Google-Smtp-Source: AGHT+IEJV3SNb2vbOnmaE1rMX7I4DICsCPvaT2EF1G4U0v0KmDYj3ILlbUD36YawYoMfQlsDcPzJOw==
X-Received: by 2002:a05:651c:509:b0:32b:75f0:cfae with SMTP id 38308e7fff4ca-3308e36c4b8mr7861791fa.5.1752756004385;
        Thu, 17 Jul 2025 05:40:04 -0700 (PDT)
Received: from localhost.localdomain (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fab8ed701sm24624871fa.90.2025.07.17.05.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 05:40:04 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: media: i2c: Add OmniVision OV6211 image sensor
Date: Thu, 17 Jul 2025 15:40:00 +0300
Message-ID: <20250717124001.108486-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250717124001.108486-1-vladimir.zapolskiy@linaro.org>
References: <20250717124001.108486-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings documentation for OmniVision OV6211 image
sensor.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../bindings/media/i2c/ovti,ov6211.yaml       | 100 ++++++++++++++++++
 1 file changed, 100 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml
new file mode 100644
index 000000000000..cf00d350d972
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ovti,ov6211.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: OmniVision OV6211 Image Sensor
+
+description:
+  OmniVision OV6211 image sensor is a high performance monochrome image
+  sensor. The sensor is controlled over a serial camera control bus
+  protocol (SCCB), the widest supported output image frame size is 400x400
+  at 120 frames per second rate, data output format is 8/10-bit RAW
+  transferred over one-lane MIPI D-PHY interface.
+
+maintainers:
+  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: ovti,ov6211
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    description: XVCLK supply clock, 6MHz to 27MHz frequency.
+    maxItems: 1
+
+  reset-gpios:
+    description: Active low GPIO connected to XSHUTDOWN pad of the sensor.
+    maxItems: 1
+
+  strobe-gpios:
+    description: Input GPIO connected to strobe pad of the sensor.
+    maxItems: 1
+
+  avdd-supply:
+    description: Analogue voltage supply, 2.6 to 3.0 volts.
+
+  dovdd-supply:
+    description: Digital I/O voltage supply, 1.7 to 3.0 volts.
+
+  dvdd-supply:
+    description: Digital core voltage supply, 1.2 volts.
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        additionalProperties: false
+
+        properties:
+          link-frequencies: true
+          remote-endpoint: true
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
+          camera@60 {
+              compatible = "ovti,ov6211";
+              reg = <0x60>;
+              clocks = <&camera_clk 0>;
+              assigned-clocks = <&camera_clk 0>;
+              assigned-clock-rates = <24000000>;
+              reset-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
+              avdd-supply = <&vreg_2p8>;
+              dovdd-supply = <&vreg_1p8>;
+              dvdd-supply = <&vreg_1p2>;
+
+              port {
+                  endpoint {
+                      link-frequencies = /bits/ 64 <240000000>;
+                      remote-endpoint = <&mipi_csi2_ep>;
+                  };
+              };
+          };
+      };
+...
-- 
2.49.0


