Return-Path: <devicetree+bounces-239974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5150AC6BA4D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 21:36:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 687A4367D16
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 20:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B87B2F617B;
	Tue, 18 Nov 2025 20:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vl5n5lPO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DC342BDC1D
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 20:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763497995; cv=none; b=b/d2BNizieLcp+WlfiVhQViw7+dZXpZrrgejCcCrLMNAYSyG9Tzub7Gg4rDIJt+vYbR6P5jzNcuvOFEQUJL+ZbLnVAr7O/7Keocq8a/FCnkKlBcdndxBxP6iydoIm4UUBIYnqxWkwOLYp+nPRRA0SrfN5hcncuaIaSTrkRmR7tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763497995; c=relaxed/simple;
	bh=OhAPqaXLXCmsNIfo7/tILARHNy+GrLJldAAVbkxmaW8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HTnBUxteAs/iHlkLUpyXij12NgcunDXCp3vfVOcLXo6Q6TlrxcVYXAroHPN9kpPVPlJ1RPN+v7m/QHWvBdq87DNUTV2fAka76gfUYDVcDkCMSS4LbBjgFqu/6edG9N4cttP2zEnNxHo4aboWzMIJQUP+DuH1n3u5KDbECc2Ty3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vl5n5lPO; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so29000915e9.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763497991; x=1764102791; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZahglen05z3CRdzByKKHS/uCh35Ibd/55Vn0qmvXT0=;
        b=Vl5n5lPOVosaxqKP4otOhx/YL25k0UiQeuj0e1MlWN5yjFctOcr7Bi2qP0rYafFzkw
         nzaW6XSkhx1v8yEYSwCCJkfyF8i260tzsNytVFwZtG2qWkOiheIvTpYHV1fVbNM8DveH
         Vbz936IakwLa0UGQt8dzhgNO0PfHsjZXv9uxw7V5W4fgd5HU72XcHp33ls9ljY/E6oRq
         qTOgxWXQKSNctw5nMUNEVDsYMpXmcu7OR0R7IccNkC9cPhhd5S15L0u7u8GMbpoM0DfS
         e6r+cjVJaWPlkilW6cm0yD2nFYLW7PO5duNALEaKa+XJT4RVyer0r8o/zboMU38+Z//Q
         bBmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763497991; x=1764102791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tZahglen05z3CRdzByKKHS/uCh35Ibd/55Vn0qmvXT0=;
        b=sVxq9Wi+Tt3yu6n0rHaYe2YF1LNC8nDWtfpaw6Iy3WlMKaH5LziNBNZ40YwtVorkXo
         NVQ9Z2B8BO6dc3adP7jIK07W8BpYsqW4zMXPssaSq2xyrHzci+wwI+3mZKRjv1wJzag3
         SqH/YlDSC5SR30h1ib71YdT3ngeZ+S2s2uqsvGAazv25G7pS95qPGjGDrcbL9VHjkGLh
         XV9kdpEqUWYxsRZ70yR5fiAgXAj61MLIcoVZ0v5Buan/ClMOaCgd0HvWyGGYF21r19pY
         HsT/0XK45DoebJIF/1iIh+Ux7bWh8vz78SzsQbfk1UR24z5oNUX+9XlMpTMt6USARdi+
         oLZA==
X-Forwarded-Encrypted: i=1; AJvYcCUssaeh6Thj0pwGF5CXIgL9OHR+slrIPqWC4QcTc2j9xNmmN6wIs7nPleQHvID0iDE1oTqC08SZYgEe@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2XrdiwIXnXWL3m3i8wt4bbVegyvAwn1lBE+XI/Twx1a/MoL2M
	ykNIxWFc68QbQV1Rbah37KT9nb+tfbf4VELQUXuJg/e1NNpn97wjO5PDml+6wcKwlFg=
X-Gm-Gg: ASbGnctX55GlLUFkltR1v5mVMG5mk0TMXV0ivOHmY74X1v85P5g2uEH3WZ5DXCDcCaE
	bIO9Ooi4cg4pUKf7q6RTsh9lfWzJi4hKKSjszatmRUbrL5aNTjipqwGZc9Zo5QlCRxYcsnhCrYp
	12XUwTVmRdbYWvK8WymgNIrjMG+MKwhHoxM8uuySKBU0xtbvWYVKv3+49krJMiSCQsLtSEtUBn7
	5kZLDsHdAiqze31fGHPJmwW21wjDLHgL6u1KSKDBK3WbB3VdaenRGy/vZgmpI2dhUhQN5uDvs/5
	zu7ptpH5BCjT7qosTDl8k3t0IrR7+7VeLaWLAp+Fzu5r8xsA8EgW6Dv4iQNIQ+63Io0DgZR4hPL
	magJzS7GWx52YhUGYX+WvJxMU0GVYPDDomx2PShkpioBRND4i5Y9tWfSDRQz+lJcrq3+tVS+PCg
	okRlzVwbAy4dewlm31WkoCgJg7vb0lYqA=
X-Google-Smtp-Source: AGHT+IHIey4BBbY9jcVXbAjDqlDOZoGbbETWIUdluuvO1V6jyEzRI/OGv2wkWa4tMzjwTmnE+tKsCA==
X-Received: by 2002:a05:600c:138b:b0:471:700:f281 with SMTP id 5b1f17b1804b1-4778fea7f90mr158109115e9.25.1763497990763;
        Tue, 18 Nov 2025 12:33:10 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:3006:e9fd:4de4:66f6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b10260adsm8397875e9.7.2025.11.18.12.33.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 12:33:10 -0800 (PST)
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
	ghennadi.procopciuc@oss.nxp.com,
	vkoul@kernel.org
Subject: [PATCH v6 1/2] dt-bindings: iio: adc: Add the NXP SAR ADC for s32g2/3 platforms
Date: Tue, 18 Nov 2025 21:33:04 +0100
Message-ID: <20251118203305.3834987-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251118203305.3834987-1-daniel.lezcano@linaro.org>
References: <20251118203305.3834987-1-daniel.lezcano@linaro.org>
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


