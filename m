Return-Path: <devicetree+bounces-252717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E5677D0317F
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:40:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 968853014A30
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DD6433DEFA;
	Thu,  8 Jan 2026 09:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C3OcAN2C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85E40347BA8
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 09:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767866266; cv=none; b=L1UhXub1686eJzFGAbWoe07BABru0RBWyv48HF+MFn234xcfQfj+ctuJDGt+Yb+JPw0ahGVrQcxvNHcfodW4mPxiJ292rdqOUvrP5DKbKOgRov9uBqADZd/y4SF1jtXMT5rkyiJYwaBLMsBJI4Y7iKAGeyDxavXo6ptOpyF3bbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767866266; c=relaxed/simple;
	bh=Hgv7QBj2VJ/Dph4tylg9AUwEbK+W2yWO3bKu+SnomLg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=r8mbb1J4rYgO7dSoNEXLU4n90Ekj7bgSggewUnn7RfKUlZsJ4aQJu5c52kZhLbFWlRT1L5Jxb9vlp3yrZHQVM5y4RM6aTz5Q0l4o+S/u3dw1Pg9n1kytVp600/mme5Ngcmtbsn6QqBMvy/7Oytok5CcjErugm81kTKucgbbBbaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C3OcAN2C; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5ecddf73062so1113287137.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 01:57:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767866262; x=1768471062; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l0UMQNQize8y0H61kPqmNx/nuhGzGL/JdEumTcbx0Oc=;
        b=C3OcAN2CuhsLsQNOfN8DSs7DhZLJkRHWwCwA7BEY3bi42uc9y/4VVF6ICT7mrjwemC
         XJytT50g2JlcVh33CR9pcB/Lojudz1ErjqAJt6FmnHPsylVrQqKQ0YOg22YjpGu5ccHJ
         /bj/macBIFwWgsix6o2hsrPc08BYNzOBTylcWbyedIXWauAoa6sui0uzFeX2XYf5ttxl
         ONsjpQEpCp+vyGE4730hzhvaGtQdXaumn4KAgunD9Mh9zzAix8bcGUxo2ADuXkIck51o
         OUlYudhUXHSethbi9EVLbukCetZLKa3WUN4qQshYjf/EUky6aNf3jpPK0K5uIFNra2uO
         AFSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767866262; x=1768471062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l0UMQNQize8y0H61kPqmNx/nuhGzGL/JdEumTcbx0Oc=;
        b=p+iGxXs3Qc7XxK5iY5wazTpTxglJV6kqofsZP0ZU6fTMfv1SjaPU8jOEwLfIizUwWP
         EwmsY3P9FYzRsj9sL7bqD1TfOi+Hc04WNlQB0bKXKtO8vG30OXFKYu5BdXPKsnx+PZJJ
         KwatXd8Vfh3X89D27mY3K4b1SH7dihTX3dt29b0YP5CieVv9ZTLsrmmDGCWyasThdSYS
         wK2Gq6kdqiejBjPLM8JeWeHK9Nl3W6x6LXgkNmktDX8sSSjFcAzNdH5r3quxvTOGseeX
         WVUaru9hvdNYX7I0tHmq3dzRIuBxB7YamFnYv9BAur2DLCsgAqu8qOI7fhAbTOFp7RLg
         HDYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvOE4L7KUHCzutt9zd217TXK0LtFtoX8uVG7EaigqfirdwNAPsyDch/tkGzvYe/J8ZcU33KnSp3MiW@vger.kernel.org
X-Gm-Message-State: AOJu0YzxLZB1aRj44kf56qYGjpgT+WT3Jv/4aQ88eCYwvEcUHfDl9OV9
	Vtv7SojHdLjstiExE+jOpn5+I2RQUCodgUQ1y84c7K+I0wjOPE0FU1mSp+NpIw==
X-Gm-Gg: AY/fxX6m4HRLzBusuxAAYU+ZQj0T/e0pE+yxtI9LKHm/k/gL4ent8ETnOZ8dyqa3AtC
	rD2rzcZ+BvjknjZzBh3LjZ7r8WHac5CHTBBdP2eW4pbtDrBB7niqt3PFVRf+CFTQSkvkHYE7g+7
	qfNJvZJKSwVAgfECi8tcb239iaEGxXylR6VLOi1NQeaLv51yGVUWlvAtHQQtGPnSUbjexLEovHc
	6yidXIEUaZREWqGVZU0wrSQUwZopZ+UjFDyFAnjQ07o2VJNHFsI19iB7jTpY4jK05IZarp7o96z
	QFpH9ucTtOfprKQgZIqesCHgE/46koQdk54Jz9bDeaJRvJyKUHCfIv28QgfZit5uJuEf6gqKVtv
	y25eLrYSZULh2qK+8hAjZhYV5anY5ehRO5ck95ilh9kRyEUZgCgL9KOfyoqNbRkjRFM+/VI6QsQ
	oNLjK8F1bZ9FG0qFMCd0QxyECmWwf5AeWaJ/RCujNQesg/MXPSFUbcB5T4RwHoGySiqDoGIk+3p
	VBJgkslvG8CkiU/4bSpGQ==
X-Google-Smtp-Source: AGHT+IHZ2UUjx42RRlWVNMw3b1W04C9piTrC4WnPU6SDQCVTlKuzNskyckz41dtty4xhtSX8347Scw==
X-Received: by 2002:a17:90b:53d0:b0:34a:c671:50df with SMTP id 98e67ed59e1d1-34f5f95c745mr7519717a91.17.1767859772019;
        Thu, 08 Jan 2026 00:09:32 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm6900582b3a.16.2026.01.08.00.09.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:09:31 -0800 (PST)
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
	krzysztof.kozlowski@oss.qualcomm.com,
	Kuan-Wei Chiu <visitorckw@gmail.com>
Subject: [PATCH v2 5/6] dt-bindings: sound: google,goldfish-audio: Convert to DT schema
Date: Thu,  8 Jan 2026 08:08:35 +0000
Message-ID: <20260108080836.3777829-6-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
In-Reply-To: <20260108080836.3777829-1-visitorckw@gmail.com>
References: <20260108080836.3777829-1-visitorckw@gmail.com>
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
Changes in v2:
- None.

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
index 000000000000..e0b26c1f7b8e
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
+        interrupts = <0x4>;
+    };
-- 
2.52.0.457.g6b5491de43-goog


