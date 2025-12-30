Return-Path: <devicetree+bounces-250635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B89CEA92C
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 21:01:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0FF513004E29
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 20:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA66721D3E8;
	Tue, 30 Dec 2025 20:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DjzRNX0H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439CBA930
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 20:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767124882; cv=none; b=jXVJqqDI1WHVw8mXvkenfxjNhBgz8XTNjdcPCRsFLrs84EGfl1j7nc1FNwzk7oU6XldLMTgBNfHAkR+55laL0hHJG2HJ0iVwjrG2uFoDt7TfNI/QINRbxJT8A1PrZAYDxR5hfme59dI2Z07mGntxe9x+puUglp5pLKjnxYFHgIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767124882; c=relaxed/simple;
	bh=4Uq/LuMFJ/bKwMeSTNcN1XmhonxlOFuHeuhk/6pGReA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jp8A6dlW5g1K+7LBAnDGdGn1a6FJFu5XJa4pfwuDgWPtP1epNZb5I7aTsbVY0eUjzbuXw26L58Xn0GZVuKyZDcjCiTmMP/lltO+x4XsQfxTzHVrk5sVhdaGMOtKZIx65b4xyH62woySnu3SK01lVlb76S0L4JV3Zd6keN6wMF0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DjzRNX0H; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-3e7f68df436so7523260fac.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 12:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767124880; x=1767729680; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SQ2qeV8/CMzii4Cc7pVXwWXbCg7/CDjibpfP3lPkew8=;
        b=DjzRNX0HUCBbCoB7CURJGdpAYAuNk7LpNTTBJVAtLsNSbWuAFy2aIvpRPk1pLqG26M
         8fwAV0zp1NiDTRviPANJsgoDX7LEUTCuz40Bezh8SFxiFV2kkjtuqn6Qc38LZLw0TJ+i
         SX191DEgWeqjN5fXfwEdIYY0V9CjwhTNiCox5RFMKLQs0zfVLDf3YKQDuLc8BiOD7rLY
         vEz4jgBELyYcwnnmGCwtAcoodNA8oVXw45SFlmxAiFtfE3GR8kKF55lGwf+0zGTwzSvn
         ZYTvM0Kmpt484CAvKiMbaniHZjBXr8rEKdCCPccF6bfgfkki3xTobqgLgX9mFf6FIzPf
         W4nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767124880; x=1767729680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SQ2qeV8/CMzii4Cc7pVXwWXbCg7/CDjibpfP3lPkew8=;
        b=H6X3im0fSHVT2adcswK1FNMwBROWoSIv+lnnXEVbeXHhpVqdKhlXWwtiJIlPl/5bhI
         +NW6igIJWhSG0aY2pNLdc9sHQ3iB9OMe406LIKGlQp7xBQGpSUF2bZEfAG3DL9YkK4Qq
         BsC8zdlnvKxMc4f3EeGkZy2sbE7b1nxsz85mx97/Nyx53a0WAgRV0NnQhS/MGMvQ2AY1
         VgN4gCQHRHwvXRGMwuB8Ck+9kLELYrSctzanwNa9QbmLN5WfQXSM7JKSpeCuZW1yhPeA
         U6hMWBH5CROWBafeN9cu97KVR9pWqvDNsrL42xC8vo5wPBVU3CTNrm28+saJgDnGP54T
         /52g==
X-Forwarded-Encrypted: i=1; AJvYcCX1tEQIHe0TER/pzXHnEe7RfnqwnxplHyHE7tgaxikVcFHO2kkintTVzHYV7qUUnl8gsZHUn1KA0ChT@vger.kernel.org
X-Gm-Message-State: AOJu0YzO2/jtJGz+jY9H+KD0wRnzrEGm7PX1/VN2hgKJVYMATIAkn6eP
	j0UKo2MUgVNlJBDOwXpd3Lhu42JCIUTlPPnTUEobDnaFW6RJUj47ulWonqh+gg==
