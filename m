Return-Path: <devicetree+bounces-125902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7289DFA91
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 07:02:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 729FB163267
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 06:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DDB81F8F16;
	Mon,  2 Dec 2024 06:02:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B713D17E;
	Mon,  2 Dec 2024 06:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733119335; cv=none; b=C0ZBsmWWTF9Bg05GgEV0jiZ9ABzp5V+AKDCk8RniGQzpyLq+xm+2ce1grRsmAYO1H7CPzCz+1MDEUyI7kYQP/938genFei67Z5ldJXCfgkyFJM8qstSN0hBR78PSaD8CEG1B+wEhPmT47Af4915OABJw7J4HHGT/uyWgq3u4/9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733119335; c=relaxed/simple;
	bh=yrhFQT+GhhG3kne9mSxCFfa8JojcMszkT+8vzbX7kQ8=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WguqDzEeOQiewgbw52I4KUOcDDBxictd7inyz4TO2nsGlvFehzZmz8NtgGHFXo1IcWx9n7KFs4aArKm6JA60gOvkXmR3O8idgoTzDYyNeWhqxYWYENxkeXH+KBDoJCX0U82pqvyNMNxzzNE0X8PwIlaPLPHT90wJN+JcjEgKMX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 4B261pb9017801
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 2 Dec 2024 14:01:51 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS31.andestech.com
 (10.0.1.89) with Microsoft SMTP Server id 14.3.498.0; Mon, 2 Dec 2024
 14:01:50 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To: <linux-pwm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
CC: <ukleinek@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, Ben Zong-You Xie <ben717@andestech.com>
Subject: [PATCH v2 1/2] dt-bindings: pwm: add atcpit100-pwm
Date: Mon, 2 Dec 2024 14:01:46 +0800
Message-ID: <20241202060147.1271264-2-ben717@andestech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241202060147.1271264-1-ben717@andestech.com>
References: <20241202060147.1271264-1-ben717@andestech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 4B261pb9017801

Document devicetree bindings for Andes atcpit100-pwm.

Signed-off-by: Ben Zong-You Xie <ben717@andestech.com>
---
 .../bindings/pwm/andestech,atcpit100-pwm.yaml | 51 +++++++++++++++++++
 MAINTAINERS                                   |  5 ++
 2 files changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/andestech,atcpit100-pwm.yaml

diff --git a/Documentation/devicetree/bindings/pwm/andestech,atcpit100-pwm.yaml b/Documentation/devicetree/bindings/pwm/andestech,atcpit100-pwm.yaml
new file mode 100644
index 000000000000..4b707f32ad72
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/andestech,atcpit100-pwm.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/andestech,atcpit100-pwm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Andes atcpit100 PWM
+
+maintainers:
+  - Ben Zong-You Xie <ben717@andestech.com>
+
+allOf:
+  - $ref: pwm.yaml#
+
+properties:
+  compatible:
+    const: andestech,atcpit100-pwm
+
+  reg:
+    maxItems: 1
+
+  "#pwm-cells":
+    const: 3
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: ext
+      - const: apb
+
+
+required:
+  - compatible
+  - reg
+  - "#pwm-cells"
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    pwm@f0400000 {
+        compatible = "andestech,atcpit100-pwm";
+        reg = <0xf0400000 0x1000>;
+        #pwm-cells = <3>;
+        clocks = <&smu 1>, <&smu 7>;
+        clock-names = "ext", "apb";
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index a506fa4f6825..ebbc7edcf077 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3551,6 +3551,11 @@ F:	drivers/power/reset/atc260x-poweroff.c
 F:	drivers/regulator/atc260x-regulator.c
 F:	include/linux/mfd/atc260x/*
 
+ATCPIT100 PWM DRIVER
+M:	Ben Zong-You Xie <ben717@andestech.com>
+S:	Supported
+F:	Documentation/devicetree/bindings/pwm/andestech,atcpit100-pwm.yaml
+
 ATHEROS 71XX/9XXX GPIO DRIVER
 M:	Alban Bedel <albeu@free.fr>
 S:	Maintained
-- 
2.34.1


