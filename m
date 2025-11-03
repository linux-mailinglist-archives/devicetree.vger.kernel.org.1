Return-Path: <devicetree+bounces-234316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DE4C2B3FB
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 12:08:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40474188D3F0
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 11:07:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5435730171B;
	Mon,  3 Nov 2025 11:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PSaL5qiU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5A4301701
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 11:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762168024; cv=none; b=Q6pzOEruLwtd+x0dK5RjUtI03O1lmz8IFx6NG7WxIBAjSwc1qqh7g/BOehsmzdHmyG/+YFRpaD6CJoVkLBfwMKTzmJ4F7RVLMiY/ydFBflelCkD+2di+FmQntaZROR4/hXpeRTF9y3pdQpyxX0cwBT8uNexmBSn4YjtrtcCkxkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762168024; c=relaxed/simple;
	bh=U2S1xSihT43zwJfSjpJYIZmqbEiWaSbNbBj+0gTTbSw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DVkPGpAnRjs2+EDA6ywW3689LuL5Ecn1shYNAFYquMHJtep3KCG0hXPxlZRugj8loRG/3CIUmfI9aLYyP+dZpcRCmSz93qWYwt4Zeo2X85wC6q0+QcJv+Ds4y8JMUM1s/mPmvfye9dEldijdnNgocOwXlUWRYpoOcUzWif80Xh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PSaL5qiU; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-29558061c68so16691345ad.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 03:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762168022; x=1762772822; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vwqxs3pFPgUNdzREwICsv/UCTbRI0baMAHgNVcVWKho=;
        b=PSaL5qiUcpMiwwN6Z+iZaZe5A3Ze+E9ajOL6GFzvw1com9pJfxR6HTTLSftCHpFMY4
         hlf12EjNXCbBxGYGEYRy1I/qImxGXYIF6tSqYais1oO5gBcSPth9o0ej8utTHGWk6Kco
         jk+V6cg5GBOAAfHWdARx+iiJOB+bFrqmNUEA1qiE0LTGN3NWOO60BMTwsmTK4LBulSdP
         DTPtLh4pmBkx+Emd3TaMw7QjNY0WMepAJwDhyoT4N+HGb7cXVKfdesYsQ1JuO1Ac5+hj
         uCLvX3wOdB/7dMEN1yyA+yS4G9Lx/CVSDJWMETEGSLw3/PSZI7WekJyJuZ1bOU/fOjjW
         E2wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762168022; x=1762772822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vwqxs3pFPgUNdzREwICsv/UCTbRI0baMAHgNVcVWKho=;
        b=Dt+PCRk9821CPFupl8Gy90efYzlu2nm4AIY56yoS7wL+LHVAT5YIP4PBKF7NpnR+Yc
         HRiLa83VkiQYAdXbZxm/mn/gz3osJ35B/Uu6HpaHTqI7PfjN9KDQmCk+8f9FEDdHLlLs
         8clyUj60cSx11LSucbxGRiV1xCQF3FqyeONkj2VuGFd8JBRaGUoUK2XzlT70MRQYmCqN
         jYGRZQLLp9jUX8K9PfOwh64Qliz5D9WCUPUzCDe1cBE7pTgvIYa3cKVxeG3B9EcuKIaL
         cHWVLBHy0H/K1DVRRTz0Yug8TUj187juoseXfZBvQg6yUl8clbZJv+cGQi7/mJDWg+SX
         M0Vw==
X-Forwarded-Encrypted: i=1; AJvYcCUENa+IZhtWe/AiJp2uxlShXxHoYVJmjOKZxt05EO94tKI2sK/NO48d443w1T+pUWJXuCOQbViZz88d@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/Y/kLU4OZYtH4XGDA44IRleyTsh1IGSYIcHI7cEIfHDv/efHH
	iFfC74/ZXiBdUOyXX839NYaz/SE/MZgyPZxetQKpSFEDfH57lUGl5I4l
