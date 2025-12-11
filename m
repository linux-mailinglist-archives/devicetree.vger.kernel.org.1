Return-Path: <devicetree+bounces-245703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C6CCB4793
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 02:49:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E30A302EF49
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 01:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 149C026A0A7;
	Thu, 11 Dec 2025 01:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ROEdoZCK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CA6266B6B
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765417728; cv=none; b=BTVw9c3cYG+pbBTIM9wfm5YvXEP1u1FGWS+OEw8OGLY40ySwuNASoo5WRa0VGahHgms/0p6LffUczuSu/tv5mX7fHh2JDEn5mOXgTpLQdeYL8YypXDxK/v1Hp0VdQNZzFoRheZVz7x0dEkMhIH4BNc5CNxbIcGMmBKQJS0AMtlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765417728; c=relaxed/simple;
	bh=QdBqqfDNOpAQKzHE1tQ4FXPnpRF6omQ4FeX1zj4ON8Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RATnkZo6PAID/zz8ySXXmYRtaGpvqntT84VfeqO/TKsTkmFOGSRnWxrtm8FVotQTKRzP+OF0lKeZNk3EBG9/AmoVYcur+jzZG5HIw7ol0t08CsSvB7I3Q5B4OMB9Yh4qC6kqQaKs34pPKM9cE3ZCZSnDBc5yV/KUjaWMuxDyg4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ROEdoZCK; arc=none smtp.client-ip=209.85.219.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-882399d60baso4782196d6.0
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 17:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765417725; x=1766022525; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N9JNq6bdKybb9IZDvi+Tj4qzsFHfQp3SJjSyhV6i1LE=;
        b=ROEdoZCKcpUcMfoNWlYucBsZstynwC5H//tUeipKwtXSlssdUvP/KPmdTMDDDfEFNR
         8kIafsCJOOXbJQJl8WJAnFRPFuF5HGzWAhfQJn6sCgm/y5LzKQDbZ7xgD252DVyohvUN
         +uL7fK+MZms1oySz4zlHKBLCP9YvBEeKqHTjM0ZlSNnyB9Tn/VTNwWfCIcxzmg4SIyRi
         YCEgDYeM1hVOIAdREpEWKUr/KT/Tm6LclpzpcVu7eW5xcdjxfjPhmpqRcL1il0wGAaiQ
         ebjuNEH6kV5VdkRQk47EM/YQwhyRu/nmmcqZNvmIHxi+fXmVUENhFCu2ET7Kr/5Z+C7i
         3Opg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765417725; x=1766022525;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=N9JNq6bdKybb9IZDvi+Tj4qzsFHfQp3SJjSyhV6i1LE=;
        b=JZwoXWXiPbfJC1GQWhfmenRWh8OZfXPsJ6U/R231NBT3uO82PLTFOOkLMHO0nkHPQ9
         Co1QNJgx1YWUQgDOpyLOJ0n5EBekt9+/i01gEGy+eJB9DKVI1BwhrRjs1DcKqgsmKWXw
         HGx9lGDSKrfo5B/5gdU/juvF0WWp382SBgfZOhaF+BudvU0CzKiEnvTsxR5TbfWRHdmi
         y4av0+TioiusE/97eezC4HmtJ9GDw7GinleSOGTvBFu8qy6Z1k2tuNK4hKSzzVaQe77o
         VIAWcLtFy5wOQb0bmuq1L9kKvXPlL3EZ5r9ouNbFwtvMv8x8UL+3hV0QECAQTMlXrhvc
         o9xQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKow/yO/daGe3WOtE5CSv5MxAROy8rN/dCWcNBvwwAvMoLCynPVKdnQKGCcJ0P3XvITenRZ9E+/Vp/@vger.kernel.org
X-Gm-Message-State: AOJu0Yyim8BEC7jAAfXM1Oekfddga0AWhmb5DaH6yTa5vzx9FqulNWen
	oq4y0OWV4fW6Cbmtzqr31e/074WzcE8qZuW/GxipBFWgSY32ZlYhx2Z3
