Return-Path: <devicetree+bounces-123462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BD29D4935
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 09:53:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8CDEC1F21FE1
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 08:53:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E9531CBE82;
	Thu, 21 Nov 2024 08:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1VXl2okz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF771CACEB
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 08:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732179202; cv=none; b=kQ/a6w2QWXvovpMTqpW8j+Tc9ev8c8+OI4WFFlabSlwCn3kCsM3tAdZ/i69Wu0NgHiCYhSFkBta0BoAG8VZIgaLx27qIEJ2hASxIvo3rJJ1CB7z42b5htMEmr2Lr+NrWiErFZnyOgv4apb4jWBTTZZfD0UvFs0EppqpW4fD2gv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732179202; c=relaxed/simple;
	bh=0rkB4/JpaPliiwIivH9y29TzVUpUltIbQ7I+cmLdwJ8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=crgcE6AFO6Y4RW9QargB+qStpJO8B7I0sEY3D0GASl4bs1v2jGhDr22BS/RMK1wIxNYwwcV3VbrdABsu2dIO27k3y9rESEnDw2G/622yaNW+AHpjaBV0AyWqkb+9DoYitps7foGzZLbn1dTPXzIuZ2rAdIdREHVEr6EE0Nco/T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1VXl2okz; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3824a8a5c56so414192f8f.3
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 00:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732179197; x=1732783997; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5MCyWyyuLRYxP0oH9ltkOsqfvK0CBscNjWxECImzBCc=;
        b=1VXl2okzBjUgcpoZcjy0baUrJOVu/ZY5pyY/UrkOSPOc0uSA8jX3NTx9nKuDypjL04
         PB7+OzLMK5O0QwBYRqK2DbjeEdUxmKS+M7aATNT6ZGAkt2I8dqX0lfu8XolR8fahapMl
         S7B1EDqdYC5Ee/9HhRQS5wNmE1sVJHJw00wjMJ1nfIy4s/zj6EXu9RTaowVUtsj/sJgn
         TotJmg1m21M78uONIT2klwl+0jeLSshGU4d1jdyFyPNZWMrAqadAmMzZWJ/JkmEK1MJg
         2R9QduVbfGexcS6iW1ytp59XQrJBHRGrjg7xAsnWXhUzl3R50HeyMRl0zKeRn5nrJYpX
         +a8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732179197; x=1732783997;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5MCyWyyuLRYxP0oH9ltkOsqfvK0CBscNjWxECImzBCc=;
        b=PaS13ERksqMNP9Sit0bBdcniVtQO5j2J1ZJVafntTiQjNV3gOS28hRKnegujPeR6DW
         gup4bAbvXiQKMtXkVGlLtKm/EdQ6ibqXP8DqAv6PRFc+bW9UazlqDgozWgIJCWg15kMG
         4GsTLLVtD+G2jzPGeDfLx/XJIQx+VPV3q1qjhlGeh2mw1b/TUq5rkOhTvSjyDau/tmCJ
         FtIt008ANzqG6yI1//sDSIk1c1zDzYPTg/ZgonbJJs6g1qJnsJeawmepVupR1/9NdCgj
         gZp/bLRXmBf6qyewgPx4VUWMvrSbLXMQbT9pUHqyIh0gX41C4KSyySuf/u5V58KtxJh/
         Hvjw==
X-Forwarded-Encrypted: i=1; AJvYcCUzXIA0lNOf4vNOB6n6pPXfe+pev2I4SEH5IFn7Brf4Vz69bx1EZFTRZbjI/YpUUiB3JQBsV+go0ADt@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4Nb3TCWyx+r1d+prcLgROWS+jtXZCShD2zS3CYURyzkaGHmvJ
	rinVAeIf0xJolxn93E79vcRrswJzziLWSphMQuVImteX1IFQMyJhC1NHjpwJbLzaf7jeHtP/nQi
	G
