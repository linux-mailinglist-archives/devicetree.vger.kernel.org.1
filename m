Return-Path: <devicetree+bounces-11764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DAC7D68B7
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:34:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3D1F1C20DAA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A15A266D3;
	Wed, 25 Oct 2023 10:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="IveYCGBP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7FE266B5
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:34:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5D48CC433A9;
	Wed, 25 Oct 2023 10:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.dev; s=korg;
	t=1698230089; bh=i2xaXqOVgU88Uvg3QDgHjQjoR8ujrvuCPuyxLV6Xtz4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=IveYCGBPkLzyDWD2vMUNdTgoYO0lOeBomBtiGi/LsxivNdwrcc48Y/gXA+ypOBn4K
	 HIaDa54lSyssv3B+j40INE0lDtVkcVzaye2cB0w9KF3/x9O8k2evuwWiZtaNMH3upz
	 3pL5AuYsjGl/CDRQrorHhUOM3KZ6ycdeox8KW5N4=
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D2FEC25B6E;
	Wed, 25 Oct 2023 10:34:49 +0000 (UTC)
From: Richard Leitner <richard.leitner@linux.dev>
Date: Wed, 25 Oct 2023 10:34:12 +0000
Subject: [PATCH 2/4] dt-bindings: hwmon: add ti,ina238
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-ina237-v1-2-a0196119720c@linux.dev>
References: <20231025-ina237-v1-0-a0196119720c@linux.dev>
In-Reply-To: <20231025-ina237-v1-0-a0196119720c@linux.dev>
To: Guenter Roeck <linux@roeck-us.net>, Jean Delvare <jdelvare@suse.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 devicetree@vger.kernel.org, Richard Leitner <richard.leitner@linux.dev>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698230088; l=2124;
 i=richard.leitner@linux.dev; s=20231025; h=from:subject:message-id;
 bh=i2xaXqOVgU88Uvg3QDgHjQjoR8ujrvuCPuyxLV6Xtz4=; =?utf-8?q?b=3Dyuv9v7Sy8wlR?=
 =?utf-8?q?5MraQ2EgcTULWV5JPbnedvH4packoK616Xqds4Mm9TEg6QErN/mLJKfPfxhhqp4c?=
 CD7JxoP4Bq3qpgWMbMbjwAsk960HEgsqRRKpjySvzmZZnznGL4HR
X-Developer-Key: i=richard.leitner@linux.dev; a=ed25519;
 pk=ZYa5+0m9RFYtnNU6DLet7sHyPehnVHa0ucJlYiAu2NU=
X-Endpoint-Received:
 by B4 Relay for richard.leitner@linux.dev/20231025 with auth_id=90

The ina238 driver is available since 2021 but lacks a dt-bindings file.
Therefore add the missing file now.

Mention Jean Delvare and Guenter Roeck as maintainers as reported by the
get_maintainer.pl script.

Signed-off-by: Richard Leitner <richard.leitner@linux.dev>
---
 .../devicetree/bindings/hwmon/ti,ina238.yaml       | 46 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 47 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml b/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml
new file mode 100644
index 000000000000..aba89e5f34b3
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+
+$id: http://devicetree.org/schemas/hwmon/ti,ina238.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments INA238 power/voltage monitors
+
+maintainers:
+  - Jean Delvare <jdelvare@suse.com>
+  - Guenter Roeck <linux@roeck-us.net>
+
+description: |
+  The INA238 is an ultra-precise digital power monitor with a
+  16-bit delta-sigma ADC specifically designed for current-sensing
+  applications.
+
+  Datasheets:
+    https://www.ti.com/lit/ds/symlink/ina238.pdf
+
+properties:
+  compatible:
+    enum:
+      - ti,ina238
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
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        power-sensor@40 {
+            compatible = "ti,ina238";
+            reg = <0x40>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 28f91c8a2e1c..13858bd6a3d4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10271,6 +10271,7 @@ INA238 HARDWARE MONITOR DRIVER
 M:	Guenter Roeck <linux@roeck-us.net>
 L:	linux-hwmon@vger.kernel.org
 S:	Maintained
+F:	Documentation/devicetree/bindings/hwmon/ti,ina238.yaml
 F:	drivers/hwmon/ina238.c
 
 INDEX OF FURTHER KERNEL DOCUMENTATION

-- 
2.40.1


