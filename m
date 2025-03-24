Return-Path: <devicetree+bounces-160149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AABA6DA56
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:52:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1E3EA7A770C
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:51:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E933D25F7BA;
	Mon, 24 Mar 2025 12:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NP+xK7Fw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D65525EF9D
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742820709; cv=none; b=FjEvIrhKIW7eADwSD29bfnMJCApfGEQMi2dbUbPVKH6t8d645OQxl11G5wZGTM6Xz+she0J5rEnAvnMMCX0nJ/Pim49oVBS9w1rEd62ZnHdihjJHm63qHvJUW0kcelxeHqyP4vBxNFpYa61lQrEw/gPYr6mVhce2MzzS1BAR9Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742820709; c=relaxed/simple;
	bh=5xx5FlSKyFLZJzr6V7Uye9kG+TXRdex/gunTUYdSsNM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HwBPu83tMDOsIvu2pOMIsvihmwanWNrxTErRgIg9yJq8qqOjkhpOQg6nCBBSeIVCUC+HxMNTxngQR9SfAGQ4OJh3ijDY1hjOEOKAqiGOY3eLGM9IkgQIdO4p865xkhcyKCesTz2gIYTuXDB1tHtndsg86OyPSdnhY1P9Hme+Wk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NP+xK7Fw; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3912b75c0f2so290786f8f.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742820706; x=1743425506; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kUoMpr+FmTJUUYgunEAsWmKDX1DoLLbcuPSMJE5oesQ=;
        b=NP+xK7Fw++10iicRo50MFXoOH+THisvuEjDQ5+muT3sN7nbiMPJCfhnlcZ5RmRw/VU
         xtZIvrHUnglYK8dfRV+Bvk00JyqEEBNaTAYo3Yt7mKXJTWktlQwYzWtkcTCQZPeO5nAs
         5XMj3Kiv1PoTm8BwAJgu2B6sR3b8h0A9ea9nWC7Vog7PGbPbD0jMYgP+Jkm2GWI+56iq
         YKPn0LTQwCx5SOwXl2XGJ7mfT2WEhegQn7cGcfq6BxzNsuSqdX6g7FU3fsJaPFXooCeX
         HrGBKXiNK2Sw1r/Yq87qHqBfIlpv2NFORQwodB8Eh9TxqM3kELn8XwhjA5YuETNcN0vF
         3k2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742820706; x=1743425506;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kUoMpr+FmTJUUYgunEAsWmKDX1DoLLbcuPSMJE5oesQ=;
        b=iUSwvywzyYfjQY1qjFYW/GNedyiQq63ure2O7otGw+nvb8BLCPlCfn5zmh7QQh2Ff3
         iOI6bSyyp3HgzwLK8Texbsz0NEm2hchZM4OJoqbIGnk8HhSkLt+lo2lH5AOa009CBZrL
         zZ6l/asNkR5T7UuMKYhL9BvCbz1EuNiDQjXWMEOYpeOKJqeH9b/VjUjZH63Ik+fvEyP5
         rQrFzN1yE9a8sXgb58x1nIg69yI97meJNoYlvj/57kIAsTjrqbwOmnOq6MR77iNKSsZX
         wFFXojCR8oFPNDqnQbqkBcLIrSCe5JvZWpwFNdCdsVxR4lnJkzQ4bI0VT47K+lLoRpmA
         vzzw==
X-Forwarded-Encrypted: i=1; AJvYcCXh/Fb9kILA5FFn6B+8TL2McAHa52FtIy5Spxfs7y5raLFirCx7Ux0jECpL6m8bn6VgeiMqdYWj2WZU@vger.kernel.org
X-Gm-Message-State: AOJu0YwOrjmMMuYTyHSTqYjoB9Hu1he5+IWtHlOWDsAwJ4T12m0c7kup
	AKcCnpgny2vkHfk9dgXElYLTh88v0raXj8E5KMENpvG1hOhp+pjcHycpBz6Kn/o=
X-Gm-Gg: ASbGncunli635/nzGbyjP9X1KFNezhCAomKrJ1tRQlow1P8Z7+hIYOwg+ygYQYOLXw9
	6a2GXIGY4K1p2eDAmUgAGkPxj29gnIxXhgUdYRkd0vaM8jGVLRDwt7WdsS6Pmti4kGJIx/J9eIn
	i5ezT5Pp2HKcta/1sFcwRYRumxc+A2q3A3JeMcGc6HcIYUlkfW3olfAkX1b8jbYOLCTjFs2VDL8
	MOJc8vMfHp+Uq8tDNJOHZwegZrgeKbdkOWupRJQ/7NGLVBNeUARg5WrNhpR30IrnaIcSo1O1Y2R
	t+Pjx7FC5GsAOW8nTPPrePGOtSzI54sw/ohwuGNrOsI9O+e9YXr1oueGMw==
