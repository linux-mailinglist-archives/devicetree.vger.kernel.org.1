Return-Path: <devicetree+bounces-231116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D77C0A75D
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 13:39:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C38B33AF0F3
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 12:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 802B92DA74C;
	Sun, 26 Oct 2025 12:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NjVnWuQJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56592D7DF3
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 12:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761482379; cv=none; b=Xx8kTYl0BRDjCbjX/EYT4ZmdRPNfcd6BOZl2msN+FBwiF63AT6K2etg+LggouwPSzUiFjGkcERrXVtOVB+lU0k/F7qCaGb5h77quPYC8EpAmeH6Xcv008vze0hjZx1mGMTIXaSeP9QvZmXFZGhGRv4WIkJaIwFAdyOIkobuMebU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761482379; c=relaxed/simple;
	bh=FwahnmFI+RANUbP/ccocpD49/vz2nmfLhC6tjHp5sWQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jyv+wr5Q9OzmonWJ8yQL5cx2a+812ha7tgno0gkxlI8Eiv7rYSLmlcEYq07dAfj0mTJYeCWCgh+epFDPivnuiZcEcrrFzgh5Ixe5wa/sMt/mJh+yVzlVpfIPvLyvcxfsFR9MkgZERY/BgInywHpvNcmUbIyP2WYKG9aWeJmPZHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NjVnWuQJ; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-290ab379d48so34047595ad.2
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 05:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761482376; x=1762087176; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ieZihMLOOLBctZi12lxn8LR/iyKa5pG/boJ+0OiRR90=;
        b=NjVnWuQJkHnC0qeAII8x/wOD8/oIn4gEQOhkkLDRqz1f6wIIN5HtU+eGYrHUIXVCGN
         hgfyeFpJCAzoKDguTh8apmZ/RptddfLj6uKo2h0UPGLOa9NBh0gSCSzDEyiEHygflyeS
         FPb1tZq8QQKzCoNDVCnZgFnx9p3avbtRwtRe0wmHozy4rdh6vtD58/nWWZeuYwGdL7uG
         MjpESRxUdg3RPQOOktbgKXwsLQ/iR2kUR4yU64keyB6ZnU+gJwEbriLO6Jaoj2Fdrhsy
         h6aT/aRpkZ2eai+1eXQPK2A7CeuB/vhVWUXCHBLAY4vo74dkrJIZw5Jljr1/ZbeeDpGJ
         7DOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761482376; x=1762087176;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ieZihMLOOLBctZi12lxn8LR/iyKa5pG/boJ+0OiRR90=;
        b=GYfJQ6sXIwSXoMqyZcGHypZiG/amlPEBW1LObgj1krBQmygSRFs8ZgdEcXGThUE+0R
         72CTPS66exhm2dRh4JATetnPDt4sSX8p5OM1tX4f4zThY3nE42ULIAlnxyWGQwcdjVLF
         CLaMpfO7koCq97c9wJat2ZpLNTO9yvO0Z8PCeHqNSvT3J+1qHExGYv+iMQep2zyo77v8
         lUXUasx/VOgqH0NHQsBz7TFKW7x27mvfRxK7/ao81H1Yq/iOkNcuGKJ5zkOrxF7GIzVA
         lB8E+YmvrqplJkBStprd4qi8ZOZ1k7liqMv4+l1yqF0lEy6P6kY3sabjg2UZnxyP039W
         Ee4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUN9Om7aBkcvm1Ai1E9cijQu29tmkjpCVuBcLSQvt5T51/Ew3rwpzotUuve3rmtvcLsg2BxziNEhOEs@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv7Bvg1WpKjEtgWunZMRxQvhEmgg5BsOS/IvdfBR/a4eBL8kYh
	eXxD4yXGrcOyWmJIYiJK+xCpDB3v8EVzZFLBAPtGdsXbnKLRVAoXYG4T
X-Gm-Gg: ASbGncsgtTCKUFP/xCke8L9wzK5r9kxIIrBIeLAOyOtqfv1UqRM1LUlGr9iwt8BRE8n
	Seugn2QwqMUnh8hz1HfolSTVvVDsjwVXMyfy5JsllPpMq9Wwtg0QZJWhzca/oPVExxdERmd/GQP
	CfONDOMEbaqyCtpHxRfzy6j/YYWQaQKC5YesqghqiHSYzzYj6xsuIUEOPBjrxVLzSN9AXBJf+Sk
	hoa2NCP+Uv3IKQI562V8IfmYsX3snUp03Q8xs/uYRif9QC0QDYvH45+EEGm6Bcf0XUXyO129bcM
	6bjv68zsdrvd6nyW+Ib+P4prvJw9oUVx4XpCEKn8LqIEI4XnMzsc/AdXLYOteLL2krCvT3emrB4
	XAR1RRdDrZ582Ni32MEuJpcI8GtvqksClHYi9VcE8YqVfRIXmdF+20ULGyGcTIk7ZbIqjw5bNUG
	rL25SICvsYL09pELnbiw==
