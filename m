Return-Path: <devicetree+bounces-254184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99262D15492
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 21:40:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3FE530084FC
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 231F33491F9;
	Mon, 12 Jan 2026 20:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Picjeq4z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5610733C511
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768250302; cv=none; b=cLnPgTQ+jdqEjrpgRtcbz1enznmf8zVL2Ou8I1bp3zKne3wEKQMOnoJjazpLQg8y8sXQ5uORz7Ck1+dlEAbnwGVusPrt2+PPEM2X97bu92A3DMJ2LNp2EKwwGORot/bKJtAglkKeD+DyWYqhVjV+t/U0GXVSCD2Dfd08igpuwKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768250302; c=relaxed/simple;
	bh=1cgc9CyPLdaamTqWSH/prcaGYr4QsO4nAqSVaUroafU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ELy6Jzrs263yF70+gcO2d4I2ZjlissATPvlZMLaI1H44bpFg4paxWoUGrNDxlBFOrrHCO7O8uGNn97Gnh8cTYuLq4sHMCjxNEUpzOoyKq4QzYl7Eny31K0OrAdhpknGggUUBJRAmvTtLhk85N0U+zy60ZmlHaf7ft6o6aZYyxnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Picjeq4z; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-45a7db48c57so2595739b6e.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768250300; x=1768855100; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A0PErH3A+TCXfgL5PR8asxXBIGBytLNSMzZeGmnD/jY=;
        b=Picjeq4zR/B/2CYlfKuEjogTOUfLaczV64lJJMnXg5OYaUzoig/1yL+2h7eBsR9zcY
         dpZkIBliS6GyVwqnngNJkO5EbA5Zw/dKPwfO7D+juONVnYk5fzl+meSnzyzPE8vDi9cQ
         oGmUSFJswFcL+X4wTrKbYraZkUkgMkX8RxbMlyySxrOd9f6kaRXH8jgOoD/kc191uFdm
         6hBgxw95SzslqM5MotWbwAsgZLZk1fWvvf8F1fXRSGVj/xYABubCOaLJftZalW3OQM7w
         vusjzWK027qB4PPO4Km8CbEVZfL7NNe4hidjgQZBiwyPXeYm1NSwU4r+RWdhBSe1LK6h
         M2Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768250300; x=1768855100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=A0PErH3A+TCXfgL5PR8asxXBIGBytLNSMzZeGmnD/jY=;
        b=jj4qS2AmYqAW5YMFCsBdo3ox4KaoekN1nqs8NQuGlzDtRzx0RheBfrV3MTfM0asoPE
         n+v7jTU5feRVjD55AdgYxjgvy3WOWISsl+YP47Vqk3SBSMNmfz1jFX0FFWG5tXcg8Juh
         OT2xNn6QQGpQsFDZuA78/D9YU/mXXtjY7Sbp7lkazio4ftmhIBxQC/Odx29BBlXDZ2Pt
         M0klh3H4VGdPHyzEHaP68oC0PxQZaDIuy8QqszGb+/lE2hD/7TSNfn6TRO5oCa59blxO
         5RlQD/vcmWIF6qbylUYgguNad6uO+ZCcxHZ0KCQnNC+FgE/R4vWzsPX36F+pVE1DUw5X
         Ab6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUwlpufWCRSaBeiCUnurrXHAXVZ6dwTmzjlvQrtxLJeunj1R2/23zjzWKIClsRqgFhXzYU1eIR51sjR@vger.kernel.org
X-Gm-Message-State: AOJu0YyA/OlAjnzWGy0SwuIM/yeuMWsfbeyF28LCpCBQCJCW/m3a7Zj6
	mQfhuEMAlou6+iijKPFEnNUQmCoU4lBH1eE0bAFR098DkQ+2V1h1DYOpIvX9CQ==
