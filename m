Return-Path: <devicetree+bounces-254474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 50133D186DC
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:21:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5417306436D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 309C53876D0;
	Tue, 13 Jan 2026 11:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mrFC7poS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79553815F2
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768302831; cv=none; b=gtLnOq2fndc9vy6Djv1SdKXr43vfwRbQrwlaBRSK0NyswBL3a7vfGT+FGNxn7yY8yMlWwvM6qKcT16VmiOBAielyL7MVkTft015PqMxlcrHFGYXZvFXKMA/fK+sYGOG9exLb/2aAPqTr96sVXoUqXXYpjWRotMFDUWGXsedojhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768302831; c=relaxed/simple;
	bh=zdNFAH0iTWr7CYfBHRXif+JE5op8kPFWmv5y6FI3muw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q/U/2/IW6jyF4q9q23pLtYcvG2ZIuO3f3/dxgoiHqFzp1X7Oa7l8mTieh6PDrSxVjXJbIyrTBtT3kbvHRW2Y/jlCYt1BClgoOm8KMgW0DhKnbZCv7pjAe6bBBqLa4DqzewRlMO+AfKhxxFwkJpUY6F4vyS2vCBa2l7XHlcAo26Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mrFC7poS; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-81f223c70d8so2467844b3a.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 03:13:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768302829; x=1768907629; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d4hgjP3w88kDagdzWx8wSWq+XQR1e0+zfKSduukvDaU=;
        b=mrFC7poSd5jBj36ZIsvwPBP3jk+MI+jNFIZPd8FzIVsc4uaVH/y8Z1zCwpDSfyUeUv
         fx6HiU0/XGcnG386Kvv5oQKWQcL9sfW/Hrv3UlmdIjo+K34NMdQ3P5PQDKegdOZn2QlV
         6hTnAXn2Mx7AZBHO105ffC2vlLyHF6cnFjCFI4CNm0jj9iEfJICVn6mNR9p8JvyhTG+b
         MtNmCSkpZSDDwlFD0pfLr7qbzu2V32pQEaTVnlJHk1I+U6bcwsoc+cFLgIVdxnSUjBwx
         EmI5dcZyc3Vgwvx6SAaa5URX9HD1xSJXO3XpPp3WjQ7rA90/tnekBG6AkB/oewca010C
         gzTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768302829; x=1768907629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d4hgjP3w88kDagdzWx8wSWq+XQR1e0+zfKSduukvDaU=;
        b=xM4sv3LfApXwYsU6wu0jDzjVd7Qo1TtHjaxkwUPMtfRXykor284DNSSTreXse8G5Bb
         7UGyz5VAT494zGGpnspYsDv1qY99VGCcgQXejNsObqEO5wklIyE+upB086prjNobQENF
         oRwhZ9RQbtYYYIiCPmZO1E1+1u33uK9Q2SoVfLwbTQf10P0PcD367WBOik7Cvn+WSgZg
         at0lCGA1VIne21K+imcrdn0nUAt71pyKNz9cJEjx2xeVQInBWNLjFhfIzlf4wqHta6dw
         I8e94IowHDvcWz9WGqqkCMZhcMpHRMpOdHxF2CEqUQxMdEAZxV3BN1AcHxfFY3K7YAIi
         CGMg==
X-Forwarded-Encrypted: i=1; AJvYcCVWJPVtgHICPrQIgb4cC6nVBNUKC/A8prYJ2HzwXiAgFuKgliLamNyixYFmQ27R98ULDgqJvz6yQeY2@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt5U30v83t/gB3HWjsV7GDiKCchGuLh230l8BDtXgZG/KEH37S
	C43LEKe1WfbPS2tvJu0YDzvgCgxYyOdyGnYu78QloAU3SBNpY8WaIK1P
