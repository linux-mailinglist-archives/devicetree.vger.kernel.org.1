Return-Path: <devicetree+bounces-268494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIk5HREvn2lXZQQAu9opvQ
	(envelope-from <devicetree+bounces-268494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:19:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D0F19B6DD
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:19:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBEEF31898F4
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAEA727B353;
	Wed, 25 Feb 2026 17:16:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02AE3E959D
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 17:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772039770; cv=none; b=S3CBcuDq5MPxKDdW+Uel8GzMTXqTmZFGGO/c3/qYUuCzkO0j4ITkyGdfOmG/B3AQqGvsoVGsAILtNra58BzqwHtK6kemNZf4jgpGxyekTUAgymIIX3A7r3ib175s1m7kBsHydRLLr8jwdh008O1I35AsO/3eNuQwJfZwTyXPjlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772039770; c=relaxed/simple;
	bh=egCfM0YGhfPlTldjlvHVKlmkGukF+YBwAMQxbKCiMKk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tt+A7Hi7BYRbReHaqCY4BblCKK0wiFJgOqvfkDpl7/SxxW/DCfszBV4CvWw9HPDnJdYObsaSReE/uzaYr7ZzAKYuLdnSRgszWIFh1Ux34stLL7vKbHJJX2iX9K9UqxQu04ZhFsz1UBx9WYpGYZg7RIydckxKWEeMLdssqUdpe8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vvIUF-0003C9-S1; Wed, 25 Feb 2026 18:15:47 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vvIUD-002b81-2S;
	Wed, 25 Feb 2026 18:15:47 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vvIUF-00000008JEE-07vB;
	Wed, 25 Feb 2026 18:15:47 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	Linus Walleij <linusw@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	David Jander <david@protonic.nl>
Subject: [PATCH v1 5/8] dt-bindings: hwmon: add NXP MC33978/MC34978 hwmon
Date: Wed, 25 Feb 2026 18:15:38 +0100
Message-ID: <20260225171545.1980385-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260225171545.1980385-1-o.rempel@pengutronix.de>
References: <20260225171545.1980385-1-o.rempel@pengutronix.de>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268494-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:mid,pengutronix.de:email,devicetree.org:url,protonic.nl:email]
X-Rspamd-Queue-Id: 04D0F19B6DD
X-Rspamd-Action: no action

Add device tree binding documentation for the hardware monitoring block
of the NXP MC33978/MC34978 Multiple Switch Detection Interface (MSDI).

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../bindings/hwmon/nxp,mc33978-hwmon.yaml     | 34 +++++++++++++++++++
 .../devicetree/bindings/mfd/nxp,mc33978.yaml  | 10 ++++++
 2 files changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/nxp,mc33978-hwmon.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/nxp,mc33978-hwmon.yaml b/Documentation/devicetree/bindings/hwmon/nxp,mc33978-hwmon.yaml
new file mode 100644
index 000000000000..b7e2aaa51a33
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/nxp,mc33978-hwmon.yaml
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/nxp,mc33978-hwmon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP MC33978/MC34978 Hardware Monitor
+
+maintainers:
+  - David Jander <david@protonic.nl>
+  - Oleksij Rempel <o.rempel@pengutronix.de>
+
+description: |
+  Hardware monitoring driver for the MC33978/MC34978 MSDI device.
+  Provides fault detection and monitoring for:
+  - Battery voltage (VBATP) faults: undervoltage, overvoltage
+  - Temperature faults: over-temperature, warning threshold
+
+properties:
+  compatible:
+    enum:
+      - nxp,mc33978-hwmon
+      - nxp,mc34978-hwmon
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    hwmon {
+        compatible = "nxp,mc33978-hwmon";
+    };
diff --git a/Documentation/devicetree/bindings/mfd/nxp,mc33978.yaml b/Documentation/devicetree/bindings/mfd/nxp,mc33978.yaml
index 5e8ab2cff685..58fcfe24d415 100644
--- a/Documentation/devicetree/bindings/mfd/nxp,mc33978.yaml
+++ b/Documentation/devicetree/bindings/mfd/nxp,mc33978.yaml
@@ -58,6 +58,12 @@ properties:
     description: |
       Pinctrl and GPIO controller child node for the 22 switch inputs.
 
+  hwmon:
+    type: object
+    $ref: /schemas/hwmon/nxp,mc33978-hwmon.yaml#
+    description: |
+      Hardware monitoring child node for fault detection.
+
 required:
   - compatible
   - reg
@@ -94,5 +100,9 @@ examples:
                 gpio-controller;
                 #gpio-cells = <2>;
             };
+
+            hwmon {
+                compatible = "nxp,mc33978-hwmon";
+            };
         };
     };
-- 
2.47.3


