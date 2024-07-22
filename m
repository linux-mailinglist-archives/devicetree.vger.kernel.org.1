Return-Path: <devicetree+bounces-87199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 188F8938C81
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 11:52:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F2B71F24766
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 09:52:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77A5E174EF3;
	Mon, 22 Jul 2024 09:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=kalrayinc.com header.i=@kalrayinc.com header.b="DzFqlru+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout148.security-mail.net (smtpout148.security-mail.net [85.31.212.148])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E853216CD29
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 09:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.31.212.148
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721641512; cv=none; b=bZotfLc9qQ3d9lEUwb+u+0ttWvZnZST/p2r1RbqCSN6m/hf6jt1DFtqayJc0G9eez7xVWRdlie5og0VzdQ+0PogAj6gTdTrwBl624PWTito5CLn/Mkn8Rv7bJlb5+OY+NRU9C7SXwi8phxf0+viEP93227HVNWPqHfZ1xwKydCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721641512; c=relaxed/simple;
	bh=JVTV4LpXfQIy/ruik+P0dnGNR2Q9xIw1w/eCRtiVszk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RbU4+ShMJ6rHOLTSH9Z+PqmSgubJWHG00eXYIitIgiKtc30SBz423yBldzqEMt1GNqTKqszAWIrysATRgYb0sUKX6RlvJj04NLKp7mhowof2UTRDWWqJyn2Z6WGRrRjE7XgkpiuysAn6w503jS4zehq0AYpq/n80+xi3kNnpcGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kalrayinc.com; spf=pass smtp.mailfrom=kalrayinc.com; dkim=pass (1024-bit key) header.d=kalrayinc.com header.i=@kalrayinc.com header.b=DzFqlru+; arc=none smtp.client-ip=85.31.212.148
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kalrayinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kalrayinc.com
Received: from localhost (fx408.security-mail.net [127.0.0.1])
	by fx408.security-mail.net (Postfix) with ESMTP id 617E5322AFA
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 11:43:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1721641396;
	bh=JVTV4LpXfQIy/ruik+P0dnGNR2Q9xIw1w/eCRtiVszk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=DzFqlru+palasZXJ8/xABG3iAUzC6au73kHJyjwr9Vwtdwd9l+lxbTdQ7ZH5A/Wbq
	 1vu16IEep7t1/lUjW2L0B9qOnPIwBtldZH9BwJvBhMbRqU2ZSKdp1ljWuBcsI3DhCu
	 F22bT+dop2TusFA4da1j9WePNu3hDhUaOOiiUhh8=
Received: from fx408 (fx408.security-mail.net [127.0.0.1]) by
 fx408.security-mail.net (Postfix) with ESMTP id 3333B3228F2; Mon, 22 Jul
 2024 11:43:16 +0200 (CEST)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx408.security-mail.net (Postfix) with ESMTPS id 9BDB9322636; Mon, 22 Jul
 2024 11:43:15 +0200 (CEST)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPS id 68E7140317; Mon, 22 Jul
 2024 11:43:15 +0200 (CEST)
X-Quarantine-ID: <ezh67vRpH4vQ>
X-Secumail-id: <9f9d.669e29b3.9a2a6.0>
From: ysionneau@kalrayinc.com
To: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jonathan
 Borne <jborne@kalrayinc.com>, Julian Vetter <jvetter@kalrayinc.com>, Yann
 Sionneau <ysionneau@kalrayinc.com>
Cc: devicetree@vger.kernel.org
Subject: [RFC PATCH v3 02/37] dt-bindings: soc: kvx: Add binding for
 kalray,coolidge-pwr-ctrl
Date: Mon, 22 Jul 2024 11:41:13 +0200
Message-ID: <20240722094226.21602-3-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722094226.21602-1-ysionneau@kalrayinc.com>
References: <20240722094226.21602-1-ysionneau@kalrayinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done

From: Yann Sionneau <ysionneau@kalrayinc.com>

Add binding for Kalray Coolidge SoC cluster power controller.

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---

Notes:

V2 -> V3: New patch
---
 .../soc/kvx/kalray,coolidge-pwr-ctrl.yaml     | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/kvx/kalray,coolidge-pwr-ctrl.yaml

diff --git a/Documentation/devicetree/bindings/soc/kvx/kalray,coolidge-pwr-ctrl.yaml b/Documentation/devicetree/bindings/soc/kvx/kalray,coolidge-pwr-ctrl.yaml
new file mode 100644
index 0000000000000..e0363a080ac11
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/kvx/kalray,coolidge-pwr-ctrl.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/kalray/kalray,coolidge-pwr-ctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Kalray Coolidge cluster Power Controller (pwr-ctrl)
+
+maintainers:
+  - Jonathan Borne <jborne@kalrayinc.com>
+  - Julian Vetter <jvetter@kalrayinc.com>
+  - Yann Sionneau <ysionneau@kalrayinc.com>
+
+description: |
+  The Power Controller (pwr-ctrl) control cores reset and wake-up procedure.
+
+properties:
+  compatible:
+    const: kalray,coolidge-pwr-ctrl
+
+  reg:
+    maxItems: 1
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    pwr_ctrl: pwr-ctrl@a40000 {
+        compatible = "kalray,coolidge-pwr-ctrl";
+        reg = <0x00 0xa40000 0x00 0x4158>;
+    };
+
+...
-- 
2.45.2






