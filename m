Return-Path: <devicetree+bounces-230013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6C5BFEF61
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 04:54:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 776324E1711
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 02:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D6A221D596;
	Thu, 23 Oct 2025 02:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jd6GUXuy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2F921D5BC
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 02:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761188047; cv=none; b=Yl9PQskcAYOTr5rwgVL24BMvAiAOy/owZaIpSPvZFf8QLVmICGcqQdpiYw2MtD27kWQBXe1X5LHAkGqlx0Jl8KM+g9QXjf1KgAxbqcqW1E2FwJ9cxkmO5b4ev55yvAiaIFo1WX9ZFAn6saM7K+WZkaWeIU+NWMlXCnvLUW4n02I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761188047; c=relaxed/simple;
	bh=DJQjEVoi53sXw4nFoyPKWd577cFyE08NRxA8lyvzhMs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VNIKzlUyYWAXKIXIX4flyI5gDyhiNivvVjbGqNp6dsfOz56nJIEk02R8RdnKXgwNpxuRAXNCchoUWWIjAkAV0GJqPy0UHjrodEU9PAyL50mc9w5pFv+hqjuNK8NTyqOGmuI/VIJU0G+gXQ9hLbpRiFXwfs4Ys7FgZ+1Cgfc+ZKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jd6GUXuy; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-592f2f08168so48916e87.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 19:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761188043; x=1761792843; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qdNNZle1lsq5bpeZ/5Z6CjKvJklp0yFJe0uf0LN199I=;
        b=Jd6GUXuyKn54zbUFPmFNuyzei+4nXxYEnjjuXCcUx3wfOGLtasqhUMCNnuHCSnRSDw
         CLmtGsHrUlu56E22NfobumJWjmXyTKKbC2rfuzzER3c7oBCjFYNVE6GAYVUY519DbWUV
         ghPxj4pfddcBaWRJwTVsMMuD2q99hso0kXIHGvJBZLjK5mX+PEfZax3RnCRugzSnif1i
         +Lp2tUEQejDEcrIPn5Pm69Ldn9J8v8wxfGx3GhYMFRRw3JJq5yx76ieIBP0QKTFgwmn5
         lo8siDFjlYyrlUKdIhbMbAp+1AJhyJ8y+p6652Rbja28bei+92nPlmeBAJsm7+AWDzZk
         GBew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761188043; x=1761792843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qdNNZle1lsq5bpeZ/5Z6CjKvJklp0yFJe0uf0LN199I=;
        b=iGrrSTq0ZOOWm4zCoZekSO5VU8aoXKdpaDMLWm8r/DakZhisZ2aM6afASZwpy8d8dM
         SSZwZVTYH4Bl/kHM7q/Jn7yzO0nWV32jy3AEGH8vN+Ao7ITRrADBTzQbfjpPDiZpJ2T0
         H0bjyHP1lwAYOFLQ/lp79RTN1VcA3MPnZ8tiOIJFsMUw1o1NNbj9nywzxZq76w2GKwOQ
         bf1RxZVVTsYNHy5l9p8wS/5FDwC0i5n3S1gRb039MWk5l8MSFYpnUFobm7UHtonTP/hy
         LOzhvI7CW6uUN5N+FrEGcxvnafKRF8lMIZTFkVJJZm6/cbpYU1o/rL326nD+gEMhQ6jA
         5n6w==
X-Forwarded-Encrypted: i=1; AJvYcCVZXiKOX/iNbq0oxl5KNFqdLo/IO5Bk65/tKT5rWdtt+8WQzxhO86/yl+qYhG9Uf7IszXgyB2udmdrI@vger.kernel.org
X-Gm-Message-State: AOJu0YzPCumF2ylQRLJjYl/7pzLHDotVCoioVzQQXsWhjPwplu+vdR51
	deVhCzu/p/KR+U8xijprg9YVz9ZEhc/gtTGd9+PdE36uBGgICjL9NGkTx8wmhYxGDDk=