X-Gm-Gg: ASbGnctn0g65gx2LMM6x3Ba8m7B/njvd6et8tLeFqXMXjWae8FhGIbsgd0fY7MZ2gZo
	faVN47mJfbgMmVTg8PELUh07Gavh9ysZLtQYpi7NYLfGd00BJlpYps35tDTh5DMRo3x5KOi6WGV
	CCdnhK8BREjmURA7U0lNCP6HbSEte7HHPQckWPC9iE7/bzNJubp5yrEAIo2MPy2Xq5i3I/525hK
	B/a2+r60jyMzVzQBJ9HQqpdeppPj6dyY8l3lHUwP6frUDEGWmcn+BDJUajFp+haJmrcSoPnbH5C
	yi40YtrzbsmqThFQZ0eT9jwL0FQvoDwIohptcZqzIG4=
X-Google-Smtp-Source: AGHT+IEMIkoLdPBEX/9Nv5t80VVjflIxCN9/zIPP7NEINBt57fCC+7zzZNTiyW6G4qkMw3XegNJTaQ==
X-Received: by 2002:a5d:5985:0:b0:382:4a80:a616 with SMTP id ffacd0b85a97d-38254ae0006mr4981983f8f.9.1732179197597;
        Thu, 21 Nov 2024 00:53:17 -0800 (PST)
