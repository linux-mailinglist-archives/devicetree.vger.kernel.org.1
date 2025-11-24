Return-Path: <devicetree+bounces-241648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D0CC80617
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:12:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 63E4E3A1535
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 419DA2FFDDF;
	Mon, 24 Nov 2025 12:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="wYVBhFEh"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B429D2FDC5C;
	Mon, 24 Nov 2025 12:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763986122; cv=none; b=eHxR1kNUNIxO9BI+Hg/+tpeBCBaXE7WUNs0Z4eg6T35PcgzFMGyLVQpA9P1lXkzVCzsDm5J2aLvfnbPO/503G4X+wLV94r0l4EZzxkbtdCL7n/nSbn/kuJ3d3iYtP3SwANlpPya0aHHvszJoh6q6oAsxvIWxxr9WTarEokqphKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763986122; c=relaxed/simple;
	bh=PG4wSEX77CXNfaW+kOPrPS3wXYz3EgWni/UqQoAtQSA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=mID0lLOg5Ryo+oB+Z/grmpR8+CoVO/nom3baIjVJCPZFiAyDnKhW5jno6FBEazIzTvJbWKh8LtzGqZU37rd7Y/5w4I6xZ6CvKq0ifQ5giPBmAfn/w4KjCFqspdiOV9TO9C6OE6zcbA9eB/U0nimB3aF0/UbHahqWcNntAbGQId4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=wYVBhFEh; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1763986118; x=1795522118;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=PG4wSEX77CXNfaW+kOPrPS3wXYz3EgWni/UqQoAtQSA=;
  b=wYVBhFEhxpj2/uDM5OtHl5Q1LYAQUJQi5GtoYwR60tn9zCaSGWEYpGxd
   QZ8UzRkIueaupvXK3oN4218nY2ifPm+yj289Ckg8nMNTjMgYObdwhW9xP
   heka2gnvmMSKQtCRfLmdRwFwQmqAgM2zl4KzIh41G/vAy6J4jV53SQGzS
   vMGz0ccOoLFPXKRfDtnZJ4EpyACW9zXgNUZHDGJ44GsBIKvHsEYQtlQ5d
   59s1O8DDB6gF9oa7+TMIwT2bUwzz0O6m1RsU6U8qk8l3fW/IuzuBbZA+v
   BKW94V1CISN7Q2wemqlEb0uLf5DkX54vLvs2W2cdbM3IcBYn9CWSm9m88
   Q==;
X-CSE-ConnectionGUID: YHrtvy5xRn+N01J9f5nEwg==
X-CSE-MsgGUID: ZD/nry72SmaprGTnlQRd7g==
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; 
   d="scan'208";a="280948038"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 24 Nov 2025 05:08:31 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Mon, 24 Nov 2025 05:08:05 -0700
Received: from ROU-LL-M19942.mpu32.int (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 24 Nov 2025 05:08:02 -0700
From: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Date: Mon, 24 Nov 2025 13:07:17 +0100
Subject: [PATCH v3 1/5] dt-bindings: gpu: add bindings for the Microchip
 GFX2D GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20251124-cpitchen-mainline_gfx2d-v3-1-607f8c407286@microchip.com>
References: <20251124-cpitchen-mainline_gfx2d-v3-0-607f8c407286@microchip.com>
In-Reply-To: <20251124-cpitchen-mainline_gfx2d-v3-0-607f8c407286@microchip.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
	"Alexandre Belloni" <alexandre.belloni@bootlin.com>, Claudiu Beznea
	<claudiu.beznea@tuxon.dev>, Russell King <linux@armlinux.org.uk>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	Cyrille Pitchen <cyrille.pitchen@microchip.com>, Conor Dooley
	<conor.dooley@microchip.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1771;
 i=cyrille.pitchen@microchip.com; h=from:subject:message-id;
 bh=PG4wSEX77CXNfaW+kOPrPS3wXYz3EgWni/UqQoAtQSA=;
 b=owGbwMvMwCXmf6yzKqEsVIbxtFoSQ6aK15zYa0y+qes8l3LI3d+t/tv7hbR6zjJTux1tW/p7S
 u0Zvbg7SlkYxLgYZMUUWQ692dqbefzVY7tXolIwc1iZQIYwcHEKwEQSQxn+Z6ednzsh4uruzTt/
 bN5tYOBeyme/WSFpgezsc1HqWnob+hgZlhsVzYu8pVLuKHestf+Qqsex074d/4Xm7enivOzrL7G
 CFwA=
X-Developer-Key: i=cyrille.pitchen@microchip.com; a=openpgp;
 fpr=7A21115D7D6026585D0E183E0EF12AA1BFAC073D

The Microchip GFX2D GPU is embedded in the SAM9X60 and SAM9X7 SoC family.
Describe how the GFX2D GPU is integrated in these SoCs, including
register space, interrupt and clock.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Cyrille Pitchen <cyrille.pitchen@microchip.com>
---
 .../bindings/gpu/microchip,sam9x60-gfx2d.yaml      | 46 ++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/microchip,sam9x60-gfx2d.yaml b/Documentation/devicetree/bindings/gpu/microchip,sam9x60-gfx2d.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..0f223ddda694e7edbc9f25c68d17ef01897a55a1
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpu/microchip,sam9x60-gfx2d.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpu/microchip,sam9x60-gfx2d.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip GFX2D GPU
+
+maintainers:
+  - Cyrille Pitchen <cyrille.pitchen@microchip.com>
+
+properties:
+  compatible:
+    enum:
+      - microchip,sam9x60-gfx2d
+      - microchip,sam9x7-gfx2d
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
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/at91.h>
+    gpu@f0018000 {
+      compatible = "microchip,sam9x60-gfx2d";
+      reg = <0xf0018000 0x4000>;
+      interrupts = <36 IRQ_TYPE_LEVEL_HIGH 0>;
+      clocks = <&pmc PMC_TYPE_PERIPHERAL 36>;
+    };
+
+...

-- 
2.51.0


