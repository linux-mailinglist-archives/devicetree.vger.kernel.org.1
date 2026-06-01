Return-Path: <devicetree+bounces-305007-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJlJNt5OHWoDYwkAu9opvQ
	(envelope-from <devicetree+bounces-305007-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:20:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5AE61C492
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:20:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4DD1A3040E2A
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 09:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F119338E8A8;
	Mon,  1 Jun 2026 09:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YQYc+j3W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 945A138D3F6
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 09:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780304998; cv=none; b=QUSnyYDkWVzXyRWDXZFOgSVUSWAI23zjl5j6pMR49YiNYoO8IGaij1JiExTvm8xNGNWX7rgTI/9fVi9P+Hu7f6QDCTGyMQ9O9VZzySOChWZiJRWG/U8ycQvHaTzXn4gH0rtVbYAuyGZ4Ev8cZvhpoFABszdpLK4gGloa6EYoSq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780304998; c=relaxed/simple;
	bh=Nwoj1JLk+rT+t8t/aofBWJfWEjNvTCbde0YbhbL+QTo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=G9R63zPPlEUytpLUA79CW8LEeLVLE2ZXOQF16JPBrz5LFtFTkKUkX6meciIL6E3Hsfl5y2muSB3CmR5p7Amg9IsBrvRs2veuZPURfUT9xIKMAYcdriiE/CqT9LKPKx2xZDORA5gbL4fyckV8KxAtAF3cT23xC9Abf3HbhnQsTCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YQYc+j3W; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-c859a374903so343742a12.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jun 2026 02:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780304997; x=1780909797; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YeGYUyOqwAJwv7mjGV4LKyQU8XpoQ7Rqg3p6TF3nIMM=;
        b=YQYc+j3WBxgfACMR0R0jXaan+Qef+LeSCZIiQ9povwEtFOr7VLb2K+I9luclhtEmMm
         emOk/xT8giGLpGxt1jbOqnw5RBknN4nCE5hCZoQLYWREZUmXN2/mPuUb+xfrmeNjCjqb
         O3EB/xxNiuzk5DnZy4iUayWDgycXTNUFo/HU3zrsIEq4F63dfyKHODjZLz/7G9MtABvN
         UdeSVeA7hEHydX5y6jzIx841WJDHyYOVW1I7k74b1F+rs0KM7LYV8YD50s2ylqzAerst
         ISFcOF9cqhSidoRTT5XwFFaqp+6Euj0mbhBdhEEkM4GkiYEmM/rj9h13+36ihQclzqfR
         JL8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780304997; x=1780909797;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YeGYUyOqwAJwv7mjGV4LKyQU8XpoQ7Rqg3p6TF3nIMM=;
        b=ST8sGahGv98YkZX+m5bmEiFhNnw/x0QHXwB7WeU82F3ajBvbN8dr08K14JEhcAbinu
         1B5q9NXb7lYYQlZ4dmE4cjCk/X81CEuyfEBlfkQ2dc3VbTKUthcjqqzl1R7PzXXwd1YQ
         pww8pSEzPVAr77vUyV+4EyVzRoN2R4kLQCW/QPYzWiB+8Zx9Qaff1pCDqdfrSaoeRMfz
         xr1F9AaLTmFWnwnQ6glo5PBOu1qoVpA1ajSObEcZBwY2GKyQ+9Ik912qyx4Jw7zSO1RE
         mDD3+R9wWPjfrpZfYnkXlmu022qby4ceZQxWtkQB/B6PTCP+lpBsWG2cKQFOI9Lbl7NV
         wUJA==
X-Forwarded-Encrypted: i=1; AFNElJ/1BZli0n8Jb7lcBwJrFM9p8AzB2mpTpzUJ4JGjiE2PpOsv7Lx95KnviM5Rcu3TLf3yfgsmhIgAC5sI@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+l+GpakdZbrA+1HhvO/NWWahrXzU4GHGtDkhP1IvuPa3e320I
	yBCoTkHXkMD5nOWzHmPuPQ3M6iFZpzzmrsog67jaNBkWfwxgAiBoIS28
X-Gm-Gg: Acq92OHXy+mrC+Z7edG6h3ZX6T58hVz9LXn+omPVxi0MBJzyhT9viSvouhno+ZaxM2F
	XR2cii5Z0Yx3cpR6CTP/8wPsw5Dys8lp8tHjWPyXeRq37FWmG+W2m3/TA5+od7hO5IhW/1Kq/tO
	NDVbQoXYQ9mz0Yc+uibnMeGseBhyIouG8W2mePCzdxWzB4Jg38LBsppgKSWvWOKK0+rrf8dXIac
	rKC1fih/uuMq993RuDaK3sdg49qqPOhIundajuWE1QBZiScsFPYoK7b9vH4mnkvEpTItBy5GBH/
	cjsEQJTtbX2c1fs93CckziAy/sGmWf4z3muTwb6bkbDmiwfqd2n13nW64DRS/NxdmJDikMOLXa0
	+SYO1ntQRDsjho3dz1oKxZP3KH3luissjpMHOIpzpKXoPXHpqjdcyOgRZIVDpCLWk/xvCQsQ+Ta
	rDpoVFT1+UC6IBCUe9e4bhQIkcALhBUOd4xa6l+6/COYvJoFQRZ5nFMQn9
X-Received: by 2002:a05:6a21:4c08:b0:3a2:dc51:449 with SMTP id adf61e73a8af0-3b427c1ea5bmr10986910637.12.1780304996751;
        Mon, 01 Jun 2026 02:09:56 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:91f7:9b52:3422:d8b9:6baf:c53f])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85772df0fasm9105827a12.30.2026.06.01.02.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 02:09:56 -0700 (PDT)