X-Gm-Gg: ASbGnctnq6UPbLaObdVE56nAIFaSbRvyIuylf5s3w0+TNaeHK8vTLMTnlgquwmzQ1P6
	hdkR+tBA3ecwlZiedpz+GoylwaLbbaWHPfQEvEb8r1GXKoZYCs4IRccdfFGKki8DASrdmTQWxED
	ljCWdZvsJhKHnjpzvd4W2n/3BelHm/MN17MQDw0Ji0YjjtNU448/wi5L3cH06ldhRlX3vAu8fZ7
	4X9Fdkenp1nabs6UWJ3RsxXKYAOAiXavIKSFcVSnbBAf1CtoeKEH41Xo1uQ0nLcpjPZGjhFdRE9
	0YPbKn69Vsp5+oY5dr1GUzXMmDkeYAYGHSOwgEsk4Q3XIOiGiReGipJ1BBAXpot1ii4EtAYqwN4
	uChQEkWzr2io8wM5Hd9XhDu4fP+HWPekswx+M7iNIDNEQUdKhQ8YTzJ7jvdHsoJKIfTSvaYuvSD
	WnhAUVO6a+Twz5nPnDRxhSI4L4Gy8CT6RW+F9DAcZUTEVAQPGIqbLA/Q==
X-Google-Smtp-Source: AGHT+IFw0V9gjFQB9E47Mf59e7DDZshCunsn77D2npfvfHYV8ll6tYsiIZtwLFwbwtO+6NUd6G63yw==
X-Received: by 2002:a05:6512:224e:b0:591:c726:4f77 with SMTP id 2adb3069b0e04-591ea42aa44mr1657829e87.8.1761188043339;
        Wed, 22 Oct 2025 19:54:03 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592f4d1f26bsm346957e87.77.2025.10.22.19.54.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 19:54:01 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Hans de Goede <hansg@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: media: i2c: Add Samsung S5KJN1 image sensor
Date: Thu, 23 Oct 2025 05:53:55 +0300
Message-ID: <20251023025356.2421327-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251023025356.2421327-1-vladimir.zapolskiy@linaro.org>
References: <20251023025356.2421327-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings documentation for Samsung S5KJN1 image sensor.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../bindings/media/i2c/samsung,s5kjn1.yaml    | 103 ++++++++++++++++++
 1 file changed, 103 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml b/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
new file mode 100644
index 000000000000..f0cc0209b5f0
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
@@ -0,0 +1,103 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/samsung,s5kjn1.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S5KJN1 Image Sensor
+
+description:
+  Samsung S5KJN1 (ISOCELL JN1) image sensor is a 50MP image sensor.
+  The sensor is controlled over a serial camera control bus protocol,
+  the widest supported output image frame size is 8160x6144 at 10 frames
+  per second rate, data output format is RAW10 transferred over 4-lane
+  MIPI D-PHY interface.
+
+maintainers:
+  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: samsung,s5kjn1
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    description: MCLK supply clock.
+    maxItems: 1
+
+  reset-gpios:
+    description: Active low GPIO connected to RESET pad of the sensor.
+    maxItems: 1
+
+  afvdd-supply:
+    description: Autofocus voltage supply, 2.8-3.0 volts.
+
+  avdd-supply:
+    description: Analogue voltage supply, 2.8 volts.
+
+  dovdd-supply:
+    description: Digital I/O voltage supply, 1.8 volts.
+
+  dvdd-supply:
+    description: Digital core voltage supply, 1.05 volts.
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
+required:
+  - compatible
+  - reg
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+      #include <dt-bindings/gpio/gpio.h>
+
+      i2c {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          camera@56 {
+              compatible = "samsung,s5kjn1";
+              reg = <0x56>;
+              clocks = <&camera_mclk 0>;
+              assigned-clocks = <&camera_mclk 0>;
+              assigned-clock-rates = <24000000>;
+              reset-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
+              avdd-supply = <&vreg_2p8>;
+              dovdd-supply = <&vreg_1p8>;
+              dvdd-supply = <&vreg_1p05>;
+
+              port {
+                  endpoint {
+                      link-frequencies = /bits/ 64 <700000000>;
+                      remote-endpoint = <&mipi_csi2_ep>;
+                  };
+              };
+          };
+      };
+...
-- 
2.49.0


