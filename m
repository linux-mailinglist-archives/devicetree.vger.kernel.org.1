Return-Path: <devicetree+bounces-220423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD13B95E7A
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 14:57:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A52B618A3E46
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 12:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D064A323F7D;
	Tue, 23 Sep 2025 12:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Lthjn3bL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8AE7322DCC
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 12:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758632270; cv=none; b=K6i/0Yh6IPa7OU1FB7o/4WM2UAYeg2h7kBcI5lWpVcPRdBiDt8hJhqL/ZN3CWCjDDkx8vzXCHpMJ7ecaPXf0HjRwZsN0UlQHGQy8nKonDPy1Pwl7hFw5SpIZF3wkR92Y8ECfB2VghqaE0IgmcjD4fwjB4nGo1VhU3BWBTh78VyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758632270; c=relaxed/simple;
	bh=bnh8GbGCyR8IvnNWt9bRFqHNgzI3hQZhpUpv3weFsXQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qGgKBGqtledakol0Q4f3yefesTBrpxF1e+iInNQSIFOd2HJch3BPLLT9EQa77WXx/zQP3VlcEVY82F4fB0QM1Nzfn9k6iuhjxV/w+63ZcLZl0jACUk7U9jqJhWKuj0G0UrTqIYE1mjbh4h2eAdy0ha/dzo5nFokw/DuuBpoJp8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Lthjn3bL; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-62fbfeb097eso6560505a12.2
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 05:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758632267; x=1759237067; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eq3dfyrFYclljj1qT31cA5X22L5O+KUSooUYqpQO2X0=;
        b=Lthjn3bLUELh6JPqeZwD1fMV0AH8WmEs+hij2lZpj5sjo3uZmjwOJgmWi35nO307nL
         k5RGJpVOj8B1E9jevIwWTIf1Y9nmVQdCUTH8vONRUTYEYh+YhrNn1YfRtgTFM/MVSp93
         apr7wmwgCIFGZJa83Tyza+ycIHo71Jp9W+ulo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758632267; x=1759237067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eq3dfyrFYclljj1qT31cA5X22L5O+KUSooUYqpQO2X0=;
        b=XR0WNHry3xKfJi2e8FykB9cOpffx3vp32PGgIoNUpOJyKkVGa/1wdZPt9nmCPeSDrS
         YTicYhhr3a/SxsU6uR3Lf82r9DxXBd5IRwu5ojMiamRg9El/gZJca2NYqMDniC+3NHrJ
         JWEh7PggUI2duWt4IboSndZ5XGuVWZWRQRuce3cunyoYbHQfNkg79G7N65wNfzeGlprA
         DXGlCUiZo8+zyBFELQNZTjswcPkNlgbsrqLik9IpgDyVMYnD5LEQOk/7KH57zEYFPuZ2
         SB6CacHts7nh3CyDTsdPYT4Aw5a9YAR1wYI8tsZmp0zWgZqjAF/OyHLyDawSkbtkykhX
         eoeA==
X-Forwarded-Encrypted: i=1; AJvYcCWJxCbIG0swphF5VyA5ChXS+e/qRWg2sgNVszt+51RFu8nC0QjbjcvlRLF3edVJFP7MFrj1Ws8LmTcU@vger.kernel.org
X-Gm-Message-State: AOJu0YygDoKM0x0Su++zLY99jTJwvbyZ+onh160HYFnnhjn2weIKGxXn
	X5UwWMSH23Wg0jIcgdMR6gSAW/MAYD+n6fvR4RW1VN+tBq94f4TYLNlrPkSyoSHeBKc=
X-Gm-Gg: ASbGncsaubEp5D4Ookx4YGSD+mnxBZX1D3hHFf8U1Jk+fRcO6HhKGuQ97UkRIVWs2le
	jHEQkppeClxtFR3/gdTJgA2DbT4b4agYX2E1SlKDadJAFWku0WiyOyZIxwsSm0NsEz4nOwsOg2L
	bJXcZm1hMt426axsmMUt+4I0EGuWjZ8nTtlSpE3XNdNUi0HqsbonDds0Uy90GQmzdartyejZcv8
	UScD+AVTNGvZ2mP2jP+w9gK1ETBb9hAQc6+SiiKoBgcB+0ZMG02SYeQLOxOuiN3Hav2jDZlijQv
	5cWuK6ZqSRnGWzVfj/0/8nrIY6hU/6NEAE5zdAeE3cxPKVhzjrjm44Df8EpfUcaLt+zQoUs/12j
	Jly2iamZetH+P/eRpevlhavE8dxpO3q9yvxBaEO7yBNINpR5qYG82TZbgh8iQuP5vfwt42Y6hup
	2JK6gxE3Mi/PqSx+Rlj17TpjHgWIW2C6y0BIjaEQPS+5nv2lN/96l+X0tCUl2M5S8S