From: ASHISH YADAV <ashishyadav78@gmail.com>
X-Google-Original-From: ASHISH YADAV <Ashish.Yadav@infineon.com>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ashish Yadav <ashish.yadav@infineon.com>
Subject: [PATCH v3 1/2] dt-bindings: hwmon/pmbus: Add Infineon xdp730
Date: Mon,  1 Jun 2026 14:39:24 +0530
Message-Id: <20260601090925.3781-2-Ashish.Yadav@infineon.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260601090925.3781-1-Ashish.Yadav@infineon.com>
References: <20260601090925.3781-1-Ashish.Yadav@infineon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305007-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.12:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,0.0.0.11:email,devicetree.org:url,infineon.com:url,infineon.com:email,infineon.com:mid]
X-Rspamd-Queue-Id: DD5AE61C492
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ashish Yadav <ashish.yadav@infineon.com>

Add documentation for the device tree binding of the XDP730 eFuse.

Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>
---
 .../bindings/hwmon/pmbus/infineon,xdp720.yaml | 41 ++++++++++++++-----
 1 file changed, 31 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/infineon,xdp720.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/infineon,xdp720.yaml
index 72bc3a5e7139..27ec00a8a41d 100644
--- a/Documentation/devicetree/bindings/hwmon/pmbus/infineon,xdp720.yaml
+++ b/Documentation/devicetree/bindings/hwmon/pmbus/infineon,xdp720.yaml
@@ -5,23 +5,31 @@
 $id: http://devicetree.org/schemas/hwmon/pmbus/infineon,xdp720.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Infineon XDP720 Digital eFuse Controller
+title: Infineon XDP720 / XDP730 Digital eFuse Controllers
 
 maintainers:
   - Ashish Yadav <ashish.yadav@infineon.com>
 
 description: |
-  The XDP720 is an eFuse with integrated current sensor and digital
-  controller. It provides accurate system telemetry (V, I, P, T) and
-  reports analog current at the IMON pin for post-processing.
+  The XDP720 and XDP730 are PMBus-compliant digital eFuse controllers
+  with an integrated current sensor.  They provide accurate system
+  telemetry (V, I, P, T) and report analog current at the IMON pin for
+  post-processing.
 
-  Datasheet:
-     https://www.infineon.com/assets/row/public/documents/24/49/infineon-xdp720-001-datasheet-en.pdf
+  Both parts share the same PMBus register map and direct-format
+  coefficients; they differ in the GIMON gain step exposed via the
+  TELEMETRY_AVG register (bit 10) and in the VDD_VIN pin number
+  (XDP720: pin 9, XDP730: pin 20).
+
+  Datasheets:
+    - XDP720: https://www.infineon.com/assets/row/public/documents/24/49/infineon-xdp720-001-datasheet-en.pdf
+    - XDP730: https://www.infineon.com/assets/row/public/documents/24/49/infineon-xdp730-001-datasheet-en.pdf
 
 properties:
   compatible:
     enum:
       - infineon,xdp720
+      - infineon,xdp730
 
   reg:
     maxItems: 1
@@ -33,9 +41,9 @@ properties:
 
   vdd-vin-supply:
     description:
-      Supply for the VDD_VIN pin (pin 9), the IC controller power supply.
-      Typically connected to the input bus (VIN) through a 100 ohm / 100 nF
-      RC filter.
+      Supply for the VDD_VIN pin (XDP720 pin 9, XDP730 pin 20), the IC
+      controller power supply.  Typically connected to the input bus
+      (VIN) through a 100 ohm / 100 nF RC filter.
 
 required:
   - compatible
@@ -50,10 +58,23 @@ examples:
         #address-cells = <1>;
         #size-cells = <0>;
 
-        hwmon@11 {
+        efuse@11 {
             compatible = "infineon,xdp720";
             reg = <0x11>;
             vdd-vin-supply = <&vdd_vin>;
             infineon,rimon-micro-ohms = <1098000000>;  /* 1.098k ohm */
         };
     };
+
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        efuse@12 {
+            compatible = "infineon,xdp730";
+            reg = <0x12>;
+            vdd-vin-supply = <&vdd_vin>;
+            infineon,rimon-micro-ohms = <1098000000>;  /* 1.098k ohm */
+        };
+    };
-- 
2.39.5


