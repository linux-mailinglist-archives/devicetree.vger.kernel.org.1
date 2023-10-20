Return-Path: <devicetree+bounces-10391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A41F7D1024
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 15:00:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D1E028243A
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 13:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88A001A73C;
	Fri, 20 Oct 2023 13:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="n0OI0UIc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272A11A730
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 13:00:30 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DEC3D5F;
	Fri, 20 Oct 2023 06:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697806829; x=1729342829;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Hd4Emqyn1f/ioRu7HJKUdLwnMCvvFUuy8Lnwq9cpDbU=;
  b=n0OI0UIcT+QiHSoozXfs+UBk8EPe8fZ55XwucmjaMzVpDgcXt8ObG1jd
   HDg3MkJE3rrdqnEjqjE1ggzjJml0RWnC91UWw/9clsh5oqjfSe6YMqygH
   sjnaW1JY8Gw4F5ZeQja5UWloA5jyrfl/j+4D/39u7E/qRG7s7fgrhyz2Q
   WY5RqUdWvIs4M9Ef3ij8g3xrIxXYlpvUD3fTV1/smaEkG9MqAyhvRs/1u
   0uqFvuSA4iz2N51vctsPHJbPqT7KhnQCn0jTdflQlSt5hpne915Kk+0JB
   erVnY4K3L8hXpOzFCkKcQINnjRt+vdwrzuGnCTUBNaaRIqGNaIAXykEiD
   w==;
X-IronPort-AV: E=Sophos;i="6.03,238,1694728800"; 
   d="scan'208";a="33575470"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 20 Oct 2023 15:00:22 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 28134280085;
	Fri, 20 Oct 2023 15:00:22 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH 2/5] dt-bindings: soc: imx93-media-blk-ctrl: Add LDB subnode into schema and example
Date: Fri, 20 Oct 2023 15:00:15 +0200
Message-Id: <20231020130019.665853-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231020130019.665853-1-alexander.stein@ew.tq-group.com>
References: <20231020130019.665853-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the LDB bridge subnode and add the subnode into the example.
For the subnode to work, the block control must scan its subnodes and
bind drivers to them, do not misuse either simple-bus or simple-mfd
here.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../soc/imx/fsl,imx93-media-blk-ctrl.yaml     | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
index b3554e7f9e76..5ba66dfb0e05 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
@@ -24,6 +24,12 @@ properties:
   reg:
     maxItems: 1
 
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 1
+
   '#power-domain-cells':
     const: 1
 
@@ -46,9 +52,16 @@ properties:
       - const: csi
       - const: dsi
 
+  bridge@20:
+    type: object
+    $ref: /schemas/display/bridge/fsl,ldb.yaml#
+    unevaluatedProperties: false
+
 required:
   - compatible
   - reg
+  - '#address-cells'
+  - '#size-cells'
   - power-domains
   - clocks
   - clock-names
@@ -77,4 +90,35 @@ examples:
                clock-names = "apb", "axi", "nic", "disp", "cam",
                              "pxp", "lcdif", "isi", "csi", "dsi";
       #power-domain-cells = <1>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      bridge@20 {
+          compatible = "fsl,imx93-ldb";
+          reg = <0x20 0x4>, <0x24 0x4>;
+          reg-names = "ldb", "lvds";
+          clocks = <&clk IMX93_CLK_LVDS_GATE>;
+          clock-names = "ldb";
+
+          ports {
+              #address-cells = <1>;
+              #size-cells = <0>;
+
+              port@0 {
+                  reg = <0>;
+
+                  ldb_from_lcdif2: endpoint {
+                      remote-endpoint = <&lcdif2_to_ldb>;
+                  };
+              };
+
+              port@1 {
+                  reg = <1>;
+
+                  ldb_lvds: endpoint {
+                      remote-endpoint = <&ldb_to_panel>;
+                  };
+              };
+          };
+        };
     };
-- 
2.34.1


