Return-Path: <devicetree+bounces-241584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4D6C8002E
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:54:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF8123A82C5
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:53:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 868F82FB09B;
	Mon, 24 Nov 2025 10:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="WBoTMRWV"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o15.zoho.com (sender3-op-o15.zoho.com [136.143.184.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B299C2FABE3;
	Mon, 24 Nov 2025 10:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763981636; cv=pass; b=n5Jo5wzGxKRPWGtR6yGvN3DbWDbOTR8FC+PBLiFS1j74/bm+5Jpt8KIf1tWG8wjYtRaQdmx6qM9jKtt48k0Yhhr87iX8BsML/OQYVFBUogZeLpCG+OcpNe/jmaj92/Y6Z0tpq+/MG6FBPUC+kKVyiIVq0q+hhacXo6+I1EYMstM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763981636; c=relaxed/simple;
	bh=jSdBQQ0OJDT5e4LUE/F3AlmmbSlx97aRtfXdYfQ2o3M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E56tN9CN4HdCAd6ceShZqhAzi38lIuOj7f0NNYr2IaSU5hQlsR93oGOrhzVFeJbxw1FfxGS1UNnqFijhHWU0WrNvUpvXXJ9VyVkFqV3gX5uv85VHOzD1HbGz6wWw3THXlPnft+3VLk/xRzTGVsf7MS2JuHVCMgwNtOuy2OYCcd0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=WBoTMRWV; arc=pass smtp.client-ip=136.143.184.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1763981598; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TJD3jiz7Qg7pMOq8qQtmbtgG9wZsMUekD4LEBTGumA891WuNlQds/SiZCHHaGbU3wlSYdxqZCiTOMRbrxhr0Pj89K3Xlaenf2UeuPgZ6JLNqFZBPPwhpbLlL5Z3xuMUW63nVM8QJ1V3wmfj5kT+nhxTgiyk3vAGTVJhKIrjoygY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1763981598; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=1s6g5f2fRpOVlQnkJoa+zHR6anMILvpFhtN9LNx7R6I=; 
	b=J5p2GARwvUgyoYTPacNiqpBUr2xWbs78UERPHh4xC5sJKmAtH/4PYKXlHwme222lyzMZ/W1HZfBER8oWbYEjXxIKUJWNQpLiVRenwC5IzrwU17aNPmQheJqBYKq53lX1RhReXlfPbzJtBPMWdDSPUDLxLLS6gJwfPOqQOUgHTAo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1763981598;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=1s6g5f2fRpOVlQnkJoa+zHR6anMILvpFhtN9LNx7R6I=;
	b=WBoTMRWVn+g3rKFC6SVbG23eGYXeJ2Y7IMZXg1AHFFabI3Sm37LLWWueM8UXOXJW
	gBvSzfZK79WOXHs2HI+lYcPxZqrXzUKZ+L/cIDWklio0NOsuAqD7/GFMdMwvfDF/QRf
	l7N2AdJihSvIWwj05z4GSsfdD1q+Eg8AR0/+dkJZ+KyJDVtjtavvBNCtYP5ndu6HFJC
	lEIj67y2HwETXKe3Gh9MVx+aRK7OXftc42tOkaNEXoADzevq44j9YNmNWdYFGElI4cM
	8yssmsqaNf6MldgTeBRZoeSHpUKn/R8eN6FvTlvYnvkjX/85KohVsnQ8yMWk7EQwfXG
	KDlE1OP3YA==
Received: by mx.zohomail.com with SMTPS id 1763981595695560.3338828053455;
	Mon, 24 Nov 2025 02:53:15 -0800 (PST)
From: Icenowy Zheng <uwu@icenowy.me>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Drew Fustini <fustini@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Han Gao <rabenda.cn@gmail.com>,
	Yao Zi <ziyao@disroot.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Icenowy Zheng <uwu@icenowy.me>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 4/9] dt-bindings: display/bridge: add binding for TH1520 HDMI controller
Date: Mon, 24 Nov 2025 18:52:21 +0800
Message-ID: <20251124105226.2860845-5-uwu@icenowy.me>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251124105226.2860845-1-uwu@icenowy.me>
References: <20251124105226.2860845-1-uwu@icenowy.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

T-Head TH1520 SoC contains a Synopsys DesignWare HDMI controller paired
with DesignWare HDMI PHY, with an extra clock gate for HDMI pixel clock
and two reset controls.

Add a device tree binding to it.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
No changes in v3.

Changes in v2:
- Re-aligned multi-line clocks/resets in example.
- Added Krzysztof's R-b.

 .../display/bridge/thead,th1520-dw-hdmi.yaml  | 120 ++++++++++++++++++
 1 file changed, 120 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/thead,th1520-dw-hdmi.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/thead,th1520-dw-hdmi.yaml b/Documentation/devicetree/bindings/display/bridge/thead,th1520-dw-hdmi.yaml
new file mode 100644
index 0000000000000..68fff885ce15b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/thead,th1520-dw-hdmi.yaml
@@ -0,0 +1,120 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/thead,th1520-dw-hdmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: T-Head TH1520 DesignWare HDMI TX Encoder
+
+maintainers:
+  - Icenowy Zheng <uwu@icenowy.me>
+
+description:
+  The HDMI transmitter is a Synopsys DesignWare HDMI TX controller
+  paired with a DesignWare HDMI Gen2 TX PHY.
+
+allOf:
+  - $ref: /schemas/display/bridge/synopsys,dw-hdmi.yaml#
+
+properties:
+  compatible:
+    enum:
+      - thead,th1520-dw-hdmi
+
+  reg-io-width:
+    const: 4
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: iahb
+      - const: isfr
+      - const: cec
+      - const: pix
+
+  resets:
+    items:
+      - description: Main reset
+      - description: Configuration APB reset
+
+  reset-names:
+    items:
+      - const: main
+      - const: apb
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Input port connected to DC8200 DPU "DP" output
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: HDMI output port
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - reg-io-width
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - interrupts
+  - ports
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/thead,th1520-clk-ap.h>
+    #include <dt-bindings/reset/thead,th1520-reset.h>
+
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      hdmi@ffef540000 {
+        compatible = "thead,th1520-dw-hdmi";
+        reg = <0xff 0xef540000 0x0 0x40000>;
+        reg-io-width = <4>;
+        interrupts = <111 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clk_vo CLK_HDMI_PCLK>,
+                 <&clk_vo CLK_HDMI_SFR>,
+                 <&clk_vo CLK_HDMI_CEC>,
+                 <&clk_vo CLK_HDMI_PIXCLK>;
+        clock-names = "iahb", "isfr", "cec", "pix";
+        resets = <&rst_vo TH1520_RESET_ID_HDMI>,
+                 <&rst_vo TH1520_RESET_ID_HDMI_APB>;
+        reset-names = "main", "apb";
+
+        ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+          port@0 {
+            reg = <0>;
+
+            hdmi_in: endpoint {
+              remote-endpoint = <&dpu_out_dp1>;
+            };
+          };
+
+          port@1 {
+            reg = <1>;
+
+            hdmi_out_conn: endpoint {
+              remote-endpoint = <&hdmi_conn_in>;
+            };
+          };
+        };
+      };
+    };
-- 
2.52.0