X-Google-Smtp-Source: AGHT+IHWJMXQRiamAeJVWu4eRAJNadDYJhtO38dS8WMcOCTUIapL+/uAak0BnxNe/tjBFhmz9SU7Qg==
X-Received: by 2002:a05:6000:154a:b0:390:d964:d325 with SMTP id ffacd0b85a97d-3997f9406dcmr4123049f8f.8.1742820706146;
        Mon, 24 Mar 2025 05:51:46 -0700 (PDT)
Received: from krzk-bin.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9ef063sm10713445f8f.83.2025.03.24.05.51.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 05:51:45 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dongjin Kim <tobetter@gmail.com>,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: usb: smsc,usb3503: Correct indentation and style in DTS example
Date: Mon, 24 Mar 2025 13:51:42 +0100
Message-ID: <20250324125142.81910-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS example in the bindings should be indented with 2- or 4-spaces and
aligned with opening '- |', so correct any differences like 3-spaces or
mixtures 2- and 4-spaces in one binding.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/usb/smsc,usb3503.yaml | 84 +++++++++----------
 1 file changed, 42 insertions(+), 42 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/smsc,usb3503.yaml b/Documentation/devicetree/bindings/usb/smsc,usb3503.yaml
index 6156dc26e65c..18e35122dc1f 100644
--- a/Documentation/devicetree/bindings/usb/smsc,usb3503.yaml
+++ b/Documentation/devicetree/bindings/usb/smsc,usb3503.yaml
@@ -106,54 +106,54 @@ additionalProperties: false
 
 examples:
   - |
-      i2c {
-          #address-cells = <1>;
-          #size-cells = <0>;
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-          usb-hub@8 {
-              compatible = "smsc,usb3503";
-              reg = <0x08>;
-              connect-gpios = <&gpx3 0 1>;
-              disabled-ports = <2 3>;
-              intn-gpios = <&gpx3 4 1>;
-              reset-gpios = <&gpx3 5 1>;
-              initial-mode = <1>;
-              clocks = <&clks 80>;
-              clock-names = "refclk";
-          };
-      };
+        usb-hub@8 {
+            compatible = "smsc,usb3503";
+            reg = <0x08>;
+            connect-gpios = <&gpx3 0 1>;
+            disabled-ports = <2 3>;
+            intn-gpios = <&gpx3 4 1>;
+            reset-gpios = <&gpx3 5 1>;
+            initial-mode = <1>;
+            clocks = <&clks 80>;
+            clock-names = "refclk";
+        };
+    };
 
   - |
-      i2c {
-          #address-cells = <1>;
-          #size-cells = <0>;
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-          usb-hub@8 {
-              compatible = "smsc,usb3803";
-              reg = <0x08>;
-              connect-gpios = <&gpx3 0 1>;
-              disabled-ports = <2 3>;
-              intn-gpios = <&gpx3 4 1>;
-              reset-gpios = <&gpx3 5 1>;
-              bypass-gpios = <&gpx3 6 1>;
-              initial-mode = <3>;
-              clocks = <&clks 80>;
-              clock-names = "refclk";
-          };
-      };
+        usb-hub@8 {
+            compatible = "smsc,usb3803";
+            reg = <0x08>;
+            connect-gpios = <&gpx3 0 1>;
+            disabled-ports = <2 3>;
+            intn-gpios = <&gpx3 4 1>;
+            reset-gpios = <&gpx3 5 1>;
+            bypass-gpios = <&gpx3 6 1>;
+            initial-mode = <3>;
+            clocks = <&clks 80>;
+            clock-names = "refclk";
+        };
+    };
 
   - |
-      #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/gpio/gpio.h>
 
-      usb-hub {
-          /* I2C is not connected */
-          compatible = "smsc,usb3503";
-          initial-mode = <1>; /* initialize in HUB mode */
-          disabled-ports = <1>;
-          intn-gpios = <&pio 7 5 GPIO_ACTIVE_HIGH>; /* PH5 */
-          reset-gpios = <&pio 4 16 GPIO_ACTIVE_LOW>; /* PE16 */
-          connect-gpios = <&pio 4 17 GPIO_ACTIVE_HIGH>; /* PE17 */
-          refclk-frequency = <19200000>;
-      };
+    usb-hub {
+        /* I2C is not connected */
+        compatible = "smsc,usb3503";
+        initial-mode = <1>; /* initialize in HUB mode */
+        disabled-ports = <1>;
+        intn-gpios = <&pio 7 5 GPIO_ACTIVE_HIGH>; /* PH5 */
+        reset-gpios = <&pio 4 16 GPIO_ACTIVE_LOW>; /* PE16 */
+        connect-gpios = <&pio 4 17 GPIO_ACTIVE_HIGH>; /* PE17 */
+        refclk-frequency = <19200000>;
+    };
 
 ...
-- 
2.43.0


