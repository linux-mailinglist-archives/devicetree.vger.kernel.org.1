Return-Path: <devicetree+bounces-309170-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pl3TDhg2KGr3AAMAu9opvQ
	(envelope-from <devicetree+bounces-309170-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:49:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FCD661FBB
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:49:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kwiboo.se header.s=fe-e1b5cab7be header.b=jPURHqcN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309170-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309170-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kwiboo.se;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 428143085A76
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 15:41:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F188D48C8A7;
	Tue,  9 Jun 2026 15:41:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982E448A2A1
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 15:41:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781019704; cv=none; b=EyqhxqVMX0u2k3/QOk3fcDx9mIISgaSfNlDHB5L97hSknuWGKJZ8ks6OhuJ3GahZejLDSNbUFsmypCRhxh2hlO6Zh8TvXY4MNF3GHQZUOl37j3b7mNR7McWRLZjYJQnmWzwC0GLNVNCUDaqNS9ylSo8HNZ/RtKaP1Dh0JyzApc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781019704; c=relaxed/simple;
	bh=yUj3XThMGaP3rmRIa5otSNIwOg8l2L3Cwzh2pZEi8W8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oSvw0nqU6YQ+LiK6UTNH+/PzPs7KfFrihIohfnqQdglovCD/QB8yGhcSx2/iK3fcxgc/Eauswpb8HU7las7tB1uDmmtTOEIiWPfuD8L6ecM65LT0HKKg6+I+RvjnfE5ulGpKvxi+iLQBjlJFra+dxN/osttitGG2J3Tu6Fr83uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=jPURHqcN; arc=none smtp.client-ip=121.127.44.66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1781019695; bh=tnTQJtWhXNNunD6hFzuvgsamcYY52i5xc8gBuKJVeBI=;
 b=jPURHqcNXhxRObsILBtwUwe7LpaITT3sGq66j+Z0U34wuBnPEboH62e1Bi0wMOTBRQ6HU5WfD
 zXQaZH5RgNe2VlZ6fjIWBJeC9mIcXEuoCPNeYrVEkTro+Hp1XJlvYqJgjPHTfVrgS+SjxNAnSaG
 O8w116BRD/LArcahWbbdFmHc06648JMr3+TfKG25B0srVgBDmL9o0N4DCr/dPjIDgHL2E/Z9KHN
 vdIrJzUdBPUaCstpkckgv3JQFkZE/MO9OBx8OUxHjOk0mPY4P2M9ZysOYwfF/oqDN7dX2I5HpCo
 Az/4L4onCptmo7ysw9KoLJbCY3E3fksRnjSAm2xc6/Tg==
X-Forward-Email-ID: 6a28342e2d71d6ad28f66e22
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.8.22
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/2] dt-bindings: usb: Add Rockchip RK3568 compatible for EHCI and OHCI
Date: Tue,  9 Jun 2026 15:41:22 +0000
Message-ID: <20260609154124.445182-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260609154124.445182-1-jonas@kwiboo.se>
References: <20260609154124.445182-1-jonas@kwiboo.se>
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
	DMARC_POLICY_ALLOW(-0.50)[kwiboo.se,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kwiboo.se:s=fe-e1b5cab7be];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:gregkh@linuxfoundation.org,m:diederik@cknow-tech.com,m:devicetree@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-usb@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:jonas@kwiboo.se,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309170-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[kwiboo.se:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,kwiboo.se:dkim,kwiboo.se:email,kwiboo.se:mid,kwiboo.se:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C9FCD661FBB

The Rockchip RK3568 EHCI/OHCI controller depends on clk_usbphy1_480m
being enabled, or the system may freeze when registers are accessed.

Add Rockchip RK3568 EHCI and OHCI compatibles with a similar four-clock
constraint as RK3588.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Existing DTs for RK3568 use the plain generic-ehci/ohci compatible,
next patch make use of these new compatibles and adds the missing
clk_usbphy1_480m clock references.
---
 .../devicetree/bindings/usb/generic-ehci.yaml          | 10 ++++++++++
 .../devicetree/bindings/usb/generic-ohci.yaml          |  5 ++++-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/generic-ehci.yaml b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
index 55a5aa7d7a54..c49a1bbc8cfd 100644
--- a/Documentation/devicetree/bindings/usb/generic-ehci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
@@ -52,6 +52,7 @@ properties:
               - ibm,476gtr-ehci
               - nxp,lpc1850-ehci
               - qca,ar7100-ehci
+              - rockchip,rk3568-ehci
               - rockchip,rk3588-ehci
               - snps,hsdk-v1.0-ehci
               - socionext,uniphier-ehci
@@ -186,6 +187,15 @@ allOf:
       required:
         - clocks
         - clock-names
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-ehci
+    then:
+      properties:
+        clocks:
+          minItems: 4
 
 unevaluatedProperties: false
 
diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
index d42f448fa204..5f1b4d2bff89 100644
--- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
@@ -47,6 +47,7 @@ properties:
               - hpe,gxp-ohci
               - ibm,476gtr-ohci
               - ingenic,jz4740-ohci
+              - rockchip,rk3568-ohci
               - rockchip,rk3588-ohci
               - snps,hsdk-v1.0-ohci
           - const: generic-ohci
@@ -198,7 +199,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: rockchip,rk3588-ohci
+            enum:
+              - rockchip,rk3568-ohci
+              - rockchip,rk3588-ohci
     then:
       properties:
         clocks:
-- 
2.54.0


