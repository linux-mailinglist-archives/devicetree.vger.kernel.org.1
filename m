Return-Path: <devicetree+bounces-206821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4195B2DA75
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 13:00:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A54E1BC0111
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:00:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 822112E2EEE;
	Wed, 20 Aug 2025 10:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CmFrZs59"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A342517A316
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 10:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755687592; cv=none; b=uRaWhzGlftXHGh08sULnp4622AoM++YdprrdTuS614G0QHO02tmoOl7nYWKh9Kz/sDnmwXKAs4N1EcukBTFRxqTLqxS1Z5NW+TqyRgtsQ69Cjkt/NdKdJAXZOkub8Tjzls+/ewnJR9a6IoX3bR/U5wJV2jVXKKkgDW5a9diHWTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755687592; c=relaxed/simple;
	bh=XM4zIAAvseoRQO7OpulfXeLDpQmgjMtT0KnBIZKUP3A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Kc8NezALyNdT5zbiQVZEsq8L1Tdy4MhWeEV4H1jRojgrx8EM72r13xFHtXMy9thXGaOfwwBbbxH1+4jr5D3Qx/Wphqw1STKqUgF78idU5wH53tsAoTmQ0+F8wRIiAxE2bebnuStxoMWNHPZztPemDzrsYLfwKsXRWCZ3SaoqZX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CmFrZs59; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-55ce521f77bso6483672e87.1
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 03:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755687588; x=1756292388; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YznYINJyZXwaM/A6206H6PVqjIXIV9RM0H2nhFHc/vw=;
        b=CmFrZs59zs3bHBd+Fnlf39jtXUFUAwWAx1bWC2K5WdgEhmdfXgbvG0jz5Ak2bBXdR2
         GSnipURw4XexUZgCb5i1DS/RKBiiRAxCEY6p1cXAYUQikTXrq0KslsS71m8baKnXm8vc
         Xcq1vB2H3GohjHUv+44Nfqt3dOt4VKcQ+0Vhs9bxumlXVHRxJBXQZHkiFh8brSzyfSlA
         wzQXNxOBFbFhl9lmARFOhLkDd/bSgOglQ9aBTyrguJwVLjCR4dYR3Izo73Lk0keDgbGc
         8EHn0OedigTckuEmdQNzQMwk+D3D6t0woqx5G2paxoXoBqHPPqbTlfrjQHQgJ7GgymO/
         bhbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755687588; x=1756292388;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YznYINJyZXwaM/A6206H6PVqjIXIV9RM0H2nhFHc/vw=;
        b=DJbF0qM9HlK8jAtRykQbLlGVzs+/J703dDiECixuRkh9wGAQ6chCblpQ0Zs9vaQ4EC
         qw32iEz2rtjs+re6d5mWFrs3rFcAynyi/ofxJxY3HMBdnRUueU+rpuBkGOoGNIQt1Luo
         1A1T3eymCU5evFVXJWSAj28nRM+iusQSwD8iLsykyAhwFNLt77RpXk83j0RCCQr/haz1
         /hxkSNY4LjcuNlCK1yhe/XmF5cSmv/EJ/MaU2kox88W5BAKK8vTd1HN3K9Zcop5maBK2
         16sUFssNQdp1mtgjvsRkeWjsxeRwzjnGj4D9qtla72qR1gf5/9fG6Wrh98EvrrlLi050
         q5kw==
X-Forwarded-Encrypted: i=1; AJvYcCWw3H2vKvDT/TJICc0C1kO7MEbEwLcoZ3CKugM18rFM3ve7/6li3kI1YshQxeECpuuxL4F8LXSvnTmi@vger.kernel.org
X-Gm-Message-State: AOJu0YzmYRjnc0I/IzMLp7tFywcAWGJZMWpuUtCK3x5cBj617ExD7xSl
	TJvvY+vxiIv4gRlO3BETcw2MD6OiKYqkRM331VUX7EBw1e7NdDa98CTC2iIajRg9oZRDnu3aTW7
	ZxGZIb54=
