Return-Path: <devicetree+bounces-218072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F670B5A336
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 22:36:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4038A1C06C2D
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 20:34:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2138E328583;
	Tue, 16 Sep 2025 20:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JlTbNJHY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FBE323F46
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 20:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758054385; cv=none; b=C69AcHpVTZGUcsURHyyO1VKemNhGo57eAH7CwkI3S/WrvJytfh8JvZeAhaGwrYsEDslufi7SP0u8W4ikMajzF0gWKQtxVOWQslajrRhTmy3lnkFrmTn7nLoGLbyw/j+drWQaq2F2zEf09Wq2mp5LyZ5U5acq4FCPpDITHBX0/Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758054385; c=relaxed/simple;
	bh=OhAPqaXLXCmsNIfo7/tILARHNy+GrLJldAAVbkxmaW8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Y1znlzjoDNvo9hGobSXWzVUwIa65pyvak3W+MXCrd9Vp+15xD0Sa79xKkI73BtAFGUn/8KSFzewiawa/Pyefl25FRi767fDJDWoBJEnNFwVs2TkIiMuTSzoDQKu6ki9AAxHCH9M1P4xd90JHsn2sBD5QuXTaYAtI1SMBqABb7ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JlTbNJHY; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3eb0a50a4c3so1743169f8f.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 13:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758054381; x=1758659181; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZahglen05z3CRdzByKKHS/uCh35Ibd/55Vn0qmvXT0=;
        b=JlTbNJHY5vD7JN7Vc77ncPMhIRcEpUpnbGBdZ8na6KOzLuaELKTZo8th4bSxob43H9
         dZJMELVU7RQZMwOJ4WWk8NxVrXVO0B0jWwZTnpbEYf1QYfaN9ryqIif2KDuQba0FayPL
         2jB+h2TYzALRuGgrNqHL6RPlxIsT7TkcWTjzZ/aHP0cIu5q4Z1RdfVtGyTdcWygV2vbA
         n6K/poUbLqkgNG9MYPOhS9WTSkk34Ee+ABGR9iPQIZJz1HL9WXaNAmeKETfDua6tJO01
         eESQU3kgjsG6KqZBgZLuu3ETkXbZ07XCsTk0Qs+/+JfFtgmWIc9OyjPsy1G4/5ComKL5
         hNkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758054381; x=1758659181;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tZahglen05z3CRdzByKKHS/uCh35Ibd/55Vn0qmvXT0=;
        b=rTmOSndf/1Ml6O2ia6ZhW+qfs3/azVITbJicfpav8buCQi+oW96z6MOuNlVgu3Lk1C
         YHCXCReeeO6l2gR4U7wdkuJUXcXx+0BKjglVJLlyTdi/T1rHzKplDMpowpyzL7nSrka9
         Re35vO/qeDeZOxtpj+o7Bg2MYfTCu/GFJp0O/miKN8RoZobRosg+lvg0magrgg3ZbNN4
         34oNFWW6Dpjk2pH+PiWlz/T25vA0dgE/7DL6WM1BInN2dpgyShMvHHc1CyJJ2ugkVeuI
         czpBmFPpyx0QZz3Zkx9N1qdjKA+rUrjEXgEpjJLk1wxRnaozkhB4DaZBSkBYjTcfLXzH
         OG/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWKRK7U0GubvAYsKYTYmaqu0W8bP+9iW8CTdKGd023Fpn+F2Yv0NLmssFRlq/kqEbT4Zw9J4xZ/oG6m@vger.kernel.org
X-Gm-Message-State: AOJu0YyExFPZD7DSAV4HUiJMWAzD4s/kUyJT+MVYrtPYlo5zS5jiteaZ
	yZv9UWalDMpW7vtM3HPlm+P68KbE0uUiciiR1S++fbbXyU6ROYHZtDHwwF5ISU3gmgs=
X-Gm-Gg: ASbGncvIDarWRZKyKdS9z0W0bekuauwybydILSrrSfMxikE9ARkJy2sWgz1au3N5HtI
	kW0AACNfreVvRIyy+ZiVwuxZ0s70Zyd8LWkLsByBSsapp6900sQcoyU0D3hMfbu35YNIiUh/cU5
	tp7OTtWZuFUD8dPlXqCVuYN6kcq+kBrT4ZXvX3EZv2zzH5qxNLTKnrDW2pgg4EVeHJ+dGv31Z2c
	oz93ZsLXjA0WrX4ZwP2XBpOgd1X8XM2dl5LpZJHpqVXszT4nkQEBamS9Yo9iuA0bns+8AqE1v0N
	/Fr64rbKK2VdirbrnSV34hGu46s6nbkg8eXT45FDagd1Gr1PH8aa8u51fjTeKbRX5a28y/JD3+g
	/S33rf4zw1Qx8tiumlrPkLn0PhxSHZdgcG21iqR8NYZ8=
X-Google-Smtp-Source: AGHT+IF2rS+SHmnnei7ECblwGM8p8sw5oqpoSkx/6QhFNXJS4mEwIRjbyn9PRc/oOQJ31E96Xc3QwQ==
X-Received: by 2002:a5d:5d07:0:b0:3ec:1b42:1f8b with SMTP id ffacd0b85a97d-3ec1b42221dmr5558230f8f.40.1758054381475;
        Tue, 16 Sep 2025 13:26:21 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7e645d1fcsm17590766f8f.48.2025.09.16.13.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 13:26:20 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Cc: linux-iio@vger.kernel.org,
	s32@nxp.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com
Subject: [PATCH v3 1/2] dt-bindings: iio: adc: Add the NXP SAR ADC for s32g2/3 platforms
Date: Tue, 16 Sep 2025 22:26:04 +0200
Message-ID: <20250916202605.2152129-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250916202605.2152129-1-daniel.lezcano@linaro.org>
References: <20250916202605.2152129-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The s32g2 and s32g3 NXP platforms have two instances of a Successive
Approximation Register ADC. It supports the raw, trigger and scan
modes which involves the DMA. Add their descriptions.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/iio/adc/nxp,s32g2-sar-adc.yaml   | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml b/Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml
new file mode 100644
index 000000000000..ec258f224df8
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/nxp,s32g2-sar-adc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP Successive Approximation ADC
+
+description:
+  The NXP SAR ADC provides fast and accurate analog-to-digital
+  conversion using the Successive Approximation Register (SAR) method.
+  It has 12-bit resolution with 8 input channels. Conversions can be
+  launched in software or using hardware triggers. It supports
+  continuous and one-shot modes with separate registers.
+
+maintainers:
+  - Daniel Lezcano <daniel.lezcano@kernel.org>
+
+properties:
+  compatible:
+    oneOf:
+      - const: nxp,s32g2-sar-adc
+      - items:
+          - const: nxp,s32g3-sar-adc
+          - const: nxp,s32g2-sar-adc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    const: rx
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - dmas
+  - dma-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    adc@401f8000 {
+        compatible = "nxp,s32g2-sar-adc";
+        reg = <0x401f8000 0x1000>;
+        interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks 0x41>;
+        dmas = <&edma0 0 32>;
+        dma-names = "rx";
+    };
-- 
2.43.0


