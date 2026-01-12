Return-Path: <devicetree+bounces-254179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB2AD1538D
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 21:30:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0606D3021FB1
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD8D531AABF;
	Mon, 12 Jan 2026 20:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AROMD6/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9204833372A
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768249785; cv=none; b=Hku1Y1RdOv0uH0y6wBs4Rbgv7obF6VbhrOIU8nKZHkvqmcMBHkVez0wjoZdshc/6JdBDB3Zkv43FcxJAjWnb72ME3EwIIxheewi9FpNWmhaknCZYtyzF2f+w6o9GAkc+B7RIOQXC5YnJ0gLNLT0IJEKUOeL5mLZJyBXVvH4DlP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768249785; c=relaxed/simple;
	bh=R975+6cFhZbxfj7AcmB2qCDxz2fjGpYeQFlJNfAlsrY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TO5LJb3317bkQW303Ja3FpGBAUpUO0LfSdHWjD6OnuXKqzUWCArdOtb9a6ZNzv/5t23ya8FmPKyq7bVe2A5/kWrnLHcp0lftb+V0OA8cL++w+ttYmRzN+zdM6lZWj/cbQZXwJz5AUtJx1sdmcvEx5pytQfi6AciQtlq6KplTkpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AROMD6/k; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7c7660192b0so4871731a34.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768249779; x=1768854579; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zcjtfYLr/hzQ7i+u9m84wCmIOhDfx7TiS5rWTLTDi7o=;
        b=AROMD6/kyR1Jr04cBJRLWhMqr9+kKAvRdInvVbfymYo6FQ8INqBg4C/V2zeaA3jULy
         VtnlO+ww73SDIqbCsHNLtYuGf7oHXgbmchALFOyFV/8DE6EbyK6LfDJxrv9UPr8ZRPPP
         T5dTayeyKUEGXtIEQ0no6vIghoUWBZETbgQN9ZJmVWMvBuwLFXSfbg328ffZGO1KAOd0
         sNPDR6+oXQ6romMDGMVw1lssMfe8N5g773BWzQuR5L/MX91STDNs+PLDdMgYoaiK1fB0
         x4MZPNvKuVIo0AxSuo1OufFKC/rbrqTXXa5fCrMEFI8C8lo0ml7MjNOvgG5uqfOISAvI
         jlYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768249779; x=1768854579;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zcjtfYLr/hzQ7i+u9m84wCmIOhDfx7TiS5rWTLTDi7o=;
        b=RZusEW1+NinNVcNsViKdVZ5Gi2hjBj4cBFivj1bNxRUngZxtfsuGShmf+h/dWVzoYw
         g5/USbWwbweZykHMSj35GkJ95Uq1QwIwozwHwPIjRwAs8cG9xWSVHssqmF+M0xzMUh8i
         w4F4PeYbXoQZZQMbo1wnofrrI03lEcrJ9M/So07FomlddpjAXRPs7UZU9IDryizde3fj
         jS4i0yPdD23mWjjvxQkds4Nb1N0rQ1FkXxz8bgROnS6W4eDV31Vo3ZesCzeBESFZOOhW
         IKvE+dqfWukgTq6mKYeHRbu+1Q5uSkLweVdEHHOe/dI5UPRSbiB4KqLhTvQMmvpMlmRB
         +/tg==
X-Forwarded-Encrypted: i=1; AJvYcCUS1+32oRTbULIcgLwoTMHtWpjxuvEbfU7N/6A9icKainpamB0IZG3Ag2X3aYq8naaqEWvltDa1cNI0@vger.kernel.org
X-Gm-Message-State: AOJu0YwD2/Vw3fuLLHYg7vl23qlPaXfCHCrcUWGBJrMRO8JrLzz5Y2hw
	tRYwO4sjn+wPv9t54Ausv/6gF1hqsH94O4G5z16F/chRr/9t+Rc7jBKc2NmVYQ==
