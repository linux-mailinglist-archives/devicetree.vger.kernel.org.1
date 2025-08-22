Return-Path: <devicetree+bounces-208299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA7CB31FA5
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 17:54:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 363D9B68376
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A61127703A;
	Fri, 22 Aug 2025 15:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lNe0uM22"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041E625392D
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 15:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755877602; cv=none; b=L6wDDGcFIuTcxTQGuNe3qz+DP1v0/lWN2PIT/8nBXSdlYXAIY/eWax97Ctg+F8NOKNterWcNRfuF4jWYsdnps26bR0tss6/urNYqmVZdBrA7MmXrG00wrnI07CsA3PlhdhAAeMHznjfuFVTZHBREmM/i+cSQIJEEe8/1hnQgY/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755877602; c=relaxed/simple;
	bh=JArWf2XalW/PNzY8iiMYiBZ9lhJd/olHDvM90enoPRg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oz/pFpXlQzD6M4lk8HPrf91IKX5LjNss1KZ5+feeb0JN6at8T6iB14tw30XtFTfv4k/neOtBFR/BjBPfgCkYpvhNALa2hmdwM66EeIsjWGjf7d58MiTqEpchmERCe355hRkjxar6wwSbw83qvGlOZ3AmPo1lXam0PRwXWKGt+hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lNe0uM22; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-55f2fdfdffbso746404e87.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755877598; x=1756482398; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z8Y+RQqnLspSTdtkJYmb6U4wCQOh+iuL2r+EIW+zspc=;
        b=lNe0uM22XhWOeknn3aWCIlxQ8d8KznlNK3UTosvBQmVFgsWa64ARsxZJUd94zz01xX
         JnoYLhtGjnxgnV7SzYNXom0zq2ymlIULu6ZtsVLAvkcVlzO4IWXC+S3TiAs0qgLuT8iG
         iIR4nqUjIQJqFayUudFzv7x08EYe1HQIx/yHPXVA6/AfVm6ZckNAeV4gPGMepT5iXLZF
         7PeQ2gAcKhCuj8yUPVPKhu6VSw+SvXGCVw0qHNfw+bYOslqbF439/o1eWDPzdyX/0s25
         gdyu3lX1pIxhuqQR96A06cyIJ3/y5OKubnoL3h4Vqbsa+mC2LxDmBwJoWtx81bD66r4P
         +Z7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755877598; x=1756482398;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z8Y+RQqnLspSTdtkJYmb6U4wCQOh+iuL2r+EIW+zspc=;
        b=DvzDI5e0ykdu65A/j2nvZ2+Kj1t/+8zFOGeQc2Vw116h1AbOgUOm0EmEKO7R9g0bgW
         FLSEk8izwoFOEO7rRmW23d3HAKEuhKzyxAHwKlMporIInbJ3TQUwrxlGLEqDZfiePMMn
         CnpZjj6T7kFHbmWMoshtuOQ+uLg1EBXZ03z+/GLdPfpvZr/ywTaS+6fBNRVpqviymJl0
         kbYoLKRAmDfUyOlkw+E3yEHqruWAdSRz1yTsHbZJxcertLR66tJGbePTdGQqSOvYkkZs
         pPUtUCNT4rzaaRJ0hNWSTORi9uF7t+yPhLNNUIOESkP3qN0lz9WVIg3TZp6KR402Q2kx
         Ed1g==
X-Forwarded-Encrypted: i=1; AJvYcCUuCGFxSPoYRxtFiJ621ucl66eBWHGytpo3ViH285gE+71wdd/LBKqZgKO96i3Z2ohY3+X+rxjnT6C7@vger.kernel.org
X-Gm-Message-State: AOJu0YwD9LD0UEFmvYC5jHt4s5Q0hWWuPqoL1LQ7alLtYyY5IDpps+Zy
	9g4RjyImiJMf5Terg9MKENS6JEEdVUK+kLyba5+FBqk7MXTnmcAm+TDO3diI5k20DS7Q96l5+uI
	/iIquvqI=
X-Gm-Gg: ASbGncvgOnsg5CzpBwU7Cwh5MZRJkhKOoP7LESGwoCdQlgwHQrYblt7OsY7dZDRYSrN
	U/PzgXDK+IKCd+Z0TWoQNGhtXHCon07O2QRGMkndAOUf5ECKqCSoJXs3L8+uccYDq/+9SCg8i0v
	PJMh+7Loy0HcdlHaxty+1uMHkhU5UP7vsFuUZXDslgb9m6NW8WPs2xl3j4SBR8ohzgwVU5bM6wh
	svadBXlnoMwOMQygcINQ3ZM0V/q26uhwNEMGQUzG1x3dKdsIE7F9l1ScNkCKvWbj9gR4blxdwUi
	aPXNOYYnhNnz70XHjnzCTnKrAJKdn3ZHFtkZKogZCCKIXWMpk5PuH236pvQSeZArisOaiATd7Aq
	hqp+fVlDxHefmqcBgIAQQ9KizbjxDzsbX
X-Google-Smtp-Source: AGHT+IHL6XXxtiQqU/fb2/g150H117p1R4rEtNRd8M6/8OxqOm9IG+ZC1SmwGXzoJ5Hpl4n5vzifHA==
X-Received: by 2002:a05:6512:3e04:b0:55b:7e31:c13f with SMTP id 2adb3069b0e04-55f0c6b989dmr1405134e87.19.1755877597737;
        Fri, 22 Aug 2025 08:46:37 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e5d1a6fsm56541fa.49.2025.08.22.08.46.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 08:46:36 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Aug 2025 17:46:27 +0200
Subject: [PATCH v2 2/3] dt-bindings: gpio-mmio: Add MMIO for IXP4xx
 expansion bus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-ixp4xx-eb-mmio-gpio-v2-2-bd2edd4a9c74@linaro.org>
References: <20250822-ixp4xx-eb-mmio-gpio-v2-0-bd2edd4a9c74@linaro.org>
In-Reply-To: <20250822-ixp4xx-eb-mmio-gpio-v2-0-bd2edd4a9c74@linaro.org>
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

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/gpio/gpio-mmio.yaml        | 30 +++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
index ca32317dff85bc72aace6638dabbdd91de5e569b..b4d55bf6a28548534f35ca8af22d18a596c6d2b2 100644
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
@@ -132,3 +141,22 @@ examples:
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
+            big-endian;
+            reg = <1 0x00000000 0x2>;
+            reg-names = "dat";
+            intel,ixp4xx-eb-write-enable = <1>;
+        };
+    };

-- 
2.50.1