X-Google-Smtp-Source: AGHT+IFGakYPF5iPMB1/+894VRlbLwCXmeQPzZ6Q8KuBpQCg4xITr20xSCf3DfifCufaTwJ53CPxGg==
X-Received: by 2002:a17:906:f58a:b0:b2a:dc08:5914 with SMTP id a640c23a62f3a-b302ad3922bmr241240166b.45.1758632267240;
        Tue, 23 Sep 2025 05:57:47 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2761cb532esm872331166b.67.2025.09.23.05.57.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 05:57:46 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	sebastian.reichel@collabora.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Eric Anholt <eric@anholt.net>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Scott Branden <sbranden@broadcom.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-input@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org
Subject: [PATCH v7 2/3] dt-bindings: arm: bcm: raspberrypi,bcm2835-firmware: Add touchscreen child node
Date: Tue, 23 Sep 2025 14:57:11 +0200
Message-ID: <20250923125741.2705551-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250923125741.2705551-1-dario.binacchi@amarulasolutions.com>
References: <20250923125741.2705551-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert Raspberry Pi firmware 7" touchscreen controller device tree
binding to json-schema.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v7:
- Add $ref: /schemas/input/touchscreen/touchscreen.yaml#

Changes in v5:
- Move bindings into raspberrypi,bcm2835-firmware.yaml
- Remove raspberrypi,firmware-ts.yaml
- Update the commit message

Changes in v3:
- Drop firmware-rpi node and use only touchscreen node to fix warnings
  you can see in
  https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250913092707.1005616-3-dario.binacchi@amarulasolutions.com/

Changes in v2:
- Added in v2

 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 28 +++++++++++++++++++
 .../touchscreen/raspberrypi,firmware-ts.txt   | 26 -----------------
 2 files changed, 28 insertions(+), 26 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/raspberrypi,firmware-ts.txt

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
index 1f84407a73e4..8349c0a854d9 100644
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -103,6 +103,28 @@ properties:
       - compatible
       - "#pwm-cells"
 
+  touchscreen:
+    type: object
+    $ref: /schemas/input/touchscreen/touchscreen.yaml#
+    additionalProperties: false
+
+    properties:
+      compatible:
+        const: raspberrypi,firmware-ts
+
+      firmware:
+        deprecated: true
+        description: Phandle to RPi's firmware device node.
+
+      touchscreen-size-x: true
+      touchscreen-size-y: true
+      touchscreen-inverted-x: true
+      touchscreen-inverted-y: true
+      touchscreen-swapped-x-y: true
+
+    required:
+      - compatible
+
 required:
   - compatible
   - mboxes
@@ -135,5 +157,11 @@ examples:
             compatible = "raspberrypi,firmware-poe-pwm";
             #pwm-cells = <2>;
         };
+
+        ts: touchscreen {
+            compatible = "raspberrypi,firmware-ts";
+            touchscreen-size-x = <800>;
+            touchscreen-size-y = <480>;
+        };
     };
 ...
diff --git a/Documentation/devicetree/bindings/input/touchscreen/raspberrypi,firmware-ts.txt b/Documentation/devicetree/bindings/input/touchscreen/raspberrypi,firmware-ts.txt
deleted file mode 100644
index 2a1af240ccc3..000000000000
--- a/Documentation/devicetree/bindings/input/touchscreen/raspberrypi,firmware-ts.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-Raspberry Pi firmware based 7" touchscreen
-=====================================
-
-Required properties:
- - compatible: "raspberrypi,firmware-ts"
-
-Optional properties:
- - firmware: Reference to RPi's firmware device node
- - touchscreen-size-x: See touchscreen.txt
- - touchscreen-size-y: See touchscreen.txt
- - touchscreen-inverted-x: See touchscreen.txt
- - touchscreen-inverted-y: See touchscreen.txt
- - touchscreen-swapped-x-y: See touchscreen.txt
-
-Example:
-
-firmware: firmware-rpi {
-	compatible = "raspberrypi,bcm2835-firmware";
-	mboxes = <&mailbox>;
-
-	ts: touchscreen {
-		compatible = "raspberrypi,firmware-ts";
-		touchscreen-size-x = <800>;
-		touchscreen-size-y = <480>;
-	};
-};
-- 
2.43.0

base-commit: cec1e6e5d1ab33403b809f79cd20d6aff124ccfe
branch: drop-touchscreen.txt

