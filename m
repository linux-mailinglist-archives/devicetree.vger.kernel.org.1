Return-Path: <devicetree+bounces-250949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC02CED311
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 17:58:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CAA4F3006F5A
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 16:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF5122F0692;
	Thu,  1 Jan 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdzdoozZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4FC42EFD8C;
	Thu,  1 Jan 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767286714; cv=none; b=SvJRgdSFZjyFHGy6dfrRmWnFPV96kHXCtvQjrokD+bUf/7OblNvGJsxwE2iM7Y7VEtRofk3oF2/QBD6gnxjKUqVAeKdT0l3gRxbxfrxE2Y7hPD4xUq4yPNLCoHRrLRsJrKZAhutp75TJi6WU2784TSsZ17j7yg7V+lApL8c29MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767286714; c=relaxed/simple;
	bh=Q9LLHnvTxiDMFvAfLdjpxxShPJnvDv5Otm4KvImTOx0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LSvVrHcRIRvO5PWHj9TfElCKjkxvyXNwuinfVNMzP9chnmzqPu7MFHq95GnpEAuG420jjeHiKDd4xaspGEHoVErKxF54DzBBNDBtD2V83Fn9QSsp/riXlKuTtAUOKU7hQSuhJEPXnM2ChbRzKAyBuq0tWrqYtlrIAvWwJOfLsfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdzdoozZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 39D17C16AAE;
	Thu,  1 Jan 2026 16:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767286714;
	bh=Q9LLHnvTxiDMFvAfLdjpxxShPJnvDv5Otm4KvImTOx0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=YdzdoozZ7gZDIqBuUmTQ4wt1jPil4F/I1uQcfpGwWA99opcezPzb5IyTjiiuuECxj
	 3e2nS82OyrRmyllMdqyeYfl7g1nglwwWeJZiZWC5Wo38HlDGchh69UUjEVAJoWzq3r
	 EgO5IfWlAS0KOpS6cFA8tATnnfDaa8kiFk+c7DFZCItk3DW0wfEeNV//rFnux4d/lR
	 0cIiRR7kf57YQ74SyQewQDFm7fiFqffBvDQ/VVZVCr8bIjtkWJCS5UUgJqn1buQb/N
	 9nTznv6wqUN29L1Dzsv3MqF952AnDnsB0BNkCpUbOJFQb9iyv2AaIgKi7Ome19CuAv
	 ezyE0cIG8AZiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25668EED628;
	Thu,  1 Jan 2026 16:58:34 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Thu, 01 Jan 2026 17:58:15 +0100
Subject: [PATCH RESEND v5 2/4] dt-bindings: memory-controllers: Add
 fsl,elbc-gpcm-uio
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260101-ppcyaml-elbc-v5-2-251c7f14a06c@posteo.net>
References: <20260101-ppcyaml-elbc-v5-0-251c7f14a06c@posteo.net>
In-Reply-To: <20260101-ppcyaml-elbc-v5-0-251c7f14a06c@posteo.net>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Crystal Wood <oss@buserror.net>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 Naveen N Rao <naveen@kernel.org>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Christophe Leroy <chleroy@kernel.org>
Cc: Frank Li <Frank.Li@nxp.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, 
 linuxppc-dev@lists.ozlabs.org, dri-devel@lists.freedesktop.org, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767286712; l=2396;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=bUAGbzS6p74FR6LkzbFgL5RNEAyIuDnK2zSEZn2z+XU=;
 b=2ApK1JqrIreJZ2Rl3uI4oev0BN99TTYjK1Vd/Ao9Xn5xZp5RnvxYNhV6Mpu/MblJzAYcs/61d
 ORSF2ZcDNHQD2nkrLDlFoK+inZAJcRp8ureEo9DLeANwi0lI531kXNM
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net

From: "J. Neuschäfer" <j.ne@posteo.net>

Formalize the binding already supported by the uio_fsl_elbc_gpcm.c
driver.

Reviewed-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---

V4,V5:
- no changes

V3:
- add review tags

V2:
- split out from fsl,elbc patch
- add description
- remove "device_type" property
- move to bindings/memory-controllers
---
 .../memory-controllers/fsl,elbc-gpcm-uio.yaml      | 59 ++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/fsl,elbc-gpcm-uio.yaml b/Documentation/devicetree/bindings/memory-controllers/fsl,elbc-gpcm-uio.yaml
new file mode 100644
index 00000000000000..381584b400a0ad
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/fsl,elbc-gpcm-uio.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/fsl,elbc-gpcm-uio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Userspace I/O interface for Freescale eLBC devices
+
+description:
+  The Freescale Enhanced Local Bus controller (eLBC) supports flexible access
+  to memory devices, through the General-Purpose Chip-select Machine (GPCM).
+  The purpose of this binding is to designate devices attached to eLBC/GPMC for
+  use by userspace.
+
+maintainers:
+  - J. Neuschäfer <j.ne@posteo.net>
+
+properties:
+  compatible:
+    const: fsl,elbc-gpcm-uio
+
+  reg:
+    maxItems: 1
+
+  elbc-gpcm-br:
+    description: Base Register (BR) value to set
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  elbc-gpcm-or:
+    description: Option Register (OR) value to set
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  interrupts:
+    maxItems: 1
+
+  uio_name:
+    $ref: /schemas/types.yaml#/definitions/string
+
+required:
+  - compatible
+  - reg
+  - elbc-gpcm-br
+  - elbc-gpcm-or
+
+additionalProperties: false
+
+examples:
+  - |
+    localbus {
+        #address-cells = <2>;
+        #size-cells = <1>;
+
+        simple-periph@2,0 {
+            compatible = "fsl,elbc-gpcm-uio";
+            reg = <0x2 0x0 0x10000>;
+            elbc-gpcm-br = <0xfd810800>;
+            elbc-gpcm-or = <0xffff09f7>;
+        };
+    };

-- 
2.51.0



