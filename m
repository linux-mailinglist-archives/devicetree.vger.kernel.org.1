Return-Path: <devicetree+bounces-210548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22235B3BE59
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 16:46:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72F5E3BFA1C
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 14:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D400335BAF;
	Fri, 29 Aug 2025 14:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uVUiUrw4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6798632142A
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 14:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756478561; cv=none; b=sTi3+MOO4fdeGC+Bdf/XZQhiNUN0uhoJoBQTvQlFEq2FdWPbZbmew38GNQEf+RyxlUJcOeGOnzNPvbTphzFxfW2Xp4VN9b3K5m5nWSnZoLmvxcmWRzWC8i3sg9X9RN27PviUuy/tKzJSX6rfno5F2mFLAUz3CxmXo1kyv78LSXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756478561; c=relaxed/simple;
	bh=sNBRAIxNbZdgsi8xFjgbHnb3yy6AaM1inQVtnrPDCWc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KRmjcVIBoBYlyb6f0AQr7jzBltQnpHl8rphCVOTa3tFINVI9I8oNTRYjmWofVou59maVpC8md2XL5wJnV2K52fm43Veh60+XxdHuU7ExpJojcRSk6FFcAEfhLE+iO+k7bXA1TfD5e9wyhy8kX+gFZMHqqDsZbEwsX1sfPWvKpy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uVUiUrw4; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-55f52dd2bf9so261106e87.2
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 07:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756478557; x=1757083357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=se0PWCm1baVudHXLG+SyQGqop52+Sqr2SWWwd4AQrdw=;
        b=uVUiUrw4Xj1hCnG5QHGo8X4lZD+DSUhRlQPhcNACdxKMdZoWXdTZkpGPs8W+zPQIcm
         8g/xGBkC3BfiBb9SCECXE760/sqoRjcSF/k4HoIA/+8Y3kf8QB6QjNvoVz9YyS0T4Y4S
         CnOFjTrsz13m4BVWSqxoxDHGOuNZNVKbfgp3sGraldf3ccOYBNfP3Lu/HtKyhyd1CVJh
         dGgnMppsFAEfMTc/16MxIUp92Rn9QdGQxwuFntvjf6bsXdhu+EBPDFCkkfnuVC3qU81p
         lKhrW/8O0dDoqXX/zgcqmka/khdHM/whIZ9HiSbVI+DlO+qMSStu2xJVJpRmiZ+z8gLo
         bqJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756478557; x=1757083357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=se0PWCm1baVudHXLG+SyQGqop52+Sqr2SWWwd4AQrdw=;
        b=gri0kRl5lY5XGrPsKl2HpkB7Ue1Zm1dhjdnAmjXNZc0eiQjqgLJgNCAaOSYvdiglw1
         K1gsJoqPyeX3c/G9GBNDVtq83Kns7lXCqN7fL+sCOGfHo8L5UDlhsnvw7wt7Hx1gQwkf
         EqOG4Yx0mA6JBrjoM0T/d/Oo82HosT6eds0lyrSDeSuR0SvLOqMTJWPjkKUUbJu7Q49C
         sNXz3beLEjY9acz1pAyZAo/M9GgXkMN/Wg63d96be6p+8eyT6o9uDSFZxnVABTSq6Pjw
         aWGPyjRHTD4z27OFxym1fBZ0ezh62lbXCeCD3Z/eMBXGkHfA+Has2GIFULxtV0+t6L3h
         Bfkw==
X-Forwarded-Encrypted: i=1; AJvYcCUqBfzzAKmKDoV2fSESiZlcmmR/jGu04gSa/IUjWGZc2v/ID2y/LblWB3xwrjNpFFtehyNi/uG87CEY@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn6UXBTI5WZnYEsI1ZNXCeq7mJb3ngrgKa+K7Ev5B0htLyOB/j
	I3AiZXzEcltFcAu2MX6Bmwtnyk6IB7XC3bLnw/hEPtiBg4gNLlzdJRCx2Cj4zde2AuQ6X43N5Tr
	WAaW/
