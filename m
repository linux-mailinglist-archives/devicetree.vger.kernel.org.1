Return-Path: <devicetree+bounces-255861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 472A0D2B7F1
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 05:39:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C97FF304EDB9
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 04:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 234E4346E67;
	Fri, 16 Jan 2026 04:38:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp21.cstnet.cn [159.226.251.21])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7D9327C05;
	Fri, 16 Jan 2026 04:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768538324; cv=none; b=hSjrQJ3NnfDuASHS4rb9K5qRoVsA1mNPjLvb1RUf7YqhhUTKwd1DvFsK6tP7gPXBQgrPC+c9a8/qheKU2h2b9h4LWHH6EhjRrF9bFTngNOwNI2s2yhdtLd1FsZp1NLvMs1J2mj3ujSAMQDPJAES/BOG1psgwlOvAUc0g5b5qXN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768538324; c=relaxed/simple;
	bh=K4zNEKfvsUCe/jL33Qw4l5BaYvWT5AEVSYkne+4sWnc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BZsjOsGuvkbKUvYI24S5++zCoWaW/in8qaj9zR8Wd/k6WMxJv0CgYd+6JCnQLejn7E5coq8M92yuwct6y3YxVqbPZrzBGUpPip02zPPJve1sFqykDwdGe1kbWdfCqK80PFRauVY+v7HtRCpd7f6eqJM7KRtibIYHl5RFZoUFH8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn; spf=pass smtp.mailfrom=iscas.ac.cn; arc=none smtp.client-ip=159.226.251.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iscas.ac.cn
Received: from edelgard.fodlan.icenowy.me (unknown [112.94.103.83])
	by APP-01 (Coremail) with SMTP id qwCowADXfWmwwGlp9QjYBA--.45984S4;
	Fri, 16 Jan 2026 12:38:16 +0800 (CST)
From: Icenowy Zheng <zhengxingda@iscas.ac.cn>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Drew Fustini <fustini@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Michal Wilczynski <m.wilczynski@samsung.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Han Gao <rabenda.cn@gmail.com>,
	Yao Zi <ziyao@disroot.org>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Icenowy Zheng <uwu@icenowy.me>,
	Icenowy Zheng <zhengxingda@iscas.ac.cn>
Subject: [PATCH v5 2/9] dt-bindings: display: add verisilicon,dc
Date: Fri, 16 Jan 2026 12:37:39 +0800
Message-ID: <20260116043746.336328-3-zhengxingda@iscas.ac.cn>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260116043746.336328-1-zhengxingda@iscas.ac.cn>
References: <20260116043746.336328-1-zhengxingda@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qwCowADXfWmwwGlp9QjYBA--.45984S4
X-Coremail-Antispam: 1UD129KBjvJXoWxur17uw4fuw47tF1fArWkWFg_yoWrZF45pa
	n3AFWxtF4ktF13Xws3JFyIgw4rtan5Ar10gryxXw1jyan0gFy0qw4akr98ZasrGF97Zay7
	WFWj9r4Ikw1IyaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUmY14x267AKxVWrJVCq3wAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2048vs2IY020E87I2jVAFwI0_Jryl82xGYIkIc2
	x26xkF7I0E14v26ryj6s0DM28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8wA2z4x0
	Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Cr0_Gr1UM2
	8EF7xvwVC2z280aVAFwI0_Cr1j6rxdM28EF7xvwVC2z280aVCY1x0267AKxVW0oVCq3wAS
	0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2
	IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0
	Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628vn2kIc2
	xKxwCY1x0262kKe7AKxVW8ZVWrXwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWU
	JVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67
	kF1VAFwI0_GFv_WrylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY
	6xIIjxv20xvEc7CjxVAFwI0_Cr0_Gr1UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42
	IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIev
	Ja73UjIFyTuYvjTRNiSHDUUUU
X-CM-SenderInfo: x2kh0wp0lqwv3d6l2u1dvotugofq/

From: Icenowy Zheng <uwu@icenowy.me>

Verisilicon has a series of display controllers prefixed with DC and
with self-identification facility like their GC series GPUs.

Add a device tree binding for it.

Depends on the specific DC model, it can have either one or two display
outputs, and each display output could be set to DPI signal or "DP"
signal (which seems to be some plain parallel bus to HDMI controllers).

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
---
Changes in v5:
- Dropped the requirement of port@0.
- Dropped the if clause for TH1520, which seems to be not needed because
  of implicit DT binding rules.

Changes in v4:
- Added a comment for "verisilicon,dc" that says the ID/revision is
  discoverable via registers.
- Removed clock minItems constraint w/o specific compatible strings.

Changes in v3:
- Added SoC-specific compatible string, and arm the binding with clock /
  port checking for the specific SoC (with a 2-output DC).

Changes in v2:
- Fixed misspelt "versilicon" in title.
- Moved minItems in clock properties to be earlier than items.
- Re-aligned multi-line clocks and resets in example.

 .../bindings/display/verisilicon,dc.yaml      | 122 ++++++++++++++++++
 1 file changed, 122 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/verisilicon,dc.yaml

diff --git a/Documentation/devicetree/bindings/display/verisilicon,dc.yaml b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
new file mode 100644
index 0000000000000..9dc35ab973f20
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
@@ -0,0 +1,122 @@
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
+      - const: verisilicon,dc # DC IPs have discoverable ID/revision registers
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: DC Core clock
+      - description: DMA AXI bus clock
+      - description: Configuration AHB bus clock
+      - description: Pixel clock of output 0
+      - description: Pixel clock of output 1
+
+  clock-names:
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
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - ports
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


