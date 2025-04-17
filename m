Return-Path: <devicetree+bounces-168292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E3CA92126
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:17:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56F1D5A287D
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 15:17:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0374A253B5C;
	Thu, 17 Apr 2025 15:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hv29kOzf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015CE253344
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 15:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744903013; cv=none; b=EeveccAZ0ModIr4Xn6tmdOUu4Y4ZqEz3un0MpbEYAmthF+AKvrdTGUCpeb6No6fkkGhMSVlV6lK1yNfF/TmzrLAhamPFGFOKAgG0ppgjYwgkT5ax3uGassN7R2BuLR7hca+RgN9s3tC9ihRhW74QrYNhSdt0ahvPELtm6U5hLCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744903013; c=relaxed/simple;
	bh=vgcQc3hMv/S561PGVXQs/kErzvgnoUzmHYPhRJdiJxQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BNUjPBni0qOLcEQfLx0lJY2JxOJaRj/H8rjMHRMX8SndD2yy9lgGIPub15hHj9NowKUOcWj7aBeDXLlngx1mj0OiXsowzPLjUO54+MCEOg/988xq2lhURmSq3YSSQlSU6izdFaqW7bu3Xmd0HTZwvKNcAup4cRldpt4BRsYSnhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hv29kOzf; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-38f2f391864so555945f8f.3
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 08:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744903009; x=1745507809; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G+Z5tO3GODKfqrnPsiikglYSIdtJzrzy+9eK4sw+PJo=;
        b=Hv29kOzfQS/tKcqsy5aduhT0XXIr9BE6uks75mTsDGMAcu22F4wnIn8ss2YY5gY2wE
         cXT4t0R6uIxIBbcT9UoXOnKfzRLL/Q9PZyTL86IMq5LlZ1nNOnfXZyO1+mRwEs7TAjXg
         BbalWo7QPdr2hZFSn3zwlWCJGbPVMn1gyt9nz5cZ+5hR9GGVRRld4PqWj1JMiBIfJBCx
         2EAdeqME4jf58X1i2mO91NyvGuuS8FexNpsWHz6UTZe7za8NRxkmdfBjTr5iCLixau1D
         xbo9+i+1UNF7iRdH2si6PUOg6osPR8Ht2BtKReoC2h72KJuM0d+L7ElK+8ys9Hu02/QJ
         NidQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744903009; x=1745507809;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G+Z5tO3GODKfqrnPsiikglYSIdtJzrzy+9eK4sw+PJo=;
        b=Ht6OitWKV0AA9j8KujPTPsPP9Skf0uqepMkjWyy8UaOwFXSo6I4qFZR7JKLEweFD9d
         InQAqQ8EgyFxJmX7XmMeA1JJtwHwsyqNmAQTYVhsMA77V/0YB7nWHEkq1tIRmcnOHyMx
         u9i4H+124FCPSgbm8VDp3AfmgSrxCP39HcVN4/mBywjWhIS0cbr9mZ2IUH/0FlgdIoBo
         M6+HmOSwOPaj2sCDHxYk3kpSU/CLSrMnc/w4eOLoT8qR40bfHhRTo1prlEs6T1x9spNP
         lRa35YcpdOA9xUKJwaiup5W8EpWJzF+pyvgfzWKEcj2MCr0UVuif40M/6K3fE+15llTk
         Y2kg==
X-Forwarded-Encrypted: i=1; AJvYcCXr9SrfMqECmaM456G2xRi1w1PgKRL4DIYn+bluSd5HeXpGtJjT31XT96lLXEN84TUWLp+OtxMl0CbE@vger.kernel.org
X-Gm-Message-State: AOJu0YyCgYtiMwCuV/F5ODjvnDzUNoGSegH3LaAX6BF4vuh4h13tkOam
	AXOsZDHcOYdWPl9bTOH6zXKaRs89SdhTkhgktwXLopUAOTTC5km8Z6ZnhawDWHA=
X-Gm-Gg: ASbGncu33tXWQMaqI7sEVvDUZcoSkGFM8ZVzexUWOzsiqcG9iuFFcqojDVpH1+XALqj
	bVhvnAkGlMwj56V0as7JQIkd0Cg8w3e/RVlXCJBjMaXODTHSTN49tB/rc+wylJlQ4NuX6Jra/0U
	pXZ5nQXBgzZAe5M+k5roFTq0cwieogBBYg3cNMKDlPhyWvxUfSqgaNX12h396Cxo+VnYQvGtcrZ
	3d07/JbdfsHHUTwS65zAC2pa3reRxVHiz3YwLlfqa9TlWH7+zRcDsv71jnNSuiSgnM8kKtxiQqc
	c8n7zE5zH5payDwOElCIdxppAnQ9ICAsOT1joU22BEQhb/jbMw7fTaQSnxoVyL0gv4w=
X-Google-Smtp-Source: AGHT+IFZYzUX82Ksuo0S1uAg+PqHG6T59fFdOzMPnqwGCV02MTZaP2xSEO83gicXA+9vGukmp3V9xw==
X-Received: by 2002:a05:6000:4014:b0:391:3aab:a7d0 with SMTP id ffacd0b85a97d-39ee5b19f5cmr4872897f8f.19.1744903009074;
        Thu, 17 Apr 2025 08:16:49 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf445315sm20528346f8f.82.2025.04.17.08.16.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Apr 2025 08:16:48 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org,
	tglx@linutronix.de
Cc: linux-kernel@vger.kernel.org,
	thomas.fossati@linaro.org,
	Larisa.Grigore@nxp.com,
	ghennadi.procopciuc@nxp.com,
	krzysztof.kozlowski@linaro.org,
	S32@nxp.com,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-stm32@st-md-mailman.stormreply.com (moderated list:ARM/STM32 ARCHITECTURE),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/STM32 ARCHITECTURE)
Subject: [PATCH v5 1/2] dt-bindings: timer: Add NXP System Timer Module
Date: Thu, 17 Apr 2025 17:16:18 +0200
Message-ID: <20250417151623.121109-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250417151623.121109-1-daniel.lezcano@linaro.org>
References: <20250417151623.121109-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the System Timer Module description found on the NXP s32 platform
and the compatible for the s32g2 variant.

Cc: Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../bindings/timer/nxp,s32g2-stm.yaml         | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/nxp,s32g2-stm.yaml

diff --git a/Documentation/devicetree/bindings/timer/nxp,s32g2-stm.yaml b/Documentation/devicetree/bindings/timer/nxp,s32g2-stm.yaml
new file mode 100644
index 000000000000..b44b9794bb85
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/nxp,s32g2-stm.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/nxp,s32g2-stm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP System Timer Module (STM)
+
+maintainers:
+  - Daniel Lezcano <daniel.lezcano@kernel.org>
+
+description:
+  The System Timer Module supports commonly required system and application
+  software timing functions. STM includes a 32-bit count-up timer and four
+  32-bit compare channels with a separate interrupt source for each channel.
+  The timer is driven by the STM module clock divided by an 8-bit prescale
+  value.
+
+properties:
+  compatible:
+    oneOf:
+      - const: nxp,s32g2-stm
+      - items:
+          - const: nxp,s32g3-stm
+          - const: nxp,s32g2-stm
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Counter clock
+      - description: Module clock
+      - description: Register clock
+
+  clock-names:
+    items:
+      - const: counter
+      - const: module
+      - const: register
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    timer@4011c000 {
+        compatible = "nxp,s32g2-stm";
+        reg = <0x4011c000 0x3000>;
+        interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+        clock-names = "counter", "module", "register";
+    };
-- 
2.43.0


