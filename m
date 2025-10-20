Return-Path: <devicetree+bounces-228686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 266CCBEFFEE
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 10:39:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B11F93A4742
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 08:39:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE6C2ECD3E;
	Mon, 20 Oct 2025 08:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BgtiAw0y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374302EBB99
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 08:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760949564; cv=none; b=tfn8PB3Fjo8eayG8C+ACfCu2svJBuErd2Zgk5ULM/vupfEF0OZJjoMkHMfkN1Tz/MC8RUOv9GYiUOGzTDLW0q/2BebNX31+BzPA1+J4smbsSQsdx0TuG8QtdE8t/fGvsShR6MFLT6Cbks30ppB+/md+ZYhXe5Y7hofWHZ7s3l50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760949564; c=relaxed/simple;
	bh=SpdjqF0RNVAIJOByNkOLYV27BSgUDptGZvchj8Jm9Ls=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W7lPu2odfxdtiW1IyD+Kf3ux7wE00QVTN5isdcusf09Ts1xtVcvZgvLDjqZ8NtVwvZz5JOAVPA0jCxvB5lcruDw9OI9rK0cOsNa8XnLx7K2PHIK+WID7upMvbV03gsfXtzgVgxKD9q6ZRGsLSd6ih1jVPVhTWsnBrqaU77J+6io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BgtiAw0y; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-781db5068b8so3121668b3a.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 01:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760949561; x=1761554361; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M0wVZ7hOfq1JTjvymKctSVmADp+L2YAB/emY4FxmrCM=;
        b=BgtiAw0y7pPUyK0ESjw89DM24p1RvqitVXro91SXaR7mujDra8q0o7KE8g43VTITwp
         xGWMnfEFDwTPiXSRzoYLqfTKac7uNBe8lfH/h0a8utt5zFVBO0jzhlH8FbjqYHDap5Q3
         IbgdRWlNWKDRew7JlMos8rBBlbmoztzrKZoGaDJ/WNw8l79kkat5aePFnYcUaSLMrWij
         JulaV7+MCaBsuN0u11x68HBdn6/rMjXd3pFM8S9AUihYDfJx9of7ezWKdOa7iIePoEYo
         fnHlDNwY/XKl/5ineFmjPo2yz8bvSgNkzwlGRvmhRwwbwY1VltbPenf5hJ3Anvmq2R1w
         KcAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760949561; x=1761554361;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M0wVZ7hOfq1JTjvymKctSVmADp+L2YAB/emY4FxmrCM=;
        b=BM5zLNQKSFGNsUYTFe0RZnArm7FfPmPSyV1FftGpDQhRsrnwT2GuhLX1ynBmbmZQZr
         6au058F+gisurw3h9SBbN0ssoQcUeNnokhsUtL4/To5GREkVACvX367xJDrlI8kGETU1
         HbfklbiI19YMzijtw2ld00yBvgtBBj5DhH3bqoW0qgzuEE8HjX6Z6CTK0sL8r3EblQGv
         5iFnLdxE1JQajaFdZPXKyqNHxGnoC7bWXXih+bRWsK/zYlFvIK31MpjnuwHVBFUL/XM/
         PGiMmWmhCKHfwfIZKwqg73xdpSlIDexvU+9l0cWJ2ccu9qAASib+YZA7auRINCiRSFh1
         8tKA==
X-Forwarded-Encrypted: i=1; AJvYcCXLnJMVWBsFkzGyfbsAuN9sM0qklePqvidRl9nGWVC3E5O6I3HjUunXtFcTSUIFDrqQfVom9CvPAsHC@vger.kernel.org
X-Gm-Message-State: AOJu0YwJuvaHR+OPmffUgP+X2UmI6nWi3FdjKk+vA6MvlwgE7GS9hLoO
	fGQ79ynl/5kI/zt7GCVpvWpe7hiR1+3qlcc7p9bFa3YyCdrE5Z/Qig7p
