Return-Path: <devicetree+bounces-240399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C954C70C01
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 20:16:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 74E194E0660
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 19:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7621B31ED92;
	Wed, 19 Nov 2025 19:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GmR/5M8h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9202E1C7B
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 19:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763579760; cv=none; b=ujpR7w2Zf2X4Bx+cTS0a3RS/1D55G/hoMDt/ts9Hq89AKdZ+V98XqDuoTFyMLCRmdPbhyAuE53UAuO5JGp35WNtQaPKps4E/tQnjeWqW8tlA45me97YAsqJFdhBoIvgH5UP+lDQlSoPbxPU3TcmE1I66379hgNlzq8jgWlPGH1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763579760; c=relaxed/simple;
	bh=OhAPqaXLXCmsNIfo7/tILARHNy+GrLJldAAVbkxmaW8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oLCdXgcuNwTHAhJuZTOjn7/Pqj3pRDPWqDBvv9dMRg2eR2q+TUIVQJnwP2GYrvEfq90HAGSQRzmW3WG6/of2A34WEvTEqW5mCZxkia9Qsryu2Y+b9x2bYu5xNucohXnCoTh6K1ywyd0rQZ8n9K8GECTt1r6oWaasY0NHNgDewSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GmR/5M8h; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-429ce7e79f8so58024f8f.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:15:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763579750; x=1764184550; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZahglen05z3CRdzByKKHS/uCh35Ibd/55Vn0qmvXT0=;
        b=GmR/5M8hKGcY/fmoclyUwornqytGUr+nWy4thm6HDc86qBtUDO/E08PDJCqRmG1Kbc
         TRSOKCz9GfI6E1ZTQqXPWInacqctUxzjBzNVHZuqfcQZdqzOScdLfzJ97IAiXy3V2yEE
         oI5fp2vIJZqF5UfRbmKm6jDZLlA7DJuVNQZNUr/Dfqet6n3nv55aY1e89EBXS6Ed9k2c
         +QGDtyF5A8Un8Vtz87iGeFRQm93twjtEfsPUQ3DYAGLgp4SuuqwZ0X1SXOlytJ+eOrYc
         WabArJqzXzjQnd1E6Hckf6u0DkmufpadnyBfWiaAO6a8ifkmaXbmVsfthBv6VzZrmWXz
         4k0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763579750; x=1764184550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tZahglen05z3CRdzByKKHS/uCh35Ibd/55Vn0qmvXT0=;
        b=h0gRLHcMAURcuEidNhBWNdEiLCw6w1EWlDWxJnDRbd1FrLLcwpmeNSQT7RQjiVIy4m
         06VQz9rLX0QrHEn4JSfUeVLF426ma2E5Jbn3a/H62dY3RwEsvdY0zzAfsfn2FaatmmPm
         tyXpO+fTXzs14ax8xiMx2l57Q9EL2p7pjY0Rt8azyTZd7jE/dHNDYpS9n2paVcYmGHJ3
         NwXZ3VJbuguU3gi4QS2SLLXb0ZLsVq6Po2Dh4LL8B1CGxeczVdCfF9ycSRWgAKSkE6Uq
         ZElWIy0iESorZONSZqqjpCYOjmm76B1dFaVfStkjszkoIAopE358K5+eYdZIj/le03Gs
         ERQA==
X-Forwarded-Encrypted: i=1; AJvYcCWJHK9MDMTqin9rLD+Z9KGQky91Xy+fYFrU7H1Xfm8p3/Khowctz2HeoeewK5xLF4+/QTD26pDPIE5Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/mIKgehnm2Tk8hn88NAg3IpTMYW6kC/+GmES82C3rnEebdGpu
	pEWneqLR6mKsd7K7NBq6xKAMRqgt4jijbo86ESmVRK4K3dLzqvPMEt/6nhW/t7cnDyQ=
X-Gm-Gg: ASbGnctwqCAfGKCP5/0meyeb4LMhLliWPQeoMGKHy4OaiQK5ppBuT6Q2O8R+S+EpGlO
	ZE8pi0aY25dsTES8uJZpjUaI6hb9IsmSERL9eWHB6/u5pjQQE8oKYDqXye9tPHgUj4+PbtG4VCr
	9xwAB8tdFjXcyBNFfav7LS7XXsxvK/tpTodpXUMEQlG9lS2M6cnhHyzJkbVeiVOQAWwqjZnlvLg
	/C37Cv6e7lgUuAybFl7VcFW99Aq1nHB5WJzc+gGmotfXOiZeLmF3zsBfFj5cTPWGZaG3D/0I1ib
	nIh3HfUcl+72/32Dly2TNCP6AhJUPGf2xmGKppwsZWiWaR3jQCKUlAtLPCIBNIZYUEfFnMGE0o3
	glHckpd7uPfGTHrtiyO6NeybVSq8e+VW1KuKcJ+2qKNq2MDgZHm2qdKbuk6ci3+vXZftgjSmvYZ
	VLOMP6kFEJlOC2CaZh6XELbgzNPF5h45vGFAbNtPYD2A==
X-Google-Smtp-Source: AGHT+IFKE+Ky/K++z5OHPA04EVmi5tIsUEcEojQOiVrA+eQqY31INhQV7qHFlCCEBZCKCcJw0G3bFw==
X-Received: by 2002:a05:6000:3106:b0:429:8d0f:ebf with SMTP id ffacd0b85a97d-42b5938fad5mr21012521f8f.42.1763579750166;
        Wed, 19 Nov 2025 11:15:50 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fd9061sm788246f8f.41.2025.11.19.11.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 11:15:49 -0800 (PST)
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
Subject: [PATCH v7 1/2] dt-bindings: iio: adc: Add the NXP SAR ADC for s32g2/3 platforms
Date: Wed, 19 Nov 2025 20:15:44 +0100
Message-ID: <20251119191545.46053-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119191545.46053-1-daniel.lezcano@linaro.org>
References: <20251119191545.46053-1-daniel.lezcano@linaro.org>
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


