Return-Path: <devicetree+bounces-123463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAAE9D4938
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 09:53:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F8121F21E4D
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 08:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 842711CCEC3;
	Thu, 21 Nov 2024 08:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0K51CpJV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A448157E78
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 08:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732179203; cv=none; b=YcW6Do/Cc4V/srj+jeyKW8XCi1xkgHDixGyHSsmvDHuXcbU1in/nIeLOoTS22vt2QiNleb/q3oIsJFsvgTgdoRR27f9EoSP+LlJHcRLrDYFjxUud0XrbDHZ4N0pPwFGQJo/x0W3q0zK2UoOqA5fqdRBJQkvvDGqo+Npyiwb82lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732179203; c=relaxed/simple;
	bh=VcRZkRl52glLElGROP/kyPKKuC4UuiBlNv7MHYLPriI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QZFys/CvNfdW1XNppodNSWeRLhTkGA5b8DCgpTAy6OtdU1q57j6h53Hv6T2iQy4I+pMRh3eZ7sJGZLenaCwPCJf264Wtm4doc2DNwTOcgN3Vd9/qK0Y20qiua0FcxZd+LUy/d1YkZ+mQtIs8K12g0u3vzRbvxCM9myzujmkRTl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0K51CpJV; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3822ec43fb0so459123f8f.3
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 00:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732179198; x=1732783998; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BDQsEsIuIG+15FFvp5RFf0/w51W8dM3c8wZ8eGx3or8=;
        b=0K51CpJVsRtEvGPbmIQkr6X1vSlVrQ3C2Sum0SN9UF2rzGPuUg4tl4cRlyfo0i60W7
         OZsDz/i8fz6XTRGyfYgqvxV1s4Gy1MsAiMqnTiwPQezj5tOufKKMQ0Ti0y97K2ZhJDsm
         m32akw8vil85bYIXUptLRt5fr3lgHIQcxDEltH2GLQqkF5gV0dNtSPrEGLq8I58rdh+n
         wyuGQtjLbgr/lQj0KlODBDHdm4jQmoLuWuK5qaJMTyyEQgflGRroJCxz3JbNICIzV41K
         CpEmj9qqgs1u7BngIIxT15geBewTJe/fYgfvBqF6Zho7JisnT5ukwrTLeKO+VWeA+YgT
         GW/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732179198; x=1732783998;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BDQsEsIuIG+15FFvp5RFf0/w51W8dM3c8wZ8eGx3or8=;
        b=vbBpBqwz0Qngx/D799MVgjefmxxihIkUOwI5fIPfLTjCVdA6qBxn6o64oNByLxQrAa
         1QOpbiU5yoQZi++cV2jDdwlV+zgXINWNQvFDbFlZErcePZ3Mx+7yswJEm0PclFOioa75
         Ai9M4p1shU0SKtaw+PSbLeoWYMbxKbr8kCdEcRP0vWMA2u3OykQmVrh2Z9Q8Ac/1ieow
         rwoTAP99aSaLmYxK6QLkldQPQPcS4E6Zs6RS54ySkT2EufCH991gBcSkWuKJDlW3rvhT
         UJk/4v5GhzncS+6TXhXgCiKKoGsf+7+hBzkr1EW64T4+ixwuO+ryILvjYFsBDEHy5NMG
         ZtRA==
X-Forwarded-Encrypted: i=1; AJvYcCWEPZw0vqQemAj49pS2+ZLLRpuAimg+NzuOwHbVueNiaBrX22/ameCDktanBgaBnb30d0EYrU7cCgM9@vger.kernel.org
X-Gm-Message-State: AOJu0YyHB5ZZ9SVZytHcyg/ri15h1NIaH3FRlsn+f6PgauVXSwyVEEEU
	TMlH7wIR+TWcnbqsFWYH+3ZGKbeb/B7roC/K56WfdvkrCJX0M9FZz4fG0aAXH3Y=
X-Google-Smtp-Source: AGHT+IFBXGEL/v3q5aubHnM8Fav9mx+Z1bn+z8Isj/XnwmhflIinllJom4TbpB46wOLK9/cU6nIV9Q==
X-Received: by 2002:a5d:59af:0:b0:382:4cc3:7def with SMTP id ffacd0b85a97d-38254adf651mr3994848f8f.7.1732179198364;
        Thu, 21 Nov 2024 00:53:18 -0800 (PST)
