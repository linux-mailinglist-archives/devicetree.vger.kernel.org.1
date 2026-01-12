Return-Path: <devicetree+bounces-254186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DBBD15510
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 21:49:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 351B53008999
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79CA533C19C;
	Mon, 12 Jan 2026 20:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wdj/HH/T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090FB326D65
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768250980; cv=none; b=OhW6f2729e81g7IqzDRF+n7EPmT02gVxASGCXD6qkgcWRDzlYUjNKXYAtTLRmbDOXAOvCHXZ31uzHVXhlX++9lyCXoPT9/md4BAm2Sau5s5mgsITpXd/fPXQSmsOWucNlze+o6RoLZFfhxjwYKv3SwcT95TZWPiLezbhbgg6vgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768250980; c=relaxed/simple;
	bh=x1koErt0KZrKg7lQQJMxHMUYCfWzQV0KokubZfs0FJs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G9yjqUIaQ+nXi6PQHyVs03jLBRo2TROleXZU9p7Ze3SfaaC6Q0UAzogQWoEFe01+O1RAk9C0u/pjKiIhzBUn1kTY4FDup3A5KQ1wL5NhWVQ+dKli28THdDhrDd1Y8AGkkJYO9jGNOgcVkSbMEFE/FEGFtZrFacaWg3maEI5621E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wdj/HH/T; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-4ffbc2b861eso60105671cf.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:49:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768250978; x=1768855778; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MnJl4mjA928H7c6+CxPcUynMWnjGzO8z//ft5AvFLSQ=;
        b=Wdj/HH/T4BQCSIgOs7VCWt+Nq+34mYZRq+GhirpznUa5Rj6gtzHUs5uM0aHOPSaC4p
         ehhJ5pMdfOl9r4Or5KLr6YiKvwyik6syL9fAVKGMJoCirx82INrj2bhf1/ZtbAbHmw8J
         uQAi15eFUCwg7/7/9dcehgzABgIrv/G/HTy5hKxoncYAZIdT4KWkqd5t9Uo523DQdkK8
         l/tqLuUY91tfCAD4Gl91wfrV3JhDGSx/YT1gfX7x+JjyXSupBub0yq3V4dyGGRPrDtV0
         ldPLnD8Jzy2Xfk4JzbDbRx+GRgi/YTYlFGGdq2pH6WDEvQZqNdfWMPa6Cjz4kaLhHm07
         1e5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768250978; x=1768855778;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MnJl4mjA928H7c6+CxPcUynMWnjGzO8z//ft5AvFLSQ=;
        b=Ps+rRZrK+J4OyChyKt7UC40DPbOd/xo6ba1N4Qw90dVCUR3zkY3tGkgRQJuzMucD3F
         7mfa0g2JH7ReTzq0dc2jXeAxOutWqZ+koQsK6pi6B7fyjYNfOzkL0zb5O9UKkFSGFG8X
         mSpVV0QY+4cKo920d5Tihowz24ODPEE8P2ON3qUfY5QuGZroc3OxjpFJ4mDJzA6BH0uM
         hsLzqJxJHzpKn19t570lE4CCn9LX5lfWmMm6/6ujMHlyJEXvI2MLfp37RyBYmTCaPcuQ
         ngMQZzLOAGIiz1M0DMEHK7SWyS4tRfYjKFk8msaecpJkRsyeBiA3Wnoj1PoOaoZ+q01E
         TlgA==
X-Forwarded-Encrypted: i=1; AJvYcCWe7d+wzZVwCKm8IgldmWbp3SVEZC3Wa2wAixndF4qYEcfShPwhWMcshO/th10uLTy6F6MAVQ38fCmz@vger.kernel.org
X-Gm-Message-State: AOJu0YzfIDNmOpNfdbpYjVyWccqw7tTE4Ha2fcNUw8CYTaqbI5zddjrO
	Wwv5m3kJeAz/XrIQjtt3lGYH8GWXkkz38hN64WrT/6fIay6+kNzF+cBC
X-Gm-Gg: AY/fxX73YxTlILI+5felPl3paJ8BlFnigSBiGBhfEBVTw1vitMuphHq2qkmJji35aD5
	3s3zPLUXchPjmjEnZEuCXgCqGiaUj2Ubm/lbIa9XSJsnbPCILprUihghVs7prveqkXUVDqL5nL+
	py/xQHmKKVrI3hZIyyOpyEC3X1YG2k0/+Xhz68SMn5jZDKilbvmoPmc3EZR6JlMjanqvn/KOPv3
	d75kw6lZVMCxXg1ujG/oMvp863oiwFOonV6KSzc3ymEm64zfwAHUcsrFFNb0Jg6m3W7LkVelnO3
	s9JBcusa/gv7nnq3xVg29+iExodSnF6tLGg2kc/0x3rkZ+PsCsm35E9QUTKJ+IENFhYkiwUhwHz
	oX2LQwum/nN4Oto6AhzMEmcl5aHuzq1Lt3307mVgIWmpPpWdDLP2PpSz2hQHJjE74kSJyppRgkm
	ExK+FgrCb8Ag3fVR3gnE8CF2QV/EOr0o0m/eAh43glItIiMmOlQrCe1JjnxbjQ982+IwkMZjOYd
	vCdn+IUK78nAjUWljsVtw==
X-Google-Smtp-Source: AGHT+IFEOJtKiZOekw3QKky7cg+SUdsdDlCfIy6gQ1Y92OIF6fv5PXYBPdHBg9wlGXMZd4H/lsyNmg==
X-Received: by 2002:a05:6a20:3952:b0:366:584c:62fa with SMTP id adf61e73a8af0-3898f9053f9mr18835078637.21.1768243935601;
        Mon, 12 Jan 2026 10:52:15 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cca06b16fsm18874197a12.31.2026.01.12.10.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 10:52:15 -0800 (PST)
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
Subject: [PATCH v3 6/6] dt-bindings: display: google,goldfish-fb: Convert to DT schema
Date: Mon, 12 Jan 2026 18:50:44 +0000
Message-ID: <20260112185044.1865605-7-visitorckw@gmail.com>
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

Convert the Android Goldfish Framebuffer binding to DT schema format.
Update the example node name to 'display' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
Changes in v3:
- Use decimal format for interrupts in the example.

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
index 000000000000..36ed77cbbcd7
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
+        interrupts = <16>;
+    };
-- 
2.52.0.457.g6b5491de43-goog


