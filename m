Return-Path: <devicetree+bounces-207106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C98B2E846
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 00:47:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 964141CC250F
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 22:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5B722D878C;
	Wed, 20 Aug 2025 22:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rm2yW1z3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BF92C21E7
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 22:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755729948; cv=none; b=qB+XPI0XBvSVo1FMJ+45Pcd+IFGwJhYq0TG/GudEGCQ2I9gCIndzRGtjjg7SZdica1FzIw7lk4Ui7dC8Ntec4F2/rSsVl+Tn+HwT2Kl3FZZltwiyZFjapVzO29izZojA4vBdz5QrJrm4qCSYo2UAv1m3wAjH13klJiiXeSSWNc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755729948; c=relaxed/simple;
	bh=sNBRAIxNbZdgsi8xFjgbHnb3yy6AaM1inQVtnrPDCWc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NXYgDmOj+yyMoEcsYAHvEFMZ6+zi7RoayT4qfJkMgTU2Vs2lfOEnEZDXSG2nDZycPhPxnVC1mqCv6LTrr6VnfGdjOaSA0rcw5yat8Lu65DHB5L/79Ldkpnztl0emxCwEbK3f6arI8H4zqD3sIUwAZA8VBfmdXsInHx7sWERicSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Rm2yW1z3; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-333f914fb11so633331fa.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 15:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755729945; x=1756334745; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=se0PWCm1baVudHXLG+SyQGqop52+Sqr2SWWwd4AQrdw=;
        b=Rm2yW1z3qgSeqrQrN2FVgqaBcsPj8iAykEPZ31euj4SAlOIbOuRLISvLPOWPPjQETg
         wYkotqtrIcbX8DDQnt032z++SmUuB2jXaltM8yPP+yijO14bdzKOO5qt+U9UE3Cj9GH/
         FbWIAXmGa5IBNeyGwfxPwwE5/S0QJiYgGpy+eT+J+9DlTQZxH4VtXHSUegQnqI2ME+5i
         kz5HhMjqZA4tvEb1nIPinS1CrZ35aRhOSBJifPnsBhlc5dOIF1mcpY4+Nyv7xwK8pmmd
         EeFUgyhFa4NInnVJo5EhlYqVW6ym8HpdKYhmwVmnBktny25giUinwcuZE/Kjm5zQ4KVx
         Sz7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755729945; x=1756334745;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=se0PWCm1baVudHXLG+SyQGqop52+Sqr2SWWwd4AQrdw=;
        b=S0xg/bV5hlerbYVloSpruPQKphvzroRRjjgXP7LPKUBp4Eob6rYBh74Ufh3qAKh/R/
         OHnKurP4tEKoMIWZk0anQJ0Q15e3Zo+KKuEju7P1zXAN41pNCnQlD6QaMx3LLG7oOkJ2
         j2Ne2YvDInBXP1JshM32GPDJueVgt2fb/tZM0p0F0grcDHJskcq52HJF0tsC5s3YNRH4
         mWvhQeqd8Jtf/cX33ChI/c+kcQYGnmQ4bunp+rSlC0tb1Kqnr4C2anjAor2JgWvsZEGW
         vX2ChUAEH5xUN9NZI1TY48F/yrARGOlQ5mscXu4XPsXWP9uN1KIxVqz51slhEKPXuyT+
         xisg==
X-Forwarded-Encrypted: i=1; AJvYcCUINxiGaD3qwG2qEtgj24NwA8Zmxp0k6t+7YkIqjAkjKqZuvmyzt0CeMKPk4BlaVa3cACRrW/A1LDZU@vger.kernel.org
X-Gm-Message-State: AOJu0YwlgncaKlmy9p6jnxJJ4jU6iPt/uo4RkDb0MQvA9wik0GsqN2rK
	AS2GUyp0DxhgzJzPsaGOCWLcJNm5zTnyvXf4U3VMd5/hbS3QtuGhN620I35TItXjV0Y=
X-Gm-Gg: ASbGncsPhKvMmfh+8ww4TkpJbESd0OIeJ+De2OIh/I4hUePt+NmYjAE8h9CqYg3WOqv
	rfbeH/3eRJxbgJLu9padSFMLt/Dgcwy9+qDLnGCNVhP+ILD2hGEMR58gAkgtxc3ZHd6CtDxNewP
	nRb/OTi17nTFOSQ/j75Byj1PHDEqndoKitvnPjvFFyGxK2ABBxw58zXMnA3UI5mxMESmUcWlKNv
	frQ8BA7ai6NC4Klw45/a9xWwc8WQBIQj5OTY04QsTCda+FPPs901CeHyLsnkwKL6Mvoej8jmiA3
	6/xzD6Keqgo/1m8Y03ZUFmiL10MHclHE6ZxtZQENTmd3M4u+mmz5qZ0LHjv4YsZIShEq8CrcfWB
	K4at+M3QOrVAVYCn/dJZmx8egos4vhc77zS6YqAHawBN5QJ6ASW8ZipbzRoqpgK4N7nvX77E=
X-Google-Smtp-Source: AGHT+IFgDPIFpyzrmp+0Jb+k1QadHKIi03Ioz0Op8MsWA7On+Cd7YdpCeJux7HH4fqU0ld4SEvZhJg==
X-Received: by 2002:a05:6512:128f:b0:55b:889d:8ddd with SMTP id 2adb3069b0e04-55e0d5c1647mr66802e87.10.1755729944931;
        Wed, 20 Aug 2025 15:45:44 -0700 (PDT)
Received: from thyme.local (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3ffcefsm2763048e87.136.2025.08.20.15.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 15:45:44 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Rob Herring <robh@kernel.org>,
	Tarang Raval <tarang.raval@siliconsignals.io>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: media: i2c: Add OmniVision OV6211 image sensor
Date: Thu, 21 Aug 2025 01:45:40 +0300
Message-ID: <20250820224541.130229-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250820224541.130229-1-vladimir.zapolskiy@linaro.org>
References: <20250820224541.130229-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings documentation for OmniVision OV6211 image
sensor.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../bindings/media/i2c/ovti,ov6211.yaml       | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml
new file mode 100644
index 000000000000..5a857fa2f371
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml
@@ -0,0 +1,96 @@
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
+    description: Digital I/O voltage supply, 1.8 volts.
+
+  dvdd-supply:
+    description: Digital core voltage supply.
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
+                      link-frequencies = /bits/ 64 <480000000>;
+                      remote-endpoint = <&mipi_csi2_ep>;
+                  };
+              };
+          };
+      };
+...
-- 
2.49.0


