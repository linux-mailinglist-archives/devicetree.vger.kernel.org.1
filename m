Return-Path: <devicetree+bounces-321235-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MBhrLQm5S2reZAEAu9opvQ
	(envelope-from <devicetree+bounces-321235-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 16:17:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B73E711D8A
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 16:17:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=arm.com header.s=foss header.b=FZkkAv1c;
	dmarc=pass (policy=none) header.from=arm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321235-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321235-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8E50630719CA
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 13:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1761E302146;
	Mon,  6 Jul 2026 13:45:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FF2C2D94B5;
	Mon,  6 Jul 2026 13:45:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783345512; cv=none; b=BFWPKDUg8k7bAGCV42LMJukKWGtOebvflZHBGMTANKUSbLqziaNbYaQAEPrShPfwunXf2p93qBVAcEkDOhlTMT4XMh2v/GXA0O5s6tti16MxV06vBl9XFnTmYSyXC8Ap2OUwXFzXSos+JvoTWuTLKQY8z3Y72IM6n1i+qhG2xCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783345512; c=relaxed/simple;
	bh=sehJcJOBuvj2d1ch7c6naQXLqes3EP/aYzFVaiOMn2c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Olf0ttxn7HJ0YbRLFOaM2NZCylq/FRcbvcSrY7CZ7qVGm1PImu1CNP4ufNiq1nHnPoTptH6tvOhX/a0WSbBI7N2rd6CC4Gq9kKO951+YLhIV4z4xI1ZjklYMeH2zADI90f4yAkF94QvW53XLxH5w4lE7mKdNPRcVoU9nsOEJJlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=FZkkAv1c; arc=none smtp.client-ip=217.140.110.172
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE4372BCC;
	Mon,  6 Jul 2026 06:45:04 -0700 (PDT)
Received: from e142021.fritz.box (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B7C983F7B4;
	Mon,  6 Jul 2026 06:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1783345509; bh=sehJcJOBuvj2d1ch7c6naQXLqes3EP/aYzFVaiOMn2c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FZkkAv1cX3laU214PsO1i7Llkv6cV3wZWD6iAbiFPo/0JBi0rMSBA2WIGU5vqCme4
	 wNBLXiYd2Nbg0eQnWTrzLZ9jnGobR7+kwSNsDuN/fR0RQO0/DmdUlcELU+r7Eqaxwd
	 2NnLAHVv0B+Zuq8WDcCTRTrWPk6IKPB72PtlN7jE=
From: Andre Przywara <andre.przywara@arm.com>
To: Mark Rutland <mark.rutland@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>
Cc: Salman Nabi <salman.nabi@arm.com>,
	Vedashree Vidwans <vvidwans@nvidia.com>,
	Trilok Soni <trilokkumar.soni@oss.qualcomm.com>,
	Nirmoy Das <nirmoyd@nvidia.com>,
	vsethi@nvidia.com,
	Varun Wadekar <vwadekar@nvidia.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v3 1/8] dt-bindings: arm: Add Live Firmware Activation
Date: Mon,  6 Jul 2026 15:44:41 +0200
Message-ID: <20260706134455.132091-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260706134455.132091-1-andre.przywara@arm.com>
References: <20260706134455.132091-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_DKIM_ALLOW(-0.20)[arm.com:s=foss];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-321235-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mark.rutland@arm.com,m:lpieralisi@kernel.org,m:sudeep.holla@kernel.org,m:salman.nabi@arm.com,m:vvidwans@nvidia.com,m:trilokkumar.soni@oss.qualcomm.com,m:nirmoyd@nvidia.com,m:vsethi@nvidia.com,m:vwadekar@nvidia.com,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[arm.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,arm.com:dkim,arm.com:mid,arm.com:from_mime,arm.com:url,arm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B73E711D8A

The Arm Live Firmware Activation spec [1] describes updating firmware
images during runtime, without requiring a reboot. Update images might
be deployed out-of-band, for instance via a BMC, in this case the OS
needs to be notified about the availability of a new image.

Describe an interrupt that could be triggered by the platform, to notify
about any changes.

[1] https://developer.arm.com/documentation/den0147/latest/

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../devicetree/bindings/arm/arm,lfa.yaml      | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,lfa.yaml

diff --git a/Documentation/devicetree/bindings/arm/arm,lfa.yaml b/Documentation/devicetree/bindings/arm/arm,lfa.yaml
new file mode 100644
index 000000000000..ef8e250f2da7
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
+        firmware-update {
+            compatible = "arm,lfa";
+            interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+        };
+    };
+...
-- 
2.43.0


