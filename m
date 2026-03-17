Return-Path: <devicetree+bounces-276615-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BgQHDEwuWn4uAEAu9opvQ
	(envelope-from <devicetree+bounces-276615-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:42:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFA22A8297
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:42:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3F8843063A23
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:33:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 096563A63F8;
	Tue, 17 Mar 2026 10:33:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A71993A6F00;
	Tue, 17 Mar 2026 10:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773743628; cv=none; b=Mz9u6M4fNLBuuOKxdExuBaeQpo4OkhHF/m6r2bLLwCiBqI6In6E7CY93MabkWlLzdrZFtt8Wv9lONUJBIq9YIgyqIbOPQrhu2x9CAzSH4aYHRv/o4JuGy91gZxycLxXj13D4oiC8YNLxht8Vy/pEjCqzSe0Z2LTUUridTTwvtIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773743628; c=relaxed/simple;
	bh=l/kDrBX29807jE/FxqVx1tp9soejGDrbHEFGKncrVhk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RI62jCnuYJhz0YR2yilfNa1Dm/XppyH736FxhEr1f1PB21tgPK5WH7bInE8dNSicy/6Kp4CicRSr6IZQRAJlHyRSvnqjicbvKp0++u5UHEoZ2RK2EHYR0tW5A8Vfo58StAGp7I7OzdCPYn7QhHlRR+cAFeP//8Sy7uilaKbATnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18D7A1477;
	Tue, 17 Mar 2026 03:33:41 -0700 (PDT)
Received: from e142021.fritz.box (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B8F143F7BD;
	Tue, 17 Mar 2026 03:33:44 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Mark Rutland <mark.rutland@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Salman Nabi <salman.nabi@arm.com>,
	Vedashree Vidwans <vvidwans@nvidia.com>,
	Trilok Soni <trilokkumar.soni@oss.qualcomm.com>,
	Nirmoy Das <nirmoyd@nvidia.com>,
	vsethi@nvidia.com,
	vwadekar@nvidia.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/8] dt-bindings: arm: Add Live Firmware Activation binding
Date: Tue, 17 Mar 2026 11:33:27 +0100
Message-ID: <20260317103336.1273582-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317103336.1273582-1-andre.przywara@arm.com>
References: <20260317103336.1273582-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276615-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.835];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,arm.com:mid,arm.com:url,devicetree.org:url]
X-Rspamd-Queue-Id: 7FFA22A8297
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Arm Live Firmware Activation spec [1] describes updating firmware
images during runtime, without requiring a reboot. Update images might
be deployed out-of-band, for instance via a BMC, in this case the OS
needs to be notified about the availability of a new image.

This binding describes an interrupt that could be triggered by the
platform, to notify about any changes.

[1] https://developer.arm.com/documentation/den0147/latest/

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../devicetree/bindings/arm/arm,lfa.yaml      | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,lfa.yaml

diff --git a/Documentation/devicetree/bindings/arm/arm,lfa.yaml b/Documentation/devicetree/bindings/arm/arm,lfa.yaml
new file mode 100644
index 000000000000..92f0564fd672
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,lfa.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/arm,lfa.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm Live Firmware Activation (LFA)
+
+maintainers:
+  - Andre Przywara <andre.przywara@arm.com>
+  - Sudeep Holla <sudeep.holla@arm.com>
+
+description:
+  The Arm Live Firmware Activation (LFA) specification [1] describes a
+  firmware interface to activate an updated firmware at runtime, without
+  requiring a reboot. Updates might be supplied out-of-band, for instance
+  via a BMC, in which case the platform needs to notify an OS about pending
+  image updates.
+  [1] https://developer.arm.com/documentation/den0147/latest/
+
+properties:
+  compatible:
+    const: arm,lfa
+
+  interrupts:
+    maxItems: 1
+    description: notification interrupt for changed firmware image status
+
+required:
+  - compatible
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    firmware {
+        arm-lfa {
+            compatible = "arm,lfa";
+            interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+        };
+    };
+...
-- 
2.43.0


