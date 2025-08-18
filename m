Return-Path: <devicetree+bounces-205720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2C5B29DD8
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 11:29:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38E46164769
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 09:27:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AC7A30C366;
	Mon, 18 Aug 2025 09:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="WSi2V3I+"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D0B279912
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755509265; cv=none; b=uJw8S6ezugwc0ifsuqSh/nkPLdbnmxBXEH8rkuYdjZlIE34bnYoqrDc+U2H/j+QzkEyTuwusL+Zg2LIYCrLQKx8QWM0MZmnwzz4vDQkssQI6oXAHfRHvuZvtOf9M9rFvr+f0v8PbUq898Ltwx1sPHPx9r/yk/WzPn6C5nxHGNSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755509265; c=relaxed/simple;
	bh=rMyZgYXgDrr5k91AipTh+F6Ru1x1l3ryBUinFFaUlQU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hqIc70Q1/GNn9yrwgyKuqT3WvCeM9B0u8C8dHhlz6GOM5UmosKjLeryLhaKmvFchgYaQZSf/+W1VLqbG2QJub9+vzoEkneqgbC+kazXoMpiuivdllIWBgT2rMSJdVfNa1qnvXe86gtqFspwjsQZ6HcvZgJmntGOZff6syenbt0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=WSi2V3I+; arc=none smtp.client-ip=212.227.17.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1755509261; x=1756114061;
	i=markus.stockhausen@gmx.de;
	bh=w3YuYHV58vP5zsyqpmRtLbhnDCGiapoBPM7Es2e4+5Q=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=WSi2V3I+vUR20bvZD88VATsXgRWbioqj7U2uRunXZ0AlLlRBKEcY+y/lvS96jZm9
	 L1y6e2u7eFsYspOkPRxkbx52/vyTH7edj96Q2RaHiAu2mJYbWrB2mH6EJG0knBEar
	 jKRaNuRoyVJrttbgRx/2ijKn0oQ3Eh402NFSFH+7Jk9j26nKHwhkIMJrgFZ4rWuMZ
	 mzwBzu3Joq/dQzRUxxcQTHYWCtMxIDGfi5hyyTxY7GoxkFnsOtIfmOFWhkyQFfYtX
	 5OdjLZX7gTpTexZGJMUdSEitN4nV11cDrzsAPE0viFXJdmGxqAzqKRVJXaDPEnzt8
	 R6/6u71Qs7tG24W5dQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.55]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mj8mb-1uKMhN3lnJ-00izia; Mon, 18
 Aug 2025 11:27:40 +0200
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
Subject: [PATCH 1/2] dt-bindings: mtd: Add realtek,rtl9301-ecc
Date: Mon, 18 Aug 2025 05:27:24 -0400
Message-ID: <20250818092725.1977105-2-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250818092725.1977105-1-markus.stockhausen@gmx.de>
References: <20250818092725.1977105-1-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:Q9mwtwqPcMwxVVirKVMcRUE7JooJB8XV8p1Eq0sP/XcQOX/w30L
 pYYU6zyeXBqyLsNOIKRDWpz6ehIUhBFWSFG65EF1qyDa7F18nylRjWdpDVlKOSQsFn5qf3u
 KSF4SXkG5QPvqkIov4WxjMzaOlQ1NxOsgFSttRRbKPZSMt3wIiNHMsozQ3qTt8ffkI7oduQ
 1e+5u3z/fiPBBNMqfFmFA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:UMQQpGjus4M=;BLu815u9481O3QLhwK3a5T9YklM
 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
 7ZQ1JUg=

Add a dtschema for the ECC engine on the Realtek RTL93xx SoCs.
The engine supports BCH6 and BCH12 parity for 512 byte blocks.

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
=2D--
 .../bindings/mtd/realtek,rtl9301-ecc.yaml     | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/realtek,rtl9301-=
ecc.yaml

diff --git a/Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.yam=
l b/Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.yaml
new file mode 100644
index 000000000000..9ec69e661812
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
+        #address-cells =3D <2>;
+        #size-cells =3D <2>;
+
+        ecc0: ecc@1a600 {
+            compatible =3D "realtek,rtl9301-ecc";
+            reg =3D <0x1a600 0x54>;
+        };
+    };
=2D-=20
2.47.0