X-Gm-Gg: ASbGncuBIJrQAirAXrKCfn/RQ/xhrDSV8CDkMQyV0T5EUAxMluLMLi9vnHt5wuJ/LB/
	mZuT6YCDl/9xaFoKbScq4piYcJO5ujsPZiJ3br7Hz2F7m+lLh+G2GEHLh2VB7sxQmsuUvuOs5sX
	ou1Ykq07U9tl6qpGT/SAuxbVEVrEYGbY6ug0JPt0xcGyKRs/5YJ1eyzQ7Dh57QRSTSYQu8ydRdi
	0pjnKrIAmC2X5aaZIpBy+G4dDiCyiMZDRCO/V1Aa62fx/dnUx29PJ7ZtrJFAdCQjeePBU1nuyPJ
	kInAaLXJ2VJOMvK8xmbB8iu1IfkdgsWeNL3QDZhjNU3QD7agw6BDHzMZzqpn4Xdxd3O6ueJ2/df
	RyGhMrKbktZanchoUCGoN9fJc7tCs2NaFwRhcjdu3npRJ7aLYurk2hl6TT5mgTZzPpY9ii7jQ43
	IHMPOt2XLM+LvpIVjT
X-Google-Smtp-Source: AGHT+IFa8iFYE1mHZNLZZAoIBMPVdnAa15DTVssEZvzZFMtBAOg9AsW1j5BAqmNh19zqSPqBIE1AmA==
X-Received: by 2002:a05:6a20:9144:b0:334:7e45:e6b1 with SMTP id adf61e73a8af0-334a8546501mr16610469637.14.1760949561425;
        Mon, 20 Oct 2025 01:39:21 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a76b5d0b4sm7062386a12.29.2025.10.20.01.39.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 01:39:20 -0700 (PDT)
From: Longbin Li <looong.bin@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Ze Huang <huangze@whut.edu.cn>
Cc: Longbin Li <looong.bin@gmail.com>,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v2 1/3] dt-bindings: soc: sophgo: add TOP syscon for CV18XX/SG200X series SoC
Date: Mon, 20 Oct 2025 16:38:31 +0800
Message-ID: <20251020083838.67522-2-looong.bin@gmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <20251020083838.67522-1-looong.bin@gmail.com>
References: <20251020083838.67522-1-looong.bin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Sophgo CV1800/SG2000 SoC top misc system controller provides register
access to configure related modules. It includes a usb2 phy and a dma
multiplexer.

Co-authored-by: Inochi Amaoto <inochiama@gmail.com>
Signed-off-by: Longbin Li <looong.bin@gmail.com>
---
 .../soc/sophgo/sophgo,cv1800b-top-syscon.yaml | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml

diff --git a/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml b/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml
new file mode 100644
index 000000000000..d044ca661fa2
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/sophgo/sophgo,cv1800b-top-syscon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo CV18XX/SG200X SoC top system controller
+
+maintainers:
+  - Inochi Amaoto <inochiama@outlook.com>
+
+description:
+  The Sophgo CV18XX/SG200X SoC top misc system controller provides
+  register access to configure related modules.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: sophgo,cv1800b-top-syscon
+          - const: syscon
+          - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  ranges: true
+
+patternProperties:
+  "dma-router@[0-9a-f]+$":
+    $ref: /schemas/dma/sophgo,cv1800b-dmamux.yaml#
+    unevaluatedProperties: false
+
+  "phy@[0-9a-f]+$":
+    $ref: /schemas/phy/sophgo,cv1800b-usb2-phy.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sophgo,cv1800.h>
+
+    syscon@3000000 {
+      compatible = "sophgo,cv1800b-top-syscon", "syscon", "simple-mfd";
+      reg = <0x03000000 0x1000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      usbphy: phy@48 {
+        compatible = "sophgo,cv1800b-usb2-phy";
+        reg = <0x48 0x4>;
+        #phy-cells = <0>;
+        clocks = <&clk CLK_USB_125M>,
+                 <&clk CLK_USB_33K>,
+                 <&clk CLK_USB_12M>;
+        clock-names = "app", "stb", "lpm";
+        resets = <&rst 58>;
+      };
+
+      dmamux: dma-router@154 {
+        compatible = "sophgo,cv1800b-dmamux";
+        reg = <0x154 0x8>, <0x298 0x4>;
+        #dma-cells = <2>;
+        dma-masters = <&dmac>;
+      };
+    };
+
+...
--
2.51.0

