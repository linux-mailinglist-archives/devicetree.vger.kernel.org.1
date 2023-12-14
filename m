Return-Path: <devicetree+bounces-25505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DE781364D
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 17:31:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D8C9EB20AF5
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 602AD60B82;
	Thu, 14 Dec 2023 16:31:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id B56C010F
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 08:31:27 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BEA711FB;
	Thu, 14 Dec 2023 08:32:13 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 074FB3F5A1;
	Thu, 14 Dec 2023 08:31:25 -0800 (PST)
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
Subject: [PATCH v2 4/5] dt-bindings/perf: Add Arm CoreSight PMU
Date: Thu, 14 Dec 2023 16:31:07 +0000
Message-Id: <3c2dd41b585efe44d361f41fcea0181ff2a9c9c5.1702571292.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.39.2.101.g768bb238c484.dirty
In-Reply-To: <cover.1702571292.git.robin.murphy@arm.com>
References: <cover.1702571292.git.robin.murphy@arm.com>
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
event counters following a similar design to the CPU PMU architecture,
where the implementation and most of its features are discoverable
through ID registers.

CC: Rob Herring <robh+dt@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: Conor Dooley <conor+dt@kernel.org>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
v2: Use reg-io-width instead of a new property; tweak descriptions
---
 .../bindings/perf/arm,coresight-pmu.yaml      | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml

diff --git a/Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml b/Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml
new file mode 100644
index 000000000000..0fcc5bb610f3
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
+      - description: Register page 1, if the PMU implements the dual-page extension
+    minItems: 1
+
+  interrupts:
+    items:
+      - description: Overflow interrupt
+
+  cpus:
+    description: If the PMU is associated with a particular CPU or subset of CPUs, array of phandles to those CPUs
+
+  reg-io-width:
+    description: Granularity at which PMU register accesses are single-copy atomic
+    default: 4
+    enum: [4, 8]
+
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
-- 
2.39.2.101.g768bb238c484.dirty