Received: from [192.168.42.0] (2a02-842a-d52e-6101-6fd0-06c4-5d68-f0a5.rev.sfr.net. [2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-382549111fdsm4219900f8f.58.2024.11.21.00.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 00:53:17 -0800 (PST)
From: Julien Stephan <jstephan@baylibre.com>
Date: Thu, 21 Nov 2024 09:53:15 +0100
Subject: [PATCH v7 1/5] dt-bindings: media: add mediatek ISP3.0 sensor
 interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241121-add-mtk-isp-3-0-support-v7-1-b04dc9610619@baylibre.com>
References: <20241121-add-mtk-isp-3-0-support-v7-0-b04dc9610619@baylibre.com>
In-Reply-To: <20241121-add-mtk-isp-3-0-support-v7-0-b04dc9610619@baylibre.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Andy Hsieh <andy.hsieh@mediatek.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, Julien Stephan <jstephan@baylibre.com>, 
 Louis Kuo <louis.kuo@mediatek.com>, Phi-Bang Nguyen <pnguyen@baylibre.com>
X-Mailer: b4 0.14.2

From: Louis Kuo <louis.kuo@mediatek.com>

This adds the bindings, for the mediatek ISP3.0 SENINF module embedded in
some Mediatek SoC, such as the mt8365

Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
Signed-off-by: Phi-Bang Nguyen <pnguyen@baylibre.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 .../bindings/media/mediatek,mt8365-seninf.yaml     | 259 +++++++++++++++++++++
 MAINTAINERS                                        |   7 +
 2 files changed, 266 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/mediatek,mt8365-seninf.yaml b/Documentation/devicetree/bindings/media/mediatek,mt8365-seninf.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..8bd78ef424acf1ec207b527b4a84b6a535f37593
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek,mt8365-seninf.yaml
@@ -0,0 +1,259 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2023 MediaTek, BayLibre
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/mediatek,mt8365-seninf.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek Sensor Interface 3.0
+
+maintainers:
+  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
+  - Julien Stephan <jstephan@baylibre.com>
+  - Andy Hsieh <andy.hsieh@mediatek.com>
+
+description:
+  The ISP3.0 SENINF is the CSI-2 and parallel camera sensor interface found in
+  multiple MediaTek SoCs. It can support up to three physical CSI-2 input ports,
+  configured in DPHY (2 or 4 data lanes) or CPHY depending on the SoC.
+  On the output side, SENINF can be connected either to CAMSV instance or
+  to the internal ISP. CAMSV is used to bypass the internal ISP processing
+  in order to connect either an external ISP, or a sensor (RAW, YUV).
+
+properties:
+  compatible:
+    const: mediatek,mt8365-seninf
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Seninf camsys clock
+      - description: Seninf top mux clock
+
+  clock-names:
+    items:
+      - const: camsys
+      - const: top_mux
+
+  phys:
+    minItems: 2
+    maxItems: 2
+    description:
+      phandle to the PHYs connected to CSI0/A, CSI1, CSI0B
+
+  phy-names:
+    description:
+      list of PHYs names
+    minItems: 2
+    maxItems: 2
+    items:
+      enum: [ csi0, csi1, csi0b]
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: CSI0 or CSI0A port
+
+        properties:
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              clock-lanes:
+                maxItems: 1
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+      port@1:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: CSI1 port
+
+        properties:
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              clock-lanes:
+                maxItems: 1
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+      port@2:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: CSI2 port
+
+        properties:
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              clock-lanes:
+                maxItems: 1
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+      port@3:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: CSI0B port
+
+        properties:
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              clock-lanes:
+                maxItems: 1
+              data-lanes:
+                minItems: 1
+                maxItems: 2
+
+      port@4:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: connection point for cam0
+
+      port@5:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: connection point for cam1
+
+      port@6:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: connection point for camsv0
+
+      port@7:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: connection point for camsv1
+
+      port@8:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: connection point for camsv2
+
+      port@9:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: connection point for camsv3
+
+    required:
+      - port@0
+      - port@1
+      - port@2
+      - port@3
+      - port@4
+      - port@5
+      - port@6
+      - port@7
+      - port@8
+      - port@9
+
+required:
+  - compatible
+  - interrupts
+  - clocks
+  - clock-names
+  - power-domains
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mediatek,mt8365-clk.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/phy/phy.h>
+    #include <dt-bindings/power/mediatek,mt8365-power.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        csi@15040000 {
+            compatible = "mediatek,mt8365-seninf";
+            reg = <0 0x15040000 0 0x6000>;
+            interrupts = <GIC_SPI 210 IRQ_TYPE_LEVEL_LOW>;
+            clocks = <&camsys CLK_CAM_SENIF>,
+                     <&topckgen CLK_TOP_SENIF_SEL>;
+            clock-names = "camsys", "top_mux";
+
+            power-domains = <&spm MT8365_POWER_DOMAIN_CAM>;
+
+            phys = <&mipi_csi0 PHY_TYPE_DPHY>, <&mipi_csi1>;
+            phy-names = "csi0", "csi1";
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    seninf_in1: endpoint {
+                        clock-lanes = <2>;
+                        data-lanes = <1 3 0 4>;
+                        remote-endpoint = <&isp1_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                };
+
+                port@2 {
+                    reg = <2>;
+                };
+
+                port@3 {
+                    reg = <3>;
+                };
+
+                port@4 {
+                    reg = <4>;
+                    seninf_camsv1_endpoint: endpoint {
+                        remote-endpoint = <&camsv1_endpoint>;
+                    };
+                };
+
+                port@5 {
+                    reg = <5>;
+                    seninf_camsv2_endpoint: endpoint {
+                        remote-endpoint = <&camsv2_endpoint>;
+                    };
+                };
+
+                port@6 {
+                    reg = <6>;
+                };
+
+                port@7 {
+                    reg = <7>;
+                };
+
+                port@8 {
+                    reg = <8>;
+                };
+
+                port@9 {
+                    reg = <9>;
+                };
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 4c7f9e37c5653664a11a2cb36aba942830b5a8d1..242c54c88a4a22fc0cbe5c4fc5d7b0d0f84b329e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14565,6 +14565,13 @@ M:	Sean Wang <sean.wang@mediatek.com>
 S:	Maintained
 F:	drivers/char/hw_random/mtk-rng.c
 
+MEDIATEK ISP3.0 DRIVER
+M:	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
+M:	Julien Stephan <jstephan@baylibre.com>
+M:	Andy Hsieh <andy.hsieh@mediatek.com>
+S:	Supported
+F:	Documentation/devicetree/bindings/media/mediatek,mt8365-seninf.yaml
+
 MEDIATEK SMI DRIVER
 M:	Yong Wu <yong.wu@mediatek.com>
 L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)

-- 
2.47.0


