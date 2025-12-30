Return-Path: <devicetree+bounces-250632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C19D8CEA8FE
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 20:53:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3C1C930060CF
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:53:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DC0E30B539;
	Tue, 30 Dec 2025 19:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D18/vski"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9BF4EEBB
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 19:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767124436; cv=none; b=Kttksrfsu7oEEDHK1QLIxwHmDOI9wZkUMwlTf4Jiwd+9XZODj9MgTrGOMwurRVZXQPvR9ALw935pE4dDuiAuD6fJaLugZz9r87LABlekRSMWwtwXmxIkxsBAaN0Xqg0FVURJfhk9CEZoRsiTmmRA3luE74P78OkmWCkEc7YsmKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767124436; c=relaxed/simple;
	bh=wuouABNtno/my3xxB41xPlJVygP/E24Aj/Ddg3O+3RM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GHt6TxDFIJDWPiXAmjrZJF/uVeaG9zH99zeoUcYbNJRYkKzHYgcoHAPptkPpDUQtoL6S+XMlrxqwl9g7N5aPZEpgJKDwEWKsIGZbp25HAXFF5rT8pMXvQg6KG9s7M0aMSIFchSQY2NEeuQa+bQsnWnbuxag8dJ7QcaAgNmxfucE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D18/vski; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5dbde7f4341so8900713137.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767124434; x=1767729234; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eY9DKWu7ggurjBP9bHM5tPTMCGUI+TAaWzZpacbdf+Y=;
        b=D18/vskiCp3Ij8Wz7lXgktIEgYUKOZBIgfCam5HLNIPWrHrM6cl6aE7kR9JQJMp5dc
         fYWdHqn+cIyDFttHso5+rjk0s4QVmWLV6OiosPKzy3/u2hbQWBmBDaNcUIxehXIqbGGa
         THEGEZbAsd2XXN88L9GYFM5/ArQnil66dd1s8w2khXDOoV0oy8zc0oUxuZdw60QMbhQ+
         gclr9One07iCtwD5j7Fx2k2kGAxI8L48AOUt1o8NkiuVdjygTnKXuIKYmuoJwjj/WDN+
         L5T1w0hiVdj66+kocsAnw7dAZbM4ze7MlpY7pf+gWKZtx/c88+fM4Nq7rbCLsxuK5sLt
         bwIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767124434; x=1767729234;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eY9DKWu7ggurjBP9bHM5tPTMCGUI+TAaWzZpacbdf+Y=;
        b=LxStT/NWkD3DfnKhcpIX8MHfL9EKwWuDupiNpUJW9aSXUCFyWhRRNhNzFVsgahzHuW
         Lkfvv5YMjr6KZ9qKEN0J3xEyvJ7/Yg02tAE7xoWCjmkmBor04Esz2kQ6gtmaYoOYDV1e
         7K40z+rPhfftBZtC+QxHuBIr3qCwQu7Crnc4C26mGVl2xnihVj2B1/irKbfxldfrShm/
         WiRwfFXeSx3HA9KpvzMh25A+6xeBtXqxd0nOl7f0U7+1tvLXgY/BMH6jBIRyDLQDhpc3
         iyoONC9Tl6eAGVCzr2317VvYArCqpdPKue4TA89PDbtlCoKydnYCPWqSofACdcndm9Ty
         KOyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUT1o4m5aFjsqD5Wk2tVMWMXNigyAk8moWw0yN+SdpzoQ1wfiBjQQIPl5AZ9NKzqCATkRaWnVfVf8+/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7d1jDayNVs2Yx3jlo2M3SX6tLgGzqCGql5680NHiR2puUYnLR
	l7/yLre5S7RD3fI8UTCLCkpVAr26FvHjjtMW86xqg4mFaphxdrJczZDaAZT4bA==
X-Gm-Gg: AY/fxX7jGfvEyeYwELSgiFmuKFzQiPUIwoZfExYDusKLpFpA8/hMCgQ9Dz7tU1NQRQx
	HIBeO4Ag3rFP5teoZPN6NixEhPjIteJqrPFiZLawAtx4AaR81PEGkJIAUghXWFpJj68Nv0p+VuD
	5Z2AQTd+NMwjG1trBlPH3lBK6WxG1tbxfcSVqCi7rCIBgaHw7hmNDjMLUHtKnFOoS5dHUWyJsHF
	wgtgKk7pit+hLubB+CzBNfoBKGyBIlIfYThk5Io6WadFcUJN1L/TISd5DtSD5kOD7psOG0fG1OC
	RD0ECh7GVXNz6SCx11YwYXGmSkiXwGaXxNeHruJBWvkGYmqM1Az3xwW7n+JTeJGW+E/zll4G8Iz
	AihgEkRRKmiEvUiPNlCtBz1NxYuNVAu3gXwItb4cBq9xPGmA/G2AjJXcbGMBqbVvSMNTDkcp29S
	ZSPHXK/JtRxmoAWTSonWsEUOvfJz8ufyfviZPvvQ8Gp37SnkAhemiutffzAoqhvef2CC1gP3BC4
	2v5cEUZDhStUGiNbNOQgg==
X-Google-Smtp-Source: AGHT+IHNSjL6XO/9GG+VQ4LJ4CyetXEzcsFuGnG9Kdw0+OI361O47497s5aMUrTFKuua6BqPpBWyVQ==
X-Received: by 2002:a05:6a20:549d:b0:35f:84c7:4012 with SMTP id adf61e73a8af0-3769f92fca1mr31561858637.29.1767118275492;
        Tue, 30 Dec 2025 10:11:15 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7bc69728sm29598278a12.19.2025.12.30.10.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 10:11:15 -0800 (PST)
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
Subject: [PATCH 5/6] dt-bindings: sound: google,goldfish-audio: Convert to DT schema
Date: Tue, 30 Dec 2025 18:10:30 +0000
Message-ID: <20251230181031.3191565-6-visitorckw@gmail.com>
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
2.52.0.358.g0dd7633a29-goog


