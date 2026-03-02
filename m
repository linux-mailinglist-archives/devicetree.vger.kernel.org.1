Return-Path: <devicetree+bounces-269885-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIpnC/9jpWmx+wUAu9opvQ
	(envelope-from <devicetree+bounces-269885-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:18:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CE71D64D0
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:18:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CA347304B4EC
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:17:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 625DD396B85;
	Mon,  2 Mar 2026 10:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="TucxBuh9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay04-hz1.antispameurope.com (mx-relay04-hz1.antispameurope.com [94.100.132.204])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F6F396D2C
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 10:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.204
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772446627; cv=pass; b=IyWhW20thEUFyBVxFxAGhpN8+TWeGhsz4U2S0RjBWKJtoD8vxMaPsi5sbIt9HQSUMGjAP3f4hM7A3I+MxY+g7chMXS0kzhBSV9jBhKwunyuhWtIs8ilPzTvIf4o/1B7Q9ilgJRFa33Fu6U9ZEmO7CBk5nSBle+I7W/a2gRxk/Ro=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772446627; c=relaxed/simple;
	bh=wdBOgOuoQvi3lFRuIPV65MsuyfRvn35Vyq60uRahRw8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VtNJbc332cqYjGmj4E+f0HGv+m4cA3SY4x7ycmR4iLUGpWW8XYuFrAlm/bWxiWCYy0OA6dor/Lh4qz5qet1sWlVzjAkVX4xJlFLqsSIOMDMgVuUHeH8hcn23hlwOxGdyu8VXnask0Ki8m42Aa/D02HC47PKUcDZY4+6BEyKKyvI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=TucxBuh9; arc=pass smtp.client-ip=94.100.132.204
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate04-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=AMnRhDEp9Ptd0SpYBrIdln+6K/ZJlKaMBCVTSYNm69A=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772446582;
 b=XdZxhRTd3r30zThWT0tZxw2Y48TzXqSDTGuRTaU2za3ja8b2b4JcF/yt5F3JBmZ9ZnInjpeI
 ZkpnEJuidc6hF32K0GF1mKS2U4cHV8+9FK6i9/LmLWv7z0q43Cm5Nxe89/owLZ4rC1HiensQrjn
 XNutjwdrFsvA1+qxsUDhp9mIzitybSh1Ox0C9bMlvzWas6v/CH6nCPETjCPg+iTdIGH+tMfoX+d
 JEVYjOxvYmjsIydwsFnUK56wocfT9ibPbFR9O9cPcxaTAP2WmzMUBFIKAxd54N45tGabcDgVeFE
 LuitW9Q9x7wXarCws1dnd4bNjE36e7E9fWL1cBKpQLRxQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772446582;
 b=DG/zdSadiWCShaItX91qMJs/k+fS5Uz+iDDZT5bny4bypJBckffvBRvLeh1cvJaT1c3r4v2T
 8d61V1WtwtJWzd74RIS4EBPV5Lkgkb76jViQX0oCv/VbzdLS5MFAGkiDuiH4Za5OJMPc+wWN1Eh
 iHmMxCkbJiYmXXUhbMF/PRXm7dMM9V2KrCY+itcQYYVMGdTQl8TUlV2BcNWSuhjlcgHHTVono+E
 mrRNLZCItsfyAd/OgcANK18fOLWHANoKc8DhJBGBf/MvZFlgag6wEJwwsU9NScv5kFuk2e1mlZu
 FD1RNhacMUuWeQUA09FdzY/0d4eH0jphFQjWvuiy3LLOg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay04-hz1.antispameurope.com;
 Mon, 02 Mar 2026 11:16:22 +0100
Received: from schifferm-ubuntu.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: nora.schiffer@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id D06D55A1244;
	Mon,  2 Mar 2026 11:16:10 +0100 (CET)
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH v6 1/2] dt-bindings: arm: ti: Add compatible for AM625-based TQMa62xx SOM family and carrier board
Date: Mon,  2 Mar 2026 11:14:58 +0100
Message-ID: <af87b54279e3d0b7dceccd2625f0ed7c5e06b83e.1772443991.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1772443991.git.nora.schiffer@ew.tq-group.com>
References: <cover.1772443991.git.nora.schiffer@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:nora.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: nora.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay04-hz1.antispameurope.com with 4fPZZz5LXyzRvys
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:4d4047286a7de5e590b3c07cf3114900
X-cloud-security:scantime:3.932
DKIM-Signature: a=rsa-sha256;
 bh=AMnRhDEp9Ptd0SpYBrIdln+6K/ZJlKaMBCVTSYNm69A=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772446580; v=1;
 b=TucxBuh9rTw5Vyk3+VWwedVTEIiVYqRvwqafUMeZezI7QcvnGHQ7QHtZp1JDbBMlciTUm2Wz
 E/mHaKPocJUh3Q8vuCh8GMeTpeHHCzZtZe1T+Bx2OErId3nP6H+LxclIRab20C3HxRZue/8/MRE
 15b00E3mrQh17VP38X3A3np8vb5xr/KH3WodJU4kvx0Uimz+5tAQttqqWyEA+bw8PL5iSHqQkXZ
 MCtg6aYXmmBdOwQom/zwaZ6v6EK2ML4vzF6iD9BsVD3zvLhbtJ9AOo0fwL4o7OFXJzeT8DXsDP+
 OA4w0a9+UjtP26c2jBBp1Izexb4LrpF+kXwG7EcI4grnA==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-269885-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nora.schiffer@ew.tq-group.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ew.tq-group.com:mid,ew.tq-group.com:dkim,tq-group.com:url,tq-group.com:email]
X-Rspamd-Queue-Id: B4CE71D64D0
X-Rspamd-Action: no action

The TQMa62xx is a SoM family with a pluggable connector. The MBa62xx is
the matching reference/starterkit carrier board.

Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 85deda6d42920..f1b6ef98714f3 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -95,6 +95,13 @@ properties:
           - const: toradex,verdin-am62          # Verdin AM62 Module
           - const: ti,am625
 
+      - description: K3 AM625 SoC on TQ-Systems TQMa62xx SoM
+        items:
+          - enum:
+              - tq,am625-tqma6254-mba62xx # MBa62xx base board
+          - const: tq,am625-tqma6254
+          - const: ti,am625
+
       - description: K3 AM62P5 SoC Toradex Verdin Modules and Carrier Boards
         items:
           - enum:
-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


