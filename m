Return-Path: <devicetree+bounces-234413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC57C2CDD5
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 16:47:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F11C6462569
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 15:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33A2B3112BC;
	Mon,  3 Nov 2025 14:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BPr2eF4T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C1B23AB8D
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 14:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762181814; cv=none; b=tIY6WZubaRcdF2+dYtLteQuQ8yeDc9jG3L8TgRb4daxQqJcGDPUqNTirlVAr4RUKovNJ2tqQu3iK16ZVo0lz2QzZMZh7otddurYCerZtkTTPCOHV5BUFZr4h/qO5cKUJa9hIEeMfT98qIXtGD1OTlAhYMbYY2ULUf0jL9zCDoVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762181814; c=relaxed/simple;
	bh=Cwc487Q7TuN+iZw77LSuYBkO6zlPKMprgNtjBsX8sk4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jSKUpr0PsY5l4VJ0STd+dNcGv+PGKoUG9lx8Dn5gL+NRbEExKgCWO3WuEKQlFfB9vyq1zmbrwtZMf5+kiatVH0R2OY93vY0sCrIzV7ViI9fdSPPQYc1ABNSMLfCVyW8kd225hpKn+Vghj953Lo1sudm3aTaL4TyQvqobKv0Oc0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BPr2eF4T; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-37a38e56dd5so6986841fa.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 06:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762181810; x=1762786610; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uRJylgA5tDh6J0HyV09+y5kblN0Saxh3CxXH4UQ+jfc=;
        b=BPr2eF4TjcjIxpq41SCmA4OJzGueFBpbSRuueOmCVKZc31GYxWEw4hxxrqd81aHkn8
         JLpQAqrvzNuR5xt9FYRxCplPZMbzNnIArons6dSp9EreobQr9XNzn38fTE8WBh+83fyM
         xYuZresJJ8EYu7q2rWorFazzWfxdcjUai9eg4ppxl++87UNb5EuZR5vRiXe/Dq8BDgP+
         QnVfWRpyMjrRXN+2Q4viUGC4SzEoz8lwlRhbr3mVb+kif3plTGnUcZvZC4DF/m/mVm/t
         SpN/4UvFsWEaYiMlpSejUwKdIcGgF0EwOHA/I4JvD1Rva5iPYOagfpOt97iGgxN0pVie
         kIqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762181810; x=1762786610;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uRJylgA5tDh6J0HyV09+y5kblN0Saxh3CxXH4UQ+jfc=;
        b=IaSkyq/bUb4F6wNKXUt4uA0jbFkBk5i0ZzrkdkwZqIEPpKgevIbXDqJad0y8yIiKhY
         Zfp68Sh492pQfUxFOiLtMvPj5P7nMoF3zCuDM/j23TPNFodiaQWjMEGx/SdjyDqM0Zvy
         lMdqDQQyLEuEKjwdBbmXSTaLIQYBuauxhl/rUeQmwcWhXTC7U1QzrkDSboKTtEK7wsMF
         IQFyZHuyD0Zq7eCOKq3OIjasvNlaCx8DOA6XkoNuW38LMDDwX4+8gqK2r+rHOMbbfGU/
         2JZQiTbKfrFruEg7MSXWa9SDg6Tbomr8H/zTOPjNDzUWeMF8e6ehhHU/k+XFmtIge8YD
         TCHg==
X-Forwarded-Encrypted: i=1; AJvYcCWCwPrnUUB3Tny5uzKl1ERdVbWgy80h4YsAXrpa3+1gLF06VMS5y3KqSQL1l50gI9U7k8AdQhXMUMtR@vger.kernel.org
X-Gm-Message-State: AOJu0YwA2tK7ackl4IzoyXEDxDc2huCcYfmigXYS0j9lHVglCKJRtijx
	9hT7NN8F8110LdLgs5RUV75GUJssX+ogVVpSs4+oNXL9nmI+lOmbFGts
