Return-Path: <devicetree+bounces-162529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CAECBA78AB1
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 11:08:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F1123B3B48
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 09:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DB1C2356DE;
	Wed,  2 Apr 2025 09:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mMmBdl0a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A7623314A
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 09:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743584847; cv=none; b=nVpN8HfhXtQeB05+v9V/STuqGu2GS94PqZd+yq1y9u1P4E4Yk739FycNNmO3KQn5li2jd/hS2e0rs6lIFSV2PhAwSpGFvC4qfpqoGtf0SF2loB8PW0PNvJFil1z7eaM6qYHFWtnIZN6Wn4SLHz1ruJgM4Baifkfb+VKclFsbgQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743584847; c=relaxed/simple;
	bh=TUxkKwG/hSkp+ng4D6WaLxso6MB/wZDVyKMLZRWR2nc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kBJy0i4yG4U4bcu/0PwSHh+Juo4MRYWhwYFEW5dPslGIje/6KOR03IGOlLjlwH3H1eMTEqeL6/IpKWbAkJKzCLbcpfvsim8B69J/pFk138G9tm+Ub7MTcwlGWO9MG6x5xpFK/3DjVmQISRQGCwfbt3i0cmv0Vrd+Lz9G8ym6GPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mMmBdl0a; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3995ff6b066so3703618f8f.3
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 02:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743584843; x=1744189643; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HTLGRPRVP9appWyjcEsZ15YsaJR4D+bZAUtq/Giu/1o=;
        b=mMmBdl0agZwGC4ypJtAeA5jUjnpYZzgltwvNkDSupkq/LY9aVs0pdI64zN/rW4a4Fm
         77scfO/2wj87x4/yWwYvX7d7K/DOr0kPbSo3kzdZXquZ/TEXqa+5Mo+7i1Gy30JbPHSw
         r2vo4ownPJlAaK5uuhLS+p1bj+W+k3nNWaIc7QSh0hK9OPBNEuak26G6qH5Bi4euxIlz
         szdegYoBEckNldbtLvnq5/2C0V1cfVpI3qXmzjdhGYz2kuD+YOSLaubfriGsGm28zD6Q
         /kwIbF61uUiguxab1Pu425h6JgvnR7/z28ODRz+AnH/2EjCPcry1FhDDpweYcKIKbvpX
         UUiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743584843; x=1744189643;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HTLGRPRVP9appWyjcEsZ15YsaJR4D+bZAUtq/Giu/1o=;
        b=T8TGmF5R5ceaip27FgFof0YXk305kjY5MQCoBMraX7+VXYjjA2Wnvuj489Dhj8Liw3
         B1DjgZqAVmt3kNQHvFl6RTxXglN5xzvtTr0UgUCK+RXOLgabLRCv+6o0Vr8+V/VgF910
         UmvQ3H6Fbunk/h/b6TaI1YJSsVYffvcwf55Xh3VnbI+R8Mnc4gzHdV5IjneaTKmtNWig
         xltKsaRWYsq47ntLCq/G/Oe6zzUcoNP1FFV+BifeGlgjPpvzBbuGTvNFGnK0glvrWbqd
         J/QIGbxjCVFVx+JbToUJLMQWiqRLoPjyukWdUpzFIUd0ELDmvzi0A7pIY1KmHFR4v7Jm
         BvBw==
X-Forwarded-Encrypted: i=1; AJvYcCUXawrvI6wC0HOQTVvVdBy9a95+JBog2bI57csdgyQeFRwHGfEKSTiuhybFnbF8t1EjOx2qYQkEHkOW@vger.kernel.org
X-Gm-Message-State: AOJu0Yzyu2hAgoctE+lnj7O546+1AxEEq/iZcR2DaDJ7CRcau30m2reN
	znTnRJS/MCDciz9rbjyyf8Yz0QPPie0XRSX20qkSxmaXmgF+PFyj19wzQJ72++M=
X-Gm-Gg: ASbGncstSKwUxQAi9h3KfdbM+v8LkFacUwvwKF1A+ZCjmvaiVTG4aupAsEdmEdYdtoz
	IUALvtGgZjzs2hxRWW3xLE8wR5H3NyHfvGMgW2kmSl9lPfh6eyou10Z6s5vviw9o//VwldlUJJj
	KhdB5lMyj590E01HQ5tPzaJr3+z9ZkOkZt5nOXiZtdmadDZ68GQhTV1V5FiERSi61YqDzDQj6KZ
	1om/3fvX8+r3kq85xVoIXry2yTMzMG0wE1mFFYHGV32XmaV1W7XY7TR0qLQoiB2OXTHLOdwiZxY
	1Q7bbPIDyx29o1Ny9tHcDL1BtebnhUB+XzAzXLIbW7Esw4DbqS9R7iCoFUSXjhh7xOU5iF0=
X-Google-Smtp-Source: AGHT+IFXYHGa8W8Eb2/WxNCzxc6TLLaTe+TRSHhXLAgPcpaVC5069NaUIx4xaropFVDDg7FvEL4HbQ==
X-Received: by 2002:a05:6000:184e:b0:39c:12ce:91f with SMTP id ffacd0b85a97d-39c12ce0e13mr12634441f8f.30.1743584843459;
        Wed, 02 Apr 2025 02:07:23 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b65b4fcsm16680724f8f.11.2025.04.02.02.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 02:07:23 -0700 (PDT)
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
Subject: [PATCH v4 1/2] dt-bindings: timer: Add NXP System Timer Module
Date: Wed,  2 Apr 2025 11:07:11 +0200
Message-ID: <20250402090714.3548055-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250402090714.3548055-1-daniel.lezcano@linaro.org>
References: <20250402090714.3548055-1-daniel.lezcano@linaro.org>
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../bindings/timer/nxp,s32g2-stm.yaml         | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/nxp,s32g2-stm.yaml

diff --git a/Documentation/devicetree/bindings/timer/nxp,s32g2-stm.yaml b/Documentation/devicetree/bindings/timer/nxp,s32g2-stm.yaml
new file mode 100644
index 000000000000..2016f346b2ee
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/nxp,s32g2-stm.yaml
@@ -0,0 +1,53 @@
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
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
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
+        clocks = <&clks 0x3b>;
+    };
-- 
2.43.0


