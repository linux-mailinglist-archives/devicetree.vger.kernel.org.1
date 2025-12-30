Return-Path: <devicetree+bounces-250634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D18CEA90D
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 20:55:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B1773007610
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A014D3195E4;
	Tue, 30 Dec 2025 19:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P3WV4CER"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB4231814C
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 19:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767124513; cv=none; b=M5IOMgyO/k3ERne9j3OHgAgEKK+hW55afXZMpxOeuxaVKgEtujlLPsqk2o3Lka3mvKcWnyt5lGvSLZn9zonhPuOjEOVrzpp1O5Y7LjmaZdTT4x5fj6BYcSoo32e0tG7TiuFMk89qUuPjLgMPHheBsIyr4n6Y4NKoPQEpp8Iyb2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767124513; c=relaxed/simple;
	bh=a9IYvFqlG/UaJElPMyJFzg5gch1C9rdzE80DQMDwPnI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hxg2BMbq+uAx1/4OgTqRSmgW3mllUBQvvUblFHmmw4VTvAWKtd+dp66EP9WxTG8q6ZiZcTatfibz1jvi18S3tcGpqtNDKJuvD5/vT8c3Is4EalddqXaIXb3fU5iTQqPPBC2/BinRxDcslGhkyRgBYuqJqBOBxCTKStY5KMvu1ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P3WV4CER; arc=none smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5dfccb35b10so7090318137.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767124511; x=1767729311; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vqq42GMedrB/T6d7mRybr+4FEurk5kHOMzPka2Yicmo=;
        b=P3WV4CERlk/2qN265cK2gVDOU7w/yZTJlZqL8gu50GjM0fyJ8cEtRaCMq2GAqgCaoy
         uSdb/hbaPPOElQhxA54zF+uLH1xuloJFmLtWrIc9XxVivKspPOROgP5JU1fknHvPEKnb
         CAoKNrmwGEp9bk84tHdKsSW0nb7WLaGiB8Eos+0g+xABh7K0fTe0JNZgbhdcgoKcHqAa
         FgpJHwneX2Q4ZIKb0uBC62U7q7VvYP3w2A4Wn45mlulwETBpqO1mJLU63LOsN953JqBC
         JmYi7yP3D3qB3ov8Vzy7IDf94ZSLxAljnokoA9t++qwPrxOLwsyhQ7yGRz2c+9xS6PFu
         8R4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767124511; x=1767729311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vqq42GMedrB/T6d7mRybr+4FEurk5kHOMzPka2Yicmo=;
        b=thsi2IjnmcXwCOGPHrbJ/fX+miE1OQ8DxGedU1D9W7rvhteMolMosLRRSvhWo+2hgE
         +IbvnDKgnuE/FTybCKzpRiHavSybMo9gCgW6js33ewljIxoCiUtSa5yiEIZvyLhWog8/
         V0HaGx75bh6OsUTvr9gZmMbolXGv2Y/AHsA5SSjQWoWZIq37RJekqYfiyfR/sRNC3LY8
         8DsJukBwM2sBOh6I8itbsjTYbpE8uftB/aLRqtXn++moeYmBf80lW8SkqazYo5SDeSZi
         3mL95dfPFh8VBNXj9bkNShXatBDS+SbB3tgi+KpX3xw/l/C/Aicv9qC06lPz5XdbLUKE
         3xKg==
X-Forwarded-Encrypted: i=1; AJvYcCWF9bkpff+bkH7eOpsrdDkKJXYnJrCryXi+LGha5OGI7RyUyobQsD8b9CgfWt0SV+OJwNWLtZ8qkDtz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8e+4g7wVNXIM74TqWsuAM/oxxB4TdMkF6EpUnT8PRVO71VE38
	I25jli9wKfFkd0mQ8bVF8fUZlKOnM376bjEMtauE2Ed5cWi2p6xF99gZmDOqrw==
X-Gm-Gg: AY/fxX5Qmf3YhuiFEvcSfxKXLV7RgGqMVf48ybAsQUhPjYsXzZPcXTU8Fc5z9ykMTc/
	gxywMQPI9c699DSuRePYywsfzJX9Bcj72cMeZOcPOssxn1E3s+NLdRWbfYEkJEJDRd6HvN1vug0
	eT3Day3hBVYYZHTccpL/j2ZVsxKD0aBXPFmWXf++/Zse+3AzNeVD/sWOsr3WjVxofLz7m/s6uLg
	y92nXchO3kf2IjLKJiSN5Dsy/IdeTDTeoxQ9bFTNbYg9QXSupzjGX/yUJqWREUkKauyeJ7hulYc
	EPM51S6CmaaswvsKEXdIGpouGuVowI6ZHfRJ8/f5VLqscrlEfO5OltFaoZPw9PuRTB6SFxDNXjO
	iYEyIsqnx+L72cazQSQBohw5ehL+wUuXkEVgQbQ21uV8vKN2EGwBr/1+1xpl+ypXbuuUDOm3qfP
	wUPm82R5xkmEdWi/8k1jgqoKFA/t0jOSOWqY9gZZxmUnWC8Vy7uG+TUyi79mQ4Re9y29EMzoBHO
	bd5KOje1lkNHp/pxFfe3A==
X-Google-Smtp-Source: AGHT+IGG4IvGkIealWBZgvBLq7nxU8BQLyVFrfwWxsNjASkIojjiGo3aO9o10cXPbEY9owzzFvEfpg==
X-Received: by 2002:a17:902:e748:b0:295:738f:73fe with SMTP id d9443c01a7336-2a2f2732287mr344445935ad.30.1767118253801;
        Tue, 30 Dec 2025 10:10:53 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7bc69728sm29598278a12.19.2025.12.30.10.10.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 10:10:53 -0800 (PST)
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
Subject: [PATCH 1/6] dt-bindings: serial: google,goldfish-tty: Convert to DT schema
Date: Tue, 30 Dec 2025 18:10:26 +0000
Message-ID: <20251230181031.3191565-2-visitorckw@gmail.com>
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

Convert the Google Goldfish TTY binding to DT schema format.
Move the file to the serial directory to match the subsystem.
Update the example node name to 'serial' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
 .../devicetree/bindings/goldfish/tty.txt      | 17 ---------
 .../bindings/serial/google,goldfish-tty.yaml  | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 17 deletions(-)
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
index 000000000000..08fa12449a01
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/google,goldfish-tty.yaml
@@ -0,0 +1,38 @@
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
+additionalProperties: false
+
+examples:
+  - |
+    serial@1f004000 {
+        compatible = "google,goldfish-tty";
+        reg = <0x1f004000 0x1000>;
+        interrupts = <0xc>;
+    };
-- 
2.52.0.358.g0dd7633a29-goog