X-Gm-Gg: ASbGncs67pvFMZtGnBPBVap40ukadztzENIjwX4JjnEnwtiLz31mfsbMKFraEPmTvRl
	IjoO4ziE7O31fVlnIlQSM+NvvhSYeqb51lt1jYLyM6RJ9TUzp37NmsIUSscjHLZ+/EJIY+ZTNJv
	LuJvth8EWLOR5yWeJbpgno++Az7DqEpUmLMMhCfotr6JGALF/JJmVwMRzEe7SIjfIipXV6XGaIh
	WgxzXVTxG+FqR0FXtR4PsFir8TkBBhqfA1yE22VmMWxIRK5jI+lMBvc41dJv9KFLDJ47bWjMGMu
	dtM8JwdMGEXpWiwmFMLfTtVU7Oid/+MaGSpNLPUKj6zItNqfVFLTVVeLqRmRcJ3mAQ+NMVEHOB3
	UoupcFcmDSKCzybcS7oo8dSSrOb26nvBD
X-Google-Smtp-Source: AGHT+IEn6br9SNPzvwlS6Q5dncSg0AYbRVDEjzxQ0rwjQvjT86oq/uzBbjC7exz32rHFcMhrkxidWQ==
X-Received: by 2002:a05:6512:438b:b0:55e:99b:ebe with SMTP id 2adb3069b0e04-55e099b0f0amr278406e87.45.1755687588468;
        Wed, 20 Aug 2025 03:59:48 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef369843sm2518285e87.60.2025.08.20.03.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 03:59:47 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Aug 2025 12:59:45 +0200
Subject: [PATCH 3/4] dt-bindings: gpio-mmio: Add MMIO for IXP4xx expansion
 bus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-ixp4xx-eb-mmio-gpio-v1-3-0e167398c8ac@linaro.org>
References: <20250820-ixp4xx-eb-mmio-gpio-v1-0-0e167398c8ac@linaro.org>
In-Reply-To: <20250820-ixp4xx-eb-mmio-gpio-v1-0-0e167398c8ac@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Imre Kaloz <kaloz@openwrt.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

This expansion is a simple MMIO-mapped GPIO device but the bus has a
number of additional properties that we need to bring in using
a reference to the bus child node schema.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/gpio/gpio-mmio.yaml        | 31 +++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
index ca32317dff85bc72aace6638dabbdd91de5e569b..487efab2710e02402ef8ca3e407b6ebc24e3f399 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
@@ -22,6 +22,7 @@ properties:
       - brcm,bcm6345-gpio
       - ni,169445-nand-gpio
       - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
+      - intel,ixp4xx-expansion-bus-mmio-gpio
 
   big-endian: true
 
@@ -89,6 +90,14 @@ properties:
     description:
       If this property is present, the controller cannot drive the GPIO lines.
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: intel,ixp4xx-expansion-bus-mmio-gpio
+then:
+  $ref: /schemas/memory-controllers/intel,ixp4xx-expansion-peripheral-props.yaml#
+
 patternProperties:
   "^.+-hog(-[0-9]+)?$":
     type: object
@@ -102,7 +111,7 @@ required:
   - '#gpio-cells'
   - gpio-controller
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
@@ -132,3 +141,23 @@ examples:
       gpio-controller;
       #gpio-cells = <2>;
     };
+
+    bus@c4000000 {
+        compatible = "intel,ixp42x-expansion-bus-controller", "syscon";
+        reg = <0xc4000000 0x30>;
+        native-endian;
+        #address-cells = <2>;
+        #size-cells = <1>;
+        ranges = <0 0x0 0x50000000 0x01000000>;
+        dma-ranges = <0 0x0 0x50000000 0x01000000>;
+        gpio@1,0 {
+            compatible = "intel,ixp4xx-expansion-bus-mmio-gpio";
+            gpio-controller;
+            #gpio-cells = <2>;
+            bank-width = <2>;
+            big-endian;
+            reg = <1 0x00000000 0x2>;
+            reg-names = "dat";
+            intel,ixp4xx-eb-write-enable = <1>;
+        };
+    };

-- 
2.50.1