X-Gm-Gg: ASbGncvIoU1+K87URBeXxR/J7sNF4X9WZAnJaI/JsqqKKGUtTJ7/YBd9WvW2behWMTu
	Q/tTwuERdDOxdUWVRDnyz12ZC/kI97BiZ4ETyct2pyHk1oHUZwFIqoWusk/F4kFdbQmm/6Xf5tH
	NksYvAA2J3XecNmbz4MsBhkd1IrqenOeCBgIA5gyYc5WnemL16vt5BztabLKtAG3mltsDVItNhH
	jVshSFixfUyh/I/Afaj0Z3WiqvqveURVO2728TQwbcfp94DTZ20pHHKrHvuKs5/4No82olD3ceb
	vs+AMZ4PF5Uf1+bCgkvyM3ZdBrbufO0Y/3fChPgyTgJ+ejpVwIl//E0iGqnxKV5BP5GBL8JYMdR
	1cWLYt1G/pkPUvVfblA3bHzOZuY7C25mKaSER416o9IWDQrO2hfphQ+IubVSHtace4UO2olsYyg
	/EPNQt+uEGJDMUDA09vg==
X-Google-Smtp-Source: AGHT+IED1NK8Nun74yVDxcwX2L2vPElvPQSyImAaJGU2myF3ZiOioVg5mqtofEuE0gFzFHfeDCXjwQ==
X-Received: by 2002:a17:902:f682:b0:295:8db9:305f with SMTP id d9443c01a7336-2958db93392mr64853685ad.34.1762168021882;
        Mon, 03 Nov 2025 03:07:01 -0800 (PST)
Received: from VM-0-14-ubuntu.. ([43.134.26.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2955615d720sm84025575ad.65.2025.11.03.03.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 03:07:01 -0800 (PST)
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
	Pengyu Luo <mitltlatltl@gmail.com>,
	Junjie Cao <caojunjie650@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: leds: backlight: Add Awinic AW99706 backlight
Date: Mon,  3 Nov 2025 19:06:47 +0800
Message-ID: <20251103110648.878325-2-caojunjie650@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251103110648.878325-1-caojunjie650@gmail.com>
References: <20251103110648.878325-1-caojunjie650@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Pengyu Luo <mitltlatltl@gmail.com>

Add Awinic AW99706 backlight binding documentation.

Signed-off-by: Junjie Cao <caojunjie650@gmail.com>
---
Changes in v2:
- use proper units for properties (Krzysztof)
- drop non-fixed properties (Krzysztof)
- add properties(max-brightness, default-brightness) (Krzysztof)
- Link to v1: https://lore.kernel.org/linux-leds/20251026123923.1531727-2-caojunjie650@gmail.com

 .../leds/backlight/awinic,aw99706.yaml        | 100 ++++++++++++++++++
 1 file changed, 100 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/backlight/awinic,aw99706.yaml

diff --git a/Documentation/devicetree/bindings/leds/backlight/awinic,aw99706.yaml b/Documentation/devicetree/bindings/leds/backlight/awinic,aw99706.yaml
new file mode 100644
index 000000000..9b7266e61
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/backlight/awinic,aw99706.yaml
@@ -0,0 +1,100 @@
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
+        2 = MIX mode(PWM at low brightness and DC at high brightness).
+        3 = MIX-26k mode(MIX mode with different PWM frequency).
+    enum: [ 0, 1, 2, 3 ]
+    default: 1
+
+  awinic,sw-freq-hz:
+    description: Boost switching frequency in Hz.
+    enum: [ 300000, 400000, 500000, 600000, 660000, 750000, 850000, 1000000, 1200000, 1330000, 1500000, 1700000 ]
+    default: 750000
+
+  awinic,sw-ilmt-microamp:
+    description: Switching current limitation in uA.
+    enum: [ 1500000, 2000000, 2500000, 3000000 ]
+    default: 3000000
+
+  awinic,iled-max-microamp:
+    description: Maximum LED current setting in uA.
+    minimum: 5000
+    maximum: 50000
+    multipleOf: 500
+    default: 20000
+
+  awinic,uvlo-thres-microvolt:
+    description: UVLO(Under Voltage Lock Out) in uV.
+    enum: [ 2200000, 5000000 ]
+    default: 2200000
+
+  awinic,ramp-ctl:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: >
+      Select ramp control and filter of the device.
+        0 = Fade in/fade out.
+        1 = Light filter.
+        2 = Medium filter.
+        3 = Heavy filter.
+    enum: [ 0, 1, 2, 3 ]
+    default: 2
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
+            default-brightness = <2047>;
+            max-brightness = <4095>;
+            awinic,dim-mode = <1>;
+            awinic,sw-freq-hz = <750000>;
+            awinic,sw-ilmt-microamp = <3000000>;
+            awinic,uvlo-thres-microvolt = <2200000>;
+            awinic,iled-max-microamp = <20000>;
+            awinic,ramp-ctl = <2>;
+        };
+    };
+
+...
-- 
2.51.1.dirty


