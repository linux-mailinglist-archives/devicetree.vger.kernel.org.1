Return-Path: <devicetree+bounces-215533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDE0B51CAE
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 17:58:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BFA17188B6FA
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 15:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35024334712;
	Wed, 10 Sep 2025 15:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vZQw9RW7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2452B32A80C
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 15:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757519894; cv=none; b=E0lS8VW/MrafKryHtzogdpx/k5uh2UBKmIduIUYjwvyJoKLfthHEQ7T8q+nMW0d+aIOWWJeYW6Xfu6ArUkJq3yUfwjcmXQXRMhCfEwXsyOPrItM9kL/ExE5BbgDeYFpUe3at3AzZ52KCg01+zlsp+t75ICt07t+9eZdgWtN7pfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757519894; c=relaxed/simple;
	bh=OhAPqaXLXCmsNIfo7/tILARHNy+GrLJldAAVbkxmaW8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ImT9g+LDK4jrc5Xe+ulLRWZpWMwi5rvj+i8wvduCaWtyGtC8TteUCD6KQtExuJ5q7hLrY34jtRZ2vvFewA5L2JHWH7/9xXpdw3vbbRS0fsOR+Ty+vSLoNAKyBIMVdOaRR7daM6/Q39WklMiBqol14yeo1uuSTBlkbOD4eJdm7rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vZQw9RW7; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3e2055ce973so3783030f8f.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 08:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757519890; x=1758124690; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZahglen05z3CRdzByKKHS/uCh35Ibd/55Vn0qmvXT0=;
        b=vZQw9RW7Wx2wcFglNeFzlcfiaPY7k9dEwEOSt+I3qG4bx8VwpibkoEb6o3ljjInqH4
         sTTJCCPpT4NbW37JE8/70REcub4WBe+qpTMqU2Akhc2TsgEsz2PiD3qLOSzRTsdIqISP
         TAY1ta5goOa/8hAAarzVYi7ytoibfY6GCVRXKssnkhfzYDHoTXgKsoXzGGs5FIm4I4Py
         HGTWS2B/ARif2DnBxaFqssv2Cxd1BAWC644tM0LrpfRzH9ybZhHMnBPrEK2xEFeFNSjW
         oum4TbVCa/1BAFwTU/v+NcbiZA7ErUrNd4z3mgf+/xPXFn7967ASkjRnkBu9Ft4kORKz
         DjzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757519890; x=1758124690;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tZahglen05z3CRdzByKKHS/uCh35Ibd/55Vn0qmvXT0=;
        b=vR2Y7wFVeNLsoXYMhEbb7mYePvt2+SsaHzxqajwEhaIG55fDfnM4yskExFTo/tqfsO
         StoO5nz3UnMTuvHVsMYtqtyFTV3aCQpw7qFS5AWvbKqnyc2at6jjO7OMjRBU+9Rmo71/
         kOBAeaIUCDmULwnuntnq2MJz3+T923DgKqOI7eQl7ykVLkOSpSwXRoUX6xRzV2imuogI
         BmZPsMthKXeZ7JV00PkNuWQSusOJop+yZ3xS3ztDhpDKQb/UtLaTNZ/gLT6bDWpnzMzT
         PBdHYGca4SfisHlipIDoY+K9FTEOeAfV4UdcTPvr+EgeIRsbjfir8qy2l8tjWcs7QOgC
         7MLg==
X-Forwarded-Encrypted: i=1; AJvYcCUGz+Yndz3eHDlDYOFyJI+TlMLvD2GvhaRkULazFdKKOKLUpGprCLuZuJoogVjDY7kpLmyJGsS4QPUF@vger.kernel.org
X-Gm-Message-State: AOJu0YyyM72QVnhijFGJeOlPqeCYWp3LA+5s+Vue9M38WZOSkrV+lPJ0
	zI8j8CDoLIsvNTKXXpJSGIY0pmBTl2r2CLQBO1KHvmyZd+8i0uepHjtCLyWcsQz7atE=
X-Gm-Gg: ASbGncupuzko9vxqdM7eU6V/j/58HhTRbnwzycuJKd4luaI9M1XLBNaRpjT/wU7ZT7V
	fpWrjUoOSOkcaTrC7slc7akgwAESuBIsrIGMAGiSteDgwu8amH7BCKN2bUFShIBr5HHW9Ln8RiY
	RvriAsv2B4+uc/eYE+v7BmNDiqu+4VKiE79yTNYtinkmQY1VMi/DnHaCEjZz02jlyBkxPJpC5WO
	gPBuTU3kAOLW4TgPHLuS1OYxUSzRiPSUn1sA/R9MiykBeZXV5eJg0oeSg0oeJXQ1KlhjMUXUD29
	aA1pQZvDv5qri8ONbk5QhcJiAvS2HuRGPWs+PpV9hhG5obOYRwOzso14sCrdPOBi5AJK2omBShm
	OQdfUJYIzZb2mEqh3I81EW6IyrwWWCAgpOjYOlVQPrSbCQf25gU1gnw==
X-Google-Smtp-Source: AGHT+IFsk+Hu71XOSz/daET/PrPnso1lOD5hy+C5Qdl2oEm8FMUYFxcYdjpT+XpM/4cvgxam/mPtNQ==
X-Received: by 2002:a5d:5889:0:b0:3e0:152a:87b4 with SMTP id ffacd0b85a97d-3e64392b7a6mr12159707f8f.35.1757519890339;
        Wed, 10 Sep 2025 08:58:10 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:9717:723a:79cf:4f4a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e75223ea3csm7490325f8f.49.2025.09.10.08.58.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 08:58:09 -0700 (PDT)
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
Subject: [PATCH v2 1/2] dt-bindings: iio: adc: Add the NXP SAR ADC for s32g2/3 platforms
Date: Wed, 10 Sep 2025 17:57:55 +0200
Message-ID: <20250910155759.75380-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250910155759.75380-1-daniel.lezcano@linaro.org>
References: <20250910155759.75380-1-daniel.lezcano@linaro.org>
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


