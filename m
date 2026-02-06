Return-Path: <devicetree+bounces-263441-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iH5KCdklhmlSKAQAu9opvQ
	(envelope-from <devicetree+bounces-263441-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:33:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B78631011A2
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:33:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C19E303F7FA
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 192CD3E9F8D;
	Fri,  6 Feb 2026 17:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FgPDQKSo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3A823EDABB
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770398951; cv=none; b=Hg9cNj1wIiSPKWOiqlpjbG7kjs/U023f675lpyh0AkAkgj3H1kvSfweURs99Bqf/IQTRHwfRo7Fc6+9kHSWiOWqbml7IUDMSWEu1lR4C+n/3BvF4ytFJ0h7wnzT+sv/dpVP4/kRM1mAN9Hv+1IQZrFwZAJls6YMUvNFwpvAwFic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770398951; c=relaxed/simple;
	bh=go/e5AhcYE8/Tplv0QTwdsPe/+XcWA/g3Cpb4GxDoxU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Qsgnv8mFgkLntbXU01hD7YNy77eHgX82ZVAa/TiH62O39Dcv9QJ3Fl3sDHQjWh/m7pyZrHrYg2xzWf889pSs0n3+/PN0ugnMwV/EGVkCXZVUEm5ZkywUeHozut4e/P8j2WfqMUlaTUl1gw0/xhc6DdvGfYRDqdGrQS0RKDA86Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FgPDQKSo; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-4362e77d7fbso506612f8f.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770398949; x=1771003749; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2tz2XBML6rb46dksX4n5A3OWDvNM/mO62BfufBhK37w=;
        b=FgPDQKSoeO7hVk0TCLY1PKX9esGMzueRdENXD8NlMkhpoAC9AK7SRwBD8d8rT9Yj8D
         lIrBm8Q1xCKE2BsBHSFOC064QRHVJu13cIymDL5lm3SEVsbWGgJ3IfjMp6a2kHG1duSx
         0u1RYMMlzsloWQtG2672rbxHEBzrJaqjs1BiNb7fEwpKSG8F/M02yY+o9QQRX+Foqeoo
         LIdXUEYdGwg0vOzDi7oiFtVecyl+ovePElK0EKsOLJar+JdLyHBH98w8TA+voz5bPRyn
         vcGTApga0kl835KlauHYo5MEzAZV6wGitJ9vagJdeYUeUEx6ZNjjWKa2DFARfK1PWpgn
         iNXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770398949; x=1771003749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2tz2XBML6rb46dksX4n5A3OWDvNM/mO62BfufBhK37w=;
        b=q3zYo7fjUarIAEMoI8Jfdbo31R7B28Ub4/oNKHO2Xru5Esrc/2BoPMMfi+L8lsrRCl
         Rty3w1RBDofV99YB78bGhlfpK2Uacvcyp7eSG0gSVK9vVV64gQDGV/DjFSUif3x8cy57
         BVp7PA1RB1sD/2ITQgAeOtX1naBVHsZ3iFZGoIsjgBtMhBPrUbl+vXTkEve28+u5ecxr
         /UUJBhRiwnWUinfqy5byJ/i8cqp2ATOHcqJuvBYnyoZGi0Wm0Kn9Bcjn+WmCmpsHrEtd
         5dASolAwr9Ngm4evShW7PDBziRz1oPHbXcedD6WvAkkYM2JBGC4a98O7aBfoi7Mz0mAc
         2t8g==
X-Forwarded-Encrypted: i=1; AJvYcCU2qm5j0Z/1ZoIoUonupvTj/cLSIDwBY8bXlEocQajnTwGzhlO7khRAnpKMJw+H93rTexCZRq4uCzIX@vger.kernel.org
X-Gm-Message-State: AOJu0YySXoQ7oscJ4X2f7l26IEiHx04XMku8VbPhjMumeZra/rJ+BasP
	SqoTUFoHy0zdxcb/Mk+L+y/emQ3cs6DmFknQ+7otIoTwbCywwtJiOHiO
X-Gm-Gg: AZuq6aKuNk9n6IiqZqW41np8ZVtgnGpMO93+NG04A5bhtWclIwgzdl8oXDfwdV9IwnQ
	Apr7X4YktbJz+8B2mQ1RlhTJvt0RJN7jGx0A3acOGRf+Os+oARs+IpE85tUqDY1aZJYOqGPFNv3
	ltrVQFlDk7RLS58vJ1c1jk4Nfrp8gfXz1WANAuVad+RhmFQu71fEAYrd8xdZ3RlfZyffDUzBBAd
	d6f+lyxyg+3b3DrL0snBgrh6ZGweQrBt4U259Omd1fDcm97AjsgyoyG0uW500fSdeDLRyf8oUI3
	jyiXeoKN0z8jEInTvOFbogtFT8QYyiVwCh0vc3kT2Cbqr46R46uvD2GYPV+D/AwwwniEQshkGAt
	ajzCy+DOBjJFOljAxVdxOsYpNs6+I47yI0okujXNT9h6aFF5JlLNW9T617Gv3Ylk8nScFyafSGp
	87
X-Received: by 2002:a5d:5d87:0:b0:435:97ab:1288 with SMTP id ffacd0b85a97d-4362938ff35mr5394807f8f.58.1770398948881;
        Fri, 06 Feb 2026 09:29:08 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43629734268sm6846033f8f.24.2026.02.06.09.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:29:08 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Dixit Parmar <dixitparmar19@gmail.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v2 01/11] dt-bindings: regulator: cpcap-regulator: convert to DT schema
