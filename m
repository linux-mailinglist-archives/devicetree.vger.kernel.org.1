Return-Path: <devicetree+bounces-210089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F5AB3A245
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 16:40:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B441168565
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 14:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E2723128A4;
	Thu, 28 Aug 2025 14:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="AfK9dMa9"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6089F30E84B
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 14:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756391681; cv=none; b=UqqmrYscd1aB+cNdGKOc2SPYLqap3/gWuPmV1robEBvqlfP5+PPQ7RcXmWIMFuYE8WEf/wFXeTc7QEUvbt2d898wJUXyCw3IPFOYXndO/SaUI6Z6+4INzkfUgZRyvLIYUhA5WYxVeIKKIuosVFaEjU4A8hQoqu6JpN5ZQWm/0pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756391681; c=relaxed/simple;
	bh=Wb03hq+F73TEjQ5/D6UhVrbIDZSE0dFHuhhdkmqnaPs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WmueXFC9ObaSwmaZxhvxst1Xpx5/tM7ygzmjCsE0B+wAi1SnMtQ/n4ybVgsCOcTrSNh21xPdFM7mczx9hduieLu8UAOQB8DC+PdLIxHntpVEpkRjokxA8NcNK2VlgTPzdCJozpxRapcjJ0oz38vVnta8Sk4sl75D8h4pgrD385k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=AfK9dMa9; arc=none smtp.client-ip=212.227.15.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1756391661; x=1756996461;
	i=markus.stockhausen@gmx.de;
	bh=O6tLNtezGNZUfQd+tahjlLtYU8DOOV6MP2GIlyB5v8I=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=AfK9dMa9SjAwanZ9yJBMEYLycKOk5s2ba3gQycuz37u3Limrblslg3IoMYWKeN2B
	 WxwXDoZgjsRqJ27NOY9yfVWFP9qgZoAeG1cYuIESsfJ3xlj1GYfI0snTDkEL78M8H
	 vIT3E5aEidVmCyLPY9RFCi2mxMPLNQLYxx+HWhZQRTuPbmgC663M4MSMdSP0h0QWl
	 M+krtaIMHEFqmakJgbo+guyUwha5ofN/R3kQkdK7ce6ZFCP8MqPAGPhc890jlgKu0
	 rbwmLr7HfyBEjc3Ad7OarTW2nTtXR52WAbiAWnbQBcrK8jCuHpugJxp5ZVnKFNtmK
	 ZyZxRjLUYvz38GhGhw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.55]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MOzT4-1v85A11JCm-00MA5x; Thu, 28
 Aug 2025 16:34:21 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: miquel.raynal@bootlin.com,
	richard@nod.at,
	vigneshr@ti.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v2 1/2] dt-bindings: mtd: Add realtek,rtl9301-ecc
Date: Thu, 28 Aug 2025 10:34:07 -0400
Message-ID: <20250828143408.2511086-2-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250828143408.2511086-1-markus.stockhausen@gmx.de>
References: <20250828143408.2511086-1-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:NLGxKV701/ampiWYdj0Arb84piJvZxzFG257mv2cczpXELApO1b
 PKXoDdXe+3hCzIBnmGuDFk8+J0FiT9+e84CYqxz/EQ+VaAXAg10782jYxJSSEWu7FnVUxgD
 DGWQCN4rE+9qRbNTHQ+rdm6j0sFS3qv94W9u/v7hDPoq9c6+C4IBI86Tj1BBJ/yEyGvw+9O
 t00iAvcJuAwY2C2PWRF6g==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Xqs9CQ+Pcu0=;L8fRS5+K9fZEV1/nYtnyi2CwqkY
 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

Add a dtschema for the ECC engine on the Realtek RTL93xx SoCs.
The engine supports BCH6 and BCH12 parity for 512 byte blocks.

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
=2D--
Changes in v2:
- change cells from 2 to 1 (only 32 bit hardware)
=2D--
 .../bindings/mtd/realtek,rtl9301-ecc.yaml     | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/realtek,rtl9301-=
ecc.yaml

diff --git a/Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.yam=
l b/Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.yaml
new file mode 100644
index 000000000000..1b34d79007a4
=2D-- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/realtek,rtl9301-ecc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek SoCs NAND ECC engine
+
+maintainers:
+  - Markus Stockhausen <markus.stockhausen@gmx.de>
+
+properties:
+  compatible:
+    const: realtek,rtl9301-ecc
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+        #address-cells =3D <1>;
+        #size-cells =3D <1>;
+
+        ecc0: ecc@1a600 {
+            compatible =3D "realtek,rtl9301-ecc";
+            reg =3D <0x1a600 0x54>;
+        };
+    };
=2D-=20
2.47.0


