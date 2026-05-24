Return-Path: <devicetree+bounces-302266-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGfjCQYhE2p18AYAu9opvQ
	(envelope-from <devicetree+bounces-302266-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 18:02:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 704A95C306D
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 18:02:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2731C3004F72
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 16:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A4DB399004;
	Sun, 24 May 2026 16:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IREI6N8g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C7438F957
	for <devicetree@vger.kernel.org>; Sun, 24 May 2026 16:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779638531; cv=none; b=mLjfYk6YknEjGbgevQDY30EJToq1J49AG+Qhucz1MZtQaKuEH9ZXb/y5Jj7WWbUu2p1/ykZCm/Q4vHKnGdbY9oIWYmbSULppkBYKXpS95dv+NHPOl3FwdCiyKt6V2o6PhdzQ99d0wr1NZaWvNccFuH+Ac72AjFuNaYIotYvCvOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779638531; c=relaxed/simple;
	bh=/2FowBmTffQSv3oYiUq4wpxtR5RlTC/ynBBcs2MAq7s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MTx2fh8k2AG9p+HyBdW+++aL+j9/RdpaHM50FWAl1x2qQjjOEDqyWgWpJh1acxrQ2sAWikJfdohrAsXQHJv2UgqDGZILbzDORkNaV4XLYPXR2kbbvrwBM4SE0bDrwwAGMrDIaL4dFu886P3R3s41i8712hk5s8J/RSyYdeJ57gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IREI6N8g; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-83659d38e38so3547210b3a.1
        for <devicetree@vger.kernel.org>; Sun, 24 May 2026 09:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779638529; x=1780243329; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o9VbgS0e1D8hUKDDSe/YNkcF3i1Zf23UEsIw2M9+xHI=;
        b=IREI6N8gMrmxKQ0AxJM2yz4R+2fMipRgkdeaFqgRiLQBVAdXqg4u8PJbr9L1c2kBho
         chHY6+vw8j/e3rYWijmBVuioUQ9Ofl0U+lc7ZKwYoeBT7y4lQ9+7er5cpYDAcqNZWDq1
         Iu0gZVPJ34xm/D8s3873oFeS/h2csujJgzbSTC2Vjq5gEqSTsTkurIHHXGNnuJFqsiF+
         lFFjagDWGV1j+4sPPCIzW5fHecMcJkt+dMdQF2MOGM0L+WeHjcS4IOVsWio/uFb5qFPC
         CJWD31sUkauNZtmaPSYjvO0Oc0b5sSgMyD2LZVXz9joy1R2FKGV3mNfur2ypfx0iT53j
         Uobg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779638529; x=1780243329;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o9VbgS0e1D8hUKDDSe/YNkcF3i1Zf23UEsIw2M9+xHI=;
        b=bDlNBNUKVVjD5y0pFeY1/quV/JxVhSPKbPu4ji1qibLU/SVK12M0lXWrmlxM4OW+zd
         8lqJfh6/OAdsiTzvUxU3XHbBpzoFM2EPl7nvA1TJxemtax1A19p6hSUwOScz9+F6bHAr
         My0Q5X0wfqMehD2PHXX9DZ/nA7COLsTaouYZGrwyH25YQ6FXZgJ2k6Fp7YWxHRyOUcdh
         awTuxkRAOQkU5p+iNF8o/pnhQbIpQXn80qVlMtTtusJh1JMaQGNxQM/T+xJAj18aJLYK
         tSMhJWqC2kNSDeUNhaaTsE2wIdzSBPyFlcmf21YDh5HVS1LsQILNM7bz7HlgO11tTGxf
         zA+w==
X-Forwarded-Encrypted: i=1; AFNElJ8LUZM8H1TPLkrVzLwkwX7CCeRCfZ48j19Q23jur7PbpUWzQg8Y+CvsafH+TdBCq/AfHBX1fM9+POgB@vger.kernel.org
X-Gm-Message-State: AOJu0YyIveTeGkbt9nkZmoMK+PONIaMg2F5G84oS7FbmQj6ijiuFDDRi
	9jfkvYVOJLkqXTg8zChUqKvQrELkCE0yKc/qrnnxj+EibPjCO9lGy8B5
X-Gm-Gg: Acq92OH68lmwOtUGw6qqlCn5wCXLCNLa2ggZu/GX+ZGQnFJUUFN2/EHiDU7adDuPdLw
	IMQ8EPjwXyf4Ve+RrhK+J/wNJ2stRR9T2EkzIsQW8A9Qhoy3oApN3mSB57p8yp/P7LEnqLnJ4Lz
	CxtKKe4U0oVRWZwOtCPlDIsZfNhV4MiAH3dlyQ5htzYUUnwUh8TVkvAZxSK89IPN4bN7QvugREM
	P9XueI9UCwDuk6ATofLJLutCTeFV77/hE7fjwOthi6H0lfG2tBNypS/6mP6FRV+z9R1pXBQjN0O
	KWM/b78bk+t+6b/jd9jVSATcw9gsi7iRQvwfIwlXOT+as7qxvJxYg5XcPuzzw+cw677tO/CKn+K
	WSD9dRJpWXgLZ4ajFTXQRYxWvfK6AxRHNbNEUhxep5aTz/Iy9Bxj996aKG+q9FJKxeIw9LnA7ar
	mQap01AHuQeM9MVzWkgQu4A4FUJILfB7/SyT8IvzmYPJ9bdsmhkMVQZ6mCpmmzrn/TtKo=
X-Received: by 2002:a05:6a00:138c:b0:83a:a55f:c3f9 with SMTP id d2e1a72fcca58-8415f376933mr10139833b3a.20.1779638529093;
        Sun, 24 May 2026 09:02:09 -0700 (PDT)
Received: from Ubuntu.. ([49.37.169.210])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84164ea09a9sm8128372b3a.31.2026.05.24.09.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2026 09:02:07 -0700 (PDT)
From: Manish Baing <manishbaing2789@gmail.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	zonque@gmail.com
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	manishbaing2789@gmail.com
Subject: [PATCH] ASoC: dt-bindings: sound: asahi-kasei,ak5386: Convert DT schema
Date: Sun, 24 May 2026 16:01:58 +0000
Message-ID: <20260524160158.109983-1-manishbaing2789@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302266-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[manishbaing2789@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.0:email,devicetree.org:url]
X-Rspamd-Queue-Id: 704A95C306D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert the Asahi Kasei AK5386 ADC binding from text format
to YAML schema.

Signed-off-by: Manish Baing <manishbaing2789@gmail.com>
---
 .../devicetree/bindings/sound/ak5386.txt      | 23 ----------
 .../bindings/sound/asahi-kasei,ak5386.yaml    | 44 +++++++++++++++++++
 2 files changed, 44 insertions(+), 23 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/ak5386.txt
 create mode 100644 Documentation/devicetree/bindings/sound/asahi-kasei,ak5386.yaml

diff --git a/Documentation/devicetree/bindings/sound/ak5386.txt b/Documentation/devicetree/bindings/sound/ak5386.txt
deleted file mode 100644
index ec3df3abba0c..000000000000
--- a/Documentation/devicetree/bindings/sound/ak5386.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-AK5386 Single-ended 24-Bit 192kHz delta-sigma ADC
-
-This device has no control interface.
-
-Required properties:
-
-  - compatible : "asahi-kasei,ak5386"
-
-Optional properties:
-
-  - reset-gpio : a GPIO spec for the reset/power down pin.
-		 If specified, it will be deasserted at probe time.
-  - va-supply : a regulator spec, providing 5.0V
-  - vd-supply : a regulator spec, providing 3.3V
-
-Example:
-
-spdif: ak5386@0 {
-	compatible = "asahi-kasei,ak5386";
-	reset-gpio = <&gpio0 23>;
-	va-supply = <&vdd_5v0_reg>;
-	vd-supply = <&vdd_3v3_reg>;
-};
diff --git a/Documentation/devicetree/bindings/sound/asahi-kasei,ak5386.yaml b/Documentation/devicetree/bindings/sound/asahi-kasei,ak5386.yaml
new file mode 100644
index 000000000000..df896f3a5e08
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/asahi-kasei,ak5386.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/asahi-kasei,ak5386.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Asahi Kasei AK5386 ADC
+
+maintainers:
+  - Daniel Mack <zonque@gmail.com>
+
+description:
+  The Asahi Kasei AK5386 is a single-ended 24-Bit 192kHz delta-sigma
+  analog-to-digital converter (ADC).This device has no control interface.
+
+properties:
+  compatible:
+    const: asahi-kasei,ak5386
+
+  reset-gpios:
+    maxItems: 1
+    description: A GPIO spec for the reset/power down pin.
+
+  va-supply:
+    description: Power supply for the analog section.
+
+  vd-supply:
+    description: Power supply for the digital section.
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    adc {
+        compatible = "asahi-kasei,ak5386";
+        reset-gpios = <&gpio0 23 GPIO_ACTIVE_LOW>;
+        va-supply = <&vdd_5v0_reg>;
+        vd-supply = <&vdd_3v3_reg>;
+    };
-- 
2.43.0


