Return-Path: <devicetree+bounces-252170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0263BCFBF43
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 05:30:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6ED1530090FF
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 04:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0FD82571DA;
	Wed,  7 Jan 2026 04:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Oe6x5Cyp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED6DC225417
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 04:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767760229; cv=none; b=AI99nV1knSWvXN8L/MciIcS5o4QsuHsATXc6V96poIF/BzK0rC2KroWtcgjDlpKH3PRd7rKhbV+2Bs84AkWmfyckKTr62OjeHjnuvLu3bp8J8I74uZlpm4xlyi04XOjWUdSTHzmxRNx7wVBvoQj1LMY5CcIV5xlbj5lvA/4GmMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767760229; c=relaxed/simple;
	bh=2mAOAFc/agjI54Nr7+sfnOZzAwJp3gIykYm59KR+z7k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oDHK7AUajBFzoGjhEr4BngFXx7DfBRc2335xFfXKqxeZxuXE7wtdpgDegmOxagiWIaKY2Q9d/gH+Lk5AIbeh8OhXu852cCxbmqwPOiQInvGNDgtCDBp2piGfHwKsjg+ivCvlfF7la/vDrIhcyFon/lRTzS+T9B0xDeqHxCNmlWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Oe6x5Cyp; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-8c0f15e8247so218627085a.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 20:30:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767760227; x=1768365027; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fiyoDmK3zuMseKoGDWF5UAGrYB5nGzeQ8RVPJ0LAKdg=;
        b=Oe6x5CypS5rislHeRkKnLmPD0UiVL6J7idHaI+WDs31xWKh/lr0y1sl0gju/gxoRVi
         3K+x5nVXBs7CP6LndF0POB51Nh4Zlt6EW6+2VGtvJlZuS2eLI1mtIkoStMs3FBVIu4IB
         kyNVaXIQDSSwm9tg0R6a7XZSy+iemSqd2qNvPHxskGAfpc2HcHn1Wv/5AmDhBgoniPtR
         pipdaGIWebQ+kn4jSFr7mMkLe+5rRiFny/swPernsRvTjfPb2yvHJe36Ii83fdOiLAr1
         TIKi3SQ3DAJjbX1Voxu73wFXFUvlj3PK4ykXZg71ee0gQ8c6B6eq9R3pBCe+Cl93vOaI
         7Glg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767760227; x=1768365027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fiyoDmK3zuMseKoGDWF5UAGrYB5nGzeQ8RVPJ0LAKdg=;
        b=SlZ2EiCHwThaUL/gqjtJGuKoEwGDtJEUyouutBUqcsM89G0NgUkNMhBVLAscc2yLhA
         lSF7iZNE7meeWIzQJTNB5pWDaNwj8QJ/tULqtadWi/flFUYuRfuYGxzkxQcvovBHfTuE
         lA/Z8ADqbYHnQx6pjTjCz+BQQ8Uiog9j0ryd55zejSdI3rZLoY+KM7r7fIPvUNIwQUkc
         MOymX4cUnQC2m3bN0kvi+S1yR4o2yip3h57Vx1VekyGCHFNZ6ShBCbQVO4ZQc/g4cem8
         uv/C8SucyjuVuzTduhbXC6Mwd5dor702Z17TXDXxQUjH9KKtx2eZGTNCXb4vMgCSvFYk
         IePg==
X-Forwarded-Encrypted: i=1; AJvYcCUAjNzaG8Nr/h/bWEg+pZej7OpgvrsA9OIN5KHhYZ1/hM8eo6rdrfYtx9FGM3f048PKINL5KmwQCbwV@vger.kernel.org
X-Gm-Message-State: AOJu0YyB4UWKa3R1Yun+TtE+JW9AcP2U4s/D6Zx0MTo+QUrRkQXBDOFt
	jk+m7tLLGNRuPCrAh286bq9ZM0T2qavrnyBAf3lomMrK320qoV8xj+nn
X-Gm-Gg: AY/fxX4KnrRaeH3cJNY4p/856Z9KwHD8MFEUXbmkPeq3AGvcBo3axVMQl6Xt0E7qAuJ
	Apdu3VoQ7RGOZdLRD2SZtcT1duFFW0HHubH3QhEnr/EcxkshC9UNxAHutjv+JglQ3kN21iLMOBU
	NuaeIvOewwkau85PakEAq0w0QpkR1WP1BHjpeKLLfrTaRFVB+BQxneMGCNG/DjrkkcNm9IFxuA+
	8lLhsku0ON/paOhSkuLNLq5q+Epzr0jJd4GcPO3on1d//TY8xN10/WUN4XzscU0x8D5jDzocU/Y
	K2C9lUYJA6dI99NgtqsYsFtVJ62pBBWTgG/ukg+XIYM1aYPtWImmGwRDuLu40mU9i5pENu47Z5E
	XDBntnhFSxoWc7v/kzzqR14Zx8D69eLSWmQM7fEM70M4EXMcf0DQ/xySjsdvwe3h0iiBriRSVTc
	dFEtmBSLgJMcRUquwMjzxxwMzYZihhrdRmH5mVl7uxwYCY7mL4anXeQ1/ieKYMf5H5YqyPEiZ21
	h0=
X-Google-Smtp-Source: AGHT+IHWMHIfFGCqFRydG39OHjSg67TX+mHLBysALb8NVfLYBS1bljpRTSn7qx48KsV/yjCdVs+q2w==
X-Received: by 2002:a05:620a:298c:b0:8b2:e986:2704 with SMTP id af79cd13be357-8c389369d72mr167201785a.6.1767760226868;
        Tue, 06 Jan 2026 20:30:26 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f4a794bsm308762285a.9.2026.01.06.20.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 20:30:26 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Robert Mader <robert.mader@collabora.com>,
	Bryan O'Donoghue <bod@kernel.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v6 1/5] dt-bindings: media: i2c: Add Sony IMX355
Date: Tue,  6 Jan 2026 23:30:40 -0500
Message-ID: <20260107043044.92485-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260107043044.92485-1-mailingradian@gmail.com>
References: <20260107043044.92485-1-mailingradian@gmail.com>
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

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 .../bindings/media/i2c/sony,imx355.yaml       | 115 ++++++++++++++++++
 1 file changed, 115 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml
new file mode 100644
index 000000000000..33d253ca0e4f
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml
@@ -0,0 +1,115 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+
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
+        properties:
+          data-lanes:
+            items:
+              - const: 1
+              - const: 2
+              - const: 3
+              - const: 4
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
+                    data-lanes = <1 2 3 4>;
+                    link-frequencies = /bits/ 64 <360000000>;
+                    remote-endpoint = <&camss_endpoint1>;
+                };
+            };
+        };
+    };
-- 
2.52.0


