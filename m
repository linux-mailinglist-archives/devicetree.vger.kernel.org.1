Return-Path: <devicetree+bounces-99958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 928AC96BA5F
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 13:25:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A4202808BF
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 11:25:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC18F1D799F;
	Wed,  4 Sep 2024 11:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="tIohN26O"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40011D1750;
	Wed,  4 Sep 2024 11:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725448783; cv=none; b=hZtLlZFlNrkaC1dRv3UZ5jBntEWUNzqcsI/YAmwX1BpEVWl6g0l9x3RAxq395Er0wKKC0XMEc+yny6mjsekDGGfM8t6xGAdl8NQwHsC6n+bemay7vCI2cdOk1AmVobosrKzRVB0ymNU+dSIL2ijBXcVDoK8XHhQC/2kvHWBGwzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725448783; c=relaxed/simple;
	bh=glmpFc00SsZ+PfwzIlsw73UpQTBgwInpTitkkKEeCPQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YD3jySVRjt11wM9c6tFIU9OzY5VXK7Fs01lo+e11pDZXFgiDBAq18Gxlh+XxEx8oXOY8xRiGf+sIffb6YNJESYFuOW+iH6rF28jjCmKIW/JYv2Na/bTIPHTSGX1dB5iwQ7qphqqC6gjdqSTyWqEPC6o6S2kJ4YSyNvOV+8EJoCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=tIohN26O; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [127.0.1.1] (91-156-87-48.elisa-laajakaista.fi [91.156.87.48])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 93EF113DD;
	Wed,  4 Sep 2024 13:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1725448705;
	bh=glmpFc00SsZ+PfwzIlsw73UpQTBgwInpTitkkKEeCPQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=tIohN26OG/XyENMZbJr4QuduxEihmRbeL1X4RCms/EJnQRxfFO+YzegiBcxgMPP3c
	 P2ZcEpE9a2Ft8X7JbcNM1er5bbh0YszFZw3rtBCRwdqMy2GPTa3RaQrAuvztEyLFuP
	 XF1t5+XpUw3w3xWVEmQfarOXWxHMZeAmNZQNaQDI=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 04 Sep 2024 14:19:10 +0300
Subject: [PATCH v4 2/4] dt-bindings: media: Add bindings for
 raspberrypi,rp1-cfe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240904-rp1-cfe-v4-2-f1b5b3d69c81@ideasonboard.com>
References: <20240904-rp1-cfe-v4-0-f1b5b3d69c81@ideasonboard.com>
In-Reply-To: <20240904-rp1-cfe-v4-0-f1b5b3d69c81@ideasonboard.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Naushir Patuck <naush@raspberrypi.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2916;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=glmpFc00SsZ+PfwzIlsw73UpQTBgwInpTitkkKEeCPQ=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBm2EJEy/tv2jCOvtdwRGmuUyqnHqhNoCK/gP+4g
 6tz1qvnkkaJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZthCRAAKCRD6PaqMvJYe
 9ShgD/9k2S3kYRnvryxvPAUEb6QpCT6OZKjF/FlI3U9wpDaB4W7bn+B/U1yT6dAodq3jLBmWUY7
 lSbHPe6DlRzBDemPaRhF7xWfYE7vavR3Lpvav0G2zCcMuH0xV3tVTOHoLDUZPti1UrumujducZ0
 4UCR87s8sesmO+iyzLa2lhb6Is4+Ik4sa06QLqWZBU0euU02NTX4gKDO3zC/cwOQj0n/TR4fk8x
 lWDWLWbznFVMEcbq8HF4MeJBfpr93vONE4I3mrdfplDNR9DqJPDhQ47Nvb+JELK7gB09TDqaLH9
 BGfNSc/2XIz9nd1LMMgEE2z+slcBo0Um2PJIbk5OnQSyeYG60sQBoDEUe7f2fs93ina/cgRWl6L
 tddabA338HEEjNocVw0OmPF27CpOba+QcgqWFI2ztGEvfe5rUvdb4oyVpjrZ4G1/3omTddAgtwX
 tvKWcGnkJhJmUg4OemDGlbDB7+qgdiTCw/Byf1n3H3GHD8gntSwgR5jv3ifnEJxK6Frj8TkixRe
 Eld8mCND7PHfv8VIWDjmn5F5/LqQCUrJjXwGYSrLlGnkNwP00GdixwiAhPrzNT8rypt8mT4GlwL
 YxlQQ308+R8D17t9T3dTwAyFKwCwhd+HxEOBQFI1B6veaVtyMKnjvyvYGp9NZj2jSTl7z/jOqhR
 4fIr7ud9XiYtdwA==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5

Add DT bindings for raspberrypi,rp1-cfe.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 .../bindings/media/raspberrypi,rp1-cfe.yaml        | 93 ++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/raspberrypi,rp1-cfe.yaml b/Documentation/devicetree/bindings/media/raspberrypi,rp1-cfe.yaml
new file mode 100644
index 000000000000..eba5394719b9
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/raspberrypi,rp1-cfe.yaml
@@ -0,0 +1,93 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/raspberrypi,rp1-cfe.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Raspberry Pi PiSP Camera Front End
+
+maintainers:
+  - Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
+  - Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
+
+description: |
+  The Raspberry Pi PiSP Camera Front End is a module in Raspberrypi 5's RP1 I/O
+  controller, that contains:
+  - MIPI D-PHY
+  - MIPI CSI-2 receiver
+  - Simple image processor (called PiSP Front End, or FE)
+
+  The FE documentation is available at:
+  https://datasheets.raspberrypi.com/camera/raspberry-pi-image-signal-processor-specification.pdf
+
+  The PHY and CSI-2 receiver part have no public documentation.
+
+properties:
+  compatible:
+    items:
+      - const: raspberrypi,rp1-cfe
+
+  reg:
+    items:
+      - description: CSI-2 registers
+      - description: D-PHY registers
+      - description: MIPI CFG (a simple top-level mux) registers
+      - description: FE registers
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+    description: CSI-2 RX Port
+
+    properties:
+      endpoint:
+        $ref: video-interfaces.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          data-lanes:
+            minItems: 1
+            maxItems: 4
+
+        required:
+          - data-lanes
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    rp1 {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      csi@110000 {
+        compatible = "raspberrypi,rp1-cfe";
+        reg = <0xc0 0x40110000 0x0 0x100>,
+              <0xc0 0x40114000 0x0 0x100>,
+              <0xc0 0x40120000 0x0 0x100>,
+              <0xc0 0x40124000 0x0 0x1000>;
+
+        interrupts = <42>;
+
+        clocks = <&rp1_clocks>;
+
+        port {
+          csi_ep: endpoint {
+            remote-endpoint = <&cam_endpoint>;
+            data-lanes = <1 2>;
+          };
+        };
+      };
+    };

-- 
2.43.0


