Return-Path: <devicetree+bounces-244180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E97CA24B3
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 05:11:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 14DA63064361
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 04:11:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C314E2F8BD9;
	Thu,  4 Dec 2025 04:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yEUW6Z8Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71BF2F8BC5
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 04:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764821504; cv=none; b=Hk6d8ObmRSlttTBOmZlmHFK9Trg6Td1GmzXQrp26JCjGk2mxfKLm9Nj871+BHGFopIxndro3D+4dtMAn4ANq+HGKnwHUZIKYKfuM0LLPugHzTm6QrUno/LZ/HUbdLAGVPhVHNWvo3C42DSf/wm2JTG3kwVdqYM87/x+4TVRrNPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764821504; c=relaxed/simple;
	bh=gIL+TWivA2uhLwER5Jpa28rIpzr3APwr/jS5t/hTjYw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uQuZCliwGNQ5pB4MSK2IdwR7lzlfVUjokqe/yDc/nACfQZOYPWfSpi1BE3/osCM1N0AUX1S3pmPwyDYAbqqI9yXwcCsoxFuF74Ut1Jg/xe2q9xBll+zX4MGI8nVOcaYXAKy6OcGIrERjbTjoL/H2tA7ZLwmCONoBpUBwBQeid9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yEUW6Z8Q; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-37a2d728536so383061fa.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 20:11:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764821501; x=1765426301; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eVgleDBvljzUApGSA0PgZ43pPHCzyhi6os873tb65jQ=;
        b=yEUW6Z8QSzHc2xQUERdSQ0a0hVGmTAYR3DfRxoMmZyjgWNnOA/gMGS8aPc85OT5Syt
         7BMNhBBucHOtZ34qktl3a5hk6+hpvg1T/80fj74sSirFgqxuXsQrO7l0BUBLSi44rn6z
         FZoEV0tKeNa621dzoaWBENPKORPyBOSkmEl3Ckk3yhlpuwWMS+IrTDRy2bnlHbuii/jQ
         4U1yxQm5pOi1WJhzv6z8BPeJR7Nz2GyoeDVbOa6Ezpa+6iMvmPxH09QYXeCnS0PLSqBM
         ShIYL+cp3t9px/eICI8nMUA87yVZkK0EU5VHxFnQItTikL3xuWe1Km80uo5rtOL5oMGk
         keAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764821501; x=1765426301;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eVgleDBvljzUApGSA0PgZ43pPHCzyhi6os873tb65jQ=;
        b=pJMIOLGZ9ftU1j0cbhtiwCqd6/+Z5U6QIWE4YAiabMreE6RWdxc/22kV1KklOVi+e9
         d5Rr7MpjXo51Bq8k0JRJfrpu28aYAmV1nhp/jMcyzwq7kcxcP0PYdDqFb3e3MsPM02yv
         0iW/OXSvgR8X9zzkDjZ07FI33VWu6si6tZBPP537yp3VW6J0Kc4Qa3yRix/di1RQLIF0
         8sC1pzQYvqPkU4Ltsx+I6Hk1Ph0eIhSJdkVTKw1Hoo9Cn0rGq9kPdm4IJ2/W8JVagrK2
         dcnopjeIoN9Zw4wpuIZLisk+r3gxhboxbUI8WaMCh/cWR5lM1w2CZzG5aaZIut9rVO6E
         kGzg==
X-Forwarded-Encrypted: i=1; AJvYcCVF5qsPwPp7KYzDG2C0XJnPdoXoFucd8SuRQeUwBERlegKscyD84DPThmndrD+ZgRu9Um+vl79/ePrB@vger.kernel.org
X-Gm-Message-State: AOJu0YwYsoG7+O0lReEZEwGoKPm1EbsVX9LYwT0iGmrAR8LkJm6iNLoZ
	qdw9CklybNJBcKYG79Nylg429E8SmIUKFmn0jLEXAphc7ZXVVhsamDoV6RNDRqiIlhs=
X-Gm-Gg: ASbGncvSPqdCYHLsJTsCO1Vd+5WsgiEezHmLmHvNdl4mnhCeC/WobOfGNNywNOu4ZIj
	SupJBKHR3Nwn6tX5DldUVSC0mOd+WUUL6pGfgUH6gTkzy7J1bYvLcUibT1v7IoDR/jmR5k4co+M
	hYSm+RO5byeNPcxZ6njhWxrgqQIPO3IpoWNf82ZcyrOLjKFaff9uon4RJvkKfbvIT/fG4CIvNsp
	CUGo8N/w0BvDTwfd2CcNxIRxVTChf9oiDDB7GwRWU4s/Ax3l4yIZUTtr9R69KKdteSi9KRO9h6v
	VtEH/M8Y8qM3o7q0/FpsmlrBiTFzOqJ4uLa54SwE9zQeD0Pvexrgcxxh+Bet6jVguG1nr6ZX1Ra
	tmBbC2WnKedKIK2bn3yTGmZ4u1x8AO85D2qxlf75HReTjXygodyHUKYih4N99xdRfQRDgCJhhgK
	JSIZNlgXUI9GtiTRBYioje/i8uSnyS0UrYwGNjNdhv+yPTKvAbtu1ang==
X-Google-Smtp-Source: AGHT+IGlnIJwZAQcLVQQdHlas/icM8wIh2nJGbhrjemj/PzUESEoTXNPETOzolXCzUIry1dsT/gZqQ==
X-Received: by 2002:a05:651c:210b:b0:37a:43ad:859c with SMTP id 38308e7fff4ca-37e66a5d675mr7600951fa.0.1764821500861;
        Wed, 03 Dec 2025 20:11:40 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e6feba575sm1984031fa.21.2025.12.03.20.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 20:11:39 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Luca Weiss <luca.weiss@fairphone.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: media: i2c: Add Samsung S5KJN1 image sensor
Date: Thu,  4 Dec 2025 06:11:33 +0200
Message-ID: <20251204041134.131707-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251204041134.131707-1-vladimir.zapolskiy@linaro.org>
References: <20251204041134.131707-1-vladimir.zapolskiy@linaro.org>
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
 .../bindings/media/i2c/samsung,s5kjn1.yaml    | 103 ++++++++++++++++++
 1 file changed, 103 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml b/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
new file mode 100644
index 000000000000..8f368ae044b4
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
@@ -0,0 +1,103 @@
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
+  per second, data output format is RAW10 transferred over 4-lane
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
+    description: Autofocus actuator voltage supply, 2.8-3.0 volts.
+
+  vdda-supply:
+    description: Analogue voltage supply, 2.8 volts.
+
+  vddd-supply:
+    description: Digital core voltage supply, 1.05 volts.
+
+  vddio-supply:
+    description: Digital I/O voltage supply, 1.8 volts.
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
+        properties:
+          data-lanes:
+            items:
+              - const: 1
+              - const: 2
+              - const: 3
+              - const: 4
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
+              vdda-supply = <&vreg_2p8>;
+              vddd-supply = <&vreg_1p05>;
+              vddio-supply = <&vreg_1p8>;
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


