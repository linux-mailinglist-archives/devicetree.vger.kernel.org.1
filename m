Return-Path: <devicetree+bounces-246791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FE7CBFEF1
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 22:31:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E623300A37E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7D0C329E62;
	Mon, 15 Dec 2025 21:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RK3IeTyt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71BB19C566;
	Mon, 15 Dec 2025 21:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765833951; cv=none; b=j1BoauVh2DmjSEnU4IPfTOOGLUiaib2mRBvIrooEPcLKCh4SWXETjDH9rxe3DYheqof8CBRcIPGPXJFDp5Q9JfY/LMSQyS3rtVRACv/2PSNkAiGHd3J2Ss8Ln+Zkf7cGbTsNPZweIGTgjxRZQlwyLxcYxlh4UOR2tXpkHCj57iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765833951; c=relaxed/simple;
	bh=kiw0goeN5aBoX6I00llSTjYsgjb8H4bcAIudTCcuFGQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=iH9NFDgjVI1L/Dk2hp12htGWTqRnSJ7fXgEptc1x45qVsVJBUtSiXklh1QYz9anGZ88DeOQrLC0burpthU0gEq4lkqjIibfsk2bsyYqKwvo6gXxuL/NRTtzr2+4Vf+AaEpyCbCnszq3OG9B3v5QX5FM+LV5vx1Y34PuI3UTQsvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RK3IeTyt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29683C4CEF5;
	Mon, 15 Dec 2025 21:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765833951;
	bh=kiw0goeN5aBoX6I00llSTjYsgjb8H4bcAIudTCcuFGQ=;
	h=From:To:Cc:Subject:Date:From;
	b=RK3IeTytSaYzwpIE+ysZLsbMqOy197T9ehYqvWAUbQf7OuPCR8hFpQCX2IiQZB0y2
	 FbYBeNvZoyMbgbNR/2QHcHq01zD/jmnjf6GnSHKiAmo2zBHQ80aKqlIBrnDpaXzzAD
	 kkj3sde0VV9qMGlxzjjumvSCvPyXkaNq/eGw0gFzelNDZASCH/jMtS+B04c0Vwd4U+
	 F/NBB5FHT7z9v7qTyTz+ROPaCC7wvH7hOikEc/5NE/y1+bLCKXEmK3RihfvlwXwQcq
	 QTGoJt/nxlaMLxTRxZpnYSFPbjd53LvGbBBxwnqVftY6xEzeFxv8Zx53RuxfuzX8tV
	 qs7LNmveQYcSg==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: firmware: Convert cznic,turris-mox-rwtm to DT schema
Date: Mon, 15 Dec 2025 15:25:43 -0600
Message-ID: <20251215212545.3318816-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Convert the CZ.NIC Turris Mox rWTM firmware binding to DT schema format.
Add the "marvell,armada-3700-rwtm-firmware" compatible which was not
documented.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../firmware/cznic,turris-mox-rwtm.txt        | 19 ---------
 .../firmware/cznic,turris-mox-rwtm.yaml       | 40 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 41 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.txt
 create mode 100644 Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.yaml

diff --git a/Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.txt b/Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.txt
deleted file mode 100644
index 338169dea7bb..000000000000
--- a/Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-Turris Mox rWTM firmware driver
-
-Required properties:
- - compatible		: Should be "cznic,turris-mox-rwtm"
- - mboxes		: Must contain a reference to associated mailbox
-
-This device tree node should be used on Turris Mox, or potentially another A3700
-compatible device running the Mox's rWTM firmware in the secure processor (for
-example it is possible to flash this firmware into EspressoBin).
-
-Example:
-
-	firmware {
-		turris-mox-rwtm {
-			compatible = "cznic,turris-mox-rwtm";
-			mboxes = <&rwtm 0>;
-			status = "okay";
-		};
-	};
diff --git a/Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.yaml b/Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.yaml
new file mode 100644
index 000000000000..28caec137cc1
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/cznic,turris-mox-rwtm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: CZ.NIC Turris Mox rWTM firmware
+
+maintainers:
+  - Marek Behún <kabel@kernel.org>
+
+description:
+  This device tree node should be used on Turris Mox, or potentially another
+  A3700 compatible device running the Mox's rWTM firmware in the secure
+  processor (for example it is possible to flash this firmware into
+  EspressoBin).
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: marvell,armada-3700-rwtm-firmware
+          - const: cznic,turris-mox-rwtm
+      - const: marvell,armada-3700-rwtm-firmware
+
+  mboxes:
+    maxItems: 1
+
+required:
+  - compatible
+  - mboxes
+
+additionalProperties: false
+
+examples:
+  - |
+    turris-mox-rwtm {
+        compatible = "marvell,armada-3700-rwtm-firmware", "cznic,turris-mox-rwtm";
+        mboxes = <&rwtm 0>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 663e86eb9ff1..68bae2397ba3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2711,7 +2711,7 @@ F:	Documentation/ABI/testing/sysfs-bus-i2c-devices-turris-omnia-mcu
 F:	Documentation/ABI/testing/sysfs-bus-moxtet-devices
 F:	Documentation/ABI/testing/sysfs-firmware-turris-mox-rwtm
 F:	Documentation/devicetree/bindings/bus/cznic,moxtet.yaml
-F:	Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.txt
+F:	Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.yaml
 F:	Documentation/devicetree/bindings/firmware/cznic,turris-omnia-mcu.yaml
 F:	Documentation/devicetree/bindings/interrupt-controller/marvell,mpic.yaml
 F:	Documentation/devicetree/bindings/leds/cznic,turris-omnia-leds.yaml
-- 
2.51.0


