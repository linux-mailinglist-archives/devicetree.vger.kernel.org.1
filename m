Return-Path: <devicetree+bounces-119496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A01A9BE984
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 13:34:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DED0CB22681
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 12:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D8901E008C;
	Wed,  6 Nov 2024 12:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="1MumclPd"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594891DFD9D;
	Wed,  6 Nov 2024 12:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730896489; cv=none; b=QU3lEfbfAb6SiJgP87rkpVIpXBQGdjhliI0JZlpxjoZpHqKPcDtmiQNdrbNbiOfxAedbwWBImbNPwyUy61v06UfHnhy/1xl9jDe/ZR52zyVLI4IWzfQtFnbMOrAVZnJ1NEQk9b3xpFfjZzDvY4RV60oe2xOukdyLVrhqa1NbUzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730896489; c=relaxed/simple;
	bh=Pa50WV6r0S+L7f1blO5q2Wu7ihp58QGoatBdC7KR+CI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PW9FMvMIpgarohtN+4SpokZY5UFmpD9pMO0aFNP3YDPENlrIaOKWOO3+C9KbPly+99TEX3oaHftKmxns6UUe+C/9cU3wqn09qo9XBILr0k6ZwFi9tFSyZLznUlfBRKaUstUXUWLHNUia63iOUYPn4PhYCNg+Mj2tA6U5C6tGesA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=1MumclPd; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=JBo3Q5+1j4+wvQjQz6eDOxbQpTleN40pzgbl2CA/Zmo=; b=1MumclPdyl6rC0YUl9vshRxsG2
	PaeWFxD0TRaVllqGk123fmQuWSOEaeov5OanBVB8+XjF0ZVrfy+uWpl7GyWXCO3d+ksq2jCtouzHe
	xpa6A96iyF3qMCu9MqN5IEH6lfza3N3e/s2aCEnPIMM18kD9LfH2yxnsXGBBabRVW/g/vHZ5rNAie
	WBSwFiF+6DSllGuNEAMbqRIsGxbubk5tEl8otv+VMGuXdcDH6PfX8XENriQNk39FeXVFQOUdnFZXt
	gczQdH0FNwj7v00lj75HwNiv5PYNd3Pw91/MuGn4zu9xxgrhsg6eZv5iZdhK6pUoE965Pguaw+3wd
	wxzt2Fxg==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t8fEp-00076s-EB; Wed, 06 Nov 2024 13:34:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 2/3] dt-bindings: display: rockchip: Add schema for RK3588 DW DSI2 controller
Date: Wed,  6 Nov 2024 13:33:03 +0100
Message-ID: <20241106123304.422854-3-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241106123304.422854-1-heiko@sntech.de>
References: <20241106123304.422854-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The Display Serial Interface 2 (DSI-2) is part of a group of communication
protocols defined by the MIPI Alliance. The RK3588 implements this
specification in its two MIPI DSI-2 Host Controllers that are based on a
new Synopsis IP.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 .../rockchip/rockchip,rk3588-mipi-dsi2.yaml   | 119 ++++++++++++++++++
 1 file changed, 119 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-mipi-dsi2.yaml

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-mipi-dsi2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-mipi-dsi2.yaml
new file mode 100644
index 000000000000..8fc6b4a63f06
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-mipi-dsi2.yaml
@@ -0,0 +1,119 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-mipi-dsi2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip specific extensions to the Synopsys Designware MIPI DSI2
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3588-mipi-dsi2
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: sys
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      This SoC uses GRF regs to switch between vopl/vopb.
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: dcphy
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Input node to receive pixel data.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: DSI output node to panel.
+
+    required:
+      - port@0
+      - port@1
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: apb
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - rockchip,grf
+  - phys
+  - phy-names
+  - ports
+  - reg
+
+allOf:
+  - $ref: ../dsi-controller.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/rk3588-power.h>
+    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
+
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      dsi0: dsi@fde20000 {
+        compatible = "rockchip,rk3588-mipi-dsi2";
+        reg = <0x0 0xfde20000 0x0 0x10000>;
+        interrupts = <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH 0>;
+        clocks = <&cru PCLK_DSIHOST0>, <&cru CLK_DSIHOST0>;
+        clock-names = "pclk", "sys";
+        resets = <&cru SRST_P_DSIHOST0>;
+        reset-names = "apb";
+        power-domains = <&power RK3588_PD_VOP>;
+        phys = <&mipidcphy0>;
+        phy-names = "dcphy";
+        rockchip,grf = <&vop_grf>;
+
+        ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+          dsi0_in: port@0 {
+            reg = <0>;
+          };
+
+          dsi0_out: port@1 {
+            reg = <1>;
+          };
+        };
+      };
+    };
-- 
2.45.2


