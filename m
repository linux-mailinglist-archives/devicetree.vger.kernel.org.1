Return-Path: <devicetree+bounces-236367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFFAC437FC
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 04:23:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A5133B30D0
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 03:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34BCF202C48;
	Sun,  9 Nov 2025 03:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hfddiPDC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED951FE47C
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 03:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762658579; cv=none; b=Jo3+g7qy2jV/DxFEuzcabB4H+7vRD7n2SFvy+n81pMJw+M4HjwWp16mkvJM9zJhyWGirkR0BbgniqNsxyZ9LeqR42iW+q992O57JIdjMi5KVgDVFHEtApf+b0n9ckc8zXTQ6Hndpg3iildCIk+w/pRG8+m4+SGx6ogrS5T7yry0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762658579; c=relaxed/simple;
	bh=vPxJ/by/abaOom4AmLg1ViOmOazh60+nNoiMNG82d74=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dgIcSbwErkmZ+FXShT34vq2+gP1iyawJAWlhHl1f8JlSjqV+nh+8l0Py5MPgCUDA6iMEAuT/q1Mn5xzcsSK8PgVGShLSRWl6aqaCiGkcGRM9aHCG+aBRNS8+xutnApOR5BVYI0mZuzwGSZ1GmZFS4YKmB3uVl1WfgFSvhSrcmpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hfddiPDC; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-29599f08202so24757715ad.3
        for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 19:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762658577; x=1763263377; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y6/p/VFD5rODc41UaByBAjykLqoESbzOCT7V1sUMyAw=;
        b=hfddiPDCarXNEqvx+7tfRgkgfELETkr8OyRsosTfj4Ta10Kb5r0pH5+h24qTjspwTU
         1utRdfvoqgcGfTfuBvsxs+hD/JgLxZUn3dqTHcLO0R1kReBQojGSe3+XYSG/zuo0TVrg
         qF8zEvu0tH7i/AZ8Oyb9jwsL7EItUqFUYhSsOpr7sCvy3vmGHuEI6Pb873yaZGIX5pCs
         NyXOWRFRoKhsaafSqAUYFEfF0p98y+4iCVqqepKYmwU6LkyRHdD+MWE/5FQyPTOPyi7c
         gpxJ36a3eAQqU/gNN30WPsuVvw1UWZx2Vhtod1E+lp5Uctm4MmmnGlY0wFWy1juttwVo
         dECw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762658577; x=1763263377;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Y6/p/VFD5rODc41UaByBAjykLqoESbzOCT7V1sUMyAw=;
        b=eUhimjjVqCLcYmBqSyaZuOqs+B54UY6Czyq5m3SpZ4jO3A3O4gmSkcpU0bVjTnx4rd
         i2r26sHKDwQsBgD142XGDLNtQU6VSS+T74O3heUruQ+/ADWrSxHHZoWoBhZpCakR8eLE
         ziSQ9sEHhXdtsISLUqJfpTWqJTA14xjJIkF3kDJfN1xBL/IgyMos5tWbBECajsjixUWb
         RtTyHjTRxAYTpuBTOs0KyOTHOXwdHDjvKpxOV8ooD5xCr2LOQq/MuuMGbTVey+n1d7YK
         sFkWOizL50jFkCrKsf8JlvdtuEst75OXCvdIDlr+UhwUaMUYywSBcVUHcEAxCzWF1teQ
         EkDw==
X-Forwarded-Encrypted: i=1; AJvYcCVxPQfSfsaYrKwZa3sM06LCBG5LKU6o2KVugvuN9NqSRLFNvLNymBFJumAEMWp4ZH6SLnd2pi83jv+w@vger.kernel.org
X-Gm-Message-State: AOJu0YznfKEuoJIcvjphYEoPlABA8SWYRwPHnkGl0S5w/D1F5t32JHls
	WFgHhjwg6n/st5vdTqpU5PMiv0LLrGSUYe2pk1QzWHuDN6NRE5A/uJRx
X-Gm-Gg: ASbGncsvGucgyjzYYUWl91DolZlU1TV4PccAkpHkoZ0ZS+f/Gchx0QUlFCczpyoHPEw
	wmoQmwUYkIiUpgtjqs4Ol7azJz0eX81qzt7ojBoJ3XZoItoFa3RAEsOJKByNc2Ilz6UKk2Q51ug
	YZ4rrl+fyF5hbC8qVrDIVFYZTCafwMNkRF3sSGEAhgB8T/lddaCOtAFKNZgKXkrMqFw1hOgf7Gj
	h3dpE1RPEOgEcyRjdN/0yw9CdI/0Xs+5B8ob1dq+o7EDuHAa77+wbz+0hrprQ6lOEv1om544/4I
	YRV2nSxrTn3YTAm/0RneZJC7aQgzv3FaqE9Q+8Hd0Ira1oqaYs50aqmNHT2Afd9SVZCJMIcKy0a
	t/QbY9mL3HPadbo39v/x0sBC1XpD8B5Wyk6I6eUp8g2BppWQ7PaB7CrrRPoPJdR04LbvV9LhI0d
	R9PB++KII=
X-Google-Smtp-Source: AGHT+IGjUSrbW6m1DH+9XkPyVh7AhctSYExE5kfh2YwM8eVJ3y2QK60XKY2TAgRvk2wScpvMqkmDcw==
X-Received: by 2002:a17:903:3ba4:b0:295:70bd:b04b with SMTP id d9443c01a7336-297e5708ef8mr48929025ad.55.1762658576771;
        Sat, 08 Nov 2025 19:22:56 -0800 (PST)
Received: from VM-0-14-ubuntu.. ([43.134.26.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-296509682casm101941215ad.22.2025.11.08.19.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 19:22:56 -0800 (PST)
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
Subject: [PATCH v3 1/2] dt-bindings: leds: backlight: Add Awinic AW99706 backlight
Date: Sun,  9 Nov 2025 11:22:39 +0800
Message-ID: <20251109032240.3422503-2-caojunjie650@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251109032240.3422503-1-caojunjie650@gmail.com>
References: <20251109032240.3422503-1-caojunjie650@gmail.com>
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
Changes in v3:
- breaking a long line (Krzysztof)
- rename backlight node (Krzysztof)
- Link to v2: https://lore.kernel.org/linux-leds/20251103110648.878325-2-caojunjie650@gmail.com

Changes in v2:
- use proper units for properties (Krzysztof)
- drop non-fixed properties (Krzysztof)
- add properties(max-brightness, default-brightness) (Krzysztof)
- Link to v1: https://lore.kernel.org/linux-leds/20251026123923.1531727-2-caojunjie650@gmail.com

 .../leds/backlight/awinic,aw99706.yaml        | 101 ++++++++++++++++++
 1 file changed, 101 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/backlight/awinic,aw99706.yaml

diff --git a/Documentation/devicetree/bindings/leds/backlight/awinic,aw99706.yaml b/Documentation/devicetree/bindings/leds/backlight/awinic,aw99706.yaml
new file mode 100644
index 000000000..f48ce7a34
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/backlight/awinic,aw99706.yaml
@@ -0,0 +1,101 @@
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
+    enum: [ 300000, 400000, 500000, 600000, 660000, 750000, 850000, 1000000,
+            1200000, 1330000, 1500000, 1700000 ]
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
+        backlight@76 {
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


