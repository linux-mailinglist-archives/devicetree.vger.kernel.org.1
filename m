Return-Path: <devicetree+bounces-15533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6237EA8A6
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 03:15:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1643A280A60
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 02:15:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEFFE8F44;
	Tue, 14 Nov 2023 02:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0B68F43
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 02:15:28 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DF73D56;
	Mon, 13 Nov 2023 18:15:26 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 6446F24E15D;
	Tue, 14 Nov 2023 10:15:25 +0800 (CST)
Received: from EXMBX172.cuchost.com (172.16.6.92) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 14 Nov
 2023 10:15:24 +0800
Received: from localhost.localdomain (202.188.176.82) by EXMBX172.cuchost.com
 (172.16.6.92) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 14 Nov
 2023 10:15:18 +0800
From: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Rob
 Herring" <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>
CC: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>, Ley Foon Tan
	<leyfoon.tan@starfivetech.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/2] dt-bindings: perf: starfive: Add StarLink PMU
Date: Tue, 14 Nov 2023 10:12:54 +0800
Message-ID: <20231114021254.3009799-3-jisheng.teoh@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231114021254.3009799-1-jisheng.teoh@starfivetech.com>
References: <20231114021254.3009799-1-jisheng.teoh@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [202.188.176.82]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX172.cuchost.com
 (172.16.6.92)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

Add device tree binding for StarFive's StarLink PMU (Performance
Monitor Unit).

Signed-off-by: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
---
 .../bindings/perf/starfive,starlink-pmu.yaml  | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/starfive,starl=
ink-pmu.yaml

diff --git a/Documentation/devicetree/bindings/perf/starfive,starlink-pmu=
.yaml b/Documentation/devicetree/bindings/perf/starfive,starlink-pmu.yaml
new file mode 100644
index 000000000000..b164f6849055
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/starfive,starlink-pmu.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/perf/starfive,starlink-pmu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: StarFive StarLink PMU
+
+maintainers:
+  - Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
+
+description:
+  StarFive's StarLink PMU integrates one or more CPU cores with a shared=
 L3
+  memory system. The PMU support overflow interrupt, up to 16 programmab=
le
+  64bit event counters, and an independent 64bit cycle counter.
+  StarLink PMU is accessed via MMIO.
+
+properties:
+  compatible:
+    const: starfive,starlink-pmu
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
+    soc {
+        #address-cells =3D <2>;
+        #size-cells =3D <2>;
+
+        l3_pmu: pmu@12900000 {
+            compatible =3D "starfive,starlink-pmu";
+            reg =3D <0x0 0x12900000 0x0 0x10000>;
+            interrupts =3D <34>;
+        };
+    };
--=20
2.25.1


