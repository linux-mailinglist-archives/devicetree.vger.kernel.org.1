Return-Path: <devicetree+bounces-254471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF37D186AE
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:19:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A007305D91F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:09:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B064820F067;
	Tue, 13 Jan 2026 11:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="klWH9DL/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339C32BE7D6
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768302573; cv=none; b=XWY1GcCdQlxfJW1QDoc2n3hpo8c6VFO+3YQyE4RBMcffmrTu4djFs+/w8bas3oaewWtdtHhJCbwhkb+WbMWstO63bjOplK3db1JEPyVWcIqOPCoHPy+DDLAUyMcCjCtRUKJ7p88OFmjcR57xmXwAgI8FzOw+TnM85rnt6IEHAZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768302573; c=relaxed/simple;
	bh=6pLYfVuIQXu+6i9yGbsc8JllWJct6Sa1co6E2UbDaRA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HCsgcA6E3j/9zg/neO+yYDjEI114csg/jmWKP2qwOpuEhRTXcg06m4ZrQ3pMvBlYU6s2KHPUINMQOo6V9OCNEr/qzx5BvJkEn0uZpTtfkJujZzd34/GdgCNdO7KsyPCW0MF2C8pDR02PGzYplhENcq8cRntOhZJ2BRx2+ixw9r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=klWH9DL/; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-8bc53dae8c2so1103165085a.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 03:09:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768302571; x=1768907371; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zyUyxp8wAgf/XnChDYwKqc2QzM4UH8wRrO9JxGpfnDE=;
        b=klWH9DL/i5jBTaAv+oreVfUdLOgKBf20AxJIc/s++AH8ejDHXv+3hMizN2+LMcPzqn
         apLFdywt+lm95y21lBnsUxkKtY4ESquLMfMlqM8QfX/SsN8I1vvHkG60Eg7EK6/oQWxd
         8B+/VrJDcPS2ytVul7DZOtMUdNr++7BszcaRBzE6QyQMkOD42Y0q1Htzc3t20zPYGbLt
         eMyDwlChrO+owW7oYjmc4vKjII1Ni54Uf1NqvUZYbp58zR5nyqbjPtoeuVzfRz6TRufV
         81OcLZbqFnyKA/5D6p1v1a48Zh/8Lq1JuIwOMKkOdRLkd1srI6nUNvO56qnbFJDVE2h8
         KDUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768302571; x=1768907371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zyUyxp8wAgf/XnChDYwKqc2QzM4UH8wRrO9JxGpfnDE=;
        b=pzrf4sKNVYuAijQjsjovrJd+N30s4nfAMAkZastIPciiRBFE4feqNAlZA2EgRxHEZJ
         0hTjVOt4HC8XuDor0RYdGYtkJZOwHWcH14By4JRHC2l8H3IL9BJaZH9NeV72priRvo6d
         drfaMSEHTVG6hlJPHfY4YHGx0BFoKI2OlkE0GjsYPKrzOvMulmuHk7T5TaTg3ZEFItE5
         JlO/pN/2uKtxy4AsWw2z88KWLtybBHsSvAK7XL0IQrVCcaf24j26JYbRQeG392avCzUR
         FWP1xnuY+J9Fh1HTi5mQTAhV2lrGIAlNIyZiZdaTBttBnGSJftI6qK9EziYvBh8JiZgC
         vkcA==
X-Forwarded-Encrypted: i=1; AJvYcCXH0pOeQHgaaX0vwfzGYpg89FOF6o2lH6YfBVQ+NvS5wR40PhpVIgHDDK7Z+CGm+lYL94B4KN/FHEQR@vger.kernel.org
X-Gm-Message-State: AOJu0YxRwCC2On1nCi4j2AZ0HGF6OQ6n8/yFrRoRyNV19xN6bTRHu9+D
	aLAWleY0rF4N/ZlMTm0WHHMFJU/+gFr9SSd6R09mCL7ePV5+rNrMsA/eoTeHiw==
X-Gm-Gg: AY/fxX4n1BN86wy7rrMWKkREcqswkieQrvY9JqLqdkgiGVV+GihL1hwFmPpm07SRe/d
	CPoHr+DcgRc3a08Zcf/6cfU02Wxy3lAhhTFJU8KUA8HpH9uHdby15ZzIyAUC7kerD2N4wb8XDsp
	4zhRYozgpMO69tokRKXdnaZt3CBq0ONWjDKzubSsxhUJFWhmXA7vk8ZyEb7259q4DPTeK480BbZ
	r6HRy7kKlW5ho667nHsVgS79Z/trQpHfZ1WtOIbgmWG4dbMFBE5DSgy9+MBo4CIC4w138enk+DA
	H51dxR2i//xPiT5Bq2VMz4joXL9e3v+qP7CHDhnIzY677OyHT9NyDrX77cLu88vRk8E1908adAG
	zsUQKhVlluhJmZHTnEaY0EJpaIH2h19dpaTEAfIjQpou5DPAsECgKGUaORi1PAZ1Myog5rs7MOO
	BkuKT6ft0aMd48b2xxYeH2wDL6uE7x8KBwzMNpY2kbKKLHn5agZf1MrkkZDrtlz5vpyT6y3GKSq
	hDFK4wGff/4q9h5KROhMKa5IlCGmzpW
X-Google-Smtp-Source: AGHT+IEQYBKDIx5Gyb5nb9QDIlP5wjHoYpr1ATatTX3/LBRfDVJ6GHb1+HOoMcW7bBTYInLSSSdvlw==
X-Received: by 2002:a17:90b:1c07:b0:32e:1b1c:f8b8 with SMTP id 98e67ed59e1d1-34f68cdda94mr20382740a91.26.1768296395660;
        Tue, 13 Jan 2026 01:26:35 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f8b0f67sm19483200a91.15.2026.01.13.01.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:26:35 -0800 (PST)
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
Subject: [PATCH v4 3/6] dt-bindings: input: google,goldfish-events-keypad: Convert to DT schema
Date: Tue, 13 Jan 2026 09:25:59 +0000
Message-ID: <20260113092602.3197681-4-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
In-Reply-To: <20260113092602.3197681-1-visitorckw@gmail.com>
References: <20260113092602.3197681-1-visitorckw@gmail.com>
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
index 000000000000..4e3a010a70c5
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
+        interrupts = <5>;
+    };
-- 
2.52.0.457.g6b5491de43-goog


