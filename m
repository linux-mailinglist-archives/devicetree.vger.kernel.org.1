Return-Path: <devicetree+bounces-252720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F66D02A1D
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 13:29:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3B95D3101AB4
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 12:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2619C3382FC;
	Thu,  8 Jan 2026 10:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d0OOT9x9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6135B38945C
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 10:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767866513; cv=none; b=u1z1vKnyEWdyggTn+igoMwMMiUzAwoN+Mgn+WVe0kb2rE6r3mzgyGIZ+0SR6Vjq25V+FNPIMpzKTPSFyZy+/shlts3r6+u7x7ev+tH4hNG4m/q/mOKr9vlHpOUAQpciD3ans5fpXbecgf18bOcsWeuX+x7k5qbPYZaKiub06TA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767866513; c=relaxed/simple;
	bh=v6KD22Dyx3+5ck20H0pl2sYgGNxEEsrVPo7bCwCkiBY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Lfw6Z8Qw5Ahiluq8DZFswqGYdJO4EGUFov+jm9Xk4aOxeXcHHlsvRtqQ0sWGLIOLa8rOesAf3/arWoa10jgIkjlQsqonS5uugZsfxVlAcAmldvgVUeHPcsLsFBrmwEN65vFKZW5jlPXyaKZiPcZ1nOv/kyfz7L1PDSyVxOluDmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d0OOT9x9; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-55fe7eb1ad1so2276379e0c.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 02:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767866509; x=1768471309; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kHhAP8tHFGp6R15hZZObJ523oYtuLJJxIs+qZwxX3g0=;
        b=d0OOT9x9r033WtMULyC/GxbYhW4x33b2rCvalte0rfnoOscqA/EMjmdPmu5unBUdpa
         RAfKYMEnYyDA+FUTBk1mD9mblKatHDTdb2XTlq47e0oZjWNdlvSSpggA+tdshxytSWUO
         6IsmU85bvW5IOnVtjrg8AUH6yDAQa0wvRQPQ0kY2Hz1dLgTLmmYexx57c3eHVHZn5GgF
         bKJCwLdm2n1mT7qOVaVNYS0btjV9W1TqccNdkyLsPeiBPyhi4r3DeLoJTG7ySq6gRZFl
         649CTto9t+veZ2SegFk4G0wpr2C+K1RwkeMXXlRBFhYkg4tdmnXZxOqOarM/fuUhtQQE
         JVJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767866509; x=1768471309;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kHhAP8tHFGp6R15hZZObJ523oYtuLJJxIs+qZwxX3g0=;
        b=prcdq+N0RV3VZFWZ88nCp7J4Nlk4NIeoC+vEq8NXUk1p+7uXTBFh3cdD/XFXWYIS+I
         lEbOgE9l4bpw8FiS4n9OUsYLHtpcswvR22upHQUZ1Qup/KD5YsrcjmmMfLemCn/wWCNl
         waerPuD9vTGRkE11MZ84wL6hGsFDR7TsQaaX/hkVVK/FD/5O6TEs8a0UAeTaLM5EYfSP
         J8EHIDNKL/tqCY5RXIrRwRc96djBkFlF4ah4jLQShLO4v7grMJT20OJ5MtW38KwqrFh7
         ug+W5TJKgYBoXYFXTxO4ZtvKBxMiM4KcCco/1w1+jJ0O+UBM9zG1NuB+Bpdx1FHQ+8gR
         7Hag==
X-Forwarded-Encrypted: i=1; AJvYcCWXflA3Yb8vn4XEcLhdcyFk+8qdplAKTwwBM1GyGzfTcgIWI7EqfY6j+RIZVUZ9M6AQM0WJnh6K7M7R@vger.kernel.org
X-Gm-Message-State: AOJu0YxKIO8wOVT3jgEd3bH1ldURDba1Lh31g26fC0tYoSr2ua6CEhne
	2TZenH3xdPfBf1ctf4DlveWyHWvRi35iJdqLKbiI3smjf6FcJ/K242QbpLVw8g==
X-Gm-Gg: AY/fxX5IBWHU8KEMjsmcEBFaLgKFFFq4iu+/EuCfBs+JuGEIjcMLW/Jdp26eBN08B9e
	w2hv1DbVOUPE/7HnSzMcAzG+9gOE78SK1JKQuzY0KO0CiqIgtkZivF7qqzsa52LRbfejrCigNt0
	xmQ4hbaqtsqoZFUl7G6Po7QBR9FOLXLTy2ijmr0FED3t9ToI9Aqo3+nlVqCKEx486qVZydkJ7gS
	rVoelIlc/UyCts8qLLhoAPKfAX4wouhU+RgeLx61DO4dQSzQbPuR1I2/ukOj/T+K2TB+l9s9OeK
	6JSlBexCw+tZf5Hzfwp/ZFAEwZGQAvd9BjoOhXk6wdjoF/Wrb38VjyGR1G1Jgh34Vrlt/zzrcK5
	6dKkAP6gn//YhhGYNb8SgT288iSVz7mCdrX8f/d4Dy2pS/anlXdphOSa+ofRMi3uKSaTLaphyhO
	2KtU5nxuKtMZWbiNYObHgaynVN8iZMIlFHiLmpsTk8asYO89ZnjXWuLSuiDxksQHcqm6jse+KqB
	IClRLXU6oLbIEx+S1Yxog==
X-Google-Smtp-Source: AGHT+IExPvCC8KraIjBsVHGHYTjET3yJHc/BTBjFTEdV/VDXcghpuxPJ+uczZtlqCGmQQNa17ulZcQ==
X-Received: by 2002:a05:6a00:288f:b0:81c:9f57:3090 with SMTP id d2e1a72fcca58-81c9f5766a8mr2451909b3a.24.1767859757241;
        Thu, 08 Jan 2026 00:09:17 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm6900582b3a.16.2026.01.08.00.09.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:09:16 -0800 (PST)
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
Subject: [PATCH v2 2/6] dt-bindings: misc: google,android-pipe: Convert to DT schema
Date: Thu,  8 Jan 2026 08:08:32 +0000
Message-ID: <20260108080836.3777829-3-visitorckw@gmail.com>
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

Convert the Android Goldfish QEMU Pipe binding to DT schema format.
Move the file to the misc directory as it represents a miscellaneous
communication device.
Update the example node name to 'pipe' to comply with generic node
naming standards and fix the mismatch between unit address and reg
property in the original example.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes in v2:
- None.

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
2.52.0.457.g6b5491de43-goog