X-Google-Smtp-Source: AGHT+IHGs4DwXfP6nWqnbQ+7R8SWiz+qxqpgqaWLkFf+omIN7sI48ep3gWUkRscpSyoQrMau23dXqg==
X-Received: by 2002:a17:903:19cb:b0:24c:7b94:2f87 with SMTP id d9443c01a7336-290c9ca6707mr410391015ad.14.1761482376103;
        Sun, 26 Oct 2025 05:39:36 -0700 (PDT)
Received: from VM-0-14-ubuntu.. ([43.134.26.72])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed7d2869sm5119634a91.7.2025.10.26.05.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 05:39:35 -0700 (PDT)
From: Junjie Cao <caojunjie650@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Daniel Thompson <danielt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Helge Deller <deller@gmx.de>
Cc: dri-devel@lists.freedesktop.org,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org,
	Junjie Cao <caojunjie650@gmail.com>
Subject: [PATCH 1/2] dt-bindings: leds: backlight: Add Awinic AW99706 backlight
Date: Sun, 26 Oct 2025 20:39:22 +0800
Message-ID: <20251026123923.1531727-2-caojunjie650@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251026123923.1531727-1-caojunjie650@gmail.com>
References: <20251026123923.1531727-1-caojunjie650@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Awinic AW99706 backlight binding documentation.

Signed-off-by: Junjie Cao <caojunjie650@gmail.com>
---
 .../leds/backlight/awinic,aw99706.yaml        | 135 ++++++++++++++++++
 1 file changed, 135 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/backlight/awinic,aw99706.yaml

diff --git a/Documentation/devicetree/bindings/leds/backlight/awinic,aw99706.yaml b/Documentation/devicetree/bindings/leds/backlight/awinic,aw99706.yaml
new file mode 100644
index 000000000..640af3891
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/backlight/awinic,aw99706.yaml
@@ -0,0 +1,135 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/backlight/awinic,aw99706.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Awinic AW99706 6-channel WLED Backlight Driver
+
+maintainers:
+  - Junjie Cao <caojunjie650@gmail.com>
+
+allOf:
+  - $ref: common.yaml#
+
+properties:
+  compatible:
+    const: awinic,aw99706
+
+  reg:
+    maxItems: 1
+
+  enable-gpios:
+    description: GPIO to use to enable/disable the backlight (HWEN pin).
+    maxItems: 1
+
+  awinic,dim-mode:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: >
+      Select dimming mode of the device.
+        0 = Bypass mode.
+        1 = DC mode.
+        2 = MIX mode.
+        3 = MIX-26k.
+    enum: [0, 1, 2, 3]
+    default: 1
+
+  awinic,sw-freq:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Boost switching frequency in kHz.
+    enum: [300, 400, 500, 600, 660, 750, 850, 1000, 1200, 1330, 1500, 1700]
+    default: 750
+
+  awinic,sw-ilmt:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Switching current limitation in mA.
+    enum: [1500, 2000, 2500, 3000]
+    default: 3000
+
+  awinic,iled-max:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Maximum LED current setting in uA.
+    minimum: 5000
+    maximum: 50000
+    multipleOf: 500
+    default: 20000
+
+  awinic,uvlo-thres:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: UVLO(Under Voltage Lock Out) in mV.
+    enum: [2200, 5000]
+    default: 2200
+
+  awinic,fade-time:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Fade In/Out Time(per step) in us.
+    enum: [8, 16, 32, 64, 128, 256, 512, 1024]
+    default: 16
+
+  awinic,slope-time:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Slope time in ms.
+    enum: [8, 24, 48, 96, 200, 300, 400, 500]
+    default: 300
+
+  awinic,ramp-ctl:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: >
+      Select ramp control and filter of the device.
+        0 = Fade in/fade out.
+        1 = Light filter.
+        2 = Medium filter.
+        3 = Heavy filter.
+    enum: [0, 1, 2, 3]
+    default: 2
+
+  awinic,brt-mode:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: >
+      Select brightness control of the device.
+        0 = PWM.
+        1 = IIC.
+        2 = IIC x PWM.
+        3 = IIC x PWM(P-ramp).
+    enum: [0, 1, 2, 3]
+    default: 1
+
+  awinic,onoff-time:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Turn on/off time(per step) in ns.
+    enum: [250, 500, 1000, 2000, 4000, 8000, 16000]
+    default: 2000
+
+required:
+  - compatible
+  - reg
+  - enable-gpios
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        aw99706@76 {
+            compatible = "awinic,aw99706";
+            reg = <0x76>;
+            enable-gpios = <&tlmm 88 GPIO_ACTIVE_HIGH>;
+            awinic,dim-mode = <1>;
+            awinic,sw-ilmt = <3000>;
+            awinic,sw-freq = <750>;
+            awinic,uvlo-thres = <2200>;
+            awinic,iled-max = <23500>;
+            awinic,ramp-ctl = <2>;
+            awinic,slope-time = <96>;
+            awinic,fade-time = <16>;
+            awinic,brt-mode = <1>;
+            awinic,onoff-time = <2000>;
+        };
+    };
+
+...
-- 
2.51.1.dirty


