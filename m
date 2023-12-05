Return-Path: <devicetree+bounces-21936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 85587805A79
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 17:52:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B24521C21270
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 16:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 938E55FEE4;
	Tue,  5 Dec 2023 16:52:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id EDB601BCA
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 08:52:11 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C2371570;
	Tue,  5 Dec 2023 08:52:58 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 29B503F5A1;
	Tue,  5 Dec 2023 08:52:10 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Cc: mark.rutland@arm.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	suzuki.poulose@arm.com,
	ilkka@os.amperecomputing.com,
	bwicaksono@nvidia.com,
	YWan@nvidia.com,
	rwiley@nvidia.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 4/5] dt-bindings/perf: Add Arm CoreSight PMU
Date: Tue,  5 Dec 2023 16:51:57 +0000
Message-Id: <bbb4262065cfc906f98165cac074e86dce19599e.1701793996.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.39.2.101.g768bb238c484.dirty
In-Reply-To: <cover.1701793996.git.robin.murphy@arm.com>
References: <cover.1701793996.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a binding for implementations of the Arm CoreSight Performance
Monitoring Unit Architecture. Not to be confused with CoreSight debug
and trace, the PMU architecture defines a standard MMIO interface for
event counters similar to the CPU PMU architecture, where the
implementation and most of its features are discoverable through ID
registers.

CC: Rob Herring <robh+dt@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: Conor Dooley <conor+dt@kernel.org>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 .../bindings/perf/arm,coresight-pmu.yaml      | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml

diff --git a/Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml b/Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml
new file mode 100644
index 000000000000..12c7b28eee35
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/perf/arm,coresight-pmu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm Coresight Performance Monitoring Unit Architecture
+
+maintainers:
+  - Robin Murphy <robin.murphy@arm.com>
+
+properties:
+  compatible:
+    const: arm,coresight-pmu
+
+  reg:
+    items:
+      - description: Register page 0
+      - description: Register page 1 (if dual-page extension implemented)
+    minItems: 1
+
+  interrupts:
+    items:
+      - description: Overflow interrupt
+
+  cpus:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 1
+    description: List of CPUs with which the PMU is associated, if applicable
+
+  arm,64-bit-atomic:
+    type: boolean
+    description: Register accesses are single-copy atomic at doubleword granularity
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
-- 
2.39.2.101.g768bb238c484.dirty