X-Gm-Gg: AY/fxX6KBoHy4PPt4F39isRcL85qtd/L4AqJLvtwz6nsoXLBeUDAsvc05e3d2hJxFA/
	AxKy0piZaAEPn3zC6HlhDz3yBX2tc1apGJPY3lpDePoiSF2gS4+KUGjNAao56/aAIFZDwBR8eGj
	/7Mzc0574q3Q7YSM5hr86glV+hBxDY/bZUraipkD27JAQo6udtTSyDbguM7Oaca6DD51wLZ/DEA
	Wr7e/ckuC/dTneBLlGE+uVdHyouykWBCHrKqJMkbjdsE3DDdKfBamAmOlbTj4NoxwGlzPQHj8qQ
	d9sUTMtBRuyPDEyzUttAB8LADA6Rk+NxCAAp84iJgC4RQVhxOLx+UQnw7jPRteRb4pM3HovYtFC
	PaO0V1qWbnkqt05FTwSTU4CqIB+gwuo+yie9RKd3WkBUdU88rXfeG85rq3c+W5dkAjMSGZyWrx6
	yyOaMzrBcdsMLB5Snx3WmbOCUVTs9IqctNfs8UGPb+69Ew8siCBWkNsl69PMr9QdF5+T3qe7+Ux
	kKtKwWWwqB7vrxbxdkdDQ==
X-Google-Smtp-Source: AGHT+IESyaAQ5T3YAYk5oG3HpiGG3dgsPGYC0NsIxOY31vJ9VG1hZq4KkWvGFlOWl7CULDPAileC8w==
X-Received: by 2002:a17:90b:3843:b0:32e:4716:d551 with SMTP id 98e67ed59e1d1-34e90d6a42cmr29651001a91.6.1767118281443;
        Tue, 30 Dec 2025 10:11:21 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7bc69728sm29598278a12.19.2025.12.30.10.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 10:11:21 -0800 (PST)
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
Subject: [PATCH 6/6] dt-bindings: display: google,goldfish-fb: Convert to DT schema
Date: Tue, 30 Dec 2025 18:10:31 +0000
Message-ID: <20251230181031.3191565-7-visitorckw@gmail.com>
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

Convert the Android Goldfish Framebuffer binding to DT schema format.
Update the example node name to 'display' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
 .../bindings/display/google,goldfish-fb.txt   | 17 ---------
 .../bindings/display/google,goldfish-fb.yaml  | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/google,goldfish-fb.txt
 create mode 100644 Documentation/devicetree/bindings/display/google,goldfish-fb.yaml

diff --git a/Documentation/devicetree/bindings/display/google,goldfish-fb.txt b/Documentation/devicetree/bindings/display/google,goldfish-fb.txt
deleted file mode 100644
index 751fa9f51e5d..000000000000
--- a/Documentation/devicetree/bindings/display/google,goldfish-fb.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Android Goldfish framebuffer
-
-Android Goldfish framebuffer device used by Android emulator.
-
-Required properties:
-
-- compatible : should contain "google,goldfish-fb"
-- reg        : <registers mapping>
-- interrupts : <interrupt mapping>
-
-Example:
-
-	display-controller@1f008000 {
-		compatible = "google,goldfish-fb";
-		interrupts = <0x10>;
-		reg = <0x1f008000 0x100>;
-	};
diff --git a/Documentation/devicetree/bindings/display/google,goldfish-fb.yaml b/Documentation/devicetree/bindings/display/google,goldfish-fb.yaml
new file mode 100644
index 000000000000..48b9c056d9ac
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/google,goldfish-fb.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/google,goldfish-fb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Android Goldfish Framebuffer
+
+maintainers:
+  - Kuan-Wei Chiu <visitorckw@gmail.com>
+
+description:
+  Android Goldfish framebuffer device used by Android emulator.
+
+properties:
+  compatible:
+    const: google,goldfish-fb
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
+    display@1f008000 {
+        compatible = "google,goldfish-fb";
+        reg = <0x1f008000 0x100>;
+        interrupts = <0x10>;
+    };
-- 
2.52.0.358.g0dd7633a29-goog


