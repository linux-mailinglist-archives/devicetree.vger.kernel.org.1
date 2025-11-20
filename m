Return-Path: <devicetree+bounces-240522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D8382C72599
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 07:33:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E68554E4CF9
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 06:30:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46A2B285C9D;
	Thu, 20 Nov 2025 06:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="KuWn68eG"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498BC23A9B3;
	Thu, 20 Nov 2025 06:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763620241; cv=none; b=WnJWjdKo13BVL1ve6A4ZZgY+MG8cBxYry3FqDHMCZFKHfUwqjVusqRKBJkZ+/q0d+NdIZzpmObwD4rQgUnFePcGBuPvVO5722Sk1B2ACqZYEKMAHAkrCtjUIJToDIl5SvCbAXgahiD7DCkF74aOhM3qL9nItjPAoii8TkHXQXLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763620241; c=relaxed/simple;
	bh=o9xZ+1sB26RrEVEDVobRGeIGLaGviXP7IuDz+COToZw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EUhNRobb7GwWs3xIMGOEhlAYTSFVXiEa/igL4D6XP+oDkUcJzbGlotdaLyGlQDurR+gAVVoySJYJBwSy4Dq5eZel2hR/RO346LHQIjrkZ1EAoBhwBlkmm66SQ63/gz+4bun6UPMXHp6+hqYDGPt1+3MbJPYNgrTutpfp0d0enT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=KuWn68eG; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AK6UBvpC982935, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1763620211; bh=BZ43cCFnr5e70LGUnFQI0/q3q4CmypAmtRmH7G3znMo=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:Content-Type;
	b=KuWn68eGAhGkgxiccGWyf5A22ZXs3Lqg/3dN5SEE7VIrDPU0lnsf7QkZ3QC7oQqEr
	 nfffMlbW2+X48+Ka5c869a5G6p6HdnTvo27/6cBhl8tG1lHC30LrGOCtVWX3kPnN70
	 jOivEYtmds+EaALg0FV8LiuoTm3FELMM1V+5mG3K1sU8LP+3iMR8/zgx6UJc0NC9Pe
	 VEy1IdJrY83SmF8x51KzJC+6jneAmgdaf+6ZEzpcVHwvYMpijQ+zAwh0E3T7AdAYGQ
	 77n3D+4io2Aqoh0zAHGQ1bPxWxj0VHF9kNsYWEYgaW3QIBqkoZlmcE9uvyivx9Ah16
	 EDaLWzOSCkUyw==
Received: from mail.realtek.com (rtkexhmbs04.realtek.com.tw[10.21.1.54])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AK6UBvpC982935
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 20 Nov 2025 14:30:11 +0800
Received: from RTKEXHMBS04.realtek.com.tw (10.21.1.54) by
 RTKEXHMBS04.realtek.com.tw (10.21.1.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Thu, 20 Nov 2025 14:30:11 +0800
Received: from ww-haowen.ting (172.21.177.97) by RTKEXHMBS04.realtek.com.tw
 (10.21.1.54) with Microsoft SMTP Server id 15.2.1544.27 via Frontend
 Transport; Thu, 20 Nov 2025 14:30:10 +0800
From: Hao-Wen Ting <haowen.ting@realtek.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
CC: <jinn.cheng@realtek.com>, <edwardwu@realtek.com>, <phelic@realtek.com>,
        <shawn.huang724@realtek.com>, <haowen.ting@realtek.com>,
        <cy.huang@realtek.com>, <james.tai@realtek.com>, <cylee12@realtek.com>,
        <phinex@realtek.com>, <conor+dt@kernel.org>, <krzk+dt@kernel.org>,
        <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <stanley_chang@realtek.com>
Subject: [PATCH v4 1/2] dt-bindings: timer: Add Realtek SYSTIMER
Date: Thu, 20 Nov 2025 14:30:09 +0800
Message-ID: <20251120063010.830805-2-haowen.ting@realtek.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251120063010.830805-1-haowen.ting@realtek.com>
References: <20251120063010.830805-1-haowen.ting@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

The Realtek SYSTIMER (System Timer) is a 64-bit global hardware counter
operating at a fixed 1MHz frequency. Thanks to its compare match
interrupt capability, the timer natively supports oneshot mode for tick
broadcast functionality.

Signed-off-by: Hao-Wen Ting <haowen.ting@realtek.com>
---
 .../timer/realtek,rtd1625-systimer.yaml       | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml

diff --git a/Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml b/Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml
new file mode 100644
index 000000000000..0b8fad37edb4
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml
@@ -0,0 +1,47 @@
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
+  The Realtek SYSTIMER (System Timer) is a 64-bit global hardware counter operating
+  at a fixed 1MHz frequency. Thanks to its compare match interrupt capability,
+  the timer natively supports oneshot mode for tick broadcast functionality.
+
+properties:
+  compatible:
+    oneOf:
+      - const: realtek,rtd1625-systimer
+      - items:
+          - const: realtek,rtd1635-systimer
+          - const: realtek,rtd1625-systimer
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


