Return-Path: <devicetree+bounces-238539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE63C5C2A7
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:08:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 186FA35D740
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:05:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7496304984;
	Fri, 14 Nov 2025 09:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="MLJdKTo6"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280643016F3;
	Fri, 14 Nov 2025 09:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763111119; cv=none; b=eYi+j5jJWxYsCv9NZa/Jnw9ewTTTUAyAjFmhVSuCCW+BtatTGBZoPbgvXKThJ9V2THERmduAmpSzu6lI0okuaeMOFTsonamHyywQdzifwqGgD2NfY2ctYqMinkdInAxh5f2G4Bdi6ApbVuPp+Yy/jEkWoJ8kAnS0+8cPLWuG+xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763111119; c=relaxed/simple;
	bh=W7vUfPCV2Re/veTEIy+aVEgUW5W4B2HZP9kA/zEvAj4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=feaYf1DUzrYm1ql4L48gvG3vq7xFD57Gfy2eVt3CG82xPep1xLYaiasG/KmmMTfWxhW1J1poSS3BJS5IjzrwG2esl/b9K5F+N34G9nBdscgJk4x8a+2HH33BiXhti/uva9Dwk77d292HfIFdDXM/MUJ9fWLQZ+DC22bmdR+x7GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=MLJdKTo6; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AE94nDnA1317727, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1763111089; bh=pgqUg7zLChDO/mQrSOJjX/Mltbn53Zs1aEEpfPEnjmg=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:Content-Type;
	b=MLJdKTo6w+xwuEKCE9e0RhHH78QSUaW64fjdMx40xxPTCsnqfNMjitzUSm0VXFIIA
	 hk5CtsOZUfnNU6SvN6SI+X6Vl0ve70bRvNEfl00jMNVdtyxSROD6hA6VgRnJJ3Ro6D
	 zMprph3sK+uauxK46eiLHT3+AFFd4RM0EV881nfeukg9ZWw4ln7dxlJ5pvVHnVCrrs
	 DxTpJ7Aj+LfBrEllHbDCtQeGTEhY63UPBf+TsbfzCprZWCffVkisIujeZymA+Ju9UW
	 cEtrb/mOLW5WqGOWNwnvn0D2v7/H106SuSPQKbx+Wo+OayXgjGgb+nhBytBnycf0G/
	 +gBsLeEJuoZUQ==
Received: from mail.realtek.com (rtkexhmbs04.realtek.com.tw[10.21.1.54])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AE94nDnA1317727
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 14 Nov 2025 17:04:49 +0800
Received: from RTKEXHMBS01.realtek.com.tw (172.21.6.40) by
 RTKEXHMBS04.realtek.com.tw (10.21.1.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Fri, 14 Nov 2025 17:04:50 +0800
Received: from RTKEXHMBS04.realtek.com.tw (10.21.1.54) by
 RTKEXHMBS01.realtek.com.tw (172.21.6.40) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Fri, 14 Nov 2025 17:04:49 +0800
Received: from ww-haowen.ting (172.21.177.97) by RTKEXHMBS04.realtek.com.tw
 (10.21.1.54) with Microsoft SMTP Server id 15.2.1544.27 via Frontend
 Transport; Fri, 14 Nov 2025 17:04:49 +0800
From: Hao-Wen Ting <haowen.ting@realtek.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
CC: <jinn.cheng@realtek.com>, <edwardwu@realtek.com>, <phelic@realtek.com>,
        <shawn.huang724@realtek.com>, <haowen.ting@realtek.com>,
        <cy.huang@realtek.com>, <james.tai@realtek.com>, <cylee12@realtek.com>,
        <phinex@realtek.com>, <conor+dt@kernel.org>, <krzk+dt@kernel.org>,
        <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <stanley_chang@realtek.com>
Subject: [PATCH v2 1/2] dt-bindings: timer: Add Realtek SYSTIMER binding
Date: Fri, 14 Nov 2025 17:04:47 +0800
Message-ID: <20251114090448.285685-2-haowen.ting@realtek.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251114090448.285685-1-haowen.ting@realtek.com>
References: <20251114090448.285685-1-haowen.ting@realtek.com>
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
 .../bindings/timer/realtek,systimer.yaml      | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/realtek,systimer.yaml

diff --git a/Documentation/devicetree/bindings/timer/realtek,systimer.yaml b/Documentation/devicetree/bindings/timer/realtek,systimer.yaml
new file mode 100644
index 000000000000..8e68158c68f8
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/realtek,systimer.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/realtek,systimer.yaml#
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
+properties:
+  compatible:
+    enum:
+      - realtek,rtd1625-systimer
+      - realtek,rtd1635-systimer
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
+        compatible = "realtek,rtd1625-systimer";
+        reg = <0x89420 0x18>;
+        interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
+    };
-- 
2.34.1


