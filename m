Return-Path: <devicetree+bounces-222252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 235DCBA7768
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 22:10:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD2CB3A3C1F
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 20:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0CD82765C3;
	Sun, 28 Sep 2025 20:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CpqqMVxH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1410274FFE
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 20:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759090210; cv=none; b=rsNtqph5QdUGmaOc1DLjLH/I3t4+Vfh6HOlZPFhJurmlvUfrQC1oAvu0a4ll5uhtkMDgZlsQ7LXodxEGl5vl2x3pSogsn/rmeYRnv3Ou4eNZkK6OeBE7XTqz6LsXjXCyNFLkNG1JI1k/WOWJ0KzQTE1k4zoT5n44Jj1GCgo1WkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759090210; c=relaxed/simple;
	bh=WaoI4L4ViiBp1liQ86vJsoCGmxVIPhqRJ+vZlFNkqpE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Sib2Zv+6yGfBgFbxVLywoTeQWmfImzj237GLEt6AnGYaH+eerU6PWuUTxulzuN2HZvRba73Qw5/SxDHTfLBZS5h+vUqOUx+Gds3Fxw9v+8jOuwmmooks5g9KsnY5iYpBrVSsTtLW7F5ULoGrINZ+d+k0iux8KgwBOXRK070ct0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CpqqMVxH; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-58075580105so700447e87.3
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 13:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759090207; x=1759695007; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vZX7dVul9aiey7SJbxURiY51JkRUHGAe2I/z2ANkTc4=;
        b=CpqqMVxHQS/QDrfzXkqQVvlhbS/fH9b/dWlPlNAEq2t1sekI+nzI/M2YcljC74IB97
         sL3W2g5aF4h1g+XOS0qmNFHzW1JuHui/GNy9RVMMUfWv5ziqwQ+mkNKBkYvfAxLy5I+V
         gfJy19mol2W8O3mrynvpr3/cMKUV+c0ey6qbaS/b9WK1D4ff5G0h+pWfPTfccrTQLbnt
         s5Y2sn63qrIolrOJn6d/EEsgDG8pXq5rCENP9C4YHugP/6IrOOtRoUUrPLFMNpBVZcSX
         cUg2MwHP6rfpfUI+hU3iMwJqvCDmCA0cVNxOSaboZ66Z++QlMpC0JUBhV1sHGBcWQeDo
         HyKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759090207; x=1759695007;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vZX7dVul9aiey7SJbxURiY51JkRUHGAe2I/z2ANkTc4=;
        b=Q/VwroFsADUYaMb1MU+eh/ueKcyOF1zjev2Smm/Lf9XQy0mhQ2tEyVce2Bz2F4bP7o
         avko+uBZH73W/nLxKGRTvlnhRr7y0fADPFMiWS7/1MU9EpIdjRwU0sZGjeRipG7I9913
         ytn6Ws4AVtp0vaKwZERQ8J6jdJ/tyq6qcskQybqhexhTpDGf5aU71DkCQcW97wtvZpJv
         Hhej5xFHixqav2JRSv7SB6IKVycXd8PbpUMW0Wy0/798Lt2SeEq/LectwP3KROnxTuj2
         flzEUNWSW+u7WYe5mROrwuZcOvzoHFJ+ibb/HEEiqNds1aWSbanRC9fVQfaBhvITsLMI
         TDxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQCedM5jb63V/eomqDY59UabhI1hDpUK4iy+/3K+sBmG51CG6WOFoh4zZhwOgQEuq+wKMn2RIIR8Jt@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2jMB7IjiymmR65Z1j9Bb5y6i0QxLn5/Gf/ckJH4AtQFzw+RDP
	MMZ8uER3UGQkzBryUUM4hnoYjVmEjnbBZ1kcF4Ev8JKtHDKBBXXWcTwjTme2brMfio0=
X-Gm-Gg: ASbGncuNkVKiI3EN1floJbvcg6ljyY88qECfNZ85MNF+zJ1zVB9kIZQ3y1uuMd/xRUy
	WGqm44lphy3vJre3hCWRGinWFsC5Xrt3gaLJUb85iANP/2SX5m6Y/Hx1VfVJy/kw0a4jgflmpID
	O3NIL4U8nZ/NpEOCRGdDvmD/rSYd9teFBWU+hM35EK807agUeaFvXkg+o/o0d9OT8GT7UczFfr7
	b/ebA2Ru02XuV3hNYMbtGVc5imgSBlovLMHlNexKbBagHfVuQ2YnwOyCSLHD4SZ5PZHkjlh2sb6
	3qO9R6YGemE6rzMevhWqLrKqMTuSzloJWZoqx9WPQwkSrSz9mHxDW7sa2lgNI7DWZEyBxt+awb3
	PzQzAdLFpSxffBWl/hrbvaLqih3VijwN9TwytLbZRELi9cOWdwy1llZTMiWLkJ4outzyDEPu9Pj
	59
X-Google-Smtp-Source: AGHT+IFzxKp0dZCCiH9gEYXYenM+TLLvvVDmfQXz/RWbSQndm96JxyTP2TVjq6bdTFS9FohGq6K6Sw==
X-Received: by 2002:a05:6512:a8d:b0:55f:5965:e4e5 with SMTP id 2adb3069b0e04-582d33003cbmr2290827e87.6.1759090206823;
        Sun, 28 Sep 2025 13:10:06 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316656259sm3530858e87.70.2025.09.28.13.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 13:10:06 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Hans de Goede <hansg@kernel.org>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: media: i2c: Add Samsung S5KJN1 image sensor
Date: Sun, 28 Sep 2025 23:09:55 +0300
Message-ID: <20250928200956.1215285-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250928200956.1215285-1-vladimir.zapolskiy@linaro.org>
References: <20250928200956.1215285-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings documentation for Samsung S5KJN1 image sensor.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../bindings/media/i2c/samsung,s5kjn1.yaml    | 95 +++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml b/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
new file mode 100644
index 000000000000..3ff9631fec4f
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
+                      link-frequencies = /bits/ 64 <828000000>;
+                      remote-endpoint = <&mipi_csi2_ep>;
+                  };
+              };
+          };
+      };
+...
-- 
2.49.0


