Return-Path: <devicetree+bounces-256355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEBAD38C16
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 05:07:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2D03303A010
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 04:06:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D14330DD24;
	Sat, 17 Jan 2026 04:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cFpKNqc5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E4E314A7C
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 04:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768622805; cv=none; b=ivImt0go2I9UuQAfQJp1Y/0JCPNqV6iFRJqqqOYy5EBsaDFiYphQ6jITgSLrNFd6isiVJqZQ2zGg7G9XskK3pYm8V92dg4TU9JjO0cgVta0tjaIRYloTTawkSlDH11uTWGr9vUkXoM+I+cmSmyTEJKoRa0UuLrJ6lDSbD1jHs7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768622805; c=relaxed/simple;
	bh=q6Zcg5OxkKLFI3E5a9irtIExZJ+tzYy2eTeqFd6joyk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Je+jDM5SpNKydbvV6/lpIJ4AQdREeT4zS4cAGAkM5cQHknHxOSuxMg4DcVGFozc3cZWemzR9ljs0HqvoWyG7u4LslnDqvVr7yfz6udgALQmY07RosKjW/5z1RVbwdg1oxYibD9hQTkiJ2+1Sa5kRrWqbhlqERmwgsLRg7hREVVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cFpKNqc5; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8c6aaf3cd62so137870585a.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 20:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768622801; x=1769227601; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nsoz6EWM7qD9/4dVYsGLR4Pmvjatyh5Pk5C2o5rnB9c=;
        b=cFpKNqc5oBsRmw0vkllHTs1mHoWxXD5XF4BGivccm//Ej2uHfkFgU0uFCKDNAMvOEC
         a7Gs2D4tbhU4eZa+kMaVPHb4VH2LDIURrqZCGIRip3t7UVtuaYz103ApufEHqalo0KtS
         P8yWFKayyT/jjhIEtaoj3X0j6NcLUYOW4kXuAs07CrdGqZyu5dmqzGMhW6BcQEH6Wb6h
         oGeZLY/LjtUxRMNC89h0EJnapBXGxLJU/JvUA5rEVwNyc3d6njMy2kxgEFnigezu4bkr
         BSyFfLzYpkZJmABdYXurxF9WmwAod2FyAGuxfka4s+Q1lF0uVONxFIwNj2JwPUTaPQtK
         26yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768622801; x=1769227601;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Nsoz6EWM7qD9/4dVYsGLR4Pmvjatyh5Pk5C2o5rnB9c=;
        b=Ps76ioGXiehNbLYD6Fr3WDPdju3Bn89vUE2cGLoK42o+fWTV722hdYkhtIdTo4sfKn
         VhJh37dd3akSs6qIPZYMVM5U8+LMsJj/QgfMlf12+dQw1rVETS1cOASedn1gkyXlxnhm
         KAsIh+JoX8Bs/uHdmQiojYo7f8oAZZr3AUhBjUIzpjmyUQe5upznE2IoMv7oH9Asah1y
         JKlSQCqcfTM3OpzOK4yzYz6I/wXxBhTMfLqCOcV/lkqtzPyIc1KMChscsfxPANh5Ngfb
         WIq3WfwJrKiQeH2IUQ44lhZb257fev+Qr+gqAjQG93bTzwdEk26/BrMNWBCKsbjlPanj
         lrlg==
X-Forwarded-Encrypted: i=1; AJvYcCU28AjSydWxcvBKfIbD1z+8PzrmIKPTfO0+zoM/XxlpRPdvZFVrFvsw96H0ILYClvlkgB/QBc7QZhbQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxnSButPmVXRBAqGv2VAfrHSdkbzycpt60djp8mC92ptUK59iDL
	x5biIcpPjmUx6g7VxISSXOMFrxPuI1fJsbfk/AG+MShacc7Y4bKhsjZf
