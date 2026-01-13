Return-Path: <devicetree+bounces-254385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C57ADD179F7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:31:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 17154300EF70
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9062D38FEFE;
	Tue, 13 Jan 2026 09:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QdHFDrGq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0186C38BF72
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768296415; cv=none; b=UUGnzis8i9YhQNmKBvPsAmb/zP0OXsQvPRLXVB2kC+4KDb+0sTEECW1z4PrURNVAtjlht1nC1vcTprCbCv3AiSszhogF5oX9Lm/+eqF6J+IWehTSb6vx6Y7mCbDz4xLR1E70bGNEHT4XuD4xfIjTmkXoQ1n9e4MBqQU4+4oigcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768296415; c=relaxed/simple;
	bh=ws1p+puMOcBf/qfb0sFtnVfbyocdGIjo6AESCEhizgo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MC4/Fr3MAExpP/m6iP4Mo6nnA53Lm+CwCh9fJRBvluMbGG8erUvLp/s5F+osZNE24mQWd8KbMt8pTlELPTZ//fmthK3TTlxC/bjOQQFv3mz1nHQCSSC+lXoRiJsi2HsT+jRwF4/FhdBn+NQW1gjaER/O7W81UskQc9UlbwVmWCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QdHFDrGq; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-c56188aef06so1489506a12.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768296405; x=1768901205; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U7EWk7TuRK54To9ZAGQlu+fCN9Q9oadA9Ns4P4AvNGA=;
        b=QdHFDrGqqCR+WcxB146DlBBMKwfRMeXhb3Dpy1o7T8ppDIfxBKmGwj7y/CQHmtc4ft
         IEE4KePrThXEN3XugJJqPbtwPf9TVio+dRxTs7lNju5a6Li7K77eKd6CnsKaQu2u7a4e
         8GW0u7Agubdx4ucIMvZD0C+dgA6pCD7evlOHQqTBJGUIcRwfkijMghBW8SUBY24Q8BDc
         LZ5YAqgKJNMQ601PWds66a7YxKBgc5AUtWKH99EI+EY+OcvXPZiFkmYPnOR7o3Ey4jKk
         FbJ7/p2Sc1oC7v75Z/mL6cUY+fvKjrHzQ+6bdVO8m3GCYeclikBq0a2qvyhzMxWfkJic
         DpnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768296405; x=1768901205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=U7EWk7TuRK54To9ZAGQlu+fCN9Q9oadA9Ns4P4AvNGA=;
        b=KcyjZ0ZOF0u7lZLptZd5X/UqGLO5Smt5LHsJhXta0S9ETaIC1keGvPxkcMQBfNChEE
         kIw0Rksb6WjrLpCsThsrG1WqC9mMH59O/DH3yXZ7szkEADIosLSzrlAwKgxlmJiFTkEE
         PpaqPBMP1PLt3rubUJqhR4dEd6Qe5ttlsZUbC3JKVS6Q39gF1io2HHx1d7NbIL4POSTs
         50VAPyLqBSO594+O1Z0L8GCM3pLcf21+Hk4zSW/iWAOeno1q9wF988mK7d9ZIgeBHzgp
         peAr0VR3tSnP+DoQyJ3GxFuGBcxfMBshirnfDNkUQLmvuFXS/RQ+1hDpA2tn9gHpKjet
         LW3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVFWIIXF1Cf93Z8GM5EMlcgT4hGVNpSyruCPeSte8BJbCTVnXOJiE8gmFr2PnyPcoL6FfU6rp53ByAv@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhhu/lX0vyoW6py7oNVp8Y/6fJlD56TSX7RLxOK5sxdcfvt5jG
	BPWtVS48SOXGbac3tlg+XbPzUTidcrOzxwm/DZSI6YK1oNYoG6jsIf3C
X-Gm-Gg: AY/fxX79Bb0SceI2Rn82leg7b4R+gyERJwEW8qQrqcFizOUOnR0DZhsAcjLUtnEU5vy
	/2pM+IOMnqk77dy2LNKmPQoFxxse3p74jY1ImJTWOtXcW6OrWiH8MrTdit99Rc8/JCW9gvO76aQ
	+UeoxcHw2iDbZ46s2APCynE0BYT0Ka4lcwaoQY3PbRJxR3LBCWOxTHJDK40lfs+uhfCb0ZShb/z
	QLHEid9VX9Eli/8ou/8Lm/dZ8M46Pku0yUTnyCI3h9I31rqUX0qqaIcY/B5uvq+BP13WfZV/U2f
	sJuTyOXWBK4mDTqio/445xqZ7PhoTfvjmNF7hYBr9isDmCVeMnGDanckKRaCuhgRVVmFk5yZsYk
	KYdCs1CnCE9FBdlNGMqchqnYzZABlFI8/tEIYjMSzHFM/LdpLL7Pl7xpWmUqSfIs+dhVt3it0Kr
	Q4bXXXR2RGjxtZtWG5GAVrB1oQ8l2EgO88gy0r6IM6xFqeEQuGKRrrE4cpYP/uCex4nGT/kNRAN
	BX+dPs/C3vFa0bvbxGFKg==
X-Google-Smtp-Source: AGHT+IEUC0KJ50PkwzVSwPCDoxMcw68KkQ+8iOouE/4n+Sa2Bhle44HLNHQWtPdhk/bI7tQ9NQN1XA==
X-Received: by 2002:a17:90b:5823:b0:34e:6b7b:ded4 with SMTP id 98e67ed59e1d1-34f68ccceb1mr17985068a91.36.1768296404680;
        Tue, 13 Jan 2026 01:26:44 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f8b0f67sm19483200a91.15.2026.01.13.01.26.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:26:44 -0800 (PST)
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
Subject: [PATCH v4 5/6] dt-bindings: sound: google,goldfish-audio: Convert to DT schema
Date: Tue, 13 Jan 2026 09:26:01 +0000
Message-ID: <20260113092602.3197681-6-visitorckw@gmail.com>
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

Convert the Android Goldfish Audio binding to DT schema format.
Move the file to the sound directory to match the subsystem.
Update the example node name to 'sound' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
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


