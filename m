Return-Path: <devicetree+bounces-267246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMM2OB/2m2lI+QMAu9opvQ
	(envelope-from <devicetree+bounces-267246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:39:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9FE172339
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:39:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 126C53025A7E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83103347FEE;
	Mon, 23 Feb 2026 06:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iUQAthXI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D25C3451DC
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771828753; cv=none; b=J4YE9eAxeEp0AIW5Y9VA9eIHYfVAmSyrFCSS+GC100GxygRCy+kdbLKMF4/CzF1lSREQbxYrqICiFNsIXi2D0pBmNzKtkXnNTL8eKKVDuEvEUccMkbJwS2OROz1y1zSXyEyWSYFndO7+SiN0NQjW3fg1VRSnDNK2GyICuTywDWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771828753; c=relaxed/simple;
	bh=q8Lq6+Cvt3B/SkkRYA6XHIWjWyV8PlukszbooxWFxR8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=afe+JzU3wJ3O26wlI371aabtL8eox+Dv50+NnBnAgT20r8DkxMN2ECXv4J54SLCu/VXdVyBHph6bicngmh85fGmvqqcWtqcf8KeB7lqPuE4/4joOBjimPwYOGrXku60XSaq+6OCVN1sIEi7h61rzwdmte8jOF156ifU5urrNqTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iUQAthXI; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-59e5aa4ca41so3774738e87.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:39:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771828750; x=1772433550; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QBhVm8HFMDMXwYhsB0aG8oH//jaDuQqOFuWYFh+Nf9c=;
        b=iUQAthXI7eW3yNfemv5ufny2ApHP+iy+QlPJVPg1eUqsI2LPfFKjUDaK4582E+mr2t
         BhfuS7lBObeOd9GdLj3WJQ2ZiMPiu35nLckH6OiXM4W5bDNxpe1DpaZ/qxN2enWQAvUP
         uxn5z+ouJAyWi2b8Oty/2Mlt74sB19IygSfSzST3jOYoWKEP7+jLceKSpEKeFKQGgQqw
         3BvvsuFiWhAMqiQb5qeXug9ST/BClrW44NTh6DA59WzwRGyPTmAWJJx6Mb5rVZAM5VI5
         RiKKZv0zJ58e2uTpi11OyMPOf7VZat3orHqMwCDhNoUsuK+EV0CHvwPxpAu1ljsWbQDJ
         NBhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771828750; x=1772433550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QBhVm8HFMDMXwYhsB0aG8oH//jaDuQqOFuWYFh+Nf9c=;
        b=NekOoKBGlZ/8u4Rr8JcTD9ZCpOVPkNE4ZTGJU61lczxYj9+mAMn1f+FW+Vx1wN2i86
         5iiL5MFvyjegHXa6+vDxP2I21Q73mFkRfTjBn0tp6w9QUXGzdXYPQ2HBTy80uLovJwuO
         FJgOSiLyqggv1XmzI7omFxcJKscpWQiQxxM0sK5lBH8gnyQs75iLJoOvA1C5+1lfXwMf
         ubFwI7hJxzoKC71fVb1IUdFLlNuRraxbaOioyHEE2gLjh1kB3SOK8gYpA9f9ji9nMzgg
         7euz7qdJt9ElAcALbxKFsBPToDm+1CHLDdcsYidJppmMRgnO98duoxkBdhIdblbcb+03
         Wv1w==
X-Forwarded-Encrypted: i=1; AJvYcCV799Eeb8WANwQ9S1Ho9Amx7BaULaCZtBchYp8lETzf70LhpqIATtDTTt5mrNxRqOQO11uWpPiZCDBn@vger.kernel.org
X-Gm-Message-State: AOJu0YyxSYyOj78IjZb1SH7uJwHO9tYdd0VbVj+FwLtzIL4uuwQdP1qT
	5u8KP0d1Rxszefv3sVcwznaMB2UNL4VLgHD18S1+9YoKTt5duKDcClEj
X-Gm-Gg: AZuq6aIQOK8bYDLu7W8Or6aX0HzTKDTFU/Q9IMEE0ThjQeX7MlXfQWprjMjj16Bl8GF
	BLT2aw52wJD0utB+kQ3bbCQgE1apt7xqRhXbOGV13p/3PkSVM1yzQE4RoYjIRlKXUrA3EhuiRxY
	24hX8V1wNChZIInF/NROeufnW1f2dOF1a/MWeXSUDpmn6M9PCXxYy/AozblU9/2YaruYDTJSJaa
	aZdJVvdNlI/yBNq9B/j53ARvCeWS5NQcDCDCW3Tn5b+jItiRVSIefm7KzCICgTik7EoX6HalA9e
	mSB2qVlk7ZqehGsnJEuLKHEsolQXJwvvmlFsj0pXcB6VuG71k2kl3vzrX++TLD5mZ8fHB9EqAxJ
	JyatcYDbDLupCPZs8DzZ7sctn1xsCsLI1h0P5eKrFMEyKYQrNc9ttOjJm5Ta+MoKvI/zd1GlEAD
	ZFmQOQ2Bb/8BkE
X-Received: by 2002:a05:6512:22c3:b0:5a0:f49a:353a with SMTP id 2adb3069b0e04-5a0f49a359amr282610e87.39.1771828750144;
        Sun, 22 Feb 2026 22:39:10 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb13abbsm1369626e87.23.2026.02.22.22.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:39:09 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	David Lechner <dlechner@baylibre.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v3 1/9] dt-bindings: regulator: cpcap-regulator: convert to DT schema
Date: Mon, 23 Feb 2026 08:38:50 +0200
Message-ID: <20260223063858.12208-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260223063858.12208-1-clamor95@gmail.com>
References: <20260223063858.12208-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267246-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,baylibre.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5C9FE172339
X-Rspamd-Action: no action

Convert devicetree bindings for the Motorola CPCAP MFD regulator subnode
from TXT to YAML format. Main functionality preserved.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/regulator/cpcap-regulator.txt    | 35 --------------
 .../regulator/motorola,cpcap-regulator.yaml   | 46 +++++++++++++++++++
 2 files changed, 46 insertions(+), 35 deletions(-)
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
index 000000000000..ed28d2653a55
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml
@@ -0,0 +1,46 @@
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
+      "^(SW[1-6]|V(CAM|CSI|DAC|DIG|FUSE|HVIO|SDIO|PLL|RF[12]|RFREF|WLAN[12]|SIM|SIMCARD|VIB|USB|AUDIO))$":
+        $ref: /schemas/regulator/regulator.yaml#
+        type: object
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


