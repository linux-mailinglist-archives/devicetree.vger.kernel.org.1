Return-Path: <devicetree+bounces-221511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9A9BA05A4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:33:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11261179C6A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:32:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D84D72FB0B5;
	Thu, 25 Sep 2025 15:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="TQZhRP5E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD982E54D1
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758814313; cv=none; b=cxMlBLVJ9VfLj2e/twNlYahkS4G93FgDYy6deSOYo82fvPlEySNvFX7mGaeSUOf8DFpx4UAsua2G/ZtawGoS5AqIwHWTj6O4ORhUai+1ZcVtXN1K+Ivz6Albq7K0Qv0nK7oPlGM1OfwM/7O0XyTI+p+dzLbFA5PL2x0mWro/9Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758814313; c=relaxed/simple;
	bh=644PMervGuZhLRtTxo42BpqSF+8nWdIjBlmVIsZS8Ds=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EhZb2BzbraGRWOu6/6coyzJ1mDanXHRRLg5+3KR/k5sO0mD2883rN3pgJ3xBJaMMgPlf2veA4vSZD/45TLuXyslKQNAgrDLIdXdU3Bbp9JRJA35prZj9riIDR2jM0sU+qL1f23Y7XNf1/blY8cam81t7Fo1tWluL9dajrXVHkMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=TQZhRP5E; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b33d785de7cso181455966b.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758814310; x=1759419110; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5s1NkUGStweVlYWGlUVqWZR3tOWBeOpZjnhIgCBEaNw=;
        b=TQZhRP5EAAP5ZRKR32Y9MrAcdhDcN9e4bD5GROQnZ9vVs6W8Wrz34ZjHNDcqnMrLJB
         GKoiDxHp/VVWKoqeoYMsBJl8e5k3JJudZlsD/nYVeYGrCtl1gi1DE1BWb4CdNErzHpdJ
         pJiM2yATNA7A87AntD101W05bhWzfPOpjQpHA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758814310; x=1759419110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5s1NkUGStweVlYWGlUVqWZR3tOWBeOpZjnhIgCBEaNw=;
        b=o8KLU/68BQqdjhYasAvg6xO1RNylGQ0Zu2HumH80OUpwGJIwfCTkZaYyVXAAwfqPwE
         7GMB35HLEVirM4qOJFE8U1UxasMUsGjGX9TBeQZdSlhMQVQBT0Tbg5Lqq43k9XTFoPvO
         jMrnc8ugDpro+66emWR7S7AeEm3yY/kBZjCIGNJ4E/qneKcLq4pxuXcmdDjRE/J+dqq4
         QAtjo9d+xUf4XHGH8eoMZDbvWxEzg923qfc3zor9V2GfI3LM9K8joUDaweAeucBhRtzh
         d+ljEYFc7fVzlSRIn4oOUYgX4z5DV83UpcDSPzoTJmOTIvvgvRn8sCLUjHKjohh3SL2V
         wszw==
X-Forwarded-Encrypted: i=1; AJvYcCXv0plbwj4HKOWK+wDxDNtECjRJhfTyCHBawr6CRqDRRk3Jzxj+BZhm4VzWEf323Awx8UO04MLNnlR7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1QBlG4awc6IDMF/BqFp56PvA1m5vozPQdrjtpM2arKNfUgVzc
	BLAs5/N4H9uVQ2ybfJlssZt+tDh2q00pE62vURjgGItufkhjLdSthV65BZQnfrqBxes=
X-Gm-Gg: ASbGncvQF3mNu6szZPLfrefRxbsy/zvSyDlBr2I2+xmRxkUlRH5Bieo+QGGJJ+8kGQM
	gVlkKxWVy1Y03xv6rihvzvchLS8t0F84ewURZ73Pc7WJI0z/Pxr+J07y8KF3fX+t4ZWuBlTfM14
	rBHEGGZ1Q41rFpZapUrmdUiq37kgfVvryXB2TFJ4Ye2qA6sY54RLU0PU2m8OPXIZaqMc4RFN5oj
	BgWV+vuyEq5Xvq8fbbFjw8xBLT0IcCyKcP+ABAadG/kgugH/wzP1GD2JeHje2uWOhPSiVRwGBju
	jhraSZPMnDV5HR56eKYfCg9ToABMdeQPrtBw5P4mPYdZSVAv4FNG9oou+82Kcv+7bju0gTXPM5c
	pH4EW96QdHuNyc2V6vGI0XIog6K1qtsWQ7Kw4yjZDSIVr3bGRvvOt3YAfTOc+jjB9yrCFmp+bXV
	KRGUteC9eC6ZXkFvWap8Gyy9UoOwVeLW0W5lB/TGkONDxR3TEnhlZ0YpYueq/DTmKuhZWzwuB65
	qqJCtyeFVI=
X-Google-Smtp-Source: AGHT+IF7BuPuSGwyBCz2UCqO+HRTTylRFxaIlwU3C5Efe36PDl6FBJSX2Hnycv4Zf1+SFTY6NIs+yw==
X-Received: by 2002:a17:907:d94:b0:b04:2d6c:551 with SMTP id a640c23a62f3a-b34bb9e9ffemr417345866b.42.1758814310288;
        Thu, 25 Sep 2025 08:31:50 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b36f410e129sm43924766b.89.2025.09.25.08.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 08:31:49 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: sebastian.reichel@collabora.com,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Rob Herring <robh@kernel.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Eric Anholt <eric@anholt.net>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-input@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org
Subject: [linux-next PATCH v8 2/3] dt-bindings: arm: bcm: raspberrypi,bcm2835-firmware: Add touchscreen child node
Date: Thu, 25 Sep 2025 17:31:34 +0200
Message-ID: <20250925153144.4082786-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250925153144.4082786-1-dario.binacchi@amarulasolutions.com>
References: <20250925153144.4082786-1-dario.binacchi@amarulasolutions.com>
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
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

---

Changes in v8:
- Add Reviewed-by tag of Rob Herring

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

base-commit: b5a4da2c459f79a2c87c867398f1c0c315779781
branch: drop-touchscreen

