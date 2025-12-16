Return-Path: <devicetree+bounces-246847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 211C5CC0AE8
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 04:08:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2B8C300C0D3
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 03:07:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5424F2E7635;
	Tue, 16 Dec 2025 03:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b="qZeiR3cL"
X-Original-To: devicetree@vger.kernel.org
Received: from ironport.ite.com.tw (219-87-157-213.static.tfn.net.tw [219.87.157.213])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2563D2571B0;
	Tue, 16 Dec 2025 03:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.87.157.213
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765854471; cv=none; b=iHNzKC3Mzo3IbrhzvNAcFQvitMFOeT+05xUYQaPi1oGcwx2sV/fHCEpSbTLnLwIIYxPtxNWqPoFAA/R1FWtSqmNe6ISgulL5CEBkz7WDO+InRhJIviu/yLMw0MRypoK1QSGJUHXULSgFPmhDTVNCN22WgnKziTdVdZ2829quAZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765854471; c=relaxed/simple;
	bh=z6ejtDFuSMnFz6/frGW5qeCjY/i7A6kkrnL47oSTdmQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=aYJPtlRZgDjUhEFh+Ru19nhA8IXvQGtykJooGlzEPgfR31Fg/svMbIhLuQ2Swdvb0Rrbi77VlCn0fn8doAhzbctJ6Ymg2kp7VgIntXiOqQHqe7JBMedo2sXV0GyB/Ypuwi2GE0uk7yRaFyqDaiqayVZQ/z2wEaBPpzK6uIUqa7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw; spf=pass smtp.mailfrom=ite.com.tw; dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b=qZeiR3cL; arc=none smtp.client-ip=219.87.157.213
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ite.com.tw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=ite.com.tw; s=dkim;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=euUaZmLStZSF5aN/3E/mY/AiAJ+1x73YfdhvTpRek+M=;
  b=qZeiR3cLxtvYHS8bRhQroQyx0E4bBtYGxpv+tBj3Aq22xffO6oVUcAm/
   Rx3fsiR0V6H+hoyexU+5sRCyNi2CzrRhRBscyLBCOurrAhAdagQtnR557
   1nXqts+Mjktka2UdKFvgRQgdkwLCvYjwl0xpKXFavPTfo1UY3Nb+TBidT
   9V4c+UwooEy7N0ToBI/SPqamcggbPsLyXK904pnD9DHvCRQNu7PZ7xG+L
   GPyQtqfpHOdO+4CiYCtbRgdDFYRDDfohCECzQmVngumY+MTltUqa3uS32
   ZPfxXXKFhlLXwZOpNUevZBmMPAXxfNjHFBJPVbRkudO8d/x/mZ1dY1Mii
   A==;
X-CSE-ConnectionGUID: cCFxLUaCTRePV3SflULlBQ==
X-CSE-MsgGUID: tyIcbNKYRP+N4ZinRGEzHw==
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
  by ironport.ite.com.tw with ESMTP; 16 Dec 2025 10:52:20 +0800
Received: from CSBMAIL1.internal.ite.com.tw (CSBMAIL1.internal.ite.com.tw [192.168.65.58])
	by mse.ite.com.tw with ESMTP id 5BG2qCZ9088349;
	Tue, 16 Dec 2025 10:52:12 +0800 (+08)
	(envelope-from Pet.Weng@ite.com.tw)
