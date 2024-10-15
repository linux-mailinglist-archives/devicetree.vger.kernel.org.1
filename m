Return-Path: <devicetree+bounces-111714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C717B99FBCB
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 00:55:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04EDE1C23CE7
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 22:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A29231DD880;
	Tue, 15 Oct 2024 22:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="cJTflgVQ"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274711D63D0
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 22:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729032887; cv=none; b=KJ31sdI6zJMl9CUMfT+OejkrGFceEZZhqbAvpphCge+aTRFFB1u27cpunQ7OpPFjzrhWu6auae07j8yobt0T8quKzosg7cGlXsdkJgJizS7/Fvdl9jCdwfYWnFq5abgE0bqZ0NGN7vdXt/QoSRymoFlmLetfb6XyhJvzf3Rptp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729032887; c=relaxed/simple;
	bh=B+Ju2LZMlHaPVNeYmzCKxT7LyqUwXW2KOJdx+e+C6/E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OxkeRV39JSH+S5AcphBB3mQnbCI9TVXkh658s3lDYoNCY7vVm4TWyGC4X8cjG/oLhJx00b4SwKyBOdyNp7Fe5V01BU3aDvJ7uSYqIxa2zDop9z5LCKN60vM6EVxZ367284RqydCJvB7I3+/QiYnxD2yZDpG9BmguXT7GDzVPZjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=cJTflgVQ; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id E313D2C03CB;
	Wed, 16 Oct 2024 11:54:40 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1729032880;
	bh=9KpFStUmpHuZWgumeAybS+Ads+D2U3745aPqz1nlg7c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cJTflgVQnr4sAX0yaPkDafu+EFcpiGnJGFbIAH50M8SxU/PDf9hyLxzKZ2eGMA6Up
	 HcP88Xh4DBoeCulDyBTZLUtOw+UXyfZ/OQOJV10TJkTs0XUYS8GLwyJ2Ua3mUthPub
	 R4jJv/93SvaB3sqLDISCnulg020VJic8McNSQprqEMa9k0o1CIP58tmXZ3KPf/G8mf
	 uCq8LGiR7nRX21jl6C4ggV9U40rAp9PJABKq5ykS9hFqkcL04sknFnQMxWe4lxKAuu
	 METIZtGBjlrmPIXQ1cwwNK0DavlRzsk/BI8JZUcVRquebwGTKh3PQo2VmcgrNIavWi
	 wSlvq/6yc3lsA==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B670ef2b00001>; Wed, 16 Oct 2024 11:54:40 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 9BC2113EE85;
	Wed, 16 Oct 2024 11:54:40 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 98CD72802E6; Wed, 16 Oct 2024 11:54:40 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de,
	markus.stockhausen@gmx.de
Cc: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v5 1/3] dt-bindings: spi: Add realtek,rtl9301-snand
Date: Wed, 16 Oct 2024 11:54:32 +1300
Message-ID: <20241015225434.3970360-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241015225434.3970360-1-chris.packham@alliedtelesis.co.nz>
References: <20241015225434.3970360-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=ca1xrWDM c=1 sm=1 tr=0 ts=670ef2b0 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=DAUX931o1VcA:10 a=gEfo2CItAAAA:8 a=LDMcNrMx3qfY-b3KP34A:9 a=3ZKOabzyN94A:10 a=oGKThFDb_VfU6udzmvRc:22 a=sptkURWiP4Gy88Gu7hUp:22
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Add a dtschema for the SPI-NAND controller on the RTL9300 SoCs. The
controller supports
 * Serial/Dual/Quad data with
 * PIO and DMA data read/write operation
 * Configurable flash access timing

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v5:
    - Use realtek,rtl9301-snand as a fallback to the other compatibles
    Changes in v4:
    - Adjust commit message subject to refer to one of the used compatibl=
es
    Changes in v3:
    - drop wildcard rtl9300-snand
    - drop redundant descriptions
    - drop clock-names
    Changes in v2:
    - Add clocks
    - For now I've kept realtek,rtl9300-snand to identify the IP block us=
ed
      in the various rtl930x chips. If the consensus is to drop this I ca=
n
      send a v3 with an updated driver to add the chip specific complatib=
les.

 .../bindings/spi/realtek,rtl9301-snand.yaml   | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/spi/realtek,rtl9301=
-snand.yaml

diff --git a/Documentation/devicetree/bindings/spi/realtek,rtl9301-snand.=
yaml b/Documentation/devicetree/bindings/spi/realtek,rtl9301-snand.yaml
new file mode 100644
index 000000000000..36d79a90552b
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/realtek,rtl9301-snand.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/realtek,rtl9301-snand.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SPI-NAND Flash Controller for Realtek RTL9300 SoCs
+
+maintainers:
+  - Chris Packham <chris.packham@alliedtelesis.co.nz>
+
+description:
+  The Realtek RTL9300 SoCs have a built in SPI-NAND controller. It suppo=
rts
+  typical SPI-NAND page cache operations in single, dual or quad IO mode=
.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - realtek,rtl9302b-snand
+              - realtek,rtl9302c-snand
+              - realtek,rtl9303-snand
+          - const: realtek,rtl9301-snand
+      - const: realtek,rtl9301-snand
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+allOf:
+  - $ref: /schemas/spi/spi-controller.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    spi@1a400 {
+      compatible =3D "realtek,rtl9302c-snand", "realtek,rtl9301-snand";
+      reg =3D <0x1a400 0x44>;
+      interrupt-parent =3D <&intc>;
+      interrupts =3D <19>;
+      clocks =3D <&lx_clk>;
+      #address-cells =3D <1>;
+      #size-cells =3D <0>;
+
+      flash@0 {
+        compatible =3D "spi-nand";
+        reg =3D <0>;
+      };
+    };
--=20
2.47.0


