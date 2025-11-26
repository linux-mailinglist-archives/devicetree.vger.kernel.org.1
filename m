Return-Path: <devicetree+bounces-242226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C4DC88322
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 07:01:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C002A355B42
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 06:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3248315D49;
	Wed, 26 Nov 2025 06:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="fXT7ybrE"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E46324A046;
	Wed, 26 Nov 2025 06:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764136884; cv=none; b=iqQ8m0SvtAn0xS2VR9qsClOUcJocbSyMdbJU6FsF/n3KOGgSFS++oTvhNe+H3MmAs5vHl6KaqGmj+YD+4NBct4WpU3YYqXMURWOxtgFKwc2Ko9OXrfV+Fi3gCrif6HiW5XMUDidqkTcATrAJ+qDqM4EWSgajuXeK9prJp5KXrXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764136884; c=relaxed/simple;
	bh=xrwHfnwuN8q98Lz6mML4Q/pOzK4LhHwcrh8WEB5de+M=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WJmTTYzO/28jLL9fzaCJDjw8iU2NKjVIY3Jhd1Dk4fjGhYW0exkadaVsjBXqDEwwNoxzQfJdY+ZfZMkc8+l7SvhaFQklq4udM+palVwVzRuDBIa0fz+twAFmSQdsA68sleLkeUGnfQTJ/vcGhJPTAfHnZBKyjRKvqV4lI6IjLYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=fXT7ybrE; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AQ61AAr8315782, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1764136871; bh=s5Rq4zC0pGSTG+06J42cRa/N3OoI7AoohrdOnwCfK3M=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:Content-Type;
	b=fXT7ybrEnPpWW8kikxZO7p5yvm2GTpfAS4g+IDceCR1JNb8OfGOcYu/aqRxwvo+o+
	 Px1BBL4bUcO44AxG7WRLGgFCswgwvUf1K00Rs6wjSjxA/dgLOvYMmOCLdpVaR5H9WY
	 gvTm18T8f11/QazA5sdJpTWOJbK8kKC5ORdDla/HSP2RimFaj0hszU7WJHVI27Hhsk
	 SYKc9O1GwHG/ZfvLWx7DRygqT5Le4RKffv8ROUPRBMZhf8iRMsS2l3X0u+IEtEjtMa
	 ts6ufLwPHTSqyV5Xgb29RZVKC6Ey3vW9FMUaUpHwgTPuVbkwWNcnwr/x/kxJZgdIsa
	 rWSthSKl2pbXQ==
Received: from mail.realtek.com (rtkexhmbs03.realtek.com.tw[10.21.1.53])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AQ61AAr8315782
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 26 Nov 2025 14:01:11 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS03.realtek.com.tw (10.21.1.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Wed, 26 Nov 2025 14:01:11 +0800
Received: from RTKEXHMBS03.realtek.com.tw (10.21.1.53) by
 RTKEXHMBS06.realtek.com.tw (10.21.1.56) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Wed, 26 Nov 2025 14:01:10 +0800
Received: from ww-haowen.ting (172.21.177.97) by RTKEXHMBS03.realtek.com.tw
 (10.21.1.53) with Microsoft SMTP Server id 15.2.1544.27 via Frontend
 Transport; Wed, 26 Nov 2025 14:01:10 +0800
From: Hao-Wen Ting <haowen.ting@realtek.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
CC: <jinn.cheng@realtek.com>, <edwardwu@realtek.com>, <phelic@realtek.com>,
        <shawn.huang724@realtek.com>, <haowen.ting@realtek.com>,
        <cy.huang@realtek.com>, <james.tai@realtek.com>,
        <stanley_chang@realtek.com>, <cylee12@realtek.com>,
        <phinex@realtek.com>, <conor+dt@kernel.org>, <krzk+dt@kernel.org>,
        <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v5 1/2] dt-bindings: timer: Add Realtek SYSTIMER
Date: Wed, 26 Nov 2025 14:01:09 +0800
Message-ID: <20251126060110.198330-2-haowen.ting@realtek.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251126060110.198330-1-haowen.ting@realtek.com>
References: <20251126060110.198330-1-haowen.ting@realtek.com>
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
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../timer/realtek,rtd1625-systimer.yaml       | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml

diff --git a/Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml b/Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml
new file mode 100644
index 000000000000..e08d3d2d306b
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
+description:
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


