Return-Path: <devicetree+bounces-259090-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOn4BlCyc2liyAAAu9opvQ
	(envelope-from <devicetree+bounces-259090-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:39:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBD4791B0
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:39:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E6F7E300C8F8
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B64A52C0F78;
	Fri, 23 Jan 2026 17:39:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ECC8274B59;
	Fri, 23 Jan 2026 17:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769189958; cv=none; b=AzIvQAvRrnn9it81P2caoR1g0ZPY+o+8MR4sQk3IC1hNsFpe1ed6M6/HwKI6bxSxoBYJLBpbPBbIPC1zdjSEpXesTStlS0eSelf2T7eGwmcwSKeOd8SDlLaihVAkua/gu37wLaSEzE+VdOtJ5ViXkDot6A3AEhRKd5a2sRlSim8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769189958; c=relaxed/simple;
	bh=l0iWjHbipPa1ijZkFAgcLPQniaiAMUAfDzX0le3Yfso=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GY1WhQG56IGinWYI8CB/XuzckvTL03G0ph+SraU92pRdemynrPv7p1ZqNByHdzthftW807TS1URfhpMP26Z5Sj20TrGM6+WLGx1THgzJ9UmQhL8OelmE7+irargjAbuz+yJ/r7iO61xvap7WLHMYnaQ8HuUK1m7YAz7dGFssO28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A17C1515;
	Fri, 23 Jan 2026 09:39:06 -0800 (PST)
Received: from e137876.arm.com (e137876.arm.com [10.33.10.100])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8B00E3F632;
	Fri, 23 Jan 2026 09:39:11 -0800 (PST)
From: Debbie Horsfall <debbie.horsfall@arm.com>
Date: Fri, 23 Jan 2026 17:37:46 +0000
Subject: [PATCH 1/2] dt-bindings: arm: Add Zena CSS compatibility
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-zena-css-v1-1-34adb95cdf89@arm.com>
References: <20260123-zena-css-v1-0-34adb95cdf89@arm.com>
In-Reply-To: <20260123-zena-css-v1-0-34adb95cdf89@arm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>, 
 Sudeep Holla <sudeep.holla@arm.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Debbie Horsfall <debbie.horsfall@arm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769189949; l=2085;
 i=debbie.horsfall@arm.com; s=20260123; h=from:subject:message-id;
 bh=l0iWjHbipPa1ijZkFAgcLPQniaiAMUAfDzX0le3Yfso=;
 b=dw/o4m/lNZIwCP4dyBjk5k6HBlbBcZQelmXDl0DeJskrhe7iQMiJXJO9uUzpmKTUtn4Yj0MZS
 4JdhJk9mRsjCjUvsRAWxbcPP16kVAqOSQD2+cSX88d2CNFEObwAZRUC
X-Developer-Key: i=debbie.horsfall@arm.com; a=ed25519;
 pk=PHSQwhhwfluuPcWn1fk950OfqGxCy2cjbyQb7dfAcFY=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259090-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[debbie.horsfall@arm.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,infradead.org:email,devicetree.org:url]
X-Rspamd-Queue-Id: 7CBD4791B0
X-Rspamd-Action: no action

Add compatibility to Arm Zena CSS Fixed Virtual Platform [1].

[1] https://www.arm.com/products/automotive/compute-subsystems/zena

Signed-off-by: Debbie Horsfall <debbie.horsfall@arm.com>
---
 .../devicetree/bindings/arm/arm,zena-css.yaml      | 31 ++++++++++++++++++++++
 MAINTAINERS                                        |  5 ++++
 2 files changed, 36 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/arm,zena-css.yaml b/Documentation/devicetree/bindings/arm/arm,zena-css.yaml
new file mode 100644
index 000000000000..42699b4db41e
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,zena-css.yaml
@@ -0,0 +1,31 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/arm,zena-css.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm Zena Compute Subsystem Platforms
+
+maintainers:
+  - Debbie Horsfall <debbie.horsfall@arm.com>
+
+description:
+  Arm Zena Compute Subsystem (CSS) is a compute platform targeting
+  the automotive sector. Arm Zena CSS is a high-performance Arm
+  Cortex-A720AE Application Processor system augmented with an Arm
+  Cortex-R82AE based Safety Island and real-time domain.
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: Arm Zena CSS Platforms
+        items:
+          - enum:
+              - arm,zena-css-fvp
+          - const: arm,zena-css
+
+additionalProperties: true
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 6863d5fa07a1..90d88137adf1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3723,6 +3723,11 @@ F:	drivers/video/fbdev/vt8500lcdfb.*
 F:	drivers/video/fbdev/wm8505fb*
 F:	drivers/video/fbdev/wmt_ge_rops.*
 
+ARM/ZENA CSS PLATFORM
+M:	Debbie Horsfall <debbie.horsfall@arm.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/arm/arm,zena-css.yaml
+
 ARM/ZYNQ ARCHITECTURE
 M:	Michal Simek <michal.simek@amd.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)

-- 
2.43.0


