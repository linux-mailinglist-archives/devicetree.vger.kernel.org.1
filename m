Return-Path: <devicetree+bounces-65987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDC48C0DBA
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 11:43:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9ABB283A8E
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 09:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B578F14BF8F;
	Thu,  9 May 2024 09:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pi4AziDK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D7914B083
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 09:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715247786; cv=none; b=S5gUoy7gm+noPwfpBZOsBaIjTctGwTmwmLDToWENsjv0Hlsllxmc+EHgYP8d6zGaVw6h9FK0uqNSYP8GZsuO43nL4y2eIfyGD4kuDWKuC7mObTPS/FuUxsmEp3neYkvEnYH1UM8kjubBAFdZxsQdxv7TpvO00ZibRgOVrc0K+ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715247786; c=relaxed/simple;
	bh=oqnTnMrAQ7Jq7bhp91E4cSphE5UEbnzybekXFcj9nsA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kx/SxDAt9o2wiUfdOs0y1OlvTsl9kusfCBmfyeoe2A1KxzpbACTkov7lwTK2A7gJ4gJ2K5rtIRYT1nEV67ZK95Nyegmm0qduPhRVa5TxnC9NWM2yiKCX+Zr97lPml83YIGgcN34SgwBsj9gYUqxD/ZBQ6Sxg6brRbZi+VNP1UQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pi4AziDK; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a59a387fbc9so162327566b.1
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 02:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715247783; x=1715852583; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+D+DD5ujmRC79Mey/sIGoYI9ydUKjzoT2SPYYlKjerU=;
        b=pi4AziDKPy7j6HQxLrpKnacAuV2mwQejgnk0Kl061F4mnP2gNmWRP7WwVdkHkeH4hp
         T+kRGMqX8V346Q1UXaPQmPqi6zvpzUQYyC6jHkx84UsLQQb3Q0aPaz1XNgM7Wu9yAfrl
         agBZOT4QkexPyi2lPvTpbrb135Fc1XZGYRxku03+iMWzML5zuRm4aY9Eqj2bEm5Vx1Q+
         C/N/jFrDbGcSDBSEDpnYrdgQKQ47sC2GsKwu2oTd5D6ny66un7uDJl2ubvcw4JvvgjZ0
         /JE2WhdIm0vfeH2nNf8hz2LP4gN3nhTz3LQgVBpx2MnQaxF1U0FfMKJZXSQ6A7yCQ7DJ
         HB+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715247783; x=1715852583;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+D+DD5ujmRC79Mey/sIGoYI9ydUKjzoT2SPYYlKjerU=;
        b=g8FE/oWPQKZR6UZOpQL0jkQ5vLKPEWSpG8LpaB9+bkZCjKyWABqLQemXwN6yFpXB3a
         zA1ANPjBTfBWv9hMsJzOk4xKxFQDVxHNM2HdKnNS7rJB9snxNFiHQvAhACcKOBGZ1u/Q
         tzymNDSP4DrJDB0I3UBFAIvuLgfGbDKzGnKKnZZw5sBNau2EbaBIrt7gE3roSP+J40P1
         cXZJQgGJ6/DKUPs55s5A/oSz/mDpaReSKABdvbN1Ibw2+d9Kr//gco4yVCMbWEArsi+Y
         eB0WttF6UkjPWhudR3bA0RWR063qH6AMotZGDO0fF8ix6wSrNXxZFBd6fyr0vuJOqOKC
         CfiA==
X-Forwarded-Encrypted: i=1; AJvYcCUYEpKygpzNiv3cw2op+U7S41NSMS0JEOSg3qL6SlS20Z5u1JyEzxqYNi3Nk28ID1u5Wdugonf2za/5WJn+nTHbqp6xj2IKjmaASQ==
X-Gm-Message-State: AOJu0Yxlyw1cocOgEEyIuxVeLt0hc0cBiowDweThPCBzglzuCp8p4uct
	eZRzysNP8NbnkC6mAiJ7GrlBCYjpv/CjA+/0lAInAjVn15vbhZNQqF8BmLgLvPo=
X-Google-Smtp-Source: AGHT+IFeCA66yiGqhjZcBqUWD9onOjkEgD8MNz+CQFkjsr/2HEajnuTHjhQ4TaK7syFifjsngAOvPg==
X-Received: by 2002:a17:906:2c46:b0:a59:cd18:92f5 with SMTP id a640c23a62f3a-a59fb923088mr284281266b.11.1715247782772;
        Thu, 09 May 2024 02:43:02 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7deasm53835666b.103.2024.05.09.02.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 02:43:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 09 May 2024 11:42:52 +0200
Subject: [PATCH 2/3] dt-bindings: display: panel: constrain 'reg' in SPI
 panels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240509-dt-bindings-dsi-panel-reg-v1-2-8b2443705be0@linaro.org>
