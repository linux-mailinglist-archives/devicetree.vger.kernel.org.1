Return-Path: <devicetree+bounces-210551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EB179B3BE61
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 16:47:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 82DFE20194D
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 14:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2829C3375AA;
	Fri, 29 Aug 2025 14:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WLaTnBDT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0039C31CA76
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 14:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756478572; cv=none; b=W2uqu23O4OUb5LBak9VJ/KqdGqHsttRgLbxtGztzM7Bf/kCycRGznloSMr8v7uaGRxJjI5H2SEZzEpjf0d8SRBuwMHyXQSfterPPNvG1HRpEHBnJynwMLTLsDA4S6CNy8ThRJVsXYQEXpxP6Cj1FEMBiWqVRed0KSe0K25AUHGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756478572; c=relaxed/simple;
	bh=K3kLFy5AolmiZmDqbyc8Z1XPsjrCmMxQVG2QVl0nJMw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fl2HVCnC9zhMRNptpRYJQVKZy2wN3RWbMr8JfQNFzvtOb3C2C0RQInKNY0PUI4+103i2/M7lsZBuMJnIs21hC/mdfNCOu1FMGIUxin6pIFxx5gzKTXDEhmDklpzAZzVsxwp54W9qvp1K+qeB4DtRxhkrRPNcHVSajWAcx1ahIWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WLaTnBDT; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-55f6b6301d2so72470e87.0
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 07:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756478568; x=1757083368; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YmBc8dQru2L96M5/ueLwHF2ffKRnEDVJ8du/tOPy8lY=;
        b=WLaTnBDTKXdqhYv9dY2UpsTKIrjNHkepKg4EXRXtao8AZsXVAENUtnYyqqLelsSpBu
         rugQ2/Tt1jggJ78ukhXFKauPHBI1gGBYlkJayvitdSg9OgIHwyq/3mYrqYLW18UXi2WY
         irLVSGsUtFuKEmfHBbGxL2j2x29hJfcPGppTYjAS1HLXa8l/JIVvCvzFIx2P6oPfqWVN
         zptFBELQxNiUO/wpnh4/kbER/Q4SfadaEcSPsl9lkA7xpdXFXcewIn8dQwGtKgFPzozI
         IHlFkQu81lhkXV8x41B20tqP82MN3Jik9+TdEPDvXI0JUxWSqLbfW5Z9vSayIWxHVMbH
         JLbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756478568; x=1757083368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YmBc8dQru2L96M5/ueLwHF2ffKRnEDVJ8du/tOPy8lY=;
        b=W50Gety2XYBd4G0EdL9hf8B77mMKwxakQ570EbyhjedtxmDdPzXYlKc9pZW+9VK3ZP
         D2fWuy21TvlhfnbbJnMxix9XyIpDMrtuDnUg1h82kFGsP5oPwNb2/+gqkFDji3WzK6jr
         TgtJ8oY8RJ3iPJGgKfpentjS7cZMH/N11ntkVJFthjsoW2GwAPsYnvqFWrYyWu+PVONd
         4UmwmQe82bmVI5UTZw7xmBQkZaBAFyXPEx+wwInPl1urDp6SIZsT/CCo2QJYd1r2smT1
         JcSo2uToyUv8m7sbK8OVOaq7m72iTMUI1dBhoAu8QWcfsaJ6T1Rlumkvf1fDOkz5VFfd
         heLA==
X-Forwarded-Encrypted: i=1; AJvYcCVmCalJ5z+vbwtdY7hWX7i2RbJ5W2z7ewuZr71bGsEaF1/O+aToAJB0sof/3Gxb5yFHG+ZOdcGbSoF7@vger.kernel.org
X-Gm-Message-State: AOJu0YxqP4mPfHI/GvvrRnxJucgSSzxhYa0kfBy7G2HRpIh5HVN7m/SP
	z9Qf09GuaN4LFrdmuT5cjgEj7csLhibOKBoIOw6TTXYk1ItwbkeTZ/8TrgDdE8iXIVo=
X-Gm-Gg: ASbGncuPcjazI/bDvbfB9eedPkP6yDSNy3mXo/RfJe4FeeOf4nRNyE/RgT8wYo3YIFI
	X+pLcJryp/X14K0tn2+qGSBfM+yPog2OhDqC6Qr6TsyjB4nL/EDeYMgLqVdP0GAi8nAJTrpaPx/
	Y6N7PpG4kHM4n3EsJfTQdzE4DO0dvnAx/eC8xzWFO2f0NGWrSy8h8YgXL86WZCwUqrgvEMlK6i1
	dwG0+uNBK/KjNUS1eJjVsY+lJBlJBIYZAHvl15T+mVOAE2bRi+AnnozZ1R3t9hjO/Apl3DXrl3z
	BMHqmyzrQYoxA6lWn0S4WxciqayL8n4Nh3R6A1Hio68N9TT22DzKXvSn4yhgTcXLbpuNvmonz6/
	rmmCE8E08S9ZWcLZVnwQmVeJyZORVP68lh196+CPpY+/oJwJkJSjjB2ib3NyGIMTCmXp9ku0=
X-Google-Smtp-Source: AGHT+IF7rUUtxFHxoZwqCxS2mzNlq1hZ45aW3ccAi6YisO23zrpT87a/u8+0q7UOCZTHCaKP3DOOQQ==
X-Received: by 2002:a05:6512:61a1:b0:55f:433b:e766 with SMTP id 2adb3069b0e04-55f6b1db187mr255896e87.7.1756478567997;
        Fri, 29 Aug 2025 07:42:47 -0700 (PDT)
Received: from thyme.local (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f6771b237sm677240e87.54.2025.08.29.07.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 07:42:46 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tarang Raval <tarang.raval@siliconsignals.io>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: media: i2c: Add OmniVision OG0VE1B camera sensor
Date: Fri, 29 Aug 2025 17:42:41 +0300
Message-ID: <20250829144242.236732-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250829144242.236732-1-vladimir.zapolskiy@linaro.org>
References: <20250829144242.236732-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings documentation for OmniVision OG0VE1B camera
sensor.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../bindings/media/i2c/ovti,og0ve1b.yaml      | 97 +++++++++++++++++++
 1 file changed, 97 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,og0ve1b.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,og0ve1b.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,og0ve1b.yaml
new file mode 100644
index 000000000000..bd2f1ae23e65
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,og0ve1b.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ovti,og0ve1b.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: OmniVision OG0VE1B Image Sensor
+
+description:
+  OmniVision OG0VE1B image sensor is a low power consuming monochrome
+  image sensor. The sensor is controlled over a serial camera control
+  bus protocol (SCCB), the widest supported image size is 640x480 at
+  120 frames per second rate, data output format is 8/10-bit RAW
+  transferred over one-lane MIPI D-PHY at up to 800 Mbps.
+
+maintainers:
+  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: ovti,og0ve1b
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
+    description: Analog voltage supply, 2.6 to 3.0 volts.
+
+  dovdd-supply:
+    description: Digital I/O voltage supply, 1.7 to 3.0 volts.
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
+          camera@3e {
+              compatible = "ovti,og0ve1b";
+              reg = <0x3e>;
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
+                      link-frequencies = /bits/ 64 <500000000>;
+                      remote-endpoint = <&mipi_csi2_ep>;
+                  };
+              };
+          };
+      };
+
+...
-- 
2.49.0