Date: Fri,  6 Feb 2026 19:28:35 +0200
Message-ID: <20260206172845.145407-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260206172845.145407-1-clamor95@gmail.com>
References: <20260206172845.145407-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263441-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B78631011A2
X-Rspamd-Action: no action

Convert devicetree bindings for the Motorola CPCAP MFD regulator subnode
from TXT to YAML format. Main functionality preserved.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/regulator/cpcap-regulator.txt    | 35 -------------
 .../regulator/motorola,cpcap-regulator.yaml   | 50 +++++++++++++++++++
 2 files changed, 50 insertions(+), 35 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/regulator/cpcap-regulator.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml

diff --git a/Documentation/devicetree/bindings/regulator/cpcap-regulator.txt b/Documentation/devicetree/bindings/regulator/cpcap-regulator.txt
deleted file mode 100644
index 36f5e2f5cc0f..000000000000
--- a/Documentation/devicetree/bindings/regulator/cpcap-regulator.txt
+++ /dev/null
@@ -1,35 +0,0 @@
-Motorola CPCAP PMIC voltage regulators
-------------------------------------
-
-Requires node properties:
-- "compatible" value one of:
-    "motorola,cpcap-regulator"
-    "motorola,mapphone-cpcap-regulator"
-    "motorola,xoom-cpcap-regulator"
-
-Required regulator properties:
-- "regulator-name"
-- "regulator-enable-ramp-delay"
-- "regulator-min-microvolt"
-- "regulator-max-microvolt"
-
-Optional regulator properties:
-- "regulator-boot-on"
-
-See Documentation/devicetree/bindings/regulator/regulator.txt
-for more details about the regulator properties.
-
-Example:
-
-cpcap_regulator: regulator {
-	compatible = "motorola,cpcap-regulator";
-
-	cpcap_regulators: regulators {
-		sw5: SW5 {
-			regulator-min-microvolt = <5050000>;
-			regulator-max-microvolt = <5050000>;
-			regulator-enable-ramp-delay = <50000>;
-			regulator-boot-on;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml b/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml
new file mode 100644
index 000000000000..50bc57f06b51
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/motorola,cpcap-regulator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Motorola CPCAP PMIC regulators
+
+maintainers:
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+description:
+  This module is part of the Motorola CPCAP MFD device. For more details
+  see Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml. The
+  regulator controller is represented as a sub-node of the PMIC node
+  on the device tree.
+
+properties:
+  compatible:
+    enum:
+      - motorola,cpcap-regulator
+      - motorola,mapphone-cpcap-regulator
+      - motorola,xoom-cpcap-regulator
+
+  regulators:
+    type: object
+
+    patternProperties:
+      "$[A-Z0-9]+^":
+        $ref: /schemas/regulator/regulator.yaml#
+        type: object
+        description:
+          Valid regulator names are SW1, SW2, SW3, SW4, SW5, VCAM, VCSI,
+          VDAC, VDIG, VFUSE, VHVIO, VSDIO, VPLL, VRF1, VRF2, VRFREF, VWLAN1,
+          VWLAN2, VSIM, VSIMCARD, VVIB, VUSB, VAUDIO
+
+        required:
+          - regulator-name
+          - regulator-enable-ramp-delay
+          - regulator-min-microvolt
+          - regulator-max-microvolt
+
+        unevaluatedProperties: false
+
+required:
+  - compatible
+
+additionalProperties: false
+
+...
-- 
2.51.0


