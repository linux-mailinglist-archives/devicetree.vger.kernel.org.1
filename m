Return-Path: <devicetree+bounces-250952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 87009CED348
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 18:04:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C1FD3006F4A
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 17:04:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5A232153EA;
	Thu,  1 Jan 2026 17:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jb2+03WM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADBC913AD1C;
	Thu,  1 Jan 2026 17:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767287095; cv=none; b=eL3YACrbkxQiRD6xbNqTn/gCT7JI2UZLUH8INSJGDaue0H8FD3siybn7ihul0bXq3gzuIorRjAaznPoVOA1TS9LFCUuW2XNF68WhzBoOfWuef6pfKzDTQKVUKlC38RS84D2KH7K0cB16OLmKy5XtmbtTz0OrynGHTR55Z0qwV1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767287095; c=relaxed/simple;
	bh=a7/rRD8QRX/T56zI93E4KvZTeQlDeftjKMb5+MtVtnA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=XMH/E6xocePiEenMO4Qo5CW0HN8zlbj4XU7+SCudZsqfu2/n22/+jYBAo9AUf2Yv/4GAX/JMmz7za5EhB6TO1Vkuwv+0q8ZD8HMsDn9EqVyZEQNmJfCbmOz+h+aMLIS/2+M0Hrj4EJl1AsRt0BPj71EtlBBnFf8pTx5evM1xd/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jb2+03WM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 27703C4CEF7;
	Thu,  1 Jan 2026 17:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767287095;
	bh=a7/rRD8QRX/T56zI93E4KvZTeQlDeftjKMb5+MtVtnA=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=Jb2+03WMdO6jwg2ZT/UZC5Bh+x5Gww+Aye0BFFl5w7/I5cpJdC6zpDDATe+PnxcjW
	 nfOYOeyyfM52yGU+WubNN6csOAkSprsj2+K57N1mrhBRuEat5kV742vUSNKTnIR4//
	 ddsMqEXYPgxAZxPpNXMZ78Mz7QVARbaMlnzQw96mWfZPAtEGfJeDLZFm03twAhRkAW
	 xQxgavu6k2LawP2V21ZU/+eyUzAgLX7DEgL6VpU5U+WSCrW+tE9YROisUMh//hsZI5
	 EEGmWntrftrxeNHPdTWdBe7+OT3Mox8j3LC8/zjvzPyRo22wUS6mJAJ7NfOTwu+p6e
	 TGYuux5TX3Gzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D537EED628;
	Thu,  1 Jan 2026 17:04:55 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Thu, 01 Jan 2026 18:04:45 +0100
Subject: [PATCH v5] dt-bindings: powerpc: Add Freescale/NXP MPC83xx SoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260101-ppcyaml-soc-v5-1-696cb7eb5568@posteo.net>
X-B4-Tracking: v=1; b=H4sIACypVmkC/23MQQqDMBCF4atI1k1xkijalfcoXcRxUgOtCYmEi
 nj3RjdF6PI9+P6VRQqWIrsVKwuUbLRuyqO6FAxHPT2J2yFvJkpRlUKU3Htc9PvFo0OOmsCAQiO
 blmXhAxn7OWr3R96jjbMLyxFPcn//d5LkwPsG20bX0CPozrs4k7tONLM9lNQPKxBnrHY8SGVUD
 XKQcMLbtn0BtY6+7uQAAAA=
X-Change-ID: 20250220-ppcyaml-soc-cae1f14cf389
To: Scott Wood <oss@buserror.net>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 Naveen N Rao <naveen@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>, 
 Christophe Leroy <chleroy@kernel.org>
Cc: linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767287094; l=4183;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=536L63cvPpKbvFHHC4dH21r7FgAfuo5+xdMh/4DunPY=;
 b=r7aOOJ2QPUoevtyPBYH27ZO7hmH+cFCsn2TNK+g5qA63ql3TpAFDmYragJMGuYSZ17sKv5RFH
 nTY5pTa/QOiDCKWr9cAJ6OY8MrntrhLEmIxBBxJQzIl1YWiSpR2YYos
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net

From: "J. Neuschäfer" <j.ne@posteo.net>