Received: from [127.0.1.1] (192.168.72.40) by CSBMAIL1.internal.ite.com.tw
 (192.168.65.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.57; Tue, 16 Dec
 2025 10:52:09 +0800
From: Pet Weng <pet.weng@ite.com.tw>
Date: Tue, 16 Dec 2025 10:51:49 +0800
Subject: [PATCH v4 1/3] dt-binding: display: Add ITE IT61620 MIPI DSI to
 HDMI bridge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20251216-it61620-0714-v4-1-9d2fea7847ae@ite.com.tw>
References: <20251216-it61620-0714-v4-0-9d2fea7847ae@ite.com.tw>
In-Reply-To: <20251216-it61620-0714-v4-0-9d2fea7847ae@ite.com.tw>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong
	<neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart
	<Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej
 Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Hermes Wu <hermes.Wu@ite.com.tw>,
        Kenneth
 Hung <kenneth.Hung@ite.com.tw>,
        Pet Weng <pet.weng@ite.com.tw>, Pin-yen Lin
	<treapking@google.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765853533; l=4363;
 i=pet.weng@ite.com.tw; s=20250702; h=from:subject:message-id;
 bh=z6ejtDFuSMnFz6/frGW5qeCjY/i7A6kkrnL47oSTdmQ=;
 b=9BD6wls81qdCvdKxwy9d7/N3xP1TTGRbrmO8MdRCY2e83ZgJQJ0ibgOUIxixIgBEp8QkSxLdU
 IxEBtI/NpFRB9bwy3EV+M5qEqSM9fXyd8dudVhsp7IjmO4f5cJun+Nd
X-Developer-Key: i=pet.weng@ite.com.tw; a=ed25519;
 pk=wd08uBtTLb93x2ixbKVNsxiZPdMh1Ov4z5klodh2bqo=
X-ClientProxiedBy: CSBMAIL1.internal.ite.com.tw (192.168.65.58) To
 CSBMAIL1.internal.ite.com.tw (192.168.65.58)
X-TM-SNTS-SMTP:
	6FD90E6D669EAB03D0C7345A6A2DD4F9D6DE5E16FE3EFC17789BEED20CE68C482002:8
X-MAIL:mse.ite.com.tw 5BG2qCZ9088349

This chip receives MIPI DSI input and outputs HDMI, and is commonly
connected to SoCs via I2C and DSI.

Signed-off-by: Pet Weng <pet.weng@ite.com.tw>
---
 .../bindings/display/bridge/ite,it61620.yaml       | 140 +++++++++++++++++++++
 1 file changed, 140 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml b/Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..4afc4ef4e81364f340eb6cb22c9ccd0412505f73
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml
@@ -0,0 +1,140 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/ite,it61620.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ITE IT61620 MIPI DSI to HDMI Bridge
+
+maintainers:
+  - Pet Weng <pet.weng@ite.com.tw>
+
+description: |
+  The ITE IT61620 is a high-performance, low-power HDMI bridge that converts
+  MIPI DSI input to HDMI 1.4b TMDS output. It supports up to 4 lanes of MIPI
+  D-PHY 2.0 input at 2.5Gbps per lane (10Gbps total), compatible with DSI-2
+  v2.0.
+
+  The HDMI transmitter side supports up to 4Kx2K@30Hz resolutions, and is
+  compliant with HDMI 1.4b and HDCP 1.4.
+
+  For audio, the IT61620 supports up to 8-channel LPCM via I2S (multi-line or
+  TDM mode), with optional S/PDIF or DSD (for SACD). It supports audio
+  sampling rates up to 192kHz.
+
+allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
+
+properties:
+  compatible:
+    const: ite,it61620
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  ivdd-supply:
+    description: core voltage
+
+  ovdd-supply:
+    description: I/O voltage
+
+  ovdd1833-supply:
+    description: flexible I/O voltage
+
+  "#sound-dai-cells":
+    const: 0
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description: Input port for MIPI DSI
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            required:
+              - data-lanes
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output port for HDMI output
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Audio input port (I2S)
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - reset-gpios
+  - ivdd-supply
+  - ovdd-supply
+  - ovdd1833-supply
+  - ports
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        bridge@58 {
+            compatible = "ite,it61620";
+            reg = <0x58>;
+            #sound-dai-cells = <0>;
+            interrupt-parent = <&pio>;
+            interrupts = <128 IRQ_TYPE_LEVEL_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&it61620_pins>;
+            reset-gpios = <&pio 127 GPIO_ACTIVE_LOW>;
+            ivdd-supply = <&pp1000_hdmi_x>;
+            ovdd-supply = <&pp3300_vio28_x>;
+            ovdd1833-supply = <&pp1800_vcamio_x>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    it61620_dsi_in: endpoint {
+                        data-lanes = <0 1 2 3>;
+                        remote-endpoint = <&dsi_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    it61620_hdmi_out: endpoint {
+                        remote-endpoint = <&hdmi_connector_in>;
+                    };
+                };
+
+                port@2 {
+                    reg = <2>;
+                    it61620_audio_in: endpoint {
+                        remote-endpoint = <&i2s0_out>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.34.1