X-Gm-Gg: AY/fxX40255aeqDLWPwmlaUnF92dUig8djNUkhiupOUh2d7uGqRMjnPmi1LjkdbyjzW
	UO+pa2gi7rsg1EGxZQJ5FBjgMKB9+oEp/vztZE7TLW/uFaeOXps2kGx+wFebidpuVGL3Om/cGf8
	rT2i5/gYrevv9kRMR9qcB/nscaRWQxE1zgdSccSkjTCQYQAVP03oi5BYjEDGF9qX2dan62APr6o
	871skSuUqnl725/n9AXku8BEgJESV4zzj/MUfqkrnQMeWCANkE6/z+dJdaUewxzg85oheYSAYSw
	9SvfcZ2sFZdMH+Ub2YfkFbBIOR2M9ED5u81ayXdM1db6OOVvWewilJhgoXh+eh2Or/f6zFwGXXW
	E+G1Et+xfiszGwfDJeQ4oGy+U2kJhRP0ABldXFuiPltMKwLBDOjUNhXSdX+qiPO3Q3KhYnIX301
	wFEXA6s3Bm0LzfDBjA99eTB1lx6P01fy3TcYI1QI6gF8UGmsMYuSnehRZfemKDCtrrFpFoIV53/
	MM=
X-Received: by 2002:a05:620a:470e:b0:8b2:f29e:3af8 with SMTP id af79cd13be357-8c6a6789933mr662358485a.59.1768622800896;
        Fri, 16 Jan 2026 20:06:40 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8942e6c5adbsm37174806d6.39.2026.01.16.20.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 20:06:40 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v7 1/5] dt-bindings: media: i2c: Add Sony IMX355
Date: Fri, 16 Jan 2026 23:06:53 -0500
Message-ID: <20260117040657.27043-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260117040657.27043-1-mailingradian@gmail.com>
References: <20260117040657.27043-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The IMX355 camera sensor is a camera sensor that can be found as the
front camera in some smartphones, such as the Pixel 3, Pixel 3 XL, Pixel
3a, and Pixel 3a XL. It already has a driver, but needs support for
device tree. Document the IMX355 to support defining it in device tree.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 .../bindings/media/i2c/sony,imx355.yaml       | 105 ++++++++++++++++++
 1 file changed, 105 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml
new file mode 100644
index 000000000000..0a3aa63b7b5f
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml
@@ -0,0 +1,105 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/sony,imx355.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sony IMX355 Sensor
+
+maintainers:
+  - Richard Acayan <mailingradian@gmail.com>
+
+description:
+  The IMX355 sensor is a 3280x2464 image sensor, commonly found as the front
+  camera in smartphones.
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: sony,imx355
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  avdd-supply:
+    description: Analog power supply.
+
+  dvdd-supply:
+    description: Digital power supply.
+
+  dovdd-supply:
+    description: Interface power supply.
+
+  reset-gpios:
+    description: Reset GPIO (active low).
+    maxItems: 1
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml
+        unevaluatedProperties: false
+
+        required:
+          - link-frequencies
+
+    required:
+      - endpoint
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - avdd-supply
+  - dvdd-supply
+  - dovdd-supply
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,camcc-sdm845.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        camera@1a {
+            compatible = "sony,imx355";
+            reg = <0x1a>;
+
+            clocks = <&camcc CAM_CC_MCLK2_CLK>;
+
+            assigned-clocks = <&camcc CAM_CC_MCLK2_CLK>;
+            assigned-clock-rates = <24000000>;
+
+            reset-gpios = <&tlmm 9 GPIO_ACTIVE_LOW>;
+
+            avdd-supply = <&cam_front_ldo>;
+            dvdd-supply = <&cam_front_ldo>;
+            dovdd-supply = <&cam_vio_ldo>;
+
+            pinctrl-names = "default";
+            pinctrl-0 = <&cam_front_default>;
+
+            rotation = <270>;
+            orientation = <0>;
+
+            port {
+                cam_front_endpoint: endpoint {
+                    link-frequencies = /bits/ 64 <360000000>;
+                    remote-endpoint = <&camss_endpoint1>;
+                };
+            };
+        };
+    };
-- 
2.52.0