Add a new binding for MPC83xx platforms, describing the board compatible
strings used in currently existing device trees.

Note that the SoC bus is called immr@... in many existing devicetrees,
but this contradicts the simple-bus binding.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Christophe Leroy <christophe.leroy@csgroup.eu>
Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
Changes in v5:
- Add Christophe Leroy's R-b tag
- Link to v4: https://lore.kernel.org/r/20250412-ppcyaml-soc-v4-1-bd34f4613d31@posteo.net

Changes in v4:
- Rebase on v6.15-rc1
- Try to list all existing compatible strings for MPC83xx boards
- Link to v3: https://lore.kernel.org/r/20250220-ppcyaml-soc-v3-1-b8c98a61bc1a@posteo.net

V3:
- split out as a single patch
- otherwise no changes

V2:
- part of series [PATCH v2 00/12] YAML conversion of several Freescale/PowerPC DT bindings
  Link: https://lore.kernel.org/lkml/20250207-ppcyaml-v2-1-8137b0c42526@posteo.net/
- trim subject line
- fix property order to comply with dts coding style
- add Rob Herrings's R-b tag
---
 .../bindings/powerpc/fsl/fsl,mpc83xx.yaml          | 93 ++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/Documentation/devicetree/bindings/powerpc/fsl/fsl,mpc83xx.yaml b/Documentation/devicetree/bindings/powerpc/fsl/fsl,mpc83xx.yaml
new file mode 100644
index 00000000000000..9e37d155c5829a
--- /dev/null
+++ b/Documentation/devicetree/bindings/powerpc/fsl/fsl,mpc83xx.yaml
@@ -0,0 +1,93 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/powerpc/fsl/fsl,mpc83xx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale PowerQUICC II Pro (MPC83xx) platforms
+
+maintainers:
+  - J. Neuschäfer <j.ne@posteo.net>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: MPC83xx Reference Design Boards
+        items:
+          - enum:
+              - fsl,mpc8308rdb
+              - fsl,mpc8315erdb
+              - fsl,mpc8360rdk
+              - fsl,mpc8377rdb
+              - fsl,mpc8377wlan
+              - fsl,mpc8378rdb
+              - fsl,mpc8379rdb
+
+      - description: MPC8313E Reference Design Board
+        items:
+          - const: MPC8313ERDB
+          - const: MPC831xRDB
+          - const: MPC83xxRDB
+
+      - description: MPC8323E Reference Design Board
+        items:
+          - const: MPC8323ERDB
+          - const: MPC832xRDB
+          - const: MPC83xxRDB
+
+      - description: MPC8349E-mITX(-GP) Reference Design Platform
+        items:
+          - enum:
+              - MPC8349EMITX
+              - MPC8349EMITXGP
+          - const: MPC834xMITX
+          - const: MPC83xxMITX
+
+      - description: Keymile KMETER1 board
+        const: keymile,KMETER1
+
+      - description: MPC8308 P1M board
+        const: denx,mpc8308_p1m
+
+patternProperties:
+  "^soc@.*$":
+    type: object
+    properties:
+      compatible:
+        oneOf:
+          - items:
+              - enum:
+                  - fsl,mpc8315-immr
+                  - fsl,mpc8308-immr
+              - const: simple-bus
+          - items:
+              - const: fsl,mpc8360-immr
+              - const: fsl,immr
+              - const: fsl,soc
+              - const: simple-bus
+          - const: simple-bus
+
+additionalProperties: true
+
+examples:
+  - |
+    / {
+        compatible = "fsl,mpc8315erdb";
+        model = "MPC8315E-RDB";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        soc@e0000000 {
+            compatible = "fsl,mpc8315-immr", "simple-bus";
+            reg = <0xe0000000 0x00000200>;
+            #address-cells = <1>;
+            #size-cells = <1>;
+            device_type = "soc";
+            ranges = <0 0xe0000000 0x00100000>;
+            bus-frequency = <0>;
+        };
+    };
+
+...

---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20250220-ppcyaml-soc-cae1f14cf389

Best regards,
-- 
J. Neuschäfer <j.ne@posteo.net>



