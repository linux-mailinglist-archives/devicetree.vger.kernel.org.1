Return-Path: <devicetree+bounces-119232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED509BDA2B
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 01:18:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D89B2843BE
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 00:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 687D23F8F7;
	Wed,  6 Nov 2024 00:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="pnSTAbrs"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE94EED6
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 00:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730852326; cv=none; b=GNhyQQ8Ng1ideioXQazNcvYRcyKhBXCceeDKS+unrylftjegEuXpPyJ/yZjXJSify7GSZ+WWen/cpgTg+Dgc/XdpIlSIvWxzzZwyOotmhcY4IzyZCwYHjRGjjMmgQC5RJyx5GMkcVgTTiLWdDLNYaFr5El80K5VNRHusKrOgfCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730852326; c=relaxed/simple;
	bh=9cV9pcOi+TC8YOfrLUWxemYDM8osPTLrmXd3Aa1usqo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X+fiGBl/OakdjQ4CBMC5szOM54cdbq8RT3HPvW8GwwxJSh9/5rFlLPC0aOV6w70zDsvG3YeQidQVAMamQl0WA2TLXFEM1xaUwaD5NXKZ7FTtFXhC+WDycz7uEiP1Gn32yBqSybkxfFX1syQ13IeHMJ65iAq3sOnQd8MVw3W4AvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=pnSTAbrs; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 7D7E42C0452;
	Wed,  6 Nov 2024 13:18:40 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1730852320;
	bh=i7K+t+O5TXPsYGWcFw3k+uriqJEyHMTX5/Y+/2E5VLI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pnSTAbrsr5Fpr9AwxDqJN0/oTqAibmBXK0NNrHW0eFHPNhg52bDXslnGri/GoE9E/
	 lxbojQ15/PbYl7OQd2X8onRP+JPlrv7E5fUvnbVDYzeAY73YT/DKdnPiJNp8N/OIz7
	 vLoQqxD+egOtAch3QzJq0Rpa1bYX1QTeRvBfvnb64px5N4/+tZHF75vQNGdJI9ULG2
	 ixyy59pehZt1K/xLK5/ACAfYRilH6BNgOgKB1tMZaizBxFgdZWA/FLORMycydfwfKp
	 YKTZyDi7GDMHcREEj9bfCKncKBDlh34BI06v1f1TWIDwyKuRv58gxZGMlfVgZTUIog
	 fwXBxCGkciilQ==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B672ab5e00002>; Wed, 06 Nov 2024 13:18:40 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 34DA813EE7A;
	Wed,  6 Nov 2024 13:18:40 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 306382804D6; Wed,  6 Nov 2024 13:18:40 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de,
	andi.shyti@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v9 1/4] dt-bindings: mfd: Add Realtek RTL9300 switch peripherals
Date: Wed,  6 Nov 2024 13:18:32 +1300
Message-ID: <20241106001835.2725522-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106001835.2725522-1-chris.packham@alliedtelesis.co.nz>
References: <20241106001835.2725522-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=ca1xrWDM c=1 sm=1 tr=0 ts=672ab5e0 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=VlfZXiiP6vEA:10 a=KKAkSRfTAAAA:8 a=gEfo2CItAAAA:8 a=ifuKBmCEOqiWgARn5fMA:9 a=3ZKOabzyN94A:10 a=cvBusfyB2V15izCimMoJ:22 a=sptkURWiP4Gy88Gu7hUp:22
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Add device tree schema for the Realtek RTL9300 switches. The RTL9300
family is made up of the RTL9301, RTL9302B, RTL9302C and RTL9303. These
have the same SoC differ in the Ethernet switch/SERDES arrangement.

Currently the only supported features are the syscon-reboot and i2c
controllers. The syscon-reboot is needed to be able to reboot the board.
The I2C controllers are slightly unusual because they each own an SCL
pin (GPIO8 for the first controller, GPIO 17 for the second) but have 8
common SDA pins which can be assigned to either controller (but not
both).

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Notes:
    Changes in v9:
    - None
    Changes in v8:
    - Add r-by from Krzysztof
    - At Lee's request I've separated the i2c binding into a separate pat=
