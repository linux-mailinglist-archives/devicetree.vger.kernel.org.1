Return-Path: <devicetree+bounces-225775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 176FBBD0D70
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 01:11:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC5C53B45DC
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 23:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8D602EC574;
	Sun, 12 Oct 2025 23:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Un63xMx2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A104328DB52
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 23:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760310674; cv=none; b=TCBbvTZI9+jXssYXOF/QyFw8hTXz0ZxZdWnz4lk3fQUKQ5pnIhnvpuszuXCNrfOT/2Ji1SSbAQxyF8mN20j1H46AsrhOIyjRtQSrBe6p4teVEVkrSdm0t81ioyzrgm++j0O0mPaJvyTY5eLgD9BH5gAqiOW3A4BDETTwnPndYVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760310674; c=relaxed/simple;
	bh=G3EJERYkYo36nXqUqZ/btoQb3Gm7FOiIfE8vVYGNiX8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NYs52SvZXpHCDXcav5bzFWL/IUDEHxHkYo6eQhivM7G0fzSR34ICh9eDPw8sOV0aVhTwU30zG1UwMnsWCMeGGGQHK3BoSnI6ly9msVzhp90rZheiYhErKABXoGMmLcqq2WHY6ANjom3F6maOkeKkwAuff9d/y6Xgp+4oYZhc+zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Un63xMx2; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-58af7f8b8b3so537816e87.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 16:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760310671; x=1760915471; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PfqFvEFmyR4c+Ct2H1qHayDpwyxg8CcrdDOAMIuLwuY=;
        b=Un63xMx2pYCRLX9vu7V37Qx/WsCo+LQW3QKLe6szFM1Z+kQtymijRp1ypQrXOOpUgy
         EJw84Ij2aaVbZLiTgxIDeGu/FhEaR0J+FYBah5DrbqbHlN6P2LJtjqKQqXsjX2f704bz
         /B6UDhZ13RcPA93037IPptP/KlbK6DwUe/S+H//yRA+bi+TwK4+1gRbwNyq3wjVNYg6g
         YZqxNpSz/NdDwo0aBeKmN1SzdqtKrpphRt35Qy51QU8ZSPWvMkHzakXJZkMAv+p11g/s
         GCTmIvZqCJqrIKs7jm4Puj6ft3xKyDTcZtJQUybDsPwYkSwGF9Qw65NInjXlY9l27lic
         Rn6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760310671; x=1760915471;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PfqFvEFmyR4c+Ct2H1qHayDpwyxg8CcrdDOAMIuLwuY=;
        b=AIrTSBEFXbVl46Pn/algH6gX5c8qOU9G56tuyWhULr8++5E4zkvOCY6ReO+SK2dEq0
         EuH6N0G+VULocombxBgK41BY6/AZCWLj0V3yoWL5rcRryTsbd253ICL8uEcryMAVR3+P
         Wi2OX88WpPVSTLQuEi7iekOsN9tKtl/fIsN31gR+CmiEAf31FfjBceFFXlv+1sd+4PQI
         iisCDZBVzZHmEFDDdmv6su1xntlQY3eBrinG+SlpwpbCHVBVHKKgiHHnmJQvQtERP3oX
         SkGui694bHq9vhImCjTe6yO/1FEgzkd/62BatGm5JdXNRzEGDwhtLKA9wvQRQKbyoY/X
         R3Eg==
X-Forwarded-Encrypted: i=1; AJvYcCW27vszRDLCo+73zTQVP9csdfoqWi8tEUMlSyumafSV1aawtqsXXS2dcFLrWW3E+hIizrGCp1IenPOX@vger.kernel.org
X-Gm-Message-State: AOJu0YyHJ+/JiDeoKjWFpNilASsAvK/vhCM/NVBwJy/1MfV3NYnu4EHd
	wDD9ii2Bu0ftB4BUrXW/eziXIVCjqINFtF6s56l1J804U3LXGoAnbI1DTr+AgZ9WOyc=
X-Gm-Gg: ASbGncsb3ny9g6T5pUFBY5i47SdFLn58bfWf51jkj9uIsIbX2Q5qYHlp0UlVpKabZvD
	3Bo7aOtPoajcc6XfAweCxad1nlO30cOBeCsmkKKGhWoSJgV7RMqX/ysjfhn1KSlVptVTa9hOuaS
	lvjpHBtfAGeWsEaNqSdb4/hec4/9sMSZUY334xvezvkL6lcJOToiUcwfi3fmJPZsvh+42odKAjI
	cJxOwqHP096D55zqUGcjJBfunvWtg7oSiKZXWosOA0uyRw0vD5/aklKfn8tcrk76JDZkkovV6id
	2jR6X+R2tUmUFQHRy0Gbul5O3INQgWosJV0x/28jPQBZZ/jxVHMeKlA3TGkkaCYD2BKcB6ZKyBx
	YyP9UeF36126XP4p/t9cRrl6dTNXPp11mp7VkzLnAk2s0BZdGucM7phYtcC3gnK0IrxYzHnt7ZG
	ApHfEvVGGHDwweqMOtRJEL7/Q=
X-Google-Smtp-Source: AGHT+IGc+Eon6v49iFDj2R+JjrFCJiwPTBHDPq8eAZydtFIPh1A9m3G6pRsrEsxgpI8eI/Bulm6jVg==
X-Received: by 2002:a05:651c:b0c:b0:36b:f096:ac24 with SMTP id 38308e7fff4ca-37609f72e80mr26387831fa.6.1760310670179;
        Sun, 12 Oct 2025 16:11:10 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762eb7328bsm25258741fa.56.2025.10.12.16.11.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 16:11:09 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Hans de Goede <hansg@kernel.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: media: i2c: Add Samsung S5K3M5 image sensor
Date: Mon, 13 Oct 2025 02:11:01 +0300
Message-ID: <20251012231102.1797408-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251012231102.1797408-1-vladimir.zapolskiy@linaro.org>
References: <20251012231102.1797408-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings documentation for Samsung S5K3M5 image sensor.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../bindings/media/i2c/samsung,s5k3m5.yaml    | 95 +++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/samsung,s5k3m5.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/samsung,s5k3m5.yaml b/Documentation/devicetree/bindings/media/i2c/samsung,s5k3m5.yaml
new file mode 100644
index 000000000000..053527cefc10
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/samsung,s5k3m5.yaml
@@ -0,0 +1,95 @@
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
+    description: Autofocus voltage supply, 2.8-3.0 volts.
+
+  avdd-supply:
+    description: Analogue voltage supply, 2.8 volts.
+
+  dovdd-supply:
+    description: Digital I/O voltage supply, 2.8 or 1.8 volts.
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
+              avdd-supply = <&vreg_2p8>;
+              dovdd-supply = <&vreg_1p8>;
+              dvdd-supply = <&vreg_1p05>;
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