X-Gm-Gg: AY/fxX52vx5SGjPwqByhrw7BFzJwGgc7Oone3fPl11I92Xe6zT9aTQSoQ78nJgPaonS
	j7xNnwQ2md1yCe7c2hWvMfYnmGPcO6M3lmRExomSXqhFuki2rBFzgS46paUFV2vqEU1dxMUw6fp
	/+ypDQrWJVpc6UnXG18fW571JjAVCm3a7Rf4cKqVaZVT5fvzW9EQayQhQsB275RIrF/P2pb8JvB
	pyyp+/K4ig2/S1QJ5LJdgyDScRp1uqKNy4ZjjjTBJvBPVUkIVcahzgZUB3sEXh7zqlJEL4g9DmK
	BxEDa9kHKs2QedrkrCPXko5jqLbYojmnSuL68cY9/6wlkdQAhflRRjB+It7zlfP/UjzD7aOhvVK
	A7b9skfoEC6n84PJ656cL5OiG2Ul8TN4wz5fWadNjWgr8jum/g222ksJXTKxRKJZ4kVgEqTeNkp
	QD/HzarA/TlJKrzQ==
X-Google-Smtp-Source: AGHT+IHta5f0o4nkTV1MWaD9SlMxgp6rPn3E487tqAL2Uwjh7PWbhQIgGGj1rxIaKt3XO107B3L7Ng==
X-Received: by 2002:a05:6214:5091:b0:880:2b54:2b91 with SMTP id 6a1803df08f44-88863ae1ef2mr73086226d6.36.1765417725218;
        Wed, 10 Dec 2025 17:48:45 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8886ec2f32esm11054626d6.11.2025.12.10.17.48.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 17:48:44 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v4 1/5] dt-bindings: media: i2c: Add Sony IMX355
Date: Wed, 10 Dec 2025 20:48:42 -0500
Message-ID: <20251211014846.16602-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251211014846.16602-1-mailingradian@gmail.com>
References: <20251211014846.16602-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The IMX355 camera sensor is a camera sensor that can be found as the
front camera in some smartphones, such as the Pixel 3, Pixel 3 XL, Pixel
3a, and Pixel 3a XL. It already has a driver, but needs support for
device tree. Document the IMX355 to support defining it in device tree.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 .../bindings/media/i2c/sony,imx355.yaml       | 119 ++++++++++++++++++
 1 file changed, 119 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml
new file mode 100644
index 000000000000..9aa2c7b7ea71
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml
@@ -0,0 +1,119 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/sony,imx355.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sony IMX355 Sensor
+
+maintainers:
+  - Richard Acayan <mailingradian@gmail.com>
+
+description:
+  The IMX355 sensor is a 3280x2464 image sensor, commonly found as the front
+  camera in smartphones.
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: sony,imx355
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: mclk
+
+  avdd-supply:
+    description: Analog power supply.
+
+  dvdd-supply:
+    description: Digital power supply.
+
+  dovdd-supply:
+    description: Interface power supply.
+
+  reset-gpios:
+    maxItems: 1
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml
+        unevaluatedProperties: false
+
+        data-lanes:
+          items:
+            - const: 0
+            - const: 1
+            - const: 2
+            - const: 3
+
+        required:
+          - link-frequencies
+          - data-lanes
+
+    required:
+      - endpoint
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - avdd-supply
+  - dvdd-supply
+  - dovdd-supply
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,camcc-sdm845.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        camera@1a {
+            compatible = "sony,imx355";
+            reg = <0x1a>;
+
+            clocks = <&camcc CAM_CC_MCLK2_CLK>;
+            clock-names = "mclk";
+
+            assigned-clocks = <&camcc CAM_CC_MCLK2_CLK>;
+            assigned-clock-rates = <24000000>;
+
+            reset-gpios = <&tlmm 9 GPIO_ACTIVE_HIGH>;
+
+            avdd-supply = <&cam_front_ldo>;
+            dvdd-supply = <&cam_front_ldo>;
+            dovdd-supply = <&cam_vio_ldo>;
+
+            pinctrl-names = "default";
+            pinctrl-0 = <&cam_front_default>;
+
+            rotation = <270>;
+            orientation = <0>;
+
+            port {
+                cam_front_endpoint: endpoint {
+                    data-lanes = <0 1 2 3>;
+                    link-frequencies = /bits/ 64 <360000000>;
+                    remote-endpoint = <&camss_endpoint1>;
+                };
+            };
+        };
+    };
-- 
2.52.0


