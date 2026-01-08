Return-Path: <devicetree+bounces-252712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AACD02466
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 12:03:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 75B2B30B5547
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F407A3D524D;
	Thu,  8 Jan 2026 09:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U4smYFPi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB143296BCB
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 09:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767865566; cv=none; b=aMizTiKO4O4i0VZvwcUNNTZPpVmiRP7Bvnqc2yIXHJdSr7OTjQQmGur7JHOVqBR+Zng2/UnJvSDEUTNhvXCV1E6KKl2CTncx8FweBeiFeHaIQDxreVTx+wsihZnXdYfh738bVuKmtjAmP1sPP/k8avUl0lJs23rrs8nxV0lJHxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767865566; c=relaxed/simple;
	bh=3n90BbXpZmo7/97SyvwdOM2dgbMwLekUvvzKLPzma1k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=U8b2WP3U9Ibd2LMsAvsYs40yea621K6TQVTIcPU4Yqztl/PfrsoR8QvDDmQl+bOYkaYDacfTD2E+thazt82aooBVcp+48viHvHQ1CJnljOXsuyIBN7vHN8qWFG/9E6E0tVM/7lb74ZSR/LYD+yJDuNX04bh1m4tEmhUHT1x5NH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U4smYFPi; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8c0f15e8247so403600385a.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 01:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767865557; x=1768470357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3jVrer7foxeDXiFbFRi4WTYBqb7mxG96n3TZ489PhHs=;
        b=U4smYFPibob3LFerVia+E+kinG/zHKG8JT/7Cxqw/IdcOxH6xlgSOBM65ngb0E+UN0
         kh/2YP4QRc3r9O3mwM6vLDImA/MqQq/jdBO8dHh69AaaRumRmnBno3OsOqAP+3TmZD3k
         b9o1ocxNj7+XS0udfcjnPwsQcAE+gDxnlZSj4G/Vqvxtc3xRYhw2Yopbcn3f0JvE8loi
         Jkg2Y+HsSqIZ6WSfGbyXa1SMLyw90oufjtl8xExb7J+aMv22vPz3Jh3ANH/ySxE++880
         QykWnwm6QUHcQnnA6CEI9b1GdxVR3KlNHwMka4CjAh3rKX0WaBrvLJnx44e0dnFiXF2U
         f/kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767865557; x=1768470357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3jVrer7foxeDXiFbFRi4WTYBqb7mxG96n3TZ489PhHs=;
        b=hh8GwJSsBZ3ZWsfgsrtgGugqW83fyEe0m3jypmhDb7zJBx0WWv0ePTMLRiDIUVwsT0
         qyGaiXqnS0BkNoGqdiBUO1TXib6vKECfEv+IJrtbMaOAxyaxWzfMJrwL9rX/J5ZZb3FX
         7rDyxCnq3EGIaSQBWPBTOoCWuEeDNYEIZfcNx8bFz4uqw27XjA6XazENPJJAZVs16G5n
         FKLWhOJtxgxy+HiKdRQUiQnNty7NpI++CvdstVJVpPGbd5Rxq75t99nRUV0geg6wNAKj
         z1BAXkC9m6gWE3UD9HCnzpgLPE5dpI1gPk3efT7hkznGZbTakWZG5QTemwqu0Ke08YE5
         3A0w==
X-Forwarded-Encrypted: i=1; AJvYcCXrw00Bvl1dOzyReVtVM9YNU/5xKxBUPN9NgTg9Rtfn4dKyl4HiaJqKA2w0Hv9H/SieU6g1Hi2YaglW@vger.kernel.org
X-Gm-Message-State: AOJu0YyjJKFYRB+fkwUdm/CYJGlDXy63UhG9wleqO7f3FWrfw2tyWuZD
	+iYRhnL2X5yH9pQWiQDK38qvGIxBWHBAygvTgnw6hGba6GkqKW5EHxMEet9/6A==
