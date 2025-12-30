Return-Path: <devicetree+bounces-250615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6C7CEA6FE
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:11:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D061C30321DE
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D81D232D7F1;
	Tue, 30 Dec 2025 18:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gp2ahs32"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A39C5320A0A
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767118262; cv=none; b=D+HtHcThDwAV3rGxmW5H8rov0tQ0hD0kZ0Y+yQHE9s2goIpPrHH9BmKheP9odFcPJOjcS6NGhrcLRIOOzOvkCC7ow97nzDaLssmhCsIYJNDG+yOhvV/JwgAyiF/DnjhV5M6enjz9cjHOda2HBRol+NXrLQuT8LWmjFrVaWtTqRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767118262; c=relaxed/simple;
	bh=TPtWoE4C3jRebC+9Hd/fYSLNQqRY65T1NXTeH1DCygs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fFu+VCwQ83OmhixOage5lBfCJ18hJLEy9oQI1Hx0KCHvXF56BF1f9lj4A0UJFe9S4OF83J1YvT7GJp+75t7efBj9CqWEVi+fJ82LIsSgeXZQqdZ5klW8ccuZFBFa3YZiIyq1Cv7nSI3+E0BU+dsvWD9NTso+u069K5AsP4+vKa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gp2ahs32; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-34c1d84781bso11567069a91.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 10:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767118260; x=1767723060; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wiqtyI0E+EZ2TXt7IOrDDwvPaZp+SknY+Ea1unU062o=;
        b=gp2ahs32IzCjIw06uLOX9joppinreo8/MHeGq9gZVuKQRB/I+Fj878pzYjDSt3i+ik
         YCqR7uD6CGX1Bfy4tf08jeU+I2ypnyitJ0i4ZH8LK0dpch6MaZEGlDfcQwMMGPFCfH8Y
         lTeJdXxwj1Yj9AICIC+Uptv5n24FzSF6ddlQ9DO48Z40D0BHYwHZSztTnxeqmlVA2g0q
         0Im0LYIXx+32K7MGuICESO/hHYLr48/5kxBZCFdZZoLMEC4Cp9XIo8wT+tRhtQ5ozEp/
         Iu1+Z/rXlu9PVNnauD7QEt9P62uWJFlSZrYH10QrRSA9CRBs+R6feTaTFSL+xUyUf48X
         W/VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767118260; x=1767723060;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wiqtyI0E+EZ2TXt7IOrDDwvPaZp+SknY+Ea1unU062o=;
        b=YRcBlpiGIgvdSW2x75g+69aimCU1t/hR/Xx1Z3c+O22gkV4xINdUeONd35kPhrlfYQ
         Ovmp0vUWH4EuS9CmZQMf3vX9Yz5MYPCiR2eTAZnYouOh3444FPaKBwtDw5EXPBmDPEPx
         LAg1LOeyGGe+WCTgZmK46gh5n/5LML/9tbf4dG8/XKbRaq4pOu40S8kJ3YpXwhEwk8WA
         Lg1FI8izJdfECEX+qZ/tfp7jLvNVmE86CW7pTwdpgZyQ2mLOXe1+juWHwzrOarRAR+2u
         wKej1BQOp8GHR9mjchQ0M0RNkGwunFJBQK6BFldZD+/RjHRWeMCMTzbdv1QHmTIPL0BE
         VV1A==
X-Forwarded-Encrypted: i=1; AJvYcCUw/mI5K+FHRUy0ExWx93UenVFl6Sh3oKZhT9qFHQY9BCYUZKd2MfYIj7DrtLGq1sVxeoLffzbzQ+jZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzI5FW35lKsJtp5/lmwmPCngmIr1z3OY1cpDC69bR3Cm67dLZj/
	nsWO1ZbOrl7928xNmC0k2hNWMyX69rudd8p9aZ4MO8M3dOWpPfKVRvmH
