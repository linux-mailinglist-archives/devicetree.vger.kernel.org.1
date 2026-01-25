Return-Path: <devicetree+bounces-259265-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPwjKDI3dmmTNgEAu9opvQ
	(envelope-from <devicetree+bounces-259265-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:30:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 049808135B
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:30:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34BC53006796
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:30:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC7121E0DE8;
	Sun, 25 Jan 2026 15:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V/kioavp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0C31DDC3F
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769355043; cv=none; b=dNcp01VlbiprMOKqDCJs8lmecbIUUXpQGXkbnMprLUL6hW5b+hnMpIfcTXwvOCMU/v/jAHaadjGqVfxcy9lHf6kNdHf2/K7CTjFqTKlmgs0Re2dlzp5EMAOfE+sBZyMq08/tQCjkHBFef8o+4/DSJudaDGLQswcP8KJzpUrx2KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769355043; c=relaxed/simple;
	bh=l9NQa79di/jjOBPV+OqER4b7B0YtHihmaNsEeJfrOXo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HQf9PofbA6L59M2eSgeBkc72fEGs9aQyn9EKURto9aEZTmjCLU/cQS1CYY30IjIUBbSspwj+fFWUITLXTyOItD+3JYDQqR0IxYCtTAasCGqcFhxqord39EJXa182I2uXdiXOhSJ42qnuCkJuWiR4TEJ7vd8VDx+lZnRzVzxMw18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V/kioavp; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4801d1daf53so41186775e9.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 07:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769355040; x=1769959840; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IlJduHNY4/ATTPZTxaM+BbgtP/PXXrqKo+1qMJ4eq2o=;
        b=V/kioavpI0gVD7Xobvemz3HtowFkbCIx/CV04qJmOIaOhMj5Roq5B2IOYUxEIVlzz8
         vnlgs5jgNNMQgGdS3Tz6JriX/JSI7rHfOAFqOvjKs+SswTX++oU8VfKzSEdeKs73Db1U
         4601R+1b3eZXVddMKfv16Cniz9qwbXFERFqvHM9A6XU9nW2DJEwrzQtMJPoPP34am9qE
         Fwde8Uuf4zYurYrMEimpTWmsIeZmABPzxlc8tqLXCm3ZnEucKD0rGwuYjIeEF8efUNmS
         L+mvDyH+3sEU5K/xR01gcxq2J2IAInjpado8HBlbmC8DNL+qy8Llltn9SIHapYaPyONo
         iReQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769355040; x=1769959840;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IlJduHNY4/ATTPZTxaM+BbgtP/PXXrqKo+1qMJ4eq2o=;
        b=fZOqVIHb91PkQtKFctQPbsstkqayNIRkuc2oUizhL15X96jT6PPH3z42Bs1Ul7k1wW
         6y2SMeXl7vxvOetn37c0K964NzzI27P81C1rAxkOAWvbKVimm5NbEMebALViBfe7XZpn
         /XrNPEi7C/W8xKGDi8jVKLQvf8IMipwKrMAqbWCBp9NnNMYqKMRN4igwuBcc5pqaCDmb
         qMC20TYteWf66xghuoMy7yGhGb2lE7S2kH+ZeeGAWFloJ/MhxVF/k2225h3VV/onzTHU
         +0itU58nFXoPQA0JwKEoH8G7I8BH7ypvhHDPre1y3FvdOz9/zoTdt5mjWR6WZpjuNaUP
         Hrhg==
X-Forwarded-Encrypted: i=1; AJvYcCU2XcSCGx3y53Ag1KHo90W8k5+wtPli7UCZnhHSGLnMMatzyNgmrnnsSn6zP7SKDE9YJxOPGoe0VvrW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+T3cQG27OX5VgbdoS5KHX9kGF1DNRwK3aNsOfLy7zFPiRUVAB
	45OIL0XNFGRyqHo2vhqZurp0RhRTcTw7dwGUOgPwSeZJvATzafsDhKRFK27lBg==
X-Gm-Gg: AZuq6aJkH82qveSyKTeyWLHuG6/tzShUvYB0R9+wW9MQhYyuPW4+dy8I60KTxu6OTq4
	nnyiVf4eO9d6FozJ4ChKIeKkcpjAV4OTJsSqrFYhoSHNL4HkFvC/61Rlija9m3UuobPsmJ2aeyP
	NdlbWT6m15vv4R8oBURvKhMc78QhH2FU6fx+WExSxmrFt0BE3SvZ0hJQ+jyTrL4i/tJj8+JNo2A
	6EJmamX7HfH/zaQEjhjFOw2lyWNQ/BJ385W3QSVJ5JHrEp30sQwXEC5OWEeL40/W7fRtqNG3Gcb
	5BzZNH3WTZeLLORAPMZIjFtlb02+6DCQy842Be9IpJAcaz2Krw1fFluZv0jWgUdxCbCcPFEUWnP
	Aoc1S1FQ8o0iTy/C+UuMi4ZPDnkOxQ2aTAcgNcSdyjIcdOYcahSgNPUbArQnG2iFy0GhF+7X+05
	xv
X-Received: by 2002:a05:600c:4f43:b0:477:a54a:acba with SMTP id 5b1f17b1804b1-4805cf5f2b9mr31969485e9.17.1769348592595;
        Sun, 25 Jan 2026 05:43:12 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c246ecsm22459688f8f.10.2026.01.25.05.43.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:43:12 -0800 (PST)
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
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Dixit Parmar <dixitparmar19@gmail.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v1 01/10] dt-bindings: regulator: cpcap-regulator: convert to schema
Date: Sun, 25 Jan 2026 15:42:53 +0200
Message-ID: <20260125134302.45958-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260125134302.45958-1-clamor95@gmail.com>
References: <20260125134302.45958-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259265-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,bootlin.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 049808135B
X-Rspamd-Action: no action

Convert devicetree bindings for the Motorola CPCAP MFD regulator subnode
from TXT to YAML format. Main functionality preserved and added compatible
for CPCAP regulator set found in the Mot board.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/regulator/cpcap-regulator.txt    | 35 -------------
 .../regulator/motorola,cpcap-regulator.yaml   | 51 +++++++++++++++++++
 2 files changed, 51 insertions(+), 35 deletions(-)
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
index 000000000000..b73d32a86904
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml
@@ -0,0 +1,51 @@
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
+      - motorola,mot-cpcap-regulator
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