X-Gm-Gg: ASbGncsbOxBUYaVXcg7Z9czNa9ndxIkL4lOm162sQiG5+EZ1IQK5S3It/RKZ8GFhYrB
	taYtDGD8Q0UGjEkLav5aLIOHhBIEJObraMWk/ReL7DyBLogCo8Ir62vpGgDD2GdJF6Falo0IrGJ
	DNFR4j88MvNcNkyw6pvtHNmZ1AQLphl3dXpKN0k9ocCjrmwNcg+599JsrxY0s1GJE1tn5aS0O/Y
	1uiIkth7OJMPzGTswm3YXwGHonHWwUzgk9ltboQAkkM2FkgujrGYW5fpLBs5L2minZtPFqQSmtM
	LHbN9XZk8iC4F0mm8aUCoXJwKDHjRbAX9pfE4nsQN+Ynvf5uAzTJ8fo4R2TYWluHm9lmceZUv0g
	U7ZPqLeBEESfD778B5Nwb7QJ91Z27UqH2oEAdLoI1u8F/d9vwaF+szx29iOSmcMMdJ47oDNs=
X-Google-Smtp-Source: AGHT+IGGhGEuYb00NZbTBQMaSqX9j8TVeMHhp8tNShFY3jRCAuL/woaE/NZnmDD6aupoZ3Aqe57UFQ==
X-Received: by 2002:a05:6512:3b22:b0:55f:4bf6:efe5 with SMTP id 2adb3069b0e04-55f6b1dba0bmr283724e87.8.1756478557443;
        Fri, 29 Aug 2025 07:42:37 -0700 (PDT)
Received: from thyme.local (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f678452e1sm677644e87.85.2025.08.29.07.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 07:42:37 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tarang Raval <tarang.raval@siliconsignals.io>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 1/2] dt-bindings: media: i2c: Add OmniVision OV6211 image sensor
Date: Fri, 29 Aug 2025 17:42:31 +0300
Message-ID: <20250829144232.236709-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250829144232.236709-1-vladimir.zapolskiy@linaro.org>
References: <20250829144232.236709-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings documentation for OmniVision OV6211 image
sensor.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../bindings/media/i2c/ovti,ov6211.yaml       | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml
new file mode 100644
index 000000000000..5a857fa2f371
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ovti,ov6211.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: OmniVision OV6211 Image Sensor
+
+description:
+  OmniVision OV6211 image sensor is a high performance monochrome image
+  sensor. The sensor is controlled over a serial camera control bus
+  protocol (SCCB), the widest supported output image frame size is 400x400
+  at 120 frames per second rate, data output format is 8/10-bit RAW
+  transferred over one-lane MIPI D-PHY interface.
+
+maintainers:
+  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: ovti,ov6211
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    description: XVCLK supply clock, 6MHz to 27MHz frequency.
+    maxItems: 1
+
+  reset-gpios:
+    description: Active low GPIO connected to XSHUTDOWN pad of the sensor.
+    maxItems: 1
+
+  strobe-gpios:
+    description: Input GPIO connected to strobe pad of the sensor.
+    maxItems: 1
+
+  avdd-supply:
+    description: Analogue voltage supply, 2.6 to 3.0 volts.
+
+  dovdd-supply:
+    description: Digital I/O voltage supply, 1.8 volts.
+
+  dvdd-supply:
+    description: Digital core voltage supply.
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
+          camera@60 {
+              compatible = "ovti,ov6211";
+              reg = <0x60>;
+              clocks = <&camera_clk 0>;
+              assigned-clocks = <&camera_clk 0>;
+              assigned-clock-rates = <24000000>;
+              reset-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
+              avdd-supply = <&vreg_2p8>;
+              dovdd-supply = <&vreg_1p8>;
+              dvdd-supply = <&vreg_1p2>;
+
+              port {
+                  endpoint {
+                      link-frequencies = /bits/ 64 <480000000>;
+                      remote-endpoint = <&mipi_csi2_ep>;
+                  };
+              };
+          };
+      };
+...
-- 
2.49.0