X-Gm-Gg: ASbGnctxgMyqicX4MWHi9ekoJr1ZwtjPyXoQeeWjXTMZ9L55vp62eFNFqN411JQ+s+1
	5z1SdxO1XlReFyfynxKOl3/ItLcKyhagDzQCyeov+hYcGhvquEsbkLw62ENL8x/rOcd4h13UEHZ
	G+hbTYQrUHui8hNMXP/+NA9oAAp29irJ6WLU9dX2KPFxdfKtgSBEde8Fsx/zoa8iEgK0/bW34G+
	EXK9BpQc+hos4idtUlhMVfWEiL3oQc6UPL3zU7Oca2Sub1eIOrkiNtD+CjL4hNIKkCQ8lWj1SSZ
	daS2IFWaL5NFqshsAJrkT/yh9QrxJB1tTM5TAWMmtySN6SPfuyt0j/Xxi9RBVtcR3/CS6WALACg
	O/LNjVaQbzT2gxOg2OTdNqlP9X0FaOORq4QCu6G5oMI/bf8CP5Bj2AkcinQ6DDUZO7uRbeERFNf
	yO
X-Google-Smtp-Source: AGHT+IGJeEBnjP4R5psIFnDlYx1WzqziKeHDlwCz84CqG5SR2VgxHltzzwJIDJwksgTuiJMuglMA9Q==
X-Received: by 2002:a2e:b8c1:0:b0:37a:2c11:2c7b with SMTP id 38308e7fff4ca-37a2c11330dmr21136541fa.18.1762181810210;
        Mon, 03 Nov 2025 06:56:50 -0800 (PST)
Received: from xeon ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37a414d58b3sm937061fa.18.2025.11.03.06.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 06:56:49 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Hans de Goede <hansg@kernel.org>,
	=?UTF-8?q?Andr=C3=A9=20Apitzsch?= <git@apitzsch.eu>,
	Sylvain Petinot <sylvain.petinot@foss.st.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Dongcheng Yan <dongcheng.yan@intel.com>,
	Heimir Thor Sverrisson <heimir.sverrisson@gmail.com>,
	Tarang Raval <tarang.raval@siliconsignals.io>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: media: i2c: document Sony IMX111 CMOS sensor
Date: Mon,  3 Nov 2025 16:56:28 +0200
Message-ID: <20251103145629.21588-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251103145629.21588-1-clamor95@gmail.com>
References: <20251103145629.21588-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bindings for Sony IMX111 CMOS Digital Image Sensor found in LG
Optimus 4X (P880) and Optimus Vu (P895) smartphones.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/media/i2c/sony,imx111.yaml       | 105 ++++++++++++++++++
 1 file changed, 105 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/sony,imx111.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx111.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx111.yaml
new file mode 100644
index 000000000000..20f48d5e9b2d
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx111.yaml
@@ -0,0 +1,105 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/sony,imx111.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sony IMX111 8MP CMOS Digital Image Sensor
+
+maintainers:
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+description:
+  IMX111 sensor is a Sony CMOS active pixel digital image sensor with an active
+  array size of 2464H x 3280V. It is programmable through I2C interface. Image
+  data is sent through MIPI CSI-2, through 1 or 2 lanes.
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+  - $ref: /schemas/nvmem/nvmem-consumer.yaml#
+
+properties:
+  compatible:
+    const: sony,imx111
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    description: EXTCLK with possible frequency from 6 to 54 MHz
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  iovdd-supply:
+    description: Digital IO power supply (1.8V)
+
+  dvdd-supply:
+    description: Digital power supply (1.2V)
+
+  avdd-supply:
+    description: Analog power supply (2.7V)
+
+  port:
+    additionalProperties: false
+    $ref: /schemas/graph.yaml#/$defs/port-base
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+        required:
+          - data-lanes
+          - link-frequencies
+
+    required:
+      - endpoint
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/media/video-interfaces.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        camera@10 {
+            compatible = "sony,imx111";
+            reg = <0x10>;
+
+            clocks = <&imx111_clk>;
+
+            iovdd-supply = <&camera_vddio_1v8>;
+            dvdd-supply = <&camera_vddd_1v2>;
+            avdd-supply = <&camera_vdda_2v7>;
+
+            orientation = <1>;
+            rotation = <90>;
+
+            nvmem = <&eeprom>;
+            flash-leds = <&led>;
+            lens-focus = <&vcm>;
+
+            reset-gpios = <&gpio 84 GPIO_ACTIVE_LOW>;
+
+            port {
+                imx111_output: endpoint {
+                    data-lanes = <1 2>;
+                    link-frequencies = /bits/ 64 <542400000>;
+                    remote-endpoint = <&csi_input>;
+                };
+            };
+        };
+    };
+...
-- 
2.51.0


