Return-Path: <devicetree+bounces-286836-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DJoARbR22l2HAkAu9opvQ
	(envelope-from <devicetree+bounces-286836-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 19:06:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C313E4FF9
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 19:06:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F1EBC3017BD3
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 17:05:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18D36314B8C;
	Sun, 12 Apr 2026 17:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFHc+nEp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3902F5468;
	Sun, 12 Apr 2026 17:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776013538; cv=none; b=SydkcEa/WFYQl8XozT0PfwG4j0Ykc2MJ64HRa/FRoLu4Nwb+Ls6WET6LjvZiSOelXOQNeSdbtpzaqJUJ5sk/ZCt1hIWTTR67QZFy2me/3NkoSICcm0IRIpx8urL7wPTFsChlLOgPT1kXv17A5ymc39mx5zJTSO6qHgHauKlyUk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776013538; c=relaxed/simple;
	bh=3zinErAF7PIUZyN4YZ8S8wFZ34k6zuwyefbRqDldTUU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=DbDsmHUHa9iB+o0wNS4ePrd3+k1P+o/nvXFfpTu2i6AaWAawFlT6WxgMp+6KmyeqcYlrqc/x1EQo1PwX+SIuJniWxF0O9zcyM4htYD17MDO4nRn698ntUSp5p/v+ZV78TpmgGVoph/aod3c0fw28bzqGrxg+WZ/1jjplAvhStms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFHc+nEp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B03EC19425;
	Sun, 12 Apr 2026 17:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776013537;
	bh=3zinErAF7PIUZyN4YZ8S8wFZ34k6zuwyefbRqDldTUU=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=FFHc+nEpmbGi089Bcp/h8IU0b+Rui8aVj5WeJ93zHZ7WUVeDa+jd1ISr+DCaq/KEr
	 MwH7eEYLR5NY4DYNtKhcUGu83wfsz5MbcwK8bZoUv0xQZj7LxS5aShB1RHXe4L3Wj1
	 VWqzfGv/iqHuckU5eMCmHivJ/XoiSL2j7LKzfZWTH4LF8UAWAh9V8ozNxG45oICPIW
	 B7y9Uid0svthw1DXVIQ1TJZDyrzQEWWfr7ciklAGRyWtJbolga8+QWp3KwkozlSXLT
	 bBgp7lNN6NqqY3FgFbUwI4IzUErH955RHA2oS9BArHJsfhJNKt0LMuNzywdUKSXkFH
	 mxLb46kYu7UCA==
From: Sudeep Holla <sudeep.holla@kernel.org>
Date: Sun, 12 Apr 2026 18:04:39 +0100
Subject: [PATCH 3/5] dt-bindings: firmware: Add Arm FF-A binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260412-b4-ffa_ns_sgi_gicv3-v1-3-af61243eb405@kernel.org>
References: <20260412-b4-ffa_ns_sgi_gicv3-v1-0-af61243eb405@kernel.org>
In-Reply-To: <20260412-b4-ffa_ns_sgi_gicv3-v1-0-af61243eb405@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Sudeep Holla <sudeep.holla@kernel.org>
X-Mailer: b4 0.15.0
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-286836-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sudeep.holla@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 70C313E4FF9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the FF-A firmware device node.

Describes the "arm,ffa" compatible and requires the standard interrupts
property.

Signed-off-by: Sudeep Holla <sudeep.holla@kernel.org>
---
 .../devicetree/bindings/firmware/arm,ffa.yaml      | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/arm,ffa.yaml b/Documentation/devicetree/bindings/firmware/arm,ffa.yaml
new file mode 100644
index 000000000000..150f394b3327
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/arm,ffa.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/arm,ffa.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm Firmware Framework for A-profile
+
+maintainers:
+  - Sudeep Holla <sudeep.holla@kernel.org>
+
+description: |
+  Arm Firmware Framework for A-profile (FF-A) firmware device node
+  describing the   notification interrupt exposed to the normal world.
+
+properties:
+  $nodename:
+    const: ffa
+
+  compatible:
+    const: arm,ffa
+
+  interrupts:
+    description:
+      Per-CPU notification interrupt used by the normal world FF-A partition.
+    maxItems: 1
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
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    ffa {
+        compatible = "arm,ffa";
+        interrupts = <GIC_SGI 8 IRQ_TYPE_EDGE_RISING>;
+    };

-- 
2.43.0


