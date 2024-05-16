Return-Path: <devicetree+bounces-67354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E715E8C7A92
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 18:43:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3B2D6B2240C
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 16:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAE8F4A2C;
	Thu, 16 May 2024 16:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=melexis.com header.i=@melexis.com header.b="Su9o7h43"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1153E6FD3
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 16:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715877751; cv=none; b=kNYL/oUasHNfRCG9C7pzarakY2+2E5Vfrg+Lla4b2+v30ou3fgm/PofimxAFy7ajZ+jWCKjT6YfQgFcKI/Ini/z7XezYHW4fY/lezqHeOjq6MFZk2EZ03nHFSclWb9VUG8PKm5pB89tthVDnZPnVqnlDKIE8UJSeNJfN6OWqqe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715877751; c=relaxed/simple;
	bh=qF09e4Yv7GpDkghetabxRfrKKsh5ptgSWxf8gO4YBvE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rLlYLD784NsNndFR9l4pmOeEc9eCcbctPVOCz7WgP6eJxWXDxnDrVS3IoTqgMfO730fcHYhzwDsoJZobjTs9Wiqe31iTNqsf5lOxDtC8Jurw3/GmRYVbZq6cMRpWpziYKgbBb1qhFj9yL51OMe7Fdpxtzw2b8exq+8BUX7Y+T8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=melexis.com; spf=pass smtp.mailfrom=melexis.com; dkim=pass (2048-bit key) header.d=melexis.com header.i=@melexis.com header.b=Su9o7h43; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=melexis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=melexis.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a59c448b44aso357144966b.2
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 09:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1715877748; x=1716482548; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EUku4Fwzj8r03nJASY3i7hrjy3KpdcN95EIZyP4+4HA=;
        b=Su9o7h433ebuOjPljcxHqltNnh8egzvBTafQsYmKYc8dFLy/p+HcKwoFLVgRs/G0js
         TQsWW/V4TDy7HhX+MLG4jUdYgb4R509SYpqzBoKW7ClgXoJ50MIaNFLQPhRVIKgHgVGT
         +4Kd8I6aRnJYYKowAZdPDTne75igLTQ04mrablros0fs/t5X5CugqdSQsOZZMP5XaCjf
         xlarxjxsoY9/aoSKM3Mko4myCajgVT297QmfAIoEtCGXHibQTbIaSYxG5EfU6OeTuxxd
         oZUEYVoAns6lgoBOh9M3yOTXoMF+q+Z/iKY7gQ+GoQCTZKqmFmVuhDgNMAsilLrMrvQD
         bxCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715877748; x=1716482548;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EUku4Fwzj8r03nJASY3i7hrjy3KpdcN95EIZyP4+4HA=;
        b=jh4URFzEPsEeK6L06H7KB1EEOB9T5y4/a7LrBSClGI8zF/AXylvjQNGnKeanlDeVLp
         UgNXX1iLueRDbxxqvNz3oyxk8hYR1J2kMFUHLYmHvOIxVXOrKg3Fzn+MIv38zVNq/Mg4
         ldJ0tPPiIYZDRIEzWj9/bPBXJUJJBxUcrBpEnn3gIXrPibE8T91klOSpoUPcHSGUPknS
         JQq8GLTEadpnckxG+iRIN1BOGo9yg+KRVMgY7yF4E63dW49L5liSqRZEfAckxMVa9lpm
         xjbelmfzwOGSpy90tEzajM9ORwl9e7+b1dOXUOdipUs/zMie/WSTO4Zw8lWeMi8fbiae
         n3ZA==
X-Forwarded-Encrypted: i=1; AJvYcCW70lwYt1mRtlwF1tcTKb81odkySdXTlUAagUMCjJd5A8pC76WQD3PyqsfKWhMviDnIl4UwmrjG2LMs1sQgg9tWbKVyZU2HWJKeOA==
X-Gm-Message-State: AOJu0Yyw4genQ3tC69iIgNCpj9L2al1uEb0rrkfaWix+rEFp1U1K+AnW
	kyNjyoJrd3Lu6+MJVoPUwgZ/gJjbJ05dlk86M31f89TPripndVf77l2pr1PzeA==
X-Google-Smtp-Source: AGHT+IGmKe5n9r/KMIy/YGQOL6TUNBLUMkWW6sojgBAEfMyEvqbDw9L+4dfmYWWR4DSYB5hVq2c1/A==
X-Received: by 2002:a17:906:6a15:b0:a59:c46b:c529 with SMTP id a640c23a62f3a-a5a2d3cb713mr1492630166b.0.1715877748592;
        Thu, 16 May 2024 09:42:28 -0700 (PDT)