References: <20240509-dt-bindings-dsi-panel-reg-v1-0-8b2443705be0@linaro.org>
In-Reply-To: <20240509-dt-bindings-dsi-panel-reg-v1-0-8b2443705be0@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Konrad Dybcio <konradybcio@gmail.com>, 
 Del Regno <angelogioacchino.delregno@somainline.org>, 
 Heiko Stuebner <heiko@sntech.de>, Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryskov <dmitry.baryshkov@linaro.org>, 
 Shawn Guo <shawn.guo@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=14083;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=oqnTnMrAQ7Jq7bhp91E4cSphE5UEbnzybekXFcj9nsA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmPJqe7+GklKLfEhVi9JE14rjaRObS3jXjeAqzI
 xoPtctrDBKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZjyangAKCRDBN2bmhouD
 12ycD/4svRtT6rKHtYUjvi+u7M6aRtUdd3zskjvEkSQLnKWf/u2POcnRkJehbsys6kw/yg5Pgbm
 t1Xf5ljoSxvfMd1wGy5836jkRkwoYx2FkBfg4xvi9IuhkJkTcqq7UQRQjEFmIF/AWcsECkO1y++
 jeii6YQZ8v+pwqPzFU+8YCIXPyqFIoSqXebVmykMLvA6k4RJ71+YwfOqJec/VQTQK0h7Qp109VT
 UDFQje2hwQjpgSe/RHBzX0GyPPOpGuNIY4cHYdJsl1GVrdYEQkEW1vxI0EX+/j2fdLjMxHj9VZQ
 wLQ0pPSC52cgd/Qu84M4rmi6ozWPXc8xdneixyAI0+a5cRQGPB9JdwXQqhqPxeaCPiZfu1inpfh
 tiCyJX0LecOS9Ixg52aKtA4e4vKjWN02wMvRFB1zvC6+2BAAEaPQFxvorp3jbwORYlbOAogNwRT
 NHv3l1EBHh2XlWeJycNrP18U88GxNI5QzMkoaCl2BRsTDtRSbxgGP8zhT+ypYRayuZKxsoOa45X
 YbxZ6Aq+GIOGCH48tXdMw7PiKwUQNUBp7e4emHNT4snLUmBNly6riMXidcVlE3BS9jpwhyPIv36
 Obfam6sEf7QJr1nL06yDK+DwlahDDoiwPgFU9jLg/SaunzZqwvixGZwD2A4Gmn74zxUdjFCr3NZ
 2hOdtpXGkDl4GPQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

SPI-attached devices could have more than one chip-select, thus their
bindings are supposed to constrain the 'reg' property to match hardware.
Add missing 'reg' constrain for SPI-attached display panels.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/panel/abt,y030xx067a.yaml   | 4 +++-
 .../devicetree/bindings/display/panel/fascontek,fs035vg158.yaml       | 3 +++
 Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml   | 4 +++-
 Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml   | 3 +++
 Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml   | 3 ++-
 Documentation/devicetree/bindings/display/panel/innolux,ej030na.yaml  | 4 +++-
 .../devicetree/bindings/display/panel/kingdisplay,kd035g6-54nt.yaml   | 4 +++-
 .../devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml       | 3 +++
 Documentation/devicetree/bindings/display/panel/lg,lg4573.yaml        | 3 ++-
 .../devicetree/bindings/display/panel/lgphilips,lb035q02.yaml         | 3 +++
 Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml   | 4 +++-
 .../devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml         | 3 +++
 .../devicetree/bindings/display/panel/samsung,ams495qa01.yaml         | 4 +++-
 Documentation/devicetree/bindings/display/panel/samsung,ld9040.yaml   | 4 +++-
 .../devicetree/bindings/display/panel/samsung,lms380kf01.yaml         | 3 ++-
 .../devicetree/bindings/display/panel/samsung,lms397kf04.yaml         | 3 ++-
 Documentation/devicetree/bindings/display/panel/samsung,s6d27a1.yaml  | 3 ++-
 Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.yaml  | 4 +++-
 Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml | 4 +++-
 Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml   | 3 +++
 Documentation/devicetree/bindings/display/panel/tpo,td.yaml           | 4 +++-
 Documentation/devicetree/bindings/display/panel/tpo,tpg110.yaml       | 3 ++-
 22 files changed, 60 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/abt,y030xx067a.yaml b/Documentation/devicetree/bindings/display/panel/abt,y030xx067a.yaml
index acd2f3faa6b9..0aa2d3fbadaa 100644
--- a/Documentation/devicetree/bindings/display/panel/abt,y030xx067a.yaml
+++ b/Documentation/devicetree/bindings/display/panel/abt,y030xx067a.yaml
@@ -17,10 +17,12 @@ properties:
   compatible:
     const: abt,y030xx067a
 
