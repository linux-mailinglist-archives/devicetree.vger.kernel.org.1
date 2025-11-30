Return-Path: <devicetree+bounces-243199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BE0C9519D
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 16:37:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2B81A4E03F3
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 15:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F5FB27CB02;
	Sun, 30 Nov 2025 15:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q0MONkbB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com [209.85.216.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6B327BF93
	for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 15:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764517061; cv=none; b=mBRohahLV+9F7RMKs6BSIjfJ8Dfn8DMaTTirm/5R1IW4thcqG/nYExfxkPnOGwxGbhxSupiH4taI6kbD+EJuHbBS6hKuIbspfQlcv4leaZPNwCp3T2xB0XkCq7cCF3lAQYfQBLRYmNH/XYeq/D3rGy2fKzlRA8bL3culyK8PFGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764517061; c=relaxed/simple;
	bh=G0YIGRsDpPedWL2cCWGmsi9Q3PeTt4HNQgJGL63479s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bFOe+ahbDU2AHoXQvIiYinYW9PkKU9d00nFXaZ7KTpnPSkP/yeoegfkh+ISl0Ce6F8WNoPrmOoe1BfVk90pK6ChgcMtOmKboLHm5gRgSg8lNGDjn52PpUptW/MgQjUnKfaUfWrszY/Tr/m1Xt89ktndphfAxOUrjPspmU5IT17I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q0MONkbB; arc=none smtp.client-ip=209.85.216.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f65.google.com with SMTP id 98e67ed59e1d1-3418ad69672so2078368a91.3
        for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 07:37:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764517059; x=1765121859; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ytEQ00i/TMHvBavCd0XAKg4W0iSw68Wk4M6ee2yW4Ug=;
        b=Q0MONkbBcL/qhgiYMy2yuGJ8BxO+yOGbeftSwMYTZzuH+rA/VAwr+vtTD7QXSnOdbH
         4cyUQYxHRQB4d2/V7SAB5Jq1ZEiSZVD5Iyu2/0YuMaF6TrVu6EdMejKST5CDOVKFPMm5
         q27xRCW6pHsLq3nARd9t82OeieoWiyG9C3Wr95tyrPEXhu2e9PM45boe5N3tVstuWh9x
         UtqY6Ph836MDP4RQ+UhqG/wtalLQ9qS2rlML0CjjOkTS0LNHcTiDb96Mu1ONUDkaBWWI
         jo5BPAbf0t8YDaaMOjm2PCjM5X5/Yy1pUKdK6/aYrZ6VBV7WmNbA8zV5FZYwgUfBp4sG
         8aqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764517059; x=1765121859;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ytEQ00i/TMHvBavCd0XAKg4W0iSw68Wk4M6ee2yW4Ug=;
        b=vJeYxl29Un0Qy0iat+MyAru1tChnW0T9GZw3WILzHch8Hxhgb9pmSOkgQU0dWnalFN
         ufQ1L4BSpJSx+lphm3pFYFUxwUaB0joOnYXrxG3kZ55j/ydcbMeRoVG8YphO4CZWka0l
         bmTgEp9Qz/WIfA1J2LqdLfV+9PucIMRygVg7KDUiBmKP7rkMYK99601Nt8yyDLm8jTCL
         HvWuYODPvjpuMAqKueWmhC6bjzdIsBfvu8Hhy0E1G3k50MyGp7/4M6gN8TqNBoJP/oUB
         CXM1BfYKhaof4MfszQIqapn6zJQkL/ZsUqBVAhux1IJD+BLfuuMqYOyWqZnONaCD7Kcw
         oiUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjwp8pwY9ahLTPy9IEI+H8fjVN5vXqq0WQ7qzlzcaz74ckh3zMQKV/mu99MCwcxD5+I/QDU6PaiM9J@vger.kernel.org
X-Gm-Message-State: AOJu0Yze1oxGCiDa7tTz5KTnS+ngwdHWewExIpqhGi8gUS53/tUva+cF
	bd0/Cvv2/RI1IQq/UfdF8yTUihoa+vRYMZ/tLhcXJrsPNmi/NXJzzBxYbL0oL9Lb
X-Gm-Gg: ASbGnct5PWE9I2LGm4nAwFZxJvYQttdA4PwQa42ktUrd04nxgIq/RGamoZ7qRcFqyds
	o7y2j2RcYtWBXmGFNUthjGXWYVhZmu2K3wEa+So5DEip4P3G9maAQJFXACPlWPsIOAqs7JSmEcd
	kTYQqG+V2cvMBfTFMoX+zVgWwhXJlil6ru8wCIMNxPKHRkkDLjfSDfZ0QUJCgPL1vgbzi8nJgP8
	JzdG4Owf2iHPX0blF7Y9/K/n3G4DOxPi+4gX5MOvRvzN/mkVbxks/7HfSC7rHLhl0Ice5cu99xh
	UUSogGQ4t6qXmiL/+S9r+vxhOshAweMWnsko/Kr57ac6H7cxKCCG7tvLWPgw5uxWIGOKtErgE1k
	MID2JA+K9FW5xkf60tB09e1tnpGi8SoZuvzUd4GG7tAIoZENbaePLs45f+xsWSMe8JjnBCWDVMI
	96jWCW9+v6qAVBzw==
X-Google-Smtp-Source: AGHT+IGYZ2XIEIFkqAFPXdgR+1MSGZPaK8va2ILn3afSqIBRdFR82Kwd5Lp/WzIk/98JbY976CizqA==
X-Received: by 2002:a17:90b:3b48:b0:341:c964:125b with SMTP id 98e67ed59e1d1-34733f4ab3fmr37554583a91.31.1764517058924;
        Sun, 30 Nov 2025 07:37:38 -0800 (PST)
Received: from Ubuntu24.. ([103.187.64.30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3475e952efbsm6903483a91.1.2025.11.30.07.37.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 07:37:38 -0800 (PST)
From: Shrikant Raskar <raskar.shree97@gmail.com>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Shrikant Raskar <raskar.shree97@gmail.com>
Subject: [PATCH v2 1/4] dt-bindings: iio: proximity: Add RF Digital RFD77402 ToF sensor
Date: Sun, 30 Nov 2025 21:07:09 +0530
Message-ID: <20251130153712.6792-2-raskar.shree97@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251130153712.6792-1-raskar.shree97@gmail.com>
References: <20251130153712.6792-1-raskar.shree97@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The RF Digital RFD77402 is a Time-of-Flight (ToF) proximity and distance
sensor that provides absolute and highly accurate distance measurements
from 100 mm up to 2000 mm over an I²C interface. It includes an optional
interrupt pin that signals when new measurement data is ready.

Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>
---
Changelog:
Changes since v1:
- Fix patch heading
- Fix commit message
- Remove '|' from description
- Update interrupt description
- Add 'vdd-supply' to required
- Add 'vdd-supply' to example

Link to v1:https://lore.kernel.org/all/20251126031440.30065-2-raskar.shree97@gmail.com/
---
 .../iio/proximity/rfdigital,rfd77402.yaml     | 53 +++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 2 files changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/rfdigital,rfd77402.yaml

diff --git a/Documentation/devicetree/bindings/iio/proximity/rfdigital,rfd77402.yaml b/Documentation/devicetree/bindings/iio/proximity/rfdigital,rfd77402.yaml
new file mode 100644
index 000000000000..1ef6326b209e
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/proximity/rfdigital,rfd77402.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/proximity/rfdigital,rfd77402.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RF Digital RFD77402 ToF sensor
+
+maintainers:
+  - Shrikant Raskar <raskar.shree97@gmail.com>
+
+description:
+  The RF Digital RFD77402 is a Time-of-Flight (ToF) proximity and distance
+  sensor providing up to 200 mm range measurement over an I2C interface.
+
+properties:
+  compatible:
+    const: rfdigital,rfd77402
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+    description:
+      Interrupt asserted when a new distance measurement is available.
+
+  vdd-supply:
+    description: Regulator that provides power to the sensor.
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        proximity@4c {
+            compatible = "rfdigital,rfd77402";
+            reg = <0x4c>;
+            vdd-supply = <&vdd_3v3>;
+            interrupt-parent = <&gpio>;
+            interrupts = <4 IRQ_TYPE_EDGE_FALLING>;
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d1882009ba..a2e113e29e37 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1341,6 +1341,8 @@ patternProperties:
     description: Revolution Robotics, Inc. (Revotics)
   "^rex,.*":
     description: iMX6 Rex Project
+  "^rfdigital,.*":
+    description: RF Digital Corporation
   "^richtek,.*":
     description: Richtek Technology Corporation
   "^ricoh,.*":
-- 
2.43.0