Received: from [192.168.42.0] (2a02-842a-d52e-6101-6fd0-06c4-5d68-f0a5.rev.sfr.net. [2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-382549111fdsm4219900f8f.58.2024.11.21.00.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 00:53:18 -0800 (PST)
From: Julien Stephan <jstephan@baylibre.com>
Date: Thu, 21 Nov 2024 09:53:16 +0100
Subject: [PATCH v7 2/5] dt-bindings: media: add mediatek ISP3.0 camsv
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241121-add-mtk-isp-3-0-support-v7-2-b04dc9610619@baylibre.com>
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
 Phi-bang Nguyen <pnguyen@baylibre.com>
X-Mailer: b4 0.14.2

From: Phi-bang Nguyen <pnguyen@baylibre.com>

This adds the bindings, for the ISP3.0 camsv module embedded in
some Mediatek SoC, such as the mt8365

Signed-off-by: Phi-bang Nguyen <pnguyen@baylibre.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 .../bindings/media/mediatek,mt8365-camsv.yaml      | 109 +++++++++++++++++++++
 MAINTAINERS                                        |   1 +
 2 files changed, 110 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/mediatek,mt8365-camsv.yaml b/Documentation/devicetree/bindings/media/mediatek,mt8365-camsv.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..fdd07675645917fbcd692606c836efd07e50ac0c
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek,mt8365-camsv.yaml
@@ -0,0 +1,109 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2023 MediaTek, BayLibre
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/mediatek,mt8365-camsv.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek CAMSV 3.0
+
+maintainers:
+  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
+  - Julien Stephan <jstephan@baylibre.com>
+  - Andy Hsieh <andy.hsieh@mediatek.com>
+
+description:
+  The CAMSV is a video capture device that includes a DMA engine connected to
+  the SENINF CSI-2 receivers. The number of CAMSVs depend on the SoC model.
+
+properties:
+  compatible:
+    const: mediatek,mt8365-camsv
+
+  reg:
+    items:
+      - description: camsv base
+      - description: img0 base
+      - description: tg base
+
+  interrupts:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: cam clock
+      - description: camtg clock
+      - description: camsv clock
+
+  clock-names:
+    items:
+      - const: cam
+      - const: camtg
+      - const: camsv
+
+  iommus:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Connection to the SENINF output
+
+    required:
+      - port@0
+
+required:
+  - compatible
+  - interrupts
+  - clocks
+  - clock-names
+  - power-domains
+  - iommus
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/mediatek,mt8365-clk.h>
+    #include <dt-bindings/memory/mediatek,mt8365-larb-port.h>
+    #include <dt-bindings/power/mediatek,mt8365-power.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        camsv@15050000 {
+            compatible = "mediatek,mt8365-camsv";
+            reg = <0 0x15050000 0 0x0040>,
+                  <0 0x15050208 0 0x0020>,
+                  <0 0x15050400 0 0x0100>;
+            interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_LOW>;
+            clocks = <&camsys CLK_CAM>,
+                     <&camsys CLK_CAMTG>,
+                     <&camsys CLK_CAMSV0>;
+            clock-names = "cam", "camtg", "camsv";
+            iommus = <&iommu M4U_PORT_CAM_IMGO>;
+            power-domains = <&spm MT8365_POWER_DOMAIN_CAM>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                port@0 {
+                    reg = <0>;
+                    camsv1_endpoint: endpoint {
+                        remote-endpoint = <&seninf_camsv1_endpoint>;
+                    };
+                };
+            };
+        };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 242c54c88a4a22fc0cbe5c4fc5d7b0d0f84b329e..6147629405c8d40b00c4755a4ee27a746b26f782 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14570,6 +14570,7 @@ M:	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
 M:	Julien Stephan <jstephan@baylibre.com>
 M:	Andy Hsieh <andy.hsieh@mediatek.com>
 S:	Supported
+F:	Documentation/devicetree/bindings/media/mediatek,mt8365-camsv.yaml
 F:	Documentation/devicetree/bindings/media/mediatek,mt8365-seninf.yaml
 
 MEDIATEK SMI DRIVER

-- 
2.47.0