+  reg:
+    maxItems: 1
+
   backlight: true
   port: true
   power-supply: true
-  reg: true
   reset-gpios: true
 
 required:
diff --git a/Documentation/devicetree/bindings/display/panel/fascontek,fs035vg158.yaml b/Documentation/devicetree/bindings/display/panel/fascontek,fs035vg158.yaml
index d13c4bd26de4..9847da784cc8 100644
--- a/Documentation/devicetree/bindings/display/panel/fascontek,fs035vg158.yaml
+++ b/Documentation/devicetree/bindings/display/panel/fascontek,fs035vg158.yaml
@@ -17,6 +17,9 @@ properties:
   compatible:
     const: fascontek,fs035vg158
 
+  reg:
+    maxItems: 1
+
   spi-3wire: true
 
 required:
diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml
index 3cabbba86581..ef5a2240b684 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml
@@ -24,6 +24,9 @@ properties:
           - newhaven,1.8-128160EF
       - const: ilitek,ili9163
 
+  reg:
+    maxItems: 1
+
   spi-max-frequency:
     maximum: 32000000
 
@@ -32,7 +35,6 @@ properties:
     description: Display data/command selection (D/CX)
 
   backlight: true
-  reg: true
   reset-gpios: true
   rotation: true
 
diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml
index 7d221ef35443..44423465f6e3 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml
@@ -26,6 +26,9 @@ properties:
           - dlink,dir-685-panel
       - const: ilitek,ili9322
 
+  reg:
+    maxItems: 1
+
   reset-gpios: true
   port: true
 
diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
index 94f169ea065a..5f41758c96d5 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
@@ -28,7 +28,8 @@ properties:
           - canaan,kd233-tft
       - const: ilitek,ili9341
 
-  reg: true
+  reg:
+    maxItems: 1
 
   dc-gpios:
     maxItems: 1
diff --git a/Documentation/devicetree/bindings/display/panel/innolux,ej030na.yaml b/Documentation/devicetree/bindings/display/panel/innolux,ej030na.yaml
index 72788e3e6c59..c7df9a7f6589 100644
--- a/Documentation/devicetree/bindings/display/panel/innolux,ej030na.yaml
+++ b/Documentation/devicetree/bindings/display/panel/innolux,ej030na.yaml
@@ -17,10 +17,12 @@ properties:
   compatible:
     const: innolux,ej030na
 
+  reg:
+    maxItems: 1
+
   backlight: true
   port: true
   power-supply: true
-  reg: true
   reset-gpios: true
 
 required:
diff --git a/Documentation/devicetree/bindings/display/panel/kingdisplay,kd035g6-54nt.yaml b/Documentation/devicetree/bindings/display/panel/kingdisplay,kd035g6-54nt.yaml
index b4be9bd8ddde..d86c916f7b55 100644
--- a/Documentation/devicetree/bindings/display/panel/kingdisplay,kd035g6-54nt.yaml
+++ b/Documentation/devicetree/bindings/display/panel/kingdisplay,kd035g6-54nt.yaml
@@ -17,10 +17,12 @@ properties:
   compatible:
     const: kingdisplay,kd035g6-54nt
 
+  reg:
+    maxItems: 1
+
   backlight: true
   port: true
   power-supply: true
-  reg: true
   reset-gpios: true
 
   spi-3wire: true
diff --git a/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml b/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml
index 7a55961e1a3d..b5dc02b27200 100644
--- a/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml
+++ b/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml
@@ -18,6 +18,9 @@ properties:
   compatible:
     const: leadtek,ltk035c5444t
 
+  reg:
+    maxItems: 1
+
   spi-3wire: true
 
 required:
diff --git a/Documentation/devicetree/bindings/display/panel/lg,lg4573.yaml b/Documentation/devicetree/bindings/display/panel/lg,lg4573.yaml
index ee357e139ac0..590ccc27d104 100644
--- a/Documentation/devicetree/bindings/display/panel/lg,lg4573.yaml
+++ b/Documentation/devicetree/bindings/display/panel/lg,lg4573.yaml
@@ -21,7 +21,8 @@ properties:
   compatible:
     const: lg,lg4573
 
-  reg: true
+  reg:
+    maxItems: 1
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/display/panel/lgphilips,lb035q02.yaml b/Documentation/devicetree/bindings/display/panel/lgphilips,lb035q02.yaml
index 628c4b898111..3de17fd8513b 100644
--- a/Documentation/devicetree/bindings/display/panel/lgphilips,lb035q02.yaml
+++ b/Documentation/devicetree/bindings/display/panel/lgphilips,lb035q02.yaml
@@ -17,6 +17,9 @@ properties:
   compatible:
     const: lgphilips,lb035q02
 
