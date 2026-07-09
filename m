Return-Path: <devicetree+bounces-324063-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2Dq0NPX0T2pkrAIAu9opvQ
	(envelope-from <devicetree+bounces-324063-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:22:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCA5734E53
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:22:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=arm.com header.s=foss header.b=kman3rO8;
	dmarc=pass (policy=none) header.from=arm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324063-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324063-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 80F69301BA68
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 19:22:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3C813B2FFB;
	Thu,  9 Jul 2026 19:22:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 950613AFD0B;
	Thu,  9 Jul 2026 19:22:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783624946; cv=none; b=KE9ZgPbS4aw4Iu73gxyJ2K3i32YIr+yDiewWPeQuMWcWZv1LML1qFUn41oPN+9d+dOCG8yYVtNysQkSSrS6ulx8KU+aOehht2oJXTZjCqS4WW7WHqk2vzd7eR6LBd86+qt8aOWG/GjenIGZo65gsKgun8p2gJweJhZrle/8ui80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783624946; c=relaxed/simple;
	bh=fA7WntxYo8pt73AeZhQw+cecHr8b/7c0M9AaviTUIYc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pRvmBkMCrVjQoRccuD0cJjjB4bCaAWkbE/3rdItM9n+cUahLDnoHFkTo8shBCU83PaKEiPeapphqrXSchws7qxM6TI4WFqb1xWpy16gjJMGvDERpuxsFRoa2Y69RYAt7RqyVIBffskJ2n6xTpGjn+Cb+KznhqKqOCtpTBosBIWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=kman3rO8; arc=none smtp.client-ip=217.140.110.172
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B563125DE;
	Thu,  9 Jul 2026 12:22:19 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.2.212.23])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4E0D93FC81;
	Thu,  9 Jul 2026 12:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1783624944; bh=fA7WntxYo8pt73AeZhQw+cecHr8b/7c0M9AaviTUIYc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kman3rO8JtbmNVM1EpGN0n19Kb/tZFz42FOWy+qWn0f4IfKLxD7reoDVz1YQw7oxz
	 Ronm+csMtfiKYjD+eGgpkcjQgfZKm+RYaDaIAD+oEtJtoz0EONAhvZJhYgZ4cuoaGP
	 ab3kmgorxj++oMrbtmCanfNguhahXWAvgHn8aJbQ=
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	mark.rutland@arm.com
Cc: devicetree@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: perf: Add Arm Bus Monitor Unit
Date: Thu,  9 Jul 2026 20:22:07 +0100
Message-ID: <1cd17d9c07e9695e1dffdeaa5409f0a1db8ccb81.1783439341.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.54.0.dirty
In-Reply-To: <cover.1783439341.git.robin.murphy@arm.com>
References: <cover.1783439341.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[arm.com:s=foss];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_FROM(0.00)[bounces-324063-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:will@kernel.org,m:mark.rutland@arm.com,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[robin.murphy@arm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[robin.murphy@arm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[arm.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,arm.com:from_mime,arm.com:email,arm.com:mid,arm.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DFCA5734E53

Arm's Bus Monitor Unit is a low-level performance analysis tool for
matching and counting transactions at interconnect interfaces. Typical
platforms will have multiple BMUs each measuring multiple interfaces in
various parts of the system, hence for the sake of usability we make it
mandatory for the platform to label each instance such that the end user
can correlate with platform documentation to know what's what.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 .../bindings/perf/arm,bus-monitor-unit.yaml   | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/arm,bus-monitor-unit.yaml

diff --git a/Documentation/devicetree/bindings/perf/arm,bus-monitor-unit.yaml b/Documentation/devicetree/bindings/perf/arm,bus-monitor-unit.yaml
new file mode 100644
index 000000000000..3cdc3a05b9a6
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/arm,bus-monitor-unit.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/perf/arm,bus-monitor-unit.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm Bus Monitor Unit
+
+maintainers:
+  - Robin Murphy <robin.murphy@arm.com>
+
+properties:
+  compatible:
+    const: arm,bus-monitor-unit
+
+  reg:
+    items:
+      - description: Full BMU register space
+
+  interrupts:
+    items:
+      - description: PMU overflow interrupt
+
+  label:
+    description: BMU instance identifier (same as ACPI _UID), per the
+      platform optimisation guide
+
+required:
+  - compatible
+  - reg
+  - label
+
+additionalProperties: false
-- 
2.54.0.dirty


