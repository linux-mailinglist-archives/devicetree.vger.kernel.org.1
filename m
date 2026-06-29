Return-Path: <devicetree+bounces-316813-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TaJ4OoM0Qmoz1wkAu9opvQ
	(envelope-from <devicetree+bounces-316813-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:01:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 586156D7D0A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:01:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ew.tq-group.com header.s=default2602 header.b=U6wXFod7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316813-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316813-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=ew.tq-group.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1E51D3014429
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 08:57:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC6AF3F927B;
	Mon, 29 Jun 2026 08:56:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572CD3F86EE;
	Mon, 29 Jun 2026 08:56:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782723392; cv=none; b=dX3d53cc4oWbcsk7frUepvN+ppDFRXOBcX7qebVO+xwFDt5lMEilvUcw6IPbf+ONmfz4GNDbpMloJ0gk7quXO9U1Whq/SDkIzZwHU8eUReviGihQbLgBHWwodrUhKJWdAfL43UvUd83FkgbDBk27kiPyiHZfd4eTFxlLN2afKFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782723392; c=relaxed/simple;
	bh=swXJFx5s0RM+IHJq8FiFe4CZrIwZ9T1lczHfRp0lhcM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sObwIfVs1xq8NnmQGcClYi+hfa6t38ab0Av4gXTuRHtZd8S1jk8gDrWHTodYMYQhQJRHcjyLwmB0pcmeVLSfAiG5JAX/et4pgtt37Kcu/qhEoUEWvZMfxewLHYkgtWOaTvRjThe86XZ6ikHWzeogZIo4ysZXGiYNuSICEk4O8Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=U6wXFod7; arc=none smtp.client-ip=188.40.3.216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=jXg5U5wZ6c9DBUWysY7PVK4iR39OiCF8aCH5KysqFoU=; b=U6wXFod7rWOzBwx32mXWt6Ko5e
	BDSIrZc+oXhypPVcPukhkjXKGbIa4WH1dMlk6iPFZLOdr/zws3Rba8O8afmVlxjJp/bjeDC9BVqTy
	PY6d8UxB/ewiWxGwqQCI10px7pnSP7M2Tyx7EL1mVEmyVQzVNgKvVcDdgnoP+uvgrb4EYtwYYNF4W
	G4ORScnQO9H8do0FdwBI2nokhsXWzJTGc63zmGgWLWBLv5jGILHIoNv2QeKsWMErx0XRiVXrBbi5w
	vqDAUZxOl9UTAby4ODZaCBpfGiJdECZa61Nxv8SWXYsyBbB5QlfC8Ql55fa4SCk9LgqzBSh6B0d8D
	vq/KKgwQ==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1we7n0-000FcX-1E;
	Mon, 29 Jun 2026 10:56:26 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy06.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1we7mz-000K3w-2V;
	Mon, 29 Jun 2026 10:56:25 +0200
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com,
	Alexander Feilke <Alexander.Feilke@ew.tq-group.com>,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH 2/2] arm64: dts: ti: k3-am642-tqma64xxl-mbax4xxl: add icssg1 ti,pa-stats
Date: Mon, 29 Jun 2026 10:55:51 +0200
Message-ID: <5b0f5d24de0ccb0884b33d358eb034a88fe4f8f9.1782723206.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <eea90f48c139901397d65487a87b64bf1744587b.1782723206.git.nora.schiffer@ew.tq-group.com>
References: <eea90f48c139901397d65487a87b64bf1744587b.1782723206.git.nora.schiffer@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/28046/Mon Jun 29 08:27:20 2026)
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-316813-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@ew.tq-group.com,m:Alexander.Feilke@ew.tq-group.com,m:nora.schiffer@ew.tq-group.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[nora.schiffer@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nora.schiffer@ew.tq-group.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:url,tq-group.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ew.tq-group.com:dkim,ew.tq-group.com:mid,ew.tq-group.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 586156D7D0A

From: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>

Add missing ti,pa-stats syscon phandle, which the icssg-prueth driver
warns about very noisily since commit 550ee90ac61c
("net: ti: icssg-prueth: Add support for PA Stats").

Signed-off-by: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
[Nora Schiffer: edited commit description]
Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
---
 arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
index 46be6824dd163..b9e52d8bc8524 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
@@ -110,6 +110,7 @@ icssg1_eth: icssg1-eth {
 		ti,mii-g-rt = <&icssg1_mii_g_rt>;
 		ti,mii-rt = <&icssg1_mii_rt>;
 		ti,iep = <&icssg1_iep0>,  <&icssg1_iep1>;
+		ti,pa-stats = <&icssg1_pa_stats>;
 
 		ethernet-ports {
 			#address-cells = <1>;
-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


