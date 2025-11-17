Return-Path: <devicetree+bounces-239225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1997AC62BCF
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 08:35:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 14EB435C617
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 07:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05D3E31A07B;
	Mon, 17 Nov 2025 07:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="Yy8VG1YH"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F4231985D;
	Mon, 17 Nov 2025 07:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763364871; cv=none; b=ejva8uL9+WAkuLlFlgQr4EsP3rEoU/yI9HVVw7k4c7B2uvofSVbG7ZgfckJEDsIhIBtSY+EB5L5MoZVDE+FNQLRU3V37WMiickJQWSxlutxoKArzQ5hy7H/DDECtBIrXnqiGkhlYvbFmGkVLiol9gCvVG5Qef0iLurLZlxnXx4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763364871; c=relaxed/simple;
	bh=lL2vNpa6zogxX7l2zS6c0Tymvf6AAeaBmPha5X/VwX4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EzXv5y8vg6SVPY65S9616iQsoljTMS99Ji9hPwNDeS2TJ8SfW//AVWxtUganurwtyo/BSByRDKBgLofleMz2JOtXN0VpBHmVKWgVuMG32tUHF0krdNGdEgz6Oz9dUELnKiNnILIL+zue5CdkZQNYZRj4yPabycD6x/XWETbGkoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=Yy8VG1YH; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AH7Y7Uq83177071, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1763364847; bh=Ail2e5Saxzk8nyPgK4vKstD7/0z5qzW9duafptRS0AA=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:Content-Type;
	b=Yy8VG1YHd8c7nCQko58zY1w7jtCxVI4sYPRFZU0GFfVxUV403dH/Ay2ZjZSmACPV0
	 GmgYX2yW9+QJu0vrzYoHLEc/ODz9iDJKBcU2J7GXVi02GB0YBTcsy5Jf9WN1PfMyuD
	 UOVNC0a8qfIDI8eMsYY0ETeeK9ObAqQjtiaEY5b0ZickCcB/SLYuC7LILHMInWdYxw
	 VSpjNxbuYkCCHpKD30++ifS41Mckvk5+m0MULyTebi/EHiqp0BSfeJOI6+Ln1F7WGt
	 c0PMvVy/Yjnfi7FwmabD0Xn3R8A3me9AxCMHrGMRowx6MMqmSCU72YBt0V+zKsMFPu
	 BO+JnQDAzFCSg==
Received: from mail.realtek.com (rtkexhmbs03.realtek.com.tw[10.21.1.53])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AH7Y7Uq83177071
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 17 Nov 2025 15:34:07 +0800
Received: from RTKEXHMBS05.realtek.com.tw (10.21.1.55) by
 RTKEXHMBS03.realtek.com.tw (10.21.1.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Mon, 17 Nov 2025 15:34:08 +0800
Received: from RTKEXHMBS04.realtek.com.tw (10.21.1.54) by
 RTKEXHMBS05.realtek.com.tw (10.21.1.55) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Mon, 17 Nov 2025 15:34:08 +0800
Received: from ww-haowen.ting (172.21.177.97) by RTKEXHMBS04.realtek.com.tw
 (10.21.1.54) with Microsoft SMTP Server id 15.2.1544.27 via Frontend
 Transport; Mon, 17 Nov 2025 15:34:08 +0800
From: Hao-Wen Ting <haowen.ting@realtek.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
CC: <jinn.cheng@realtek.com>, <edwardwu@realtek.com>, <phelic@realtek.com>,
        <shawn.huang724@realtek.com>, <haowen.ting@realtek.com>,
        <cy.huang@realtek.com>, <james.tai@realtek.com>, <cylee12@realtek.com>,
        <phinex@realtek.com>, <conor+dt@kernel.org>, <krzk+dt@kernel.org>,
        <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <stanley_chang@realtek.com>
Subject: [PATCH v3 1/2] dt-bindings: timer: Add Realtek SYSTIMER
Date: Mon, 17 Nov 2025 15:34:07 +0800
Message-ID: <20251117073408.428190-2-haowen.ting@realtek.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117073408.428190-1-haowen.ting@realtek.com>
References: <20251117073408.428190-1-haowen.ting@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add device tree binding documentation for the Realtek SYSTIMER, a 64-bit
timer that can be used as a tick broadcast timer on multi-core Realtek
SoCs.

The SYSTIMER remains active during deep CPU idle states where local
timers are powered off, allowing all CPUs to enter power-cut idle states
simultaneously for improved power efficiency. The timer operates at a
fixed 1MHz frequency and supports oneshot mode for tick broadcast
functionality.

Signed-off-by: Hao-Wen Ting <haowen.ting@realtek.com>
---
 .../timer/realtek,rtd1625-systimer.yaml       | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml

diff --git a/Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml b/Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml
new file mode 100644
index 000000000000..b7702ba52437
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/realtek,rtd1625-systimer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek System Timer
+
+maintainers:
+  - Hao-Wen Ting <haowen.ting@realtek.com>
+
+description: |
+  The Realtek SYSTIMER (System Timer) is a 64-bit timer that can be used as
+  a tick broadcast timer on multi-core Realtek SoCs. It remains active during
+  deep CPU idle states where local timers are powered off, allowing all CPUs
+  to enter power-cut idle states simultaneously for better power efficiency.
+
+  The timer operates at a fixed 1MHz frequency and supports oneshot mode
+  for tick broadcast functionality.
+
+  The SYSTIMER hardware for both RTD1625 and RTD1635 SoCs has identical register
+  layout and IRQ configuration. The driver therefore matches both compatibles
+  without special handling.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - realtek,rtd1625-systimer
+          - realtek,rtd1635-systimer
+      - const: realtek,rtd1625-systimer
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    timer@89420 {
+        compatible = "realtek,rtd1635-systimer",
+                     "realtek,rtd1625-systimer";
+        reg = <0x89420 0x18>;
+        interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
+    };
-- 
2.34.1