Received: from melexis ([91.192.181.19])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17b01647sm996744866b.160.2024.05.16.09.42.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 09:42:28 -0700 (PDT)
From: Volodymyr Kharuk <vkh@melexis.com>
To: <linux-media@vger.kernel.org>
Cc: Andrii Kyselov <ays@melexis.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Volodymyr Kharuk <vkh@melexis.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 09/10] media: dt-bindings: Add mlx7502x camera sensor
Date: Thu, 16 May 2024 19:41:54 +0300
Message-Id: <2c47fdf59c79f52f49b8cf1f208d16fed5494b66.1715871189.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <cover.1715871189.git.vkh@melexis.com>
References: <cover.1715871189.git.vkh@melexis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree binding of the mlx7502x and update MAINTAINERS

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/media/i2c/melexis,mlx7502x.yaml  | 126 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 2 files changed, 127 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml b/Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
new file mode 100644
index 000000000000..7b86b6c5b151
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
@@ -0,0 +1,126 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/melexis,mlx7502x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Melexis ToF 7502x MIPI CSI-2 Sensor
+
+maintainers:
+  - Volodymyr Kharuk <vkh@melexis.com>
+
+description: |-
+  Melexis ToF 7502x sensors has a CSI-2 output. It supports 2 and 4 lanes,
+  and mipi speeds are 300, 600, 704, 800, 904, 960Mbs. Supported format is RAW12.
+  Sensor 75026 is QVGA, while 75027 is VGA sensor.
+
+properties:
+  compatible:
+    enum:
+      - melexis,mlx75026
+      - melexis,mlx75027
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    description: Clock frequency 8MHz
+    maxItems: 1
+
+  vdda-supply:
+    description:
+      Analog power supply(2.7V).
+
+  vddif-supply:
+    description:
+      Interface power supply(1.8V).
+
+  vddd-supply:
+    description:
+      Digital power supply(1.2V).
+
+  vdmix-supply:
+    description:
+      Mixed driver power supply(1.2V).
+
+  reset-gpios:
+    maxItems: 1
+    description: Reset Sensor GPIO Control (active low)
+
+  port:
+    description: MIPI CSI-2 transmitter port
+    $ref: /schemas/graph.yaml#/$defs/port-base
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          data-lanes:
+            oneOf:
+              - items:
+                  - const: 1
+                  - const: 2
+              - items:
+                  - const: 1
+                  - const: 2
+                  - const: 3
+                  - const: 4
+
+        required:
+          - data-lanes
+          - link-frequencies
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - port
+  - vdda-supply
+  - vddif-supply
+  - vddd-supply
+  - vdmix-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        mlx7502x: camera@57 {
+            compatible = "melexis,mlx75027";
+            reg = <0x57>;
+            clocks = <&mlx7502x_clk>;
+
+            assigned-clocks = <&mlx7502x_clk>;
+            assigned-clock-parents = <&mlx7502x_clk_parent>;
+            assigned-clock-rates = <8000000>;
+
+            vdda-supply = <&reg_2v7>;
+            vddif-supply = <&reg_1v8>;
+            vddd-supply = <&reg_1v2>;
+            vdmix-supply = <&reg_1v2>;
+
+            reset-gpios = <&gpio_exp 6 GPIO_ACTIVE_HIGH>;
+
+            port {
+                mlx7502x_out_mipi_csi2: endpoint {
+                    remote-endpoint = <&mipi_csi2_from_mlx7502x>;
+                    data-lanes = <1 2 3 4>;
+                    link-frequencies = /bits/ 64 < 960000000
+                                                   904000000
+                                                   800000000
+                                                   704000000
+                                                   600000000
+                                                   300000000 >;
+                };
+            };
+        };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 8fd282ec18dc..02a764f52a55 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14017,6 +14017,7 @@ M:	Volodymyr Kharuk <vkh@melexis.com>
 L:	linux-media@vger.kernel.org
 S:	Supported
 W:	http://www.melexis.com
+F:	Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
 F:	Documentation/userspace-api/media/drivers/mlx7502x.rst
 F:	Documentation/userspace-api/media/v4l/ext-ctrls-tof.rst
 F:	include/uapi/linux/mlx7502x.h
-- 
BR,
Volodymyr Kharuk


