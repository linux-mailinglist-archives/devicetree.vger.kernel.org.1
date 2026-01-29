Return-Path: <devicetree+bounces-261018-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNYBEWC1e2neHwIAu9opvQ
	(envelope-from <devicetree+bounces-261018-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:30:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E81B3FD8
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:30:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9108B303789D
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 19:30:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE61329C49;
	Thu, 29 Jan 2026 19:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="eRjSHL2E"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1089324718;
	Thu, 29 Jan 2026 19:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769715018; cv=none; b=G4B/QkQNbuM8lsaUwi4Vxnsz1wNgHI9kmgvVt61MQA0U2y86cqLPiThwLQxxjSBHGeXR7I6RD3re/L3cx/uULzdErtr+mNLxzzX8ZpweTcm3GG/h5xbfLbZ+yzl6xP/LGIsym48Fjl8s/XFLUMPTbKO285yhRFavW45Pi92g/9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769715018; c=relaxed/simple;
	bh=hoZRMLn4yd5h8NUB3DuRDi3DL0w2RInjgxdUTwiuT54=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fHVg1ucIMu6S7uIwYICcr+b7eiUNbt95jbsgNcJUdjU5ob9I2BnRtvBRq454MgLczrD6ASEeYF0/K10NY0ymmNZfGmLjqBWoEeB/rwM+5Hv0wSbCToh75f16gFQDtDbb8pXXaTXjqITf9+gM8erzJ6H2lgzIbf6MwOH9ZJfBnPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=eRjSHL2E; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 278A47791C61;
	Thu, 29 Jan 2026 13:20:57 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id 7knRtPZzApOw; Thu, 29 Jan 2026 13:20:56 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 70D4D7791C22;
	Thu, 29 Jan 2026 13:20:56 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com 70D4D7791C22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1769714456; bh=GjM+eSD6a8k5KhZdC0KKwbcnNoHJceE4XNrIk558L4M=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=eRjSHL2EjNb95QYKnf/zGGTdxGHNv/+lp6LyvyfxtM5nahdetYQops9NbUB4WOOyA
	 3/dl5mc8OlYshdsvG7QmMagRuVfh51L9KL7tjIh4Y+KDv+kMT3/0399nSz8vZUNieR
	 rh1saAgdtWOie8/cHdNnMyeafgB9m4hNwMJQOULw=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id KmidPqvpZI-F; Thu, 29 Jan 2026 13:20:56 -0600 (CST)
Received: from rcs-ewks-005.starlink.edu (unknown [192.168.20.42])
	by mail.rptsys.com (Postfix) with ESMTPSA id 5255B779059F;
	Thu, 29 Jan 2026 13:20:56 -0600 (CST)
From: Raptor Engineering Development Team <support@raptorengineering.com>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	lee@kernel.org,
	Georgy.Yakovlev@sony.com,
	sanastasio@raptorengineering.com,
	Timothy Pearson <tpearson@raptorengineering.com>
Subject: [PATCH v7 1/4] dt-bindings: mfd: Add sony,cronos-smc
Date: Thu, 29 Jan 2026 13:20:44 -0600
Message-Id: <20260129192047.562540-2-support@raptorengineering.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260129192047.562540-1-support@raptorengineering.com>
References: <20260129192047.562540-1-support@raptorengineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[raptorengineering.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[raptorengineering.com:s=B8E824E6-0BE2-11E6-931D-288C65937AAD];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261018-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sony.com:email,3f:email];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[support@raptorengineering.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[raptorengineering.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: C1E81B3FD8
X-Rspamd-Action: no action

From: Shawn Anastasio <sanastasio@raptorengineering.com>

The Sony Cronos Platform Controller is a multi-purpose platform controlle=
r
that provides both a watchdog timer and an LED controller for the Sony
Interactive Entertainment Cronos x86 server platform. As both functions
are provided by the same CPLD, a multi-function device is exposed as the
parent of both functions.

Add a DT binding for this device.

Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
---
 .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++++++++++++++
 1 file changed, 128 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/sony,cronos-smc=
.yaml

diff --git a/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml b=
/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
new file mode 100644
index 000000000000..a7e88fd42d39
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
@@ -0,0 +1,128 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2025-2026 Raptor Engineering, LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/sony,cronos-smc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sony Cronos Platform Controller CPLD multi-function device
+
+maintainers:
+  - Georgy Yakovlev <Georgy.Yakovlev@sony.com>
+
+description:
+  The Sony Cronos Platform Controller CPLD is a multi-purpose platform
+  controller that provides both a watchdog timer and an LED controller f=
or the
+  Sony Interactive Entertainment Cronos x86 server platform. As both fun=
ctions
+  are provided by the same CPLD, a multi-function device is exposed as t=
he
+  parent of both functions.
+
+properties:
+  compatible:
+    const: sony,cronos-smc
+
+  reg:
+    maxItems: 1
+
+  leds:
+    type: object
+    $ref: /schemas/leds/common.yaml#
+    additionalProperties: false
+    description: |
+      The Cronos LED controller is a subfunction of the Cronos platform
+      controller, which is a multi-function device.
+
+      Each led is represented as a child node of sony,cronos-led. Fiftee=
n RGB
+      LEDs are supported by the platform.
+
+    properties:
+      compatible:
+        const: sony,cronos-led
+
+      reg:
+        maxItems: 1
+
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+    patternProperties:
+      "^multi-led@[0-9a-f]$":
+        type: object
+        $ref: /schemas/leds/leds-class-multicolor.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          reg:
+            description:
+              LED channel number (0..14)
+            minimum: 0
+            maximum: 14
+
+        required:
+          - reg
+
+    required:
+      - compatible
+      - "#address-cells"
+      - "#size-cells"
+
+  watchdog:
+    type: object
+
+    $ref: /schemas/watchdog/watchdog.yaml
+
+    properties:
+      compatible:
+        const: sony,cronos-watchdog
+
+      timeout-sec: true
+
+    required:
+      - compatible
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/leds/common.h>
+    i2c {
+        #address-cells =3D <1>;
+        #size-cells =3D <0>;
+
+        smc@3f {
+            compatible =3D "sony,cronos-smc";
+            reg =3D <0x3f>;
+
+            watchdog {
+                compatible =3D "sony,cronos-watchdog";
+
+                timeout-sec =3D <20>;
+            };
+
+            leds {
+                compatible =3D "sony,cronos-led";
+                #address-cells =3D <1>;
+                #size-cells =3D <0>;
+
+                multi-led@0 {
+                    /*
+                     * No subnodes are needed, this controller only supp=
orts RGB
+                     * LEDs.
+                     */
+                    reg =3D <0>;
+                    color =3D <LED_COLOR_ID_MULTI>;
+                    function =3D LED_FUNCTION_STATUS;
+                };
+            };
+        };
+    };
+
--=20
2.39.5


