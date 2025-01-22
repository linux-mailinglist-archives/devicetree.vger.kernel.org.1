Return-Path: <devicetree+bounces-140319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70817A19326
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 14:59:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE1D23A5D20
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 13:59:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B89A214208;
	Wed, 22 Jan 2025 13:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YddtzsxG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E962E213E70
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 13:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737554358; cv=none; b=rggP5QGjQRlf3KVm5+SBxDS4wEhrAGtv2E7oJfCaHuGcoLz1bxQ6QE9LMRG3BHhVi0/om4wB9tLd12fCxhRRTmR6YeCJU7oahH63NDk4Ct7CmiH6nLbMWI90M0LHa3Pr3wpPZSiugzENOAqSPRx7eNRuDIbULXStiZyr1Cyy/H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737554358; c=relaxed/simple;
	bh=2mg4ud491YCsxdCQj8QatFOmd33g0+iifRf4nr2kdaQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mtUeRYVgxmfVsSiuyKUsM5oFVM/m2Ri3TpvjdmEWeJYVwzrL1w7DP+sfKQusyfLKIGmr9woxo5g7lzS1fq/jls6tgLAqUFzezPqquuKhgzCZnk5UeqqXe5sq4aRa+f6F/4HLMskWodtm9d82F29ScXATuf9+SSW1bnC3ToO+MHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YddtzsxG; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-38632b8ae71so5609140f8f.0
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 05:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737554353; x=1738159153; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y2z2bj43jcDXnZEuGy40fENAq3lm4+rnyqgg+AVG6h0=;
        b=YddtzsxGUDMY/lZoXIZFwS1ncIWCHIZOeFCpcWBwVhByMSvqLSAJtIaUKyzbTq3zmh
         jEqBbUs15eMd+nPQaSeQGdnCwkQxOL6EiuU7JBNafNeZ29AraMa0/OKDN2as0lSBbGnq
         +8NeO5Px7MVUSvlpyrnJeErNbHhmqQ9+tJZRuMs1n9uzNO/80bbmVSS7i+3dpRBrdk7H
         ZNlI65GBxDQ7U99dvCjOlSPkeWS6ijNKLHmdR7iKl/HkqHTbt9wThI/GRXjuNsyxNDeW
         zysKZ0zMOhk+kieSh0M5wJxtpSkG8C2V+/a0Xe0AVf/elW5sJoKadIfnSYeojQa7gIpA
         jBfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737554353; x=1738159153;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y2z2bj43jcDXnZEuGy40fENAq3lm4+rnyqgg+AVG6h0=;
        b=MnVqb4yAfb/qiNnjDm/B06VZEJFBkLORu32RcwI+Xe9hoaKCSm/TXdQf1q9XE1n9Hc
         I2LXAoeu4cAmkdCHTX1lS0PZSg5o3qtPF6B9NzmSaalx3iK7RuD6QTLvmrRgQVrPpd4k
         spIIRFdPuby4iI+U3xX/dW2gaAENtYjqi+iIMdJSl1XFfk95U8uCsXMfhbFFjior3SWe
         rUWpy/AmZyS9W5wITkCGqqN+ryg5FYf/IwrtI+Al5o37+qFG0rAQZG09OxF/h7d4j22W
         JFA5CFkAsScXvQIbMtEdGK6jFxSNwMO5dggzQA3G93wAK5OXS2XOTxM9aVzFo1Rw2lGb
         ZY+A==
X-Forwarded-Encrypted: i=1; AJvYcCV+TMS2x4M4JyliZ3anVdjd1QTeEcWK9wn6pImH+crt+9FDH6rVC2c6ncXe0f2AF8sXQy6LaVhUCjV/@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/zyHoe7wJ8rxp/9yOO/B305Hl5yuDDNM8cvR0y9DR91WIV/20
	Pohnxv+5VCWzfUFAm4uhcUZUAUTNV6bArSv0f7xHcQAwMEZY/iHWn1LLE1Y8SMz5qgakz4oz1kb
	7JQ8=
X-Gm-Gg: ASbGncuO0da1wte74ickTbzMVlZcLbpCOOKPHJGGIbz0fNQplHOZ9TkJH8Xn/nPlGrT
	OWtlobD0tXlWYMY3ea9JEJR9eX0ocWzYAMEMAAFP74bNFOTutR1SIjw2E0SKv/hP3tl+d5Y90yM
	w6bNnWFFT7PzTCvL7cTjXYhYAbwLLdh1jY99Wd5aFjXKsjd2JP647AuubsU5mIKiLmz6hdZrQWf
	+orw6+41JXvbumixJW0ImWubxtSyB8L3P4i6Ua8kYl5ue2nrhMIqeEmSlh89t2tB1I2N+zf0mP9
	yTC6EqgPzReqnExLDSSW6AUgVMxjP6/h8WswrhHLksjCtSOW9oyvFfgGHN37hn4l
X-Google-Smtp-Source: AGHT+IGuyyYJX12iIGQa9Lk74DW0MGukboqie0XjRPjch+W8uUJE/NWYPrn1rrf+lS4ZTG8+mBnlxQ==
X-Received: by 2002:a5d:588b:0:b0:385:f1d9:4b90 with SMTP id ffacd0b85a97d-38bf577f826mr20927156f8f.13.1737554353477;
        Wed, 22 Jan 2025 05:59:13 -0800 (PST)
Received: from [192.168.42.0] (2a02-8428-e55b-1101-1e41-304e-170b-482f.rev.sfr.net. [2a02:8428:e55b:1101:1e41:304e:170b:482f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf3278f06sm16418985f8f.70.2025.01.22.05.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 05:59:13 -0800 (PST)
From: Julien Stephan <jstephan@baylibre.com>
Date: Wed, 22 Jan 2025 14:59:10 +0100
Subject: [PATCH v8 1/5] dt-bindings: media: add mediatek ISP3.0 sensor
 interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250122-add-mtk-isp-3-0-support-v8-1-a3d3731eef45@baylibre.com>
References: <20250122-add-mtk-isp-3-0-support-v8-0-a3d3731eef45@baylibre.com>
In-Reply-To: <20250122-add-mtk-isp-3-0-support-v8-0-a3d3731eef45@baylibre.com>
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
index 0000000000000000000000000000000000000000..0f118af05cd0b241a99fac9c469f027cba2f6a1b
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
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
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
index ce3f2904819f9dabd1859d102762c8d8f57496c1..a83db41ae0e9427e983e02f01aecb08193da3cd2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14754,6 +14754,13 @@ M:	Sean Wang <sean.wang@mediatek.com>
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
2.47.1


