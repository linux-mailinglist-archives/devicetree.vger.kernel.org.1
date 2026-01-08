Return-Path: <devicetree+bounces-252714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF11D02704
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 12:37:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0939E30D1E82
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 11:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBC8443636A;
	Thu,  8 Jan 2026 09:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rqf2JXQe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E3DB4348B3
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 09:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767866094; cv=none; b=m2KWIdqv88w1YCip213YK9RsUGjupU9M7SGjHJeXTHjqy318EICR7G7rUeRiAJ5US7e6FztBrBYLTvl5TrseFsl+fqrwzN66WzpZfCRC7tJGnrbac40uAJrrGSmvGx5b81Vs91fCZDSLuZU8Mf6ZzntFyMGec851k1qZj0qasl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767866094; c=relaxed/simple;
	bh=1t0rpAxQeLHUoXH9EqV6OjuM5gq46cEpA0JagdgwR9k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AnhQ3UO7oZW9GHSmNG9wxPgPhU4pqpbnSSX50ukoAF9lqZ3UEfPTq7Pte2EhoJXztAc3sGG6kqEB3MN/RaO+GoP7sIO9Q1SVMRjAVB6P7AvfDo6CZhWHFW/nuJKvgYluDkZ79H1qAZjUw0gbGR9x4Lyfwek+hhe6RlC28/PIOhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rqf2JXQe; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-8804f1bd6a7so26480726d6.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 01:54:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767866084; x=1768470884; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KNDmxXp+I2DQQMGpjKHJPmnR6bZXLNX2CabD4SmBa4E=;
        b=Rqf2JXQeSrPXqwMQkYhEww+TqcshCAuy7mO/eF8pc7tqExDbUDvqy3d6bvc/svE8g6
         9vCvUpB7GZVI2R3FD1hHh2vs4CiOjsqzMMsktUTic9MfGcQoSzezNqpTYcSWdzg3J61w
         QQHkZUAwnmoFkWcEifcklKyCZ3PNnPCZO33hp/9N5Dhr4+RheC4dEWfEOOTuFMmYgPBG
         2Ck4nWIGvMNzGVYClS9g0i0iGT8Qp9kpvrGxX1U5QWXck+5PJIW15PTq/wfo+1wTgo+R
         IM7VJunXo1G3kGkUbU4p8ecw2tuUCaEnuxZFGbSyh6zNgk7esLdS6WKMvWie+opPtbNa
         pwMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767866084; x=1768470884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KNDmxXp+I2DQQMGpjKHJPmnR6bZXLNX2CabD4SmBa4E=;
        b=wXRqrkba2MicGW/Io9cRvJM77+tZNuaPcrzclTQiikKPN7lKbfuRNIgggvayBA9vCx
         H7a2xbhOnvHcXSHDiJigQRN0Lgd+BBBZX17lhOQn0WeVhVDNw46Wwj555LgXB19M/dSB
         TMNUqx2yK4fqwMKdITwFAlbbE4sk6L3Fn2Aud1BB9tYkGs5C/0DPx308qp9rS7NM9FYz
         dx2Qh7WMcNR2cSJ6fMCd6bcUglhlT6irHb16VAiwqXRwMXDenPV7+kvKjPLAIwfk40Ma
         R2L0JfL4SvGGKJA0P6AjXDxthlwr3OkzO3aLDrrCOwDw0GPS6YgjrjEQkOSNd8GjDwP+
         atyw==
X-Forwarded-Encrypted: i=1; AJvYcCUzZXAlIspahNdHVHSAqMfVYLW2QBoiTDveB5vsJY22kTO6YAfm4n5GVRgEAnlGx6/oaRenSJqUg8va@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx1mP26pAh71MMak90ZAUUDXZm9Ze6RcegcrDQMgs/89X/79sX
	fFsGUlD9hCmGdpPdC2FvkJHqrEt+RAug1AJoYohI2/bUgua9LZViKEVl
X-Gm-Gg: AY/fxX4DspuDIy14MNlQXbKcvC8tbpj4Cxmi0BDOxOrTTywQ5rKf4z+e71PBZDV4187
	RHatJ6YzuG36YSCn40obWdFqc0G/wDyROuvIkrI+MT9kEh7pC8xn1BpfTpZtgrgobnpVkfKgoCm
	FFz4cVmpw8xYJ1VpJCjG4wV50clJ/7OWaY1ezWJ8QbzwRGvxweHqcu6CuZjUgmmXFswJ9UEwUgm
	NPBoggnvw613bzcrHcF9GBfIL8MK9t136bc1tiZHAc/JxuFNKpyOvQW1xr4oEa1qk7qe+y33UiY
	OA9EHzCx/iVz1Lp4NaLdHyt7z9oOHsIQ2qrrLqo7OCbOFWpHhPtdolXuw/C13TunSq0uj4H6+ca
	E3YRkJQ21as/UNPvAn6UGHgXLUviFRhMgxMZRPiSAwNajcNuUFPx1bXYBm+xm6XK8yEAzw6wX0H
	/ClzCtT4N7s2s9LMpimQXVcVIxbY1rwFYXCKjn+2vp8kb2tfddgsJKZ+NJaXq4rQRP3DpEJ6IQY
	8NFig+upg/Q33VdFc7+UA==
X-Google-Smtp-Source: AGHT+IEtkI6q/xm4mTDrq1zwIoRGWeEmLimQWTPdv0cxMzV+X4wwZ1AH39dUZF1XLibUlHDhrrF/7Q==
X-Received: by 2002:a17:90b:1d01:b0:34c:a35d:de1b with SMTP id 98e67ed59e1d1-34f68c48346mr5296424a91.37.1767859752118;
        Thu, 08 Jan 2026 00:09:12 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm6900582b3a.16.2026.01.08.00.09.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:09:11 -0800 (PST)
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
Subject: [PATCH v2 1/6] dt-bindings: serial: google,goldfish-tty: Convert to DT schema
Date: Thu,  8 Jan 2026 08:08:31 +0000
Message-ID: <20260108080836.3777829-2-visitorckw@gmail.com>
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

Convert the Google Goldfish TTY binding to DT schema format.
Move the file to the serial directory to match the subsystem.
Update the example node name to 'serial' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
Changes in v2:
- Add reference to serial.yaml schema.
- Change additionalProperties to unevaluatedProperties: false.

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
index 000000000000..0b702c8657c2
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
+        interrupts = <0xc>;
+    };
-- 
2.52.0.457.g6b5491de43-goog


