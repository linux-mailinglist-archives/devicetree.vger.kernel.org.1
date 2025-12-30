Return-Path: <devicetree+bounces-250633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 35696CEA901
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 20:54:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D43C73007FC2
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49844317712;
	Tue, 30 Dec 2025 19:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IOLxxVeq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB6C62DC344
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 19:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767124455; cv=none; b=DxOUK6ciMaQFSgOsIevjhUt+30EoqfsqATSxQejOPiheZYKuTMVtT/J07e7Ihu3lo31/MBQoeEAbimZkJ6wCoiZh4NnewRlYuAHYcm2YhI2zs2YAtflUwufLAtWID7uKK8g/YThOudD2EWsGM/5A8X+fJ2UNSysEjaYRzkAT1eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767124455; c=relaxed/simple;
	bh=dBZA5ta8Wg18huaW0x593dUQGODH+A9HatruQgqiYAY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tj0a1LdxsNVkeuJH7FBlpHj6i0l773tzCk2XZSBL1JkR1eCtwSYiQtP1nWVC3XBvkZZlddp0luOjzD9D8IoaxyWYDvf5Z5Y1QZWlJ4ellTQ65oQv5eA4iauNyv4rdtYeoZHBsjGiVesTvXDPrDJMsagi04C/nCu7imYiIspF1vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IOLxxVeq; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8b2148ca40eso1639181485a.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:54:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767124452; x=1767729252; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cweyuKIwKmSRdsl/r/hQ+dHMBlDfUCmP+2wWQS89QfI=;
        b=IOLxxVeqb/ycBRZ1u+S60uQ+NaTwAEWOGfcEXQR5GPA3zdp3Z8QCGRw51gSLgRs1PK
         kVuAHM36/zc2RfnvGRTe+gL8eSW5eIj8+SjNfKx6LyghNeiXwqMRpiEqtkcuJhz8qHpS
         it0GtioWU9FCrsNJ4dVv43UKkk3NVUu+McyL+5/n7ZeVtQcRIJo/x4ecRR44TYFMFkD+
         63kZD/r+pnbuA4G6CgR/xffbo9yDNa2zbuj2LyJT9SkPgfr+nNhyyUoJ7ay3SK9oYpDh
         C3zo1S4nmlxiVE24+YUeEAy9cdlkj26GC0OhnUiNLsEsrio8Ufo7cpxTogIdF555YTE2
         gKvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767124452; x=1767729252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cweyuKIwKmSRdsl/r/hQ+dHMBlDfUCmP+2wWQS89QfI=;
        b=j5OudC5bhWBlIT9UTl53z2XHGSL3uKhodQoMZxlTpVM+LBVqCBd4jSBuO4nbf+wetM
         Ro2k0Qmvy0YnHWiVOIoLdgeDHfsEBNQWl2iUZXBnMY45mdEA6MY0LH2WRyJhqBkDOyet
         v5910mA7gZe9dlpopILxOQ3cYIUKC42NH4QDUlCLK+lbDYDAxczUFEuQwW5Dio62TYuy
         3t/irfqfDYdxhQ3URtkWo6TvnGKDojitwZAltmhFv/pwf1AOde9yXyC4JgJauybIfAhy
         xF74TUXqpRKfcSesaY3AKH5IR2+5Jw5XuL/4WytaCIM7JwCty7DJrJ6i0ezF1peZwDij
         93OQ==
X-Forwarded-Encrypted: i=1; AJvYcCXw55p2dd77NeMfsHm2BmJ6cJ7S+su97VypYlHkploG2lRW0joxpoEbv7xKzAYWjXUv0UZJ3quTRk7X@vger.kernel.org
X-Gm-Message-State: AOJu0YxCr9gBrHUDtkRFo6oYZN6EVdSxliy+PZ/H9oLA0UKTtGWsyFSz
	vXDYkPyG1uAIra9bCSMP1fc7enwKnF5ZVN3w4lT9oEBID6fAOa7IpqsVyljpqA==
X-Gm-Gg: AY/fxX5DKxqalsOPVGsLbl+zCs9tGqf+rA0K7ERidrQ7bjCSAZTAwZiKQFF6OWEk4GU
	57oTzi4B/+k5VSgoCGdIVk6W8HktOZcsgpzbhRtM1+3RJ1YQfJyVBtwsa0xGcZwEmoh9SKyxpQC
	2zMtmcLvOWjD2M2COo815LY2lC4bBVdlfHmxyslGP9S1fXtFyAY5D5Sknhhyjoz1ENoQNwcVAWa
	5J0qMLxvNmATUUUA+YfipsZcz5jOCp7xw29O/Z65G9DT7+xRgxWqRYL06LmXtp4Fjfwsfruxydp
	U+B3X3UsI/zJBIXB8SY1Ex+1r18LkYOKNy+QGrE4sxet8yb56bAflgOKwQBu8ywbVh8tAeAGYEH
	zF0uQi8DYIZDtQDZw8iRpz+m4Z5DnTqwqwJfC335E+Z+MITiKcEXx0mMc1cNZJKlz4BxOPtnWLx
	p1zsab0GThwfq+DNJP41YIpd+RRV4cSvtGqcMlC0cQ5rrnzo4CMe8HE1t3ALvsjtsRGUKREJ8iU
	B4qzU5Ea9EAeA/dEZJRog==
X-Google-Smtp-Source: AGHT+IEV2tPzXOwPHApBAgjAbkeJhyeb+ZtfRECHHa+IQaEP0X/+BdIgcNvcf3mgMft3lyGdkE/kaA==
X-Received: by 2002:a17:90b:2584:b0:32e:7c34:70cf with SMTP id 98e67ed59e1d1-34e9220204dmr25951440a91.36.1767118265942;
        Tue, 30 Dec 2025 10:11:05 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7bc69728sm29598278a12.19.2025.12.30.10.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 10:11:05 -0800 (PST)
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
Subject: [PATCH 3/6] dt-bindings: input: google,goldfish-events-keypad: Convert to DT schema
Date: Tue, 30 Dec 2025 18:10:28 +0000
Message-ID: <20251230181031.3191565-4-visitorckw@gmail.com>
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

Convert the Android Goldfish Events Keypad binding to DT schema format.
Move the file to the input directory to match the subsystem.
Update the example node name to 'keypad' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
 .../devicetree/bindings/goldfish/events.txt   | 17 ---------
 .../input/google,goldfish-events-keypad.yaml  | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 17 deletions(-)
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
index 000000000000..348cf18d3d24
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/google,goldfish-events-keypad.yaml
@@ -0,0 +1,38 @@
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
+additionalProperties: false
+
+examples:
+  - |
+    keypad@9040000 {
+        compatible = "google,goldfish-events-keypad";
+        reg = <0x9040000 0x1000>;
+        interrupts = <0x5>;
+    };
-- 
2.52.0.358.g0dd7633a29-goog


