Return-Path: <devicetree+bounces-39015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4773E84B27E
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 11:28:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A3721C23A90
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 10:28:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7417812E1F1;
	Tue,  6 Feb 2024 10:28:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40B5912E1DE
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 10:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707215296; cv=none; b=PdjaXka4qOt6V4a96Sn8dfsO2gUp/ewsK+uxIGjXEVCEDXhzNX3iEvEGSyIQA43a/3geko36X+Bzx+MrQyZuf5oRSvxvyEJWXGLkIWnJ1uePWzOVhNrZXj9Pa5JQ+zKAUr55y7M7g+hnzyIfLKPj8OkExE775QVquD2Q/MMIhTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707215296; c=relaxed/simple;
	bh=rzgivXtGjbno6fAs4zMoLHngLmFTSUrbg1n4JNUFrL4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=n3iS0XoGTEKwAmFmu3kbIxiC09yPfbDxGJAqURA34yvyifZyy/5aLWCo1jjfL5/XhLNLqFmzfmGdf2E15/CyWbcVSrxxkNIa8Klv0Y9JSoWralKo4ZVTBEF+1+KXBq/qi6yOMz2/dD5Bo0WZYIBbkSsI/wJbkMMOG4317bCrlSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 43B031FB;
	Tue,  6 Feb 2024 02:28:56 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 720CA3F641;
	Tue,  6 Feb 2024 02:28:12 -0800 (PST)
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
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 4/5] dt-bindings/perf: Add Arm CoreSight PMU
Date: Tue,  6 Feb 2024 10:27:57 +0000
Message-Id: <c62a86ef177bec5c6d12176c605de900e9e40c87.1706718007.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.39.2.101.g768bb238c484.dirty
In-Reply-To: <cover.1706718007.git.robin.murphy@arm.com>
References: <cover.1706718007.git.robin.murphy@arm.com>
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

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
v2: Use reg-io-width instead of a new property; tweak descriptions
v3: Tweak formatting
---
 .../bindings/perf/arm,coresight-pmu.yaml      | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml

diff --git a/Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml b/Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml
new file mode 100644
index 000000000000..985b62990f80
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
+    description: If the PMU is associated with a particular CPU or subset of CPUs,
+      array of phandles to the appropriate CPU node(s)
+
+  reg-io-width:
+    description: Granularity at which PMU register accesses are single-copy atomic
+    default: 4
+    enum: [4, 8]
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
-- 
2.39.2.101.g768bb238c484.dirty