X-Gm-Gg: AY/fxX6ABaDZsRo+SbCZAmuFc+eV34om6u5OGWI6UoNaOpjDZ2izx8eRmI0inAvBEHa
	JGSBEOgVa+ibxKF9LL6E5uaNG4EtJ1OZ3kCeJJq9NJVWH9Ph0PBNGh9osdNdEl+/mQvyATvMCVj
	g2IWkBRiytb+pP0GRNXraDJ071Vzf82NEr14Og3BVs4c65SX2NFQ0/zj4NpOacLIodRq2UXBMso
	HORve+ZE+q8FOVsLhVdvtM3YNew3BiJfuxevyXB6+hRQHwJfmF6u+M0wJZC6ZroFlUwVC0RL0u5
	MQLJi4RJ4CqLUMgRzmg3YA8uIIqOswgBPb82PHUv7oDjBXBXE5DQviBmFZ7RRi3iXhVt8zaKwwj
	6/e6C/W51itjzmq6KTxpPkqNLER2NhSHNKU38ud79Bq5HQVmrqWVe9aswjg6g201y/Cty+5lzaK
	yi0bMASmTZQyNlnHy5ku0OP/RT/RPat4jd67nMsa/aL1PBcgm/zt7xJ4ZTVSNbNDYHAarbekH4N
	E7N4yGG6OUchD3S6KJ+hw==
X-Google-Smtp-Source: AGHT+IEhhjkMRhLtfe06HmVUiVLdJt4MdPUnRHhK5mx9O/EoN/yul2X9MrifSFUaAnpKZe76DRHW3A==
X-Received: by 2002:a05:6a20:430f:b0:366:14ac:8c72 with SMTP id adf61e73a8af0-3898f9db825mr17301674637.72.1768243931042;
        Mon, 12 Jan 2026 10:52:11 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cca06b16fsm18874197a12.31.2026.01.12.10.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 10:52:10 -0800 (PST)
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
Subject: [PATCH v3 5/6] dt-bindings: sound: google,goldfish-audio: Convert to DT schema
Date: Mon, 12 Jan 2026 18:50:43 +0000
Message-ID: <20260112185044.1865605-6-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
In-Reply-To: <20260112185044.1865605-1-visitorckw@gmail.com>
References: <20260112185044.1865605-1-visitorckw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Android Goldfish Audio binding to DT schema format.
Move the file to the sound directory to match the subsystem.
Update the example node name to 'sound' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
Changes in v3:
- Use decimal format for interrupts in the example.

 .../devicetree/bindings/goldfish/audio.txt    | 17 ---------
 .../bindings/sound/google,goldfish-audio.yaml | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/goldfish/audio.txt
 create mode 100644 Documentation/devicetree/bindings/sound/google,goldfish-audio.yaml

diff --git a/Documentation/devicetree/bindings/goldfish/audio.txt b/Documentation/devicetree/bindings/goldfish/audio.txt
deleted file mode 100644
index d043fda433ba..000000000000
--- a/Documentation/devicetree/bindings/goldfish/audio.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Android Goldfish Audio
-
-Android goldfish audio device generated by android emulator.
-
-Required properties:
-
-- compatible : should contain "google,goldfish-audio" to match emulator
-- reg        : <registers mapping>
-- interrupts : <interrupt mapping>
-
-Example:
-
-	goldfish_audio@9030000 {
-		compatible = "google,goldfish-audio";
-		reg = <0x9030000 0x100>;
-		interrupts = <0x4>;
-	};
diff --git a/Documentation/devicetree/bindings/sound/google,goldfish-audio.yaml b/Documentation/devicetree/bindings/sound/google,goldfish-audio.yaml
new file mode 100644
index 000000000000..d395a5cbc945
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/google,goldfish-audio.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/google,goldfish-audio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Android Goldfish Audio
+
+maintainers:
+  - Kuan-Wei Chiu <visitorckw@gmail.com>
+
+description:
+  Android goldfish audio device generated by Android emulator.
+
+properties:
+  compatible:
+    const: google,goldfish-audio
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
+    sound@9030000 {
+        compatible = "google,goldfish-audio";
+        reg = <0x9030000 0x100>;
+        interrupts = <4>;
+    };
-- 
2.52.0.457.g6b5491de43-goog


