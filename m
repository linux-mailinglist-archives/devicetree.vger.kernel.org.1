Return-Path: <devicetree+bounces-249700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C834ACDE1C5
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 22:03:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DBD4F3008F9C
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 21:03:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B9BB29D268;
	Thu, 25 Dec 2025 21:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PZt2ySP7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f46.google.com (mail-dl1-f46.google.com [74.125.82.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EC4298987
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 21:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766696608; cv=none; b=TfcnfX+mWh27mQtELHMwOdPc3eDvkZlNcUxCOHvG+Nq71tV+ZJs0532RnjHzu9AR0Z/N52wvCeyfhLtIj5IfPQOYNXofKhN36i+Xtn/sIwolQgg7qjQN1cigjjFyxq5CAuH0NOchcXOGbef8UUKYflCY5WYG4hEjwPeal+fXrQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766696608; c=relaxed/simple;
	bh=/+lZcqPywT3eD3agzd50PrRYt5+R2R4TSYTVLvfWz/0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UPboWdKvsfVYKoH+wM3VBHOsj7ziNyW9X6twp0Hk83XRlfSNscodDXx8QSrth6qx7ScaYxKEfz3l7qirGjDe7YP0hRg6ruiau+rPQIFn2q3Z/phNGxBVk1waTyKL6FfNRJdNTUG6UG+ZFV91OmAUgPkLkQspG9pspt8tUFgeilg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PZt2ySP7; arc=none smtp.client-ip=74.125.82.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f46.google.com with SMTP id a92af1059eb24-11beb0a7bd6so10590057c88.1
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 13:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766696605; x=1767301405; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZgTLElFuvb05dCGmTgzWC9Muq2FxtnuH04aRURL+kRg=;
        b=PZt2ySP7D+OaKPXeqnSHroJm1tNKIDr2XOYtd5JTI3lYR0zz1gmVypDl917a5HMe0R
         e1LkcudoQRIJSlwxGXK8m6U8p0Js31Nu5MGkFSkFd8bB7Gt1jLIZO6TWu1qq4cjzFH85
         i8ogD04l+qT3DHL+Zr9D3/0NIP4vphts4F1cxSIqSN9uQE3kydmPhnOgboWGKYExp0GD
         x9lkUo0TvUPEJ5SmGkEhmvQZlgd0CJvdNa7JQ5RGK6SKP/x9MWCMhl/CKavuzo+LkQSF
         ejoIe2Im0s2xMLMCvsklssySa/FjOF3YD2ueEyRAik3/oruY/4Zi4WPEvfBJXRKc+S6a
         FjTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766696605; x=1767301405;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZgTLElFuvb05dCGmTgzWC9Muq2FxtnuH04aRURL+kRg=;
        b=kXZL5t5mG2JQVVDW9E2q2YMGKhn/BgaBianBJviiUxTbfFHocJ8NmuQ0p9NNwG5pRq
         rXqe6XDOm5/7dF3AD/VHVUQS0R3CjKFaPz/u/rXP4HpVIx+VpRKaojeNFkO7blYgHPl5
         1Hl2yLZ+cIjYzFdVjZHIs1PenM8VfKsREYVHg1frU9GiJmvnS1DLh2mQK4bYxtIEEBRT
         m2xYgYds4N35O/d7wehFH11zwYv64i3Rbj5TYm5HtNGp1zWMcvZ63NgJEFXDABz2YAy4
         neZwzrLm979Gj2UAsVSKS27OlJMQ7QrmR+XQRoY2NwDamXAtveYo2mheYPUY1NFTLsJy
         8H0g==
X-Forwarded-Encrypted: i=1; AJvYcCU1spyrOANSJUREj1bYBnkaYYE6HVg1+6p1oUv4Zzv6GPtz9Twj810L+fZ1i19yy4DDn7LS3JVcxMna@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6t34HxZTfRRlQ8urMislZU2LZDdl/RL94DwRi2gdRw0bA3I9j
	zekwEVdCUe/2sZB2rhpnqbKEEBVmpwTqvMr2CE6fYpcjlatfrGQrrs1x
X-Gm-Gg: AY/fxX4hJjpoga1TJ85H7tVkOjzidf8bIJEBtpCJC+5ifNrarpuUiyRZk8Z9sXNkpKd
	9SJie6dABqcd5vHrciZHqBtR6FdMWeKTU2qifj+RUEd7SD6/ZmeeFM95qoJz2azurDYFBQf6m5R
	z7IQfpuvpNa0LTCobBu4UBUEKn/FNK3U5z6VRt7zd+0reeFARqIithURY0h9vfrN8EKQuJZY1tw
	Cb1KprU9XB0ON9LVj16UGrdhV3nss+30zm4UpR3Lx8SIXbpEvVDlX7wUGsNuMI8gSN95fcUiAWz
	G/PXOWzTLF1LqzazxEEtVui5BBC9/R+EIw6nb0Xk7TauxKmE5oAPj8j90dQRAj2us8fdykoXULR
	slB1ruD/o0NoX14uTDoIktQMyFK21nAzn/DBHP2O3tQ32XHTWEdP0LsMVk+WF1BoiZMkZUMr55t
	T9kj6MEbhzEp51iSYRZ2T1ig==
X-Google-Smtp-Source: AGHT+IHaRAAm6zTU8WaDLCgIm8cn0gIN1vyirvlhsK7UY7lq5OMBlSx01baipq209Z4NtI+4xI6i5w==
X-Received: by 2002:a05:7022:526:b0:11b:ca88:c4f1 with SMTP id a92af1059eb24-12171ae9239mr20726406c88.20.1766696604981;
        Thu, 25 Dec 2025 13:03:24 -0800 (PST)
Received: from [192.168.5.77] ([172.59.162.202])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217254c734sm83006203c88.13.2025.12.25.13.03.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Dec 2025 13:03:24 -0800 (PST)
From: Alex Tran <alex.t.tran@gmail.com>
Date: Thu, 25 Dec 2025 13:03:07 -0800
Subject: [PATCH v3 1/2] media: dt-bindings: i2c: toshiba,et8ek8: Convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251225-dt-bindings-et8ek8-omap3isp-v3-1-b027e0db69a5@gmail.com>
References: <20251225-dt-bindings-et8ek8-omap3isp-v3-0-b027e0db69a5@gmail.com>
In-Reply-To: <20251225-dt-bindings-et8ek8-omap3isp-v3-0-b027e0db69a5@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Pavel Machek <pavel@ucw.cz>, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alex Tran <alex.t.tran@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5131; i=alex.t.tran@gmail.com;
 h=from:subject:message-id; bh=/+lZcqPywT3eD3agzd50PrRYt5+R2R4TSYTVLvfWz/0=;
 b=owEBbQKS/ZANAwAKAXT5fTREJs3IAcsmYgBpTaaaNqcw7yB1ijDDPKb9bb171Hm2DRfYJryfW
 l8WhDUzpzOJAjMEAAEKAB0WIQQAohViG04SVxUVrcd0+X00RCbNyAUCaU2mmgAKCRB0+X00RCbN
 yPbEEADDEpwm/D2yHvYx1AquF2X8hT1Xt3l5eI2NY9xNCHCgR7HRsAvyNaTbDDB+4ALeZdqJjMm
 aoxxfSvDzCFX+0hz2QhBiurcmtk2hVFYIa+murGCOJm57oZ4CNThBZGByI380VLXjGlIlj9/IUG
 HMUgn8PbhTR/JRnW/xUQnWXL8bCbgVtRNi6Rfh50/pttItQPpgjJcD8FkkMBFF43RNKAGsz85oX
 GQTdrO66kBIVOd3OMyizzmdCJaHz+Y6XX6/EkqsBFWLR4H9wRNsfiI03yFlP4ffxwZxq3pFfExn
 3lrk/CSTrA7Vl0qT6C6uQjtkqYZIB0g+cqp1JcJr70YLK2tMinN5QGhdUxVua1Uengua/qLPkVj
 eqj+CGYvg9v1DxXyOcPZSK3fHHgc9mQQrLAjVk6CkeEi+j07pldwPVcQlkOFaBMMSi5uNt+U0Xz
 AFKviM5DI9GHV810XHj8jHjeqUtdS13ORJ7BVM1QDZnSAkaBE+8y/sJ988Xim6gkvYc+9wHbmmG
 P8wyrpuy0fKIaqVxBEGrG3ZW8GBAvOeK9VUj0lZAIoaaeIX7osuVVn+aResj5af2rRyf8jDNOkD
 m2CGukrMUmtEssDr5D5/TMdyHYdTG7kS0Vif7svdlOr120MVto/p3FA0L0QYs64mr+OpoSxWgEN
 IWFLWcPaxr6l60g==
X-Developer-Key: i=alex.t.tran@gmail.com; a=openpgp;
 fpr=00A215621B4E12571515ADC774F97D344426CDC8

Convert binding for toshiba,et8ek8 from TXT to YAML format.
Update MAINTAINERS file accordingly. The binding references
video-interface-devices.yaml at top level to inherit flash-leds
property.

Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
---
 .../bindings/media/i2c/toshiba,et8ek8.txt          | 55 --------------
 .../bindings/media/i2c/toshiba,et8ek8.yaml         | 87 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 3 files changed, 88 insertions(+), 55 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt b/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
deleted file mode 100644
index 8d8e40c5687283d2f582895542cc9b765983d025..0000000000000000000000000000000000000000
--- a/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
+++ /dev/null
@@ -1,55 +0,0 @@
-Toshiba et8ek8 5MP sensor
-
-Toshiba et8ek8 5MP sensor is an image sensor found in Nokia N900 device
-
-More detailed documentation can be found in
-Documentation/devicetree/bindings/media/video-interfaces.txt .
-
-
-Mandatory properties
---------------------
-
-- compatible: "toshiba,et8ek8"
-- reg: I2C address (0x3e, or an alternative address)
-- vana-supply: Analogue voltage supply (VANA), 2.8 volts
-- clocks: External clock to the sensor
-- reset-gpios: XSHUTDOWN GPIO. The XSHUTDOWN signal is active low. The sensor
-  is in hardware standby mode when the signal is in the low state.
-
-
-Optional properties
--------------------
-
-- flash-leds: See ../video-interfaces.txt
-- lens-focus: See ../video-interfaces.txt
-
-
-Endpoint node mandatory properties
-----------------------------------
-
-- remote-endpoint: A phandle to the bus receiver's endpoint node.
-
-
-Example
--------
-
-&i2c3 {
-	clock-frequency = <400000>;
-
-	cam1: camera@3e {
-		compatible = "toshiba,et8ek8";
-		reg = <0x3e>;
-		vana-supply = <&vaux4>;
-
-		clocks = <&isp 0>;
-		assigned-clocks = <&isp 0>;
-		assigned-clock-rates = <9600000>;
-
-		reset-gpio = <&gpio4 6 GPIO_ACTIVE_HIGH>; /* 102 */
-		port {
-			csi_cam1: endpoint {
-				remote-endpoint = <&csi_out1>;
-			};
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.yaml b/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..f0186ae87de2d918f70ec6e0a48b46be9c5951b5
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.yaml
@@ -0,0 +1,87 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/toshiba,et8ek8.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Toshiba et8ek8 5MP sensor
+
+maintainers:
+  - Pavel Machek <pavel@ucw.cz>
+  - Sakari Ailus <sakari.ailus@iki.fi>
+
+description:
+  Toshiba et8ek8 5MP sensor is an image sensor found in Nokia N900 device
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: toshiba,et8ek8
+
+  reg:
+    description:
+      I2C address (0x3e, or an alternative address)
+    maxItems: 1
+
+  vana-supply:
+    description:
+      Analogue voltage supply (VANA), 2.8 volts
+
+  clocks:
+    maxItems: 1
+
+  reset-gpios:
+    description:
+      XSHUTDOWN GPIO. The XSHUTDOWN signal is active low. The sensor
+      is in hardware standby mode when the signal is in the low state.
+    maxItems: 1
+
+  flash-leds:
+    maxItems: 1
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - vana-supply
+  - clocks
+  - reset-gpios
+  - port
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
+        camera@3e {
+            compatible = "toshiba,et8ek8";
+            reg = <0x3e>;
+            vana-supply = <&vaux4>;
+            clocks = <&isp 0>;
+            assigned-clocks = <&isp 0>;
+            assigned-clock-rates = <9600000>;
+            reset-gpios = <&gpio4 6 GPIO_ACTIVE_HIGH>;
+            flash-leds = <&led>;
+
+            port {
+                csi_cam1: endpoint {
+                    remote-endpoint = <&csi_out1>;
+                };
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index dc731d37c8feeff25613c59fe9c929927dadaa7e..50722537d5483611eea3c8af6c68ae0ec5e4aee8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18582,6 +18582,7 @@ M:	Sakari Ailus <sakari.ailus@iki.fi>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/media/i2c/adi,ad5820.yaml
+F:	Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.yaml
 F:	drivers/media/i2c/ad5820.c
 F:	drivers/media/i2c/et8ek8
 

-- 
2.51.0


