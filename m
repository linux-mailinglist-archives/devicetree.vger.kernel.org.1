Return-Path: <devicetree+bounces-70374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B618D330C
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 11:31:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3944A1C23D64
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 09:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 922C3179654;
	Wed, 29 May 2024 09:29:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gauss.telenet-ops.be (gauss.telenet-ops.be [195.130.132.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87E41176FD8
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 09:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716974992; cv=none; b=BgKEOFOk96sZMZWcbS1g7bPo4bDYoid3VG543xqFUnINGD38dW1oL1gpksyR1ZrdpadvnDi3xIIAYByElvM11DEHXN/BfZ8pLLA1H5FslvJ/bakc7QfWzgVd+Ew0LJJqoaFYqZs2Ipk7lkF0q+ajyXaHWNO7VB8nOk8IE5oX8Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716974992; c=relaxed/simple;
	bh=K9JbpboeEVGszs4uTMo3Rfibhk0VjLLtBuNKn9PsLKY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qjM54ziJevHpb7IV4jnaZojj63TNVIt7J86t1t85odf5KPxNW/R87oBYPDRPqnBj+2MS2P2Xn3lUfNDyqpEHwh5zwYBUEgLtK/AiS78OEb2dxOgHClQHFJdDxZqAFgS4bkrfDXKTM3M5Bq9357k3267pkKwvITu0NGuG4+Z7UqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [IPv6:2a02:1800:120:4::f00:13])
	by gauss.telenet-ops.be (Postfix) with ESMTPS id 4Vq3xg2GJfz4x62R
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 11:29:43 +0200 (CEST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:1b01:1838:131c:4de4])
	by baptiste.telenet-ops.be with bizsmtp
	id UxVg2C00g3VPV9V01xVgkh; Wed, 29 May 2024 11:29:43 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1sCFbt-00GHKZ-Vo;
	Wed, 29 May 2024 11:29:40 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1sCFcq-008wRu-Cd;
	Wed, 29 May 2024 11:29:40 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2 1/8] dt-bindings: fuse: Document R-Car E-FUSE / PFC
Date: Wed, 29 May 2024 11:29:30 +0200
Message-Id: <03e43e97941df238ef1a618852aecd7be68adbb0.1716974502.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1716974502.git.geert+renesas@glider.be>
References: <cover.1716974502.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document support for E-FUSE non-volatile memory accessible through PFC
on R-Car V3U and S4-8.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
v2:
  - Add Reviewed-by.
---
 .../bindings/fuse/renesas,rcar-efuse.yaml     | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/fuse/renesas,rcar-efuse.yaml

diff --git a/Documentation/devicetree/bindings/fuse/renesas,rcar-efuse.yaml b/Documentation/devicetree/bindings/fuse/renesas,rcar-efuse.yaml
new file mode 100644
index 0000000000000000..d7e289244e72cce1
--- /dev/null
+++ b/Documentation/devicetree/bindings/fuse/renesas,rcar-efuse.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/fuse/renesas,rcar-efuse.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: R-Car E-FUSE connected to PFC
+
+maintainers:
+  - Geert Uytterhoeven <geert+renesas@glider.be>
+
+description:
+  The E-FUSE is a type of non-volatile memory, which is accessible through the
+  Pin Function Controller (PFC) on some R-Car Gen4 SoCs.
+
+properties:
+  compatible:
+    enum:
+      - renesas,r8a779a0-efuse # R-Car V3U
+      - renesas,r8a779f0-efuse # R-Car S4-8
+
+  reg:
+    maxItems: 1
+    description: PFC System Group Fuse Control and Monitor register block
+
+  clocks:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - power-domains
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/r8a779a0-cpg-mssr.h>
+    #include <dt-bindings/power/r8a779a0-sysc.h>
+
+    fuse: fuse@e6078800 {
+            compatible = "renesas,r8a779a0-efuse";
+            reg = <0xe6078800 0x100>;
+            clocks = <&cpg CPG_MOD 916>;
+            power-domains = <&sysc R8A779A0_PD_ALWAYS_ON>;
+            resets = <&cpg 916>;
+    };
-- 
2.34.1