X-Gm-Gg: AY/fxX6IlwUqYBTiuKGJUTsLK2aSU5Wlq2yIYUApXasKtZ9sgDz5aoGxRrZk7DQg3bO
	rmeR7am8eXk++r6dPA9Zz9c293iHjjNKgps6nWGVgqe2d6+/EV23/oOyBWVBrAXZqgnXuizueGX
	RezIM55OjUQ5vZWirIhKlZiLzIOlU3pVScJ4sdmdSUdy7FtYDSJDwJ4yJQdTquvdvxk6vVEZ+uS
	FhX3pj87akSMGI3/KZhYm3rEk1hUrrzBLpK1/R/PpNPET/uuYTt8vm5+Qb45ZdDZgtrR2Ir3RQk
	XtCn6FyYi9tM4FQauwka8hVDWXE5LnlLaRNLrMS3tOhZSC8V0OrAl7KlCcCUdHB+vgdWJueaTpF
	NHWU6B5/2TLZ2Xn396j5LYYlSlztdPKNGODqSQJ1dLksXAxiXmMrX3eKyvu+lXz21KhUr6WhW8l
	eHHtFJTkcM6T3PNJlTI/hFhJUj9dQNcULBh7v0mbfFllLj8djUIflvDfRUXAQvc/gU5x6NPIWHr
	Q8aJELtC+tgf1dxk+ySwZ/ElYcoLCbg
X-Google-Smtp-Source: AGHT+IERyXXRObriIfp3G5vGgqAQ938C3mDCOXYLyt4LrW1z/WW3eq0L+wGB0uC11elqp7ivzib0lQ==
X-Received: by 2002:a17:90b:38c4:b0:340:fb6a:cb4c with SMTP id 98e67ed59e1d1-34f68d231bamr19378825a91.30.1768296384398;
        Tue, 13 Jan 2026 01:26:24 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f8b0f67sm19483200a91.15.2026.01.13.01.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:26:24 -0800 (PST)
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
	Kuan-Wei Chiu <visitorckw@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 1/6] dt-bindings: serial: google,goldfish-tty: Convert to DT schema
Date: Tue, 13 Jan 2026 09:25:57 +0000
Message-ID: <20260113092602.3197681-2-visitorckw@gmail.com>
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

Convert the Google Goldfish TTY binding to DT schema format.
Move the file to the serial directory to match the subsystem.
Update the example node name to 'serial' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes in v4:
- Use decimal format for interrupts in the example.

 .../devicetree/bindings/goldfish/tty.txt      | 17 --------
 .../bindings/serial/google,goldfish-tty.yaml  | 41 +++++++++++++++++++
 2 files changed, 41 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/goldfish/tty.txt
 create mode 100644 Documentation/devicetree/bindings/serial/google,goldfish-tty.yaml

diff --git a/Documentation/devicetree/bindings/goldfish/tty.txt b/Documentation/devicetree/bindings/goldfish/tty.txt
deleted file mode 100644
index 82648278da77..000000000000
--- a/Documentation/devicetree/bindings/goldfish/tty.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Android Goldfish TTY
-
-Android goldfish tty device generated by android emulator.
-
-Required properties:
-
-- compatible : should contain "google,goldfish-tty" to match emulator
-- reg        : <registers mapping>
-- interrupts : <interrupt mapping>
-
-Example:
-
-	goldfish_tty@1f004000 {
-		compatible = "google,goldfish-tty";
-		reg = <0x1f004000 0x1000>;
-		interrupts = <0xc>;
-	};
diff --git a/Documentation/devicetree/bindings/serial/google,goldfish-tty.yaml b/Documentation/devicetree/bindings/serial/google,goldfish-tty.yaml
new file mode 100644
index 000000000000..0626ce58740c
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/google,goldfish-tty.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/google,goldfish-tty.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Goldfish TTY
+
+maintainers:
+  - Kuan-Wei Chiu <visitorckw@gmail.com>
+
+allOf:
+  - $ref: /schemas/serial/serial.yaml#
+
+description:
+  Android goldfish TTY device generated by Android emulator.
+
+properties:
+  compatible:
+    const: google,goldfish-tty
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
+    serial@1f004000 {
+        compatible = "google,goldfish-tty";
+        reg = <0x1f004000 0x1000>;
+        interrupts = <12>;
+    };
-- 
2.52.0.457.g6b5491de43-goog


