Return-Path: <devicetree+bounces-254183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A95D153BA
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 21:33:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 555EE30081A4
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5E57329377;
	Mon, 12 Jan 2026 20:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LsqowuQZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F011340A62
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768249988; cv=none; b=HzPHUQBgDkX9zqZZaqlhf+N50tfPnJ3C9ln3r6FeBhfFieiicQYi1SVbfl9z1etY4KzoiJwtmD/XCLS7j7q+m4yp1D1s8cG+56Yu0d00zKjw121LSbPWYo/kzHCPGvWKrm1DWQBLoYYRGeV03m2uANJaILL9UpKR2aQeC6ZNfOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768249988; c=relaxed/simple;
	bh=GTLyrTF/q6Eyc9fZ3Fa8bSl/4UWeB/Vses9dYwQVfyQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZTORm8+mv/JhLnmBxiON3PUdcg2X9xLj2nBG9I7L3J3f58sRfZ/9bd14tuUCqV5qfIy17eYCLwoWpd4PR6CGMN6AGR2B3EzD1/outXJNzplNKQjp0EZxfgh8Rz9XFnENmXYyOrZiIeNX8wH2rfzpvDLJgnPikztcJjbdmnKrTMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LsqowuQZ; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-3f0cbfae787so5079417fac.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768249986; x=1768854786; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oL3a/4UaA+a8Zff5y8gdtJeilEUr13wkA6OARJeIofo=;
        b=LsqowuQZ53HjwdRFIPKa9aykooMsADxEpjmrJgc4PUEvWXnEAEMMsj9bXNUDKHoDDY
         x4gT4PkWe+mY6GBzeG/EGhXaAeaC/bz72Ioyv0SbRIIt6FiV7/b1HLwVznrBv4ZTwS7Z
         w3q0WlqdU4G5CN58gEPTC13yM3gpvtHc7xERBns83/CfGMP4x32vtKLiSV2mGFVjtsNN
         AQgw8NUfZaTA5Jic1rEgFC2wsMQKxyUNqdPegQXehNkEXZaEahSCt8ULSoL5fi7SLvpr
         qT8gnI0r4cGlvfWDReyaDMsfE84tAv3X3bqg2XHyfzz3MwbFvK6dmgix9p0uUtL6xfcV
         aHGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768249986; x=1768854786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oL3a/4UaA+a8Zff5y8gdtJeilEUr13wkA6OARJeIofo=;
        b=sm30npleytwpKspDm1mt5HgzbwVADDUPS8Mn6NrEuZ2xANqP8YbqeNy3NL94vAhElc
         PfPavkNqK2xUjrQfIzLtJd4SUBDirWNSAEJ1gOWnfA0RVuJh2j1KzYwiMQ7h+h7VpClK
         ZhDYiZCU5+a7sc0mCgutSQJLmVVk3vhXw0aB3DZl494WEBxrnBKMe09ciVdirkBe1Yzt
         VIVTCyul+bN0vVp5iJC9AKqv0ruuBoXwGMM8eLG+qf0dt6CsSX8Gg6EHhdkVxQYA56kT
         1vznI8RXkci9Q7TCooDIDwoUHt89mAP1BCasbBQVJnmnyiRgrXimJSOdkJY3D2NiMD39
         +1xA==
X-Forwarded-Encrypted: i=1; AJvYcCV7WHZG2qdq9AC6e1Gae5nR68//JYIiUq9RQ9iqPFKaorYqIfb0wMYnz1cjzuMGhJ0vln/LHvsbAGIY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8sIAZ/61NUvlASehpJaOdK4RwcZ3r1VwA5ovfb6uCfOPQTiNP
	UN/LtsrqwchQqpnqnz37hPsw/gc6LytLFONULX/YE+HHWCvCTzSNSPEeyD6bng==
X-Gm-Gg: AY/fxX67Lg4BgXa02XwTzWilJNgbxtyFoDA54YPF3ixofEe69mKtVbFfPBfkKhh903U
	Auo2eIHASHIyhV38J+JsoLtBWCKVnWCMGNhL/LJEYHw4su9Cr0JkLK37nG3/ANkMiYfSChWN66G
	EC71/oLmG1ftNbXkO0kfFo0z6yTFZkp3XR//PdJMmoCB6dxBVJ8FoYRyn+oQygAknPiDq4JLwoE
	4d6u8xWM+yaaZD5o+QbBcKOvTi35s/F80Uh/wlvGp445EgRFr2qNMXXgq4Jdclq55e8ZoNC6GEY
	5KivjDPYz9jKobYPeOXdtufkwPWuCALWkl4F0VhO6vANKuSAp7XguK+0ZQFb0u0ZkMuc7Q4AM/f
	APfk5HyHGa3+HRuvCmUUvFfJaknE3b2PISFe12iajhiRnQUM27Gk/Jh6vJMMqoBGfIJuQATphWH
	xNYSMXJIYCx3q/Ofjh8+iCjxwq0AwD2VrlqGltbs/5J9XOtBW0x0cOON/JWYWOk1TMj7Rg81mSi
	PSttHULFiKDVBRIDVdS+g==
X-Google-Smtp-Source: AGHT+IFAodgf1HCpii8yqntRagZFeymJlZlYuy8XB+cGQHdG7vRM/mtdZt981BYzjdhg5eNahHLaYQ==
X-Received: by 2002:a05:6a21:6d8c:b0:35f:6e12:1862 with SMTP id adf61e73a8af0-3898f94c400mr17035763637.19.1768243912001;
        Mon, 12 Jan 2026 10:51:52 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cca06b16fsm18874197a12.31.2026.01.12.10.51.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 10:51:51 -0800 (PST)
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
Subject: [PATCH v3 1/6] dt-bindings: serial: google,goldfish-tty: Convert to DT schema
Date: Mon, 12 Jan 2026 18:50:39 +0000
Message-ID: <20260112185044.1865605-2-visitorckw@gmail.com>
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

Convert the Google Goldfish TTY binding to DT schema format.
Move the file to the serial directory to match the subsystem.
Update the example node name to 'serial' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes in v3:
- None.

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


