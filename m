Return-Path: <devicetree+bounces-149591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E9AA3FE2D
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 19:06:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1556817D411
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 18:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76F3125291F;
	Fri, 21 Feb 2025 18:04:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E33C32528F5;
	Fri, 21 Feb 2025 18:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740161043; cv=none; b=MG5FatdLOSwhZWeGcq1fLNGRLhpUZ5mla5qzCTMGcaLZBvfuDi6WtB2qIbZ5sLmpFyRi0wZOsP69e8zK2tWGla7l2TjUVxZRF8tXDXNDvKQV1ubN/g0GkLt9PuADWfp63YeFh7Csi9qDp9O65JW5QnI/AcoVO+CpaDexioM8yZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740161043; c=relaxed/simple;
	bh=qkj/B6w4AoL9CIf7WbDkzuqMAMet4sgOBNo5Lp+Ci1U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Fz/1YbHhyBkpPh9RMx+YAMAar2CUmAxf7lNXljZS+VTflLXRahiNc7mzu0YgJnighJ1+nMgFSrnj7/uA7ND3Kt2VRplu/8gSioO8ojeh3eCWpbCsQi8qoS57rkTKjfgnuy11MAl2KIPsEelhvn2brfLyNU7ODrU2jT+kJiSl+HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ECBD2169C;
	Fri, 21 Feb 2025 10:04:18 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 052803F59E;
	Fri, 21 Feb 2025 10:03:58 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Jessica Clarke <jrtc27@jrtc27.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 02/10] dt-bindings: arm: Add Morello compatibility
Date: Fri, 21 Feb 2025 18:03:41 +0000
Message-ID: <20250221180349.1413089-3-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250221180349.1413089-1-vincenzo.frascino@arm.com>
References: <20250221180349.1413089-1-vincenzo.frascino@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatibility to Arm Morello System Development Platform.

Note: Morello is at the same time the name of an Architecture [1], an SoC
[2] and a Board [2].
To distinguish in between Architecture/SoC and Board we refer to the first
as arm,morello and to the second as arm,morello-sdp.

[1] https://developer.arm.com/Architectures/Morello
[2] https://www.morello-project.org/

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 .../devicetree/bindings/arm/arm,morello.yaml  | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,morello.yaml

diff --git a/Documentation/devicetree/bindings/arm/arm,morello.yaml b/Documentation/devicetree/bindings/arm/arm,morello.yaml
new file mode 100644
index 000000000000..b4cfa8d048c4
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,morello.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/arm,morello.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Morello Platforms
+
+maintainers:
+  - Vincenzo Frascino <vincenzo.frascino@arm.com>
+
+description: |+
+  The Morello architecture is an experimental extension to Armv8.2-A,
+  which extends the AArch64 state with the principles proposed in
+  version 7 of the Capability Hardware Enhanced RISC Instructions
+  (CHERI) ISA.
+
+  ARM's Morello Platforms are built as a research project to explore
+  capability architectures based on arm.
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: Arm Morello System Development Platform
+        items:
+          - const: arm,morello-sdp
+          - const: arm,morello
+
+additionalProperties: true
+
+...
-- 
2.43.0