X-Gm-Gg: AY/fxX7wDl3249SyZC89IwpUUfdSrE7LAcCSpn560aa4vSb4Btd8etUVLQV6BkpxWJC
	4sDjdU45NccHTBFnY5Vd5F3J5wZt9wi7yRvxcKcClhMW53DIVCnSBT4PDUg6E7VozJ8YOe8M6yO
	JVxVuWUxBIEaM9S4rR1eEsBlZlmWInAMXVrTCVYAI1lOP+K+QCKQrnpC4JRn6QIhsgZlnQBSeUO
	+uCcqMwQpwLtxZe1+RSSGvubgqYG6F7VqqRPBEDa9CJdVPFcAK4umS4OEzOd/OGhkLKhAUJJNZz
	LG2t7xg5X9rtb5qObHOv+l4k/ZVEXg2lFwrD1P4OUC/5R1METfIoFG4sRNDSOyIvtdjxukwKjJp
	cTcIm87yBGpWasvL3vWp2D4GydB+2Y2IXRHwZHk3/ylOgpfhmvmTzxoPxvgMaH/SevDClqGbWv6
	WBzHA7RHvoyDpM4CWPmYbTNFpSuQ/L99WBqfbx0djFWvy53/UZOBapelqplDSaBUxl6nMpWwGmC
	kDv9jmLm190co3zVA0+HA==
X-Google-Smtp-Source: AGHT+IHrWmrWZovQhYEcCj3OW2qe/OMr35yE9xC18wSEU8hxPlfPFqonbAeAYlH/zyT0y2ccrqO9lw==
X-Received: by 2002:a05:6a00:9085:b0:7e8:4471:8de with SMTP id d2e1a72fcca58-81b7fbc91b7mr5136728b3a.63.1767859762235;
        Thu, 08 Jan 2026 00:09:22 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm6900582b3a.16.2026.01.08.00.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:09:21 -0800 (PST)
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.torokhov@gmail.com,
	sre@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: jserv@ccns.ncku.edu.tw,
	eleanor15x@gmail.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-sound@vger.kernel.org,
	krzysztof.kozlowski@oss.qualcomm.com,
	Kuan-Wei Chiu <visitorckw@gmail.com>
Subject: [PATCH v2 3/6] dt-bindings: input: google,goldfish-events-keypad: Convert to DT schema
Date: Thu,  8 Jan 2026 08:08:33 +0000
Message-ID: <20260108080836.3777829-4-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
In-Reply-To: <20260108080836.3777829-1-visitorckw@gmail.com>
References: <20260108080836.3777829-1-visitorckw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Android Goldfish Events Keypad binding to DT schema format.
Move the file to the input directory to match the subsystem.
Update the example node name to 'keypad' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
Changes in v2:
- Add reference to input.yaml schema.
- Change additionalProperties to unevaluatedProperties: false.

 .../devicetree/bindings/goldfish/events.txt   | 17 --------
 .../input/google,goldfish-events-keypad.yaml  | 41 +++++++++++++++++++
 2 files changed, 41 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/goldfish/events.txt
 create mode 100644 Documentation/devicetree/bindings/input/google,goldfish-events-keypad.yaml

diff --git a/Documentation/devicetree/bindings/goldfish/events.txt b/Documentation/devicetree/bindings/goldfish/events.txt
deleted file mode 100644
index 5babf46317a4..000000000000
--- a/Documentation/devicetree/bindings/goldfish/events.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Android Goldfish Events Keypad
-
-Android goldfish events keypad device generated by android emulator.
-
-Required properties:
-
-- compatible : should contain "google,goldfish-events-keypad" to match emulator
-- reg        : <registers mapping>
-- interrupts : <interrupt mapping>
-
-Example:
-
-	goldfish-events@9040000 {
-		compatible = "google,goldfish-events-keypad";
-		reg = <0x9040000 0x1000>;
-		interrupts = <0x5>;
-	};
diff --git a/Documentation/devicetree/bindings/input/google,goldfish-events-keypad.yaml b/Documentation/devicetree/bindings/input/google,goldfish-events-keypad.yaml
new file mode 100644
index 000000000000..4d359c9be600
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/google,goldfish-events-keypad.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/google,goldfish-events-keypad.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Android Goldfish Events Keypad
+
+maintainers:
+  - Kuan-Wei Chiu <visitorckw@gmail.com>
+
+allOf:
+  - $ref: input.yaml#
+
+description:
+  Android goldfish events keypad device generated by android emulator.
+
+properties:
+  compatible:
+    const: google,goldfish-events-keypad
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    keypad@9040000 {
+        compatible = "google,goldfish-events-keypad";
+        reg = <0x9040000 0x1000>;
+        interrupts = <0x5>;
+    };
-- 
2.52.0.457.g6b5491de43-goog


