Return-Path: <devicetree+bounces-241582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0FEC8001E
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:54:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 073FC3A857F
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F73D2FB982;
	Mon, 24 Nov 2025 10:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="FZaYMQsX"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o15.zoho.com (sender3-op-o15.zoho.com [136.143.184.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3A12FB0A3;
	Mon, 24 Nov 2025 10:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763981615; cv=pass; b=ouLz1g0lVC1lxdtwhUDqnhAnIcifo/ejfLxldQAPWDitQvDAit4AqyL9aeuY/LIeTtzzKzIXcEWVjuDScBuKyJUXvwiYjp3GVus6jKA3YTna2sSV6CVTDGlR3RRDxRYPXHUe4FWKOADWxmVhar0auRfgRGm/xspv/ENTKXQPZMA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763981615; c=relaxed/simple;
	bh=VGO+wNKVsfvcWKjZZnbEFYSWcRGk0IODxfXXcX61C9k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WZg3rI3QoC6XbJNaGK+KKe9EfriM6libDa7d3YeAU9yDCJ0OlP30DHe5FxiVstMdlWBMUCb0OaZf0Xao3mMDzyRJ/5snSxifnYQn8wWUuAHvE9oXz69tMXqVcENncu6uRHb53JZzlLCS6QjmptvmsECpYdO2+EhR11kvheSdaTw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=FZaYMQsX; arc=pass smtp.client-ip=136.143.184.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1763981582; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=b9v8VG09HS6WWdZir9lY/khnxh9OBim7T5ugdo/zT+R1/ySnkCfQ0iNFXoVzuooQyGHpjHu03HQ/wIcLbb7Khmliqqdz/sV6EI+d+wcOTmb1RvrOnYlLWXZ66hRCtUeSi9cZlLIQ+i4euqniigGexj5JAbY9adcH0mZxc+APFSo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1763981582; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=YWIlqDgaW+lG0K9S4PiPgsgmsOv2VdgLEf3biNRbnek=; 
	b=DjYPZvr+Px0nArZpzd6IS/HaHpF/jnXcpNmZ19GHdsia9DuHnSrahtQzwUUKyc9inbNwtTm6LgwrlcuasOkOx7ohsSBZ9MlI0mFCqMfbd6SJT7Pt5arZy3jooGlbhU+H5WH1+UrD3kjip/r3Dirby2BjbjEY/T49+mBlAygyW9c=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1763981581;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=YWIlqDgaW+lG0K9S4PiPgsgmsOv2VdgLEf3biNRbnek=;
	b=FZaYMQsXpkesWEA0haLFYtM6Sn/kQS3H3T03SXRjAnod8xXXf/z4R+rGsgV4NHbu
	FTDxjblIWoeA50F4jrFO7FwadhCBIqftIIWuyZAbdn45V89LEcqn9/B11dMreqjhcjd
	4JS2DpxCjMejK8IF8llmzGax4QJ+2SWDhbUl/39sxLcIX/kctYyx4mUo2+85kB7PH6J
	mA3DpzkL0WhyFmV7VsWBGTSU38fF0F60FjSCUvGoy3QsgaOxIOk8WJnUztQYEwnhF7i
	29X7yErZPpyJJVx4ndutRVsHgvHd/7ILxMwoBIvN8574K7VBhMkElZy5wWVnQrr2Qi6
	7ceBoPD4WA==
Received: by mx.zohomail.com with SMTPS id 1763981578861964.3234479518447;
	Mon, 24 Nov 2025 02:52:58 -0800 (PST)
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
	Icenowy Zheng <zhengxingda@iscas.ac.cn>
Subject: [PATCH v3 2/9] dt-bindings: display: add verisilicon,dc
Date: Mon, 24 Nov 2025 18:52:19 +0800
Message-ID: <20251124105226.2860845-3-uwu@icenowy.me>
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

Verisilicon has a series of display controllers prefixed with DC and
with self-identification facility like their GC series GPUs.

Add a device tree binding for it.

Depends on the specific DC model, it can have either one or two display
outputs, and each display output could be set to DPI signal or "DP"
signal (which seems to be some plain parallel bus to HDMI controllers).

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
---
Changes in v3:
- Added SoC-specific compatible string, and arm the binding with clock /
  port checking for the specific SoC (with a 2-output DC).

Changes in v2:
- Fixed misspelt "versilicon" in title.
- Moved minItems in clock properties to be earlier than items.
- Re-aligned multi-line clocks and resets in example.

 .../bindings/display/verisilicon,dc.yaml      | 146 ++++++++++++++++++
 1 file changed, 146 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/verisilicon,dc.yaml

diff --git a/Documentation/devicetree/bindings/display/verisilicon,dc.yaml b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
new file mode 100644
index 0000000000000..522a544498bea
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
@@ -0,0 +1,146 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/verisilicon,dc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Verisilicon DC-series display controllers
+
+maintainers:
+  - Icenowy Zheng <uwu@icenowy.me>
+
+properties:
+  $nodename:
+    pattern: "^display@[0-9a-f]+$"
+
+  compatible:
+    items:
+      - enum:
+          - thead,th1520-dc8200
+      - const: verisilicon,dc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 4
+    items:
+      - description: DC Core clock
+      - description: DMA AXI bus clock
+      - description: Configuration AHB bus clock
+      - description: Pixel clock of output 0
+      - description: Pixel clock of output 1
+
+  clock-names:
+    minItems: 4
+    items:
+      - const: core
+      - const: axi
+      - const: ahb
+      - const: pix0
+      - const: pix1
+
+  resets:
+    items:
+      - description: DC Core reset
+      - description: DMA AXI bus reset
+      - description: Configuration AHB bus reset
+
+  reset-names:
+    items:
+      - const: core
+      - const: axi
+      - const: ahb
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: The first output channel , endpoint 0 should be
+          used for DPI format output and endpoint 1 should be used
+          for DP format output.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: The second output channel if the DC variant
+          supports. Follow the same endpoint addressing rule with
+          the first port.
+
+    required:
+      - port@0
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - ports
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: thead,th1520-dc8200
+    then:
+      properties:
+        clocks:
+          minItems: 5
+        ports:
+          required:
+            - port@0
+            - port@1
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/thead,th1520-clk-ap.h>
+    #include <dt-bindings/reset/thead,th1520-reset.h>
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      display@ffef600000 {
+        compatible = "thead,th1520-dc8200", "verisilicon,dc";
+        reg = <0xff 0xef600000 0x0 0x100000>;
+        interrupts = <93 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clk_vo CLK_DPU_CCLK>,
+                 <&clk_vo CLK_DPU_ACLK>,
+                 <&clk_vo CLK_DPU_HCLK>,
+                 <&clk_vo CLK_DPU_PIXELCLK0>,
+                 <&clk_vo CLK_DPU_PIXELCLK1>;
+        clock-names = "core", "axi", "ahb", "pix0", "pix1";
+        resets = <&rst TH1520_RESET_ID_DPU_CORE>,
+                 <&rst TH1520_RESET_ID_DPU_AXI>,
+                 <&rst TH1520_RESET_ID_DPU_AHB>;
+        reset-names = "core", "axi", "ahb";
+
+        ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          port@0 {
+            reg = <0>;
+          };
+
+          port@1 {
+            reg = <1>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            dpu_out_dp1: endpoint@1 {
+              reg = <1>;
+              remote-endpoint = <&hdmi_in>;
+            };
+          };
+        };
+      };
+    };
-- 
2.52.0