ch.
      This one still has a $ref to it so technically the i2c one needs to=
 go
      first but they'll be coming in via different trees so they may not
      arrive in that order.
    Changes in v7:
    - Set additionalProperties: false
    - Remove extraneous examples from i2c binding
    Changes in v6:
    - Drop wildcard compatible
    - Add specific compatibles for the 4 known SoC variants
    - For the i2c part of the binding accept realtek,rtl9301 as a fallbac=
k
      for the other compatibles
    - The overall switches will eventually differ because these will have
      different SERDES/port arrangements so they aren't getting the same
      fallback treatment
    Changes in v5:
      I've combined the two series I had in flight so this is the
      combination of adding the switch syscon, the reboot and i2c. It mak=
es
      the changelog a bit meaningless so I've dropped the earlier
      commentary.
   =20
      As requested I've put a more complete example in the main
      rtl9300-switch.yaml.
   =20
      I've kept rtl9300-i2c.yaml separate for now but link to it with a $=
ref
      from rtl9300-switch.yaml to reduce clutter. The example in
      rtl9300-i2c.yaml is technically duplicating part of the example fro=
m
      rtl9300-switch.yaml but I feel it's nice to be able to see the exam=
ple
      next to where the properties are defined.

 .../bindings/mfd/realtek,rtl9301-switch.yaml  | 114 ++++++++++++++++++
 1 file changed, 114 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/realtek,rtl9301=
-switch.yaml

diff --git a/Documentation/devicetree/bindings/mfd/realtek,rtl9301-switch=
.yaml b/Documentation/devicetree/bindings/mfd/realtek,rtl9301-switch.yaml
new file mode 100644
index 000000000000..f053303ab1e6
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/realtek,rtl9301-switch.yaml
@@ -0,0 +1,114 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/realtek,rtl9301-switch.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek Switch with Internal CPU
+
+maintainers:
+  - Chris Packham <chris.packham@alliedtelesis.co.nz>
+
+description:
+  The RTL9300 is a series of is an Ethernet switches with an integrated =
CPU. A
+  number of different peripherals are accessed through a common register=
 block,
+  represented here as a syscon node.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - realtek,rtl9301-switch
+          - realtek,rtl9302b-switch
+          - realtek,rtl9302c-switch
+          - realtek,rtl9303-switch
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 1
+
+patternProperties:
+  'reboot@[0-9a-f]+$':
+    $ref: /schemas/power/reset/syscon-reboot.yaml#
+
+  'i2c@[0-9a-f]+$':
+    $ref: /schemas/i2c/realtek,rtl9301-i2c.yaml#
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    ethernet-switch@1b000000 {
+      compatible =3D "realtek,rtl9301-switch", "syscon", "simple-mfd";
+      reg =3D <0x1b000000 0x10000>;
+      #address-cells =3D <1>;
+      #size-cells =3D <1>;
+
+      reboot@c {
+        compatible =3D "syscon-reboot";
+        reg =3D <0x0c 0x4>;
+        value =3D <0x01>;
+      };
+
+      i2c@36c {
+        compatible =3D "realtek,rtl9301-i2c";
+        reg =3D <0x36c 0x14>;
+        #address-cells =3D <1>;
+        #size-cells =3D <0>;
+
+        i2c@0 {
+          reg =3D <0>;
+          #address-cells =3D <1>;
+          #size-cells =3D <0>;
+          gpio@20 {
+            compatible =3D "nxp,pca9555";
+            gpio-controller;
+            #gpio-cells =3D <2>;
+            reg =3D <0x20>;
+          };
+        };
+
+        i2c@2 {
+          reg =3D <2>;
+          #address-cells =3D <1>;
+          #size-cells =3D <0>;
+          gpio@20 {
+            compatible =3D "nxp,pca9555";
+            gpio-controller;
+            #gpio-cells =3D <2>;
+            reg =3D <0x20>;
+          };
+        };
+      };
+
+      i2c@388 {
+        compatible =3D "realtek,rtl9301-i2c";
+        reg =3D <0x388 0x14>;
+        #address-cells =3D <1>;
+        #size-cells =3D <0>;
+
+        i2c@7 {
+          reg =3D <7>;
+          #address-cells =3D <1>;
+          #size-cells =3D <0>;
+          gpio@20 {
+            compatible =3D "nxp,pca9555";
+            gpio-controller;
+            #gpio-cells =3D <2>;
+            reg =3D <0x20>;
+          };
+        };
+      };
+    };
+
--=20
2.47.0


