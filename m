Return-Path: <devicetree+bounces-252464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF61CFFCF1
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 20:44:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4BAC4329EE58
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 18:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CB0D2853EE;
	Wed,  7 Jan 2026 17:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVNEKDSb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A9D34B415;
	Wed,  7 Jan 2026 17:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767805302; cv=none; b=FkfeScPxzgC9GX+l3mBB6m6N9fsys3phXPUX4kSFraLoxD2uRXYGngza+srvX2mVlXGoIrSAAxBXmqo4/ywhtzKEHX/DxX+6PfqeNrfc9o9pcWuLrEAx6hnDbv5YV8lXKRrJNT236jxvgnLaLVbXolyFDdsRjbDBHgr3JYu/a5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767805302; c=relaxed/simple;
	bh=6uEVhzlmhQI9tsyOAY16BpmJz+ZIZQnfbzuT3IRizoQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tU6+nT4mVLERTy2qwnq0IJKjjHr4UUTKujGjuw2zOmC+10OYe467bXPnC9pG8D7NqGZv77RwjAeZj4f2Q7Ul0twKCgCcgOVYy8LaZiyHOlpBnBZCns39HHcvioCGa3X2C1KgU0sJvwxW2zkvPoN4q4KApTQWv5+Oq54b0kzqCn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVNEKDSb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4993C19423;
	Wed,  7 Jan 2026 17:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767805300;
	bh=6uEVhzlmhQI9tsyOAY16BpmJz+ZIZQnfbzuT3IRizoQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MVNEKDSbcRXzlWQNGU3FsWplI+O0TVIBENkGefy9VbrMVJTgkJKa7+2XSkNzjERSb
	 j6FT0CoXVEjEpqktyD7MFWdDQCP7i2+NvOkMQyxc4/81zI5L5DE/PeLFAygQ9IgPo4
	 apWHXNQTxlp7uiL+KU0Sbge3suAfAd6YAe8WxmQYtPfL0tmLcfXOaJw+ocoUPy+jYc
	 9idbEy8AglaqdZBQHRnqHyQuxCVEAWI0fIuq47trnVFaU23ZRjRDVWs6Kmx3whtxu/
	 gU/N7ZcBaZVoYfkuBSBNsDEkq4emf2GDSKkwblyS468zzWZXdvpRfqmH8B/ZghF8Cb
	 V0T/nquDfeswA==
From: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
To: Qiang Zhao <qiang.zhao@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
	linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH 2/2] dt-bindings: soc: fsl: qe: Add an interrupt controller for QUICC Engine Ports
Date: Wed,  7 Jan 2026 17:59:10 +0100
Message-ID: <7708243d6cca21004de8b3da87369c06dbee3848.1767804922.git.chleroy@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <63f19db21a91729d91b3df336a56a7eb4206e561.1767804922.git.chleroy@kernel.org>
References: <63f19db21a91729d91b3df336a56a7eb4206e561.1767804922.git.chleroy@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2014; i=chleroy@kernel.org; h=from:subject:message-id; bh=6uEVhzlmhQI9tsyOAY16BpmJz+ZIZQnfbzuT3IRizoQ=; b=owGbwMvMwCV2d0KB2p7V54MZT6slMWTGTXi0ZH6ii/rF5Gv3G3auNtvOxcIRaz75soCefUC1U G7CofPTO0pZGMS4GGTFFFmO/+feNaPrS2r+1F36MHNYmUCGMHBxCsBEJngxMsyR+cnV+dJpxkmF 6MBDbNOsLnznKOoIymac3rr2/K/PsdMY/vD9MQ9fVOrMVnOn5PVeLut76aE/T638rj3hg6/P9gO f/jMCAA==
X-Developer-Key: i=chleroy@kernel.org; a=openpgp; fpr=10FFE6F8B390DE17ACC2632368A92FEB01B8DD78
Content-Transfer-Encoding: 8bit

The QUICC Engine provides interrupts for a few I/O ports. This is
handled via a separate interrupt ID and managed via a triplet of
dedicated registers hosted by the SoC.

Implement an interrupt driver for it so that those IRQs can then
be linked to the related GPIOs.

Signed-off-by: Christophe Leroy (CS GROUP) <chleroy@kernel.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../soc/fsl/cpm_qe/fsl,qe-ports-ic.yaml       | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe-ports-ic.yaml

diff --git a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe-ports-ic.yaml b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe-ports-ic.yaml
new file mode 100644
index 0000000000000..1f3c652b1569d
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe-ports-ic.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/fsl/cpm_qe/fsl,qe-ports-ic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale QUICC Engine I/O Ports Interrupt Controller
+
+maintainers:
+  - Christophe Leroy (CS GROUP) <chleroy@kernel.org>
+
+properties:
+  compatible:
+    enum:
+      - fsl,mpc8323-qe-ports-ic
+
+  reg:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  '#address-cells':
+    const: 0
+
+  '#interrupt-cells':
+    const: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupt-controller
+  - '#address-cells'
+  - '#interrupt-cells'
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    interrupt-controller@c00 {
+      compatible = "fsl,mpc8323-qe-ports-ic";
+      reg = <0xc00 0x18>;
+      interrupt-controller;
+      #address-cells = <0>;
+      #interrupt-cells = <1>;
+      interrupts = <74 0x8>;
+      interrupt-parent = <&ipic>;
+    };
-- 
2.49.0