X-Gm-Gg: AY/fxX7hwD8jlCciGjl27p/9UINjMY0lzuwrEsVcJmmnc8EWoqabqtck0BJUIOTLqN0
	L/jHHBkEmGc71zQg9obioMCO+owor+g8ciX4vf8UrDiIQTPC58VvlXYggjp2FrxjkFHgj3JZP5H
	DYccbIBP4hjg3elMuhza9S88ao+W46iCeF8mSHxpZjmrmGHy1kqBUup/QIJtmaFItWfnttPEF6m
	4HO2XkbOdqlzH7gOXrvK+8Pa26VQwsjGEJ449tLqxf27XrXT/B0F+aU9JcZqJeU1vRCz93O39Ju
	LnMU9wEh6OJBWEJ5ASW+/jjF5uIODsvCXBiayCCqcSat4qp6iBkDuTRiWjah0JTt5uP4xTMIDzB
	551J9iDgfM4pv7u9p+QW8vRAbIMDZ5HNjuiFDD94hTLnDnnjOcemYIf+VKjq0pRvfKbAF55CXrR
	i7E0XOBvD37MRQDN5rtua5LOK/ELQZDZyxk9eaQN02bFZ08GZgsuZLPbLdbruq3iA3ELLIZXuu+
	kMd4N4QWjnDPsY0lf1uMA==
X-Google-Smtp-Source: AGHT+IFysb5O/IJUVTITdM4KylhE1TplZEdTk/XkUcd/+h52MkW7iQODmWt+Z3OinYOcQ+IJmSy8Wg==
X-Received: by 2002:a17:90b:1f86:b0:340:2a16:94be with SMTP id 98e67ed59e1d1-34e921137c6mr25807297a91.4.1767118259879;
        Tue, 30 Dec 2025 10:10:59 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7bc69728sm29598278a12.19.2025.12.30.10.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 10:10:59 -0800 (PST)
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
	Kuan-Wei Chiu <visitorckw@gmail.com>
Subject: [PATCH 2/6] dt-bindings: misc: google,android-pipe: Convert to DT schema
Date: Tue, 30 Dec 2025 18:10:27 +0000
Message-ID: <20251230181031.3191565-3-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.358.g0dd7633a29-goog
In-Reply-To: <20251230181031.3191565-1-visitorckw@gmail.com>
References: <20251230181031.3191565-1-visitorckw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Android Goldfish QEMU Pipe binding to DT schema format.
Move the file to the misc directory as it represents a miscellaneous
communication device.
Update the example node name to 'pipe' to comply with generic node
naming standards and fix the mismatch between unit address and reg
property in the original example.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
 .../devicetree/bindings/goldfish/pipe.txt     | 17 ---------
 .../bindings/misc/google,android-pipe.yaml    | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/goldfish/pipe.txt
 create mode 100644 Documentation/devicetree/bindings/misc/google,android-pipe.yaml

diff --git a/Documentation/devicetree/bindings/goldfish/pipe.txt b/Documentation/devicetree/bindings/goldfish/pipe.txt
deleted file mode 100644
index 5637ce701788..000000000000
--- a/Documentation/devicetree/bindings/goldfish/pipe.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Android Goldfish QEMU Pipe
-
-Android pipe virtual device generated by android emulator.
-
-Required properties:
-
-- compatible : should contain "google,android-pipe" to match emulator
-- reg        : <registers mapping>
-- interrupts : <interrupt mapping>
-
-Example:
-
-	android_pipe@a010000 {
-		compatible = "google,android-pipe";
-		reg = <ff018000 0x2000>;
-		interrupts = <0x12>;
-	};
diff --git a/Documentation/devicetree/bindings/misc/google,android-pipe.yaml b/Documentation/devicetree/bindings/misc/google,android-pipe.yaml
new file mode 100644
index 000000000000..12b0cfc815e4
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/google,android-pipe.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/google,android-pipe.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Android Goldfish QEMU Pipe
+
+maintainers:
+  - Kuan-Wei Chiu <visitorckw@gmail.com>
+
+description:
+  Android QEMU pipe virtual device generated by Android emulator.
+
+properties:
+  compatible:
+    const: google,android-pipe
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
+additionalProperties: false
+
+examples:
+  - |
+    pipe@ff018000 {
+        compatible = "google,android-pipe";
+        reg = <0xff018000 0x2000>;
+        interrupts = <0x12>;
+    };
-- 
2.52.0.358.g0dd7633a29-goog


