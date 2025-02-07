Return-Path: <devicetree+bounces-143962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCDBA2C585
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 137507A4F71
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 14:33:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2F772405EE;
	Fri,  7 Feb 2025 14:33:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A900A23FC55
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 14:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738938781; cv=none; b=iNd8bix01SIg74z1EVBRV4bdWHC4lLhCvuJJwE534iLXjG2S7r7AuZq+On07NPaAu3aCrtMxTMliMpAjHdvlhcw2ctfpAwOuqRX1+tL/B0ikx/0ArkJElmg8hTI++E4XX7qMa+c76MwzkUhbv0lEnt9UUefALakI5fOaULf0Rlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738938781; c=relaxed/simple;
	bh=xWxfYlP2ng2zhwJdFKzATCU61B63Bw8m5CRjQbfZzVI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SPvyk1rBRL9YOzoK2xAdEErsiqZz3qa3C59CIxAejGY7yscam9Bruh1JeJBaGR02wja3apdfERovGIXC+dZaXF6/L/BSvTFbIeQ5RUY50Jr8rfYkJ/vxiZs494g/rQnqRZ58SCdLh7pDjSi70Blc8Cd4HgAU8NIJV1A0qnn7ifw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tgPPB-0007Zs-Iy; Fri, 07 Feb 2025 15:32:29 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tgPP9-003zRt-2J;
	Fri, 07 Feb 2025 15:32:27 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tgPP9-008V5n-23;
	Fri, 07 Feb 2025 15:32:27 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v1 1/3] dt-bindings: sound: convert ICS-43432 binding to YAML
Date: Fri,  7 Feb 2025 15:32:24 +0100
Message-Id: <20250207143226.2026099-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250207143226.2026099-1-o.rempel@pengutronix.de>
References: <20250207143226.2026099-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Convert the ICS-43432 MEMS microphone device tree binding from text format
to YAML.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../devicetree/bindings/sound/ics43432.txt    | 19 -------
 .../bindings/sound/invensense,ics43432.yaml   | 51 +++++++++++++++++++
 2 files changed, 51 insertions(+), 19 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/ics43432.txt
 create mode 100644 Documentation/devicetree/bindings/sound/invensense,ics43432.yaml

diff --git a/Documentation/devicetree/bindings/sound/ics43432.txt b/Documentation/devicetree/bindings/sound/ics43432.txt
deleted file mode 100644
index e6f05f2f6c4e..000000000000
--- a/Documentation/devicetree/bindings/sound/ics43432.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-Invensense ICS-43432-compatible MEMS microphone with I2S output.
-
-There are no software configuration options for this device, indeed, the only
-host connection is the I2S interface. Apart from requirements on clock
-frequency (460 kHz to 3.379 MHz according to the data sheet) there must be
-64 clock cycles in each stereo output frame; 24 of the 32 available bits
-contain audio data. A hardware pin determines if the device outputs data
-on the left or right channel of the I2S frame.
-
-Required properties:
-  - compatible: should be one of the following.
-     "invensense,ics43432": For the Invensense ICS43432
-     "cui,cmm-4030d-261": For the CUI CMM-4030D-261-I2S-TR
-
-Example:
-
-	ics43432: ics43432 {
-		compatible = "invensense,ics43432";
-	};
diff --git a/Documentation/devicetree/bindings/sound/invensense,ics43432.yaml b/Documentation/devicetree/bindings/sound/invensense,ics43432.yaml
new file mode 100644
index 000000000000..baa4505e8789
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/invensense,ics43432.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/invensense,ics43432.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Invensense ICS-43432-compatible MEMS Microphone with I2S Output
+
+maintainers:
+  - N/A
+
+description: |
+  The ICS-43432 and compatible MEMS microphones output audio over an I2S
+  interface and require no software configuration. The only host connection
+  is the I2S bus. The microphone requires an I2S clock frequency between
+  460 kHz and 3.379 MHz and 64 clock cycles per stereo frame. Each frame
+  contains 32-bit slots per channel, with 24 bits carrying audio data.
+  A hardware pin determines whether the microphone outputs audio on the
+  left or right channel of the I2S frame.
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - const: invensense,ics43432
+      - const: cui,cmm-4030d-261
+
+  port:
+    $ref: audio-graph-port.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    ics43432: ics43432 {
+        compatible = "invensense,ics43432";
+
+        port {
+          endpoint {
+            remote-endpoint = <&i2s1_endpoint>;
+            dai-format = "i2s";
+          };
+        };
+
+    };
-- 
2.39.5


