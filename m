Return-Path: <devicetree+bounces-265574-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yK2xKMm6kGm8cgEAu9opvQ
	(envelope-from <devicetree+bounces-265574-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 19:11:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3253713CB8D
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 19:11:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9BA49302E7D2
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 18:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72B1530F52C;
	Sat, 14 Feb 2026 18:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="Tj6+zAEZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-106119.protonmail.ch (mail-106119.protonmail.ch [79.135.106.119])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6E43112A5
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 18:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.119
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771092633; cv=none; b=ls59xRCjH12wybn3G+ldgpmCTxp8hnbFqLsfe96eAxQb+w5x+L7EyB3Vo+rptRm/KHR+RQJ+Yo2hQnoHVm8DIqjkV8W0AC5xz0Z18Zj+PgHP+B57SwY3Y42a2lDGHxR55dXBxfngblhdEQHmU8UrZuqA8fOatomnqmwbFSpsC2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771092633; c=relaxed/simple;
	bh=AJlHYfxIvBl5RZQ9zTgwhN3YoknQjxSKJx/4Ql9uZFA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=f99UXVHlKjpWjWe+ua9/nB7sB7W7bnVmhqudCR8NA4ubI3poar+Ql1QvHJbly9Zv01RMq4Nn9L6D8c3FxvsbAOatIlsqXoqBT3TKzp2lu5UM+TL+dVLIg41vxVPJ4o+83pi3zHoCjNAc1XNeERErHdLW03VNfXA/x+srlqdvO2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=Tj6+zAEZ; arc=none smtp.client-ip=79.135.106.119
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1771092624; x=1771351824;
	bh=rwsnzH8jOGlUyiBNnOHeUfIy3Fa0IVng/RKkWIkfN6c=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Tj6+zAEZlGr5eJXYuhw8QYFrTTTtk+TizrUM0X1sSioH79T+zvkIYr39lm73vLh8p
	 F8IiLRU1SFgqXIzJzQf0G3diKLzB226f72p2POG66gqQ5i+XwubFZNHGnSCYT7eV+M
	 Ltx+FFg/7P0wFD3zsvoXVO1yMIeR0yMEYofoqtPohespQDc4FxiB3FbQYLOLcIRWam
	 6MaLgqO3ROhIVSCYkKJbvkpMb5Wmjpt6clNfAfXIAL1r4dmJl2k7ING/SgJig2PAnW
	 8zXbv0V0cTP+0LEVilcY9NFW3jhCPNE31nrRyOmHsrzmVQqGT9oA78kqoTLPAK+91n
	 lUVR/ugjDWbpw==
Date: Sat, 14 Feb 2026 18:10:16 +0000
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Michal Simek <michal.simek@amd.com>
From: Harry Austen <hpausten@protonmail.com>
Cc: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Harry Austen <hpausten@protonmail.com>
Subject: [PATCH v4 1/2] dt-bindings: clock: xilinx: add description of user monitor interrupt
Message-ID: <20260214180933.42143-2-hpausten@protonmail.com>
In-Reply-To: <20260214180933.42143-1-hpausten@protonmail.com>
References: <20260214180933.42143-1-hpausten@protonmail.com>
Feedback-ID: 53116287:user:proton
X-Pm-Message-ID: 7e6743f472392713e83bb028a7961a7e4545dc21
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[protonmail.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[protonmail.com:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265574-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[protonmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hpausten@protonmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[amd.com,vger.kernel.org,lists.infradead.org,protonmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[protonmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,b0000000:email]
X-Rspamd-Queue-Id: 3253713CB8D
X-Rspamd-Action: no action

This Xilinx clocking wizard IP core outputs this interrupt signal to
indicate when one of the four optional user clock inputs is either
stopped, overruns, underruns or glitches.

This functionality was only added from version 6.0 onwards, so restrict
it to particular compatible strings.

Signed-off-by: Harry Austen <hpausten@protonmail.com>
---
v3 -> v4: Slight rework and rebase, removing Krzysztof's R-b tag
v2 -> v3: Add Krzysztof's R-b tag
v1 -> v2: Fix binding errors by moving interrupts up front, restrict later

 .../bindings/clock/xlnx,clocking-wizard.yaml  | 24 ++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.y=
aml b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
index b497c28e8094f..7688601f1f31b 100644
--- a/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
+++ b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
@@ -38,6 +38,14 @@ properties:
       - const: clk_in1
       - const: s_axi_aclk
=20
+  interrupts:
+    items:
+      - description: user clock monitor interrupt
+
+  interrupt-names:
+    items:
+      - const: monitor
+
   xlnx,static-config:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
@@ -66,12 +74,24 @@ required:
   - xlnx,speed-grade
   - xlnx,nr-outputs
=20
+if:
+  properties:
+    compatible:
+      enum:
+        - xlnx,clocking-wizard
+        - xlnx,clocking-wizard-v5.2
+then:
+  properties:
+    interrupts: false
+    interrupt-names: false
+
 additionalProperties: false
=20
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/irq.h>
     clock-controller@b0000000  {
-        compatible =3D "xlnx,clocking-wizard";
+        compatible =3D "xlnx,clocking-wizard-v6.0";
         reg =3D <0xb0000000 0x10000>;
         #clock-cells =3D <1>;
         xlnx,static-config;
@@ -79,5 +99,7 @@ examples:
         xlnx,nr-outputs =3D <6>;
         clock-names =3D "clk_in1", "s_axi_aclk";
         clocks =3D <&clkc 15>, <&clkc 15>;
+        interrupts-extended =3D <&intc 52 IRQ_TYPE_EDGE_RISING>;
+        interrupt-names =3D "monitor";
     };
 ...
--=20
2.53.0