+  reg:
+    maxItems: 1
+
   label: true
   enable-gpios: true
   port: true
diff --git a/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
index accf933d6e46..1cffe4d6d498 100644
--- a/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
+++ b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
@@ -21,9 +21,11 @@ properties:
   compatible:
     const: nec,nl8048hl11
 
+  reg:
+    maxItems: 1
+
   label: true
   port: true
-  reg: true
   reset-gpios: true
 
   spi-max-frequency:
diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
index e808215cb39e..d0ac31ab60cf 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
@@ -71,6 +71,9 @@ properties:
           - shineworld,lh133k
       - const: panel-mipi-dbi-spi
 
+  reg:
+    maxItems: 1
+
   write-only:
     type: boolean
     description:
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
index a5ff4de74a15..e081c84a932b 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
@@ -17,7 +17,9 @@ properties:
   compatible:
     const: samsung,ams495qa01
 
-  reg: true
+  reg:
+    maxItems: 1
+
   reset-gpios:
     description: reset gpio, must be GPIO_ACTIVE_LOW
   elvdd-supply:
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ld9040.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ld9040.yaml
index c0fabeb38628..bc92b16c95b9 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,ld9040.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,ld9040.yaml
@@ -17,9 +17,11 @@ properties:
   compatible:
     const: samsung,ld9040
 
+  reg:
+    maxItems: 1
+
   display-timings: true
   port: true
-  reg: true
   reset-gpios: true
 
   vdd3-supply:
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
index 70ffc88d2a08..7ce8540551f9 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
@@ -21,7 +21,8 @@ properties:
   compatible:
     const: samsung,lms380kf01
 
-  reg: true
+  reg:
+    maxItems: 1
 
   interrupts:
     description: provides an optional ESD (electrostatic discharge)
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml b/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
index 5e77cee93f83..9363032883de 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
@@ -20,7 +20,8 @@ properties:
   compatible:
     const: samsung,lms397kf04
 
-  reg: true
+  reg:
+    maxItems: 1
 
   reset-gpios: true
 
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6d27a1.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6d27a1.yaml
index d273faf4442a..d74904164719 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,s6d27a1.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,s6d27a1.yaml
@@ -20,7 +20,8 @@ properties:
   compatible:
     const: samsung,s6d27a1
 
-  reg: true
+  reg:
+    maxItems: 1
 
   interrupts:
     description: provides an optional ESD (electrostatic discharge)
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.yaml
index 6f1fc7469f07..c47e2a1a30e5 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.yaml
@@ -18,7 +18,9 @@ properties:
   compatible:
     const: samsung,s6e63m0
 
-  reg: true
+  reg:
+    maxItems: 1
+
   reset-gpios: true
   port: true
   default-brightness: true
diff --git a/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
index ef162b51d010..0ce2ea13583d 100644
--- a/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
@@ -21,7 +21,9 @@ properties:
       - jasonic,jt240mhqs-hwt-ek-e3
       - sitronix,st7789v
 
-  reg: true
+  reg:
+    maxItems: 1
+
   reset-gpios: true
   power-supply: true
   backlight: true
diff --git a/Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml b/Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml
index 98abdf4ddeac..5a8260224b74 100644
--- a/Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml
@@ -17,6 +17,9 @@ properties:
   compatible:
     const: sony,acx565akm
 
+  reg:
+    maxItems: 1
+
   label: true
   reset-gpios: true
   port: true
diff --git a/Documentation/devicetree/bindings/display/panel/tpo,td.yaml b/Documentation/devicetree/bindings/display/panel/tpo,td.yaml
index e8c8ee8d7c88..7edd29df4bbb 100644
--- a/Documentation/devicetree/bindings/display/panel/tpo,td.yaml
+++ b/Documentation/devicetree/bindings/display/panel/tpo,td.yaml
@@ -22,7 +22,9 @@ properties:
         # Toppoly TD043MTEA1 Panel
       - tpo,td043mtea1
 
-  reg: true
+  reg:
+    maxItems: 1
+
   label: true
   reset-gpios: true
   backlight: true
diff --git a/Documentation/devicetree/bindings/display/panel/tpo,tpg110.yaml b/Documentation/devicetree/bindings/display/panel/tpo,tpg110.yaml
index f0243d196191..59a373728e62 100644
--- a/Documentation/devicetree/bindings/display/panel/tpo,tpg110.yaml
+++ b/Documentation/devicetree/bindings/display/panel/tpo,tpg110.yaml
@@ -52,7 +52,8 @@ properties:
           - const: tpo,tpg110
       - const: tpo,tpg110
 
-  reg: true
+  reg:
+    maxItems: 1
 
   grestb-gpios:
     maxItems: 1

-- 
2.43.0


