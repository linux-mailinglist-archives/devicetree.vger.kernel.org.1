Return-Path: <devicetree+bounces-243839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D139C9DB32
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 05:03:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 930ED34B2CA
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 04:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D74A526FDA8;
	Wed,  3 Dec 2025 04:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J5jdYb10"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB43026F2B0
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 04:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764734584; cv=none; b=W7C/0ENscVXsyYdYtPRXAOBevuYj88fgueZwySJmUyyDQxyLtUQcavki7gl7S9QKEPTbUR0bCn4TsUzA3bB202/lIOII2BdBb+09BISqb+AUPw4Ig+xGnnJWmbBB2pf5daD0uaZIDkc0O+rO6WG/+zGvRPtojv0Akm6srI/TDTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764734584; c=relaxed/simple;
	bh=saWiG8xBbWrVikPvLcHvf4svNuw21bKNWGsW61HfF4U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hn6yqnPxyHAWg8TVhtKWWChzHkCWNOVNSl3SkZAGdf+VOet9CCAMANZrJbzoMuYixe5XrzS7IONpZRVxSGyuC/mQ1RXyKBYzQLQZyYGzfGt8j3gJe7/iQEt5Zmha/nQJpvVLd6+TvOia7oU7L3aC7wbx/rH8Icn7UedV6EEZSdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J5jdYb10; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-59474f1308cso414496e87.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 20:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764734581; x=1765339381; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dYjS3XR8Me4P3FqI+QDyTGuqgkr9+a18DJhvBYko5Og=;
        b=J5jdYb10IX6zCyc8IfZ6WskcMYb4d3iGANeOdIiaDAMgXxkA4l4XJIDTI88Pg2Hh+U
         dllN//m5KNd2QHqS57/xRUrEiqMz/quaZz3NWULDBc9Se3vVOhHY19EoJ6ZlhRp30spf
         Ykpt1FxpsXPKDKikl9Hy9E1a+a/1jMD81hhKRoprmzrR5wWAVegouzg1Hp9jY7b2d1ww
         GEW+kjnYpyTpJxDYplfhSv0U0U5l6DfvbF7cJ7FpgIRrlolOtcBqQdZAOq/nKi2wTMy2
         3w/M24EGr02jZ1txtjEe5IEmEDaKoG5tQt8rxex4Q7iVmB5aWCzAr61BuKtQW+WyRXAa
         fE8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764734581; x=1765339381;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dYjS3XR8Me4P3FqI+QDyTGuqgkr9+a18DJhvBYko5Og=;
        b=gfTrMbfuXIFQSCw38XNA1cmKGrCrUdZ9SVz+vLgXKJjJs2eJ2w8jgdSWHQU5Xeu24C
         0PNZbtVMqP2k9ojYCZt4NXA0XtpqrbkFwF7zzDSs2cwHbSzUJkLIX3sEJkyUJQCZhWfZ
         0HtKoRZAuqQC0t2TCgmpST6g4M8VWjN3nbet4Vwc8ddAODdSyESjkLl+5JaSb6bvWLii
         UInyqQik0sHvhLfrrGKJDeaoYuAw4pY2S+GceSDKlzUJg5mMTRojNgs1HZDYqdBX9Znz
         kGo3NO5WU7QbJhfoYuU5u3oGa0Y97huvvZJOpSOI0Sftm/DR9GTwDpGt8DkebX4OfUlL
         QNzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYfspaJgOWhv47t8J06pnMPqpZDxDsOeGrscNX4oWZLHi/cFgKe9VoartIAgczy5Um/fGe472zlwJN@vger.kernel.org
X-Gm-Message-State: AOJu0YyYpk6cH3aN5obqNyFsLg/6gkHd/VChvKciMi/bt83VZMRciwpK
	fDdXLk3bZUdmnH3774f68uphPJlQvHIls3BSNCQtiYxHD926CM/oCFoweW2IWLBD2GdUcOQmQ4l
	zu00I