X-Gm-Gg: AY/fxX66FoRCeMi1Xjc2bI81L8wRXql4yOOvQNt7erg3oDrCksByRO3hssapNZArTMK
	mXjG8xKEDRHpyrmt3fImA+5L8ZmlTv/dpLCGH11d1A+gQn8PRdD4wZh6TZLyEsXdUM+Uu4MnH2I
	YZIakN4mf/Gr5+yH5ibL0GSGPEWWUMYmMnmuGPhS6G5MdNdfNLk8ks4ZldgaCU92XVEqaue7Yv9
	2NG85TpYW12V24QfjR85Dncdtp5mnVP9lpdhmFQY/BdcfV2puCSwxt+HPHbLyDe6b1CMsE58Qet
	oEWFZ8wh6z1l5aXzcD3SERUjrhKKSSpOCOs6E4xqJE4FLgLjHx32+212J7Ct0lWi+yBX/oT8OQZ
	W2OuFZSe2oMqwSr/fAlLIlU3yBzzIQaEIOyFKoosh3rTu9VX6PVY8ucfc1kY2ewyd4aKY3JiJXi
	Fojgoc2tSHgx8zZij5GRQSjKX3PXmaAUgijbT4pgDjmaP2YeeiKK35LrEqNKwxn30DOdxfoFhf/
	WqgT0JYJmgBmiIpO9bggw==
X-Google-Smtp-Source: AGHT+IGZVQoYbx2iilZrdLG2Ztf307Z50A6C9NTY1Qg4UTlyKWI05nICHsHwet4uo+a7zycAJ/JW+Q==
X-Received: by 2002:a05:6a21:3291:b0:35f:5fc4:d896 with SMTP id adf61e73a8af0-3898f906a35mr17214236637.20.1768243921460;
        Mon, 12 Jan 2026 10:52:01 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cca06b16fsm18874197a12.31.2026.01.12.10.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 10:52:01 -0800 (PST)
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
Subject: [PATCH v3 3/6] dt-bindings: input: google,goldfish-events-keypad: Convert to DT schema
Date: Mon, 12 Jan 2026 18:50:41 +0000
Message-ID: <20260112185044.1865605-4-visitorckw@gmail.com>
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

Convert the Android Goldfish Events Keypad binding to DT schema format.
Move the file to the input directory to match the subsystem.
Update the example node name to 'keypad' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
Changes in v3:
- Use decimal format for interrupts in the example.

 .../devicetree/bindings/goldfish/events.txt   | 17 --------
 .../input/google,goldfish-events-keypad.yaml  | 41 +++++++++++++++++++
 2 files changed, 41 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/goldfish/events.txt
 create mode 100644 Documentation/devicetree/bindings/input/google,goldfish-events-keypad.yaml

diff --git a/Documentation/devicetree/bindings/goldfish/events.txt b/Documentation/devicetree/bindings/goldfish/events.txt
deleted file mode 100644
index 5babf46317a4..000000000000
--- a/Documentation/devicetree/bindings/goldfish/events.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Android Goldfish Events Keypad
-
-Android goldfish events keypad device generated by android emulator.
-
-Required properties:
-
-- compatible : should contain "google,goldfish-events-keypad" to match emulator
-- reg        : <registers mapping>
-- interrupts : <interrupt mapping>
-
-Example:
-
-	goldfish-events@9040000 {
-		compatible = "google,goldfish-events-keypad";
-		reg = <0x9040000 0x1000>;
-		interrupts = <0x5>;
-	};
diff --git a/Documentation/devicetree/bindings/input/google,goldfish-events-keypad.yaml b/Documentation/devicetree/bindings/input/google,goldfish-events-keypad.yaml
new file mode 100644
index 000000000000..4e3a010a70c5
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/google,goldfish-events-keypad.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/google,goldfish-events-keypad.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Android Goldfish Events Keypad
+
+maintainers:
+  - Kuan-Wei Chiu <visitorckw@gmail.com>
+
+allOf:
+  - $ref: input.yaml#
+
+description:
+  Android goldfish events keypad device generated by android emulator.
+
+properties:
+  compatible:
+    const: google,goldfish-events-keypad
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
+    keypad@9040000 {
+        compatible = "google,goldfish-events-keypad";
+        reg = <0x9040000 0x1000>;
+        interrupts = <5>;
+    };
-- 
2.52.0.457.g6b5491de43-goog


