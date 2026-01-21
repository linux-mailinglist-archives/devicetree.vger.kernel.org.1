Return-Path: <devicetree+bounces-258160-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAbuEjBocWmaGgAAu9opvQ
	(envelope-from <devicetree+bounces-258160-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 00:58:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 633675FC06
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 00:58:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 700097E7618
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE34B45104B;
	Wed, 21 Jan 2026 23:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYrsnBv5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9127943DA3E;
	Wed, 21 Jan 2026 23:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769039883; cv=none; b=YdrZc5czF3yb5SeNQ2siRDXK8EpnIpI8Zmlpjp/xhwt5GOesPZxIdKPOGtN1uPm3xprfPod/QuYWNLBu4kSguhJqFeOSyHU/MHypAxM0Mh+U+rpKhAhY1cpbeNO1lKZYRusdiJELDuMqxZZeoo8O57oR92+8wKXULE3kxltmEA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769039883; c=relaxed/simple;
	bh=+Qd8PK6tgG774tSpVNemoYKsX/Prwl5vQZ9PE1pLybo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nnWTJK20TulZ1FuylTFysGMqDBiWOXQfpxUbGWEGj7itcd82nnoqwlczjK+kLdA5AsVMsDDq5+3ZF73tGAhFoG/2VB+YYjrbmYRklg7oYgLpyE/kYsK+AZISzJ5a8yHr9YXoEGklqv4gVtkhKqVGbK9b5tsGSV/LL1t50nfSowI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYrsnBv5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01DFDC4CEF1;
	Wed, 21 Jan 2026 23:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769039883;
	bh=+Qd8PK6tgG774tSpVNemoYKsX/Prwl5vQZ9PE1pLybo=;
	h=From:To:Cc:Subject:Date:From;
	b=DYrsnBv5MOcezkqW3TbZpY/G8Mr9l5/9JMqHSLbRKlisWNSLV0bayYmU1XN2+IYdF
	 G7n3prQLIMoUvvdMTlSdvR8jaSU0zTVDVEnFjDHGFGoK/+Nq8hkkWwhpHyKTfCc8U8
	 fAs32nXkUdfKRCWdmw6l9oqxdYiZuJIM7+JtdXQNtlSBj2lIzCKQ0TGyBKOSis9k+g
	 KpnNj8bpLWXx6nIvyZZWuRcWYld3xrg+4y0RyG/ku2V9nd5EaCX/G8tW6ui4n9J2We
	 xKu8kZhzxiZ7xNnCB0UyLb9Xcu0WUkHf1k41/D/0rWLgji9ui6Zlr/BfbaM8WBzOqX
	 pc5UuqhgfloZA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shenghao Ding <shenghao-ding@ti.com>,
	Kevin Lu <kevin-lu@ti.com>,
	Baojun Xu <baojun.xu@ti.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: dt-bindings: Convert ti,tas2552 to DT schema
Date: Wed, 21 Jan 2026 17:57:56 -0600
Message-ID: <20260121235757.370920-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258160-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,ti.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 633675FC06
X-Rspamd-Action: no action

Convert the TI TAS2552 codec binding to DT schema format. It's a
straight-forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/sound/tas2552.txt     | 36 -----------
 .../devicetree/bindings/sound/ti,tas2552.yaml | 62 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 63 insertions(+), 37 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/tas2552.txt
 create mode 100644 Documentation/devicetree/bindings/sound/ti,tas2552.yaml

diff --git a/Documentation/devicetree/bindings/sound/tas2552.txt b/Documentation/devicetree/bindings/sound/tas2552.txt
deleted file mode 100644
index a7eecad83db1..000000000000
--- a/Documentation/devicetree/bindings/sound/tas2552.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-Texas Instruments - tas2552 Codec module
-
-The tas2552 serial control bus communicates through I2C protocols
-
-Required properties:
-	- compatible - One of:
-		"ti,tas2552" - TAS2552
-	- reg -  I2C slave address: it can be 0x40 if ADDR pin is 0
-				    or 0x41 if ADDR pin is 1.
-	- supply-*: Required supply regulators are:
-		"vbat"		battery voltage
-		"iovdd"		I/O Voltage
-		"avdd"		Analog DAC Voltage
-
-Optional properties:
-	- enable-gpio - gpio pin to enable/disable the device
-
-tas2552 can receive its reference clock via MCLK, BCLK, IVCLKIN pin or use the
-internal 1.8MHz. This CLKIN is used by the PLL. In addition to PLL, the PDM
-reference clock is also selectable: PLL, IVCLKIN, BCLK or MCLK.
-For system integration the dt-bindings/sound/tas2552.h header file provides
-defined values to select and configure the PLL and PDM reference clocks.
-
-Example:
-
-tas2552: tas2552@41 {
-	compatible = "ti,tas2552";
-	reg = <0x41>;
-	vbat-supply = <&reg_vbat>;
-	iovdd-supply = <&reg_iovdd>;
-	avdd-supply = <&reg_avdd>;
-	enable-gpio = <&gpio4 2 GPIO_ACTIVE_HIGH>;
-};
-
-For more product information please see the link below:
-https://www.ti.com/product/TAS2552
diff --git a/Documentation/devicetree/bindings/sound/ti,tas2552.yaml b/Documentation/devicetree/bindings/sound/ti,tas2552.yaml
new file mode 100644
index 000000000000..10369aa5f0a8
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/ti,tas2552.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/ti,tas2552.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments TAS2552 Codec
+
+maintainers:
+  - Shenghao Ding <shenghao-ding@ti.com>
+  - Kevin Lu <kevin-lu@ti.com>
+  - Baojun Xu <baojun.xu@ti.com>
+
+description: >
+  The TAS2552 can receive its reference clock via MCLK, BCLK, IVCLKIN pin or 
+  use the internal 1.8MHz. This CLKIN is used by the PLL. In addition to PLL, 
+  the PDM reference clock is also selectable: PLL, IVCLKIN, BCLK or MCLK.
+
+  For system integration the dt-bindings/sound/tas2552.h header file provides
+  defined values to select and configure the PLL and PDM reference clocks.
+
+properties:
+  compatible:
+    const: ti,tas2552
+
+  reg:
+    maxItems: 1
+
+  vbat-supply: true
+  iovdd-supply: true
+  avdd-supply: true
+
+  enable-gpio:
+    maxItems: 1
+    description: gpio pin to enable/disable the device
+
+required:
+  - compatible
+  - reg
+  - vbat-supply
+  - iovdd-supply
+  - avdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        audio-codec@41 {
+            compatible = "ti,tas2552";
+            reg = <0x41>;
+            vbat-supply = <&reg_vbat>;
+            iovdd-supply = <&reg_iovdd>;
+            avdd-supply = <&reg_avdd>;
+            enable-gpio = <&gpio4 2 GPIO_ACTIVE_HIGH>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 332ddd3ea7eb..6ab9534ed263 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25989,7 +25989,7 @@ M:	Kevin Lu <kevin-lu@ti.com>
 M:	Baojun Xu <baojun.xu@ti.com>
 L:	linux-sound@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/sound/tas2552.txt
+F:	Documentation/devicetree/bindings/sound/ti,tas2552.yaml
 F:	Documentation/devicetree/bindings/sound/ti,tas2562.yaml
 F:	Documentation/devicetree/bindings/sound/ti,tas2770.yaml
 F:	Documentation/devicetree/bindings/sound/ti,tas27xx.yaml
-- 
2.51.0