X-Gm-Gg: ASbGncstVBi7iamOZbkE1sx7kqYX57HX2H0yTNI3bLs3B1/TcfWgTouuqyTSkwbeVLl
	jkT/HTzhMMMcBrCe8+o6qEbwVJcXwzOqOsKHHV9cn36Lcv1rUhpJqOKi2HOsDGgI9TPotiu5wFD
	mkng+/8xDuueEL00awMURwd/8WUF3Ddn4XiJWGIubQiZsxy3PpoX/zNBh/UVYkGl18uIrS0qDU6
	fD49KrFAlbv1aER3w5asUkam6Bz6lamlS+w7ElQeSdTjUk4k3U5HC8W8fpPdEz7Ofwl16imNrXG
	xQqcO2Hte/cIc+AFJSzO8wSLwzkrlRJrDUj0+wpRR0LtsD0l/qpalM2+Vu1VQA36Kfu5awnYifG
	XY6FkUDNg+04w+kq2pI2bfa7uSroYst3TuCC4YD28/EbtzYaVVF558zmmgtIO9QFAU7Q87ew61B
	WsDR8753abMzhNKkPX11v61R1CtHxBNnNLpl0gVVPPjj+1OgqHwIRQ6w==
X-Google-Smtp-Source: AGHT+IFcfTM3kqM9LjvHHlSYO4A2jT/l8RAigc8DvbluGZOZhp8NJ+AXKJI58lTKG7cb4Quq1CSoLA==
X-Received: by 2002:ac2:4c49:0:b0:595:9161:f837 with SMTP id 2adb3069b0e04-597d4afbd47mr1375e87.4.1764734580981;
        Tue, 02 Dec 2025 20:03:00 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-596bf8b1082sm5210181e87.29.2025.12.02.20.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 20:02:59 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: media: i2c: Add Samsung S5K3M5 image sensor
Date: Wed,  3 Dec 2025 06:02:39 +0200
Message-ID: <20251203040241.71018-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251203040241.71018-1-vladimir.zapolskiy@linaro.org>
References: <20251203040241.71018-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings documentation for Samsung S5K3M5 image sensor.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../bindings/media/i2c/samsung,s5k3m5.yaml    | 103 ++++++++++++++++++
 1 file changed, 103 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/samsung,s5k3m5.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/samsung,s5k3m5.yaml b/Documentation/devicetree/bindings/media/i2c/samsung,s5k3m5.yaml
new file mode 100644
index 000000000000..434f15f64bcd
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/samsung,s5k3m5.yaml
@@ -0,0 +1,103 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/samsung,s5k3m5.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S5K3M5 Image Sensor
+
+description:
+  Samsung S5K3M5 (ISOCELL 3M5) image sensor is a 13MP image sensor.
+  The sensor is controlled over a serial camera control bus protocol,
+  the widest supported output image frame size is 4208x3120 at 30 frames
+  per second, data output format is RAW10 transferred over 4-lane
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
+    const: samsung,s5k3m5
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
+    description: Autofocus actuator voltage supply, 2.8-3.0 volts.
+
+  vdda-supply:
+    description: Analogue voltage supply, 2.8 volts.
+
+  vddd-supply:
+    description: Digital core voltage supply, 1.05 volts.
+
+  vddio-supply:
+    description: Digital I/O voltage supply, 2.8 or 1.8 volts.
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
+          camera@10 {
+              compatible = "samsung,s5k3m5";
+              reg = <0x10>;
+              clocks = <&camera_mclk 0>;
+              assigned-clocks = <&camera_mclk 0>;
+              assigned-clock-rates = <24000000>;
+              reset-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
+              vdda-supply = <&vreg_2p8>;
+              vddd-supply = <&vreg_1p05>;
+              vddio-supply = <&vreg_1p8>;
+
+              port {
+                  endpoint {
+                      link-frequencies = /bits/ 64 <602500000>;
+                      remote-endpoint = <&mipi_csi2_ep>;
+                  };
+              };
+          };
+      };
+...
-- 
2.49.0


