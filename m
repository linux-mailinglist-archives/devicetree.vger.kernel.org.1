Return-Path: <devicetree+bounces-293454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMtcGi4J+2mbVQMAu9opvQ
	(envelope-from <devicetree+bounces-293454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 11:26:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B42504D8942
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 11:26:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 363BB3009CCE
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 09:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 915CB3DB655;
	Wed,  6 May 2026 09:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="HFXfYB8Q"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FCBA33ADAF;
	Wed,  6 May 2026 09:24:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778059490; cv=none; b=FGRm1xeS0kUwJquKkfBvPOW994qnchCrdD0P2aH9/80INufGk6K4xELcDSAALLG6QDAeJyM6VTiCVtMzb/vQdS0/Wm/2lnK9YYAkQsLH8qS0oJQv6Pb75FQWMgRgaK9PmHyyssMToPm/c7IEWoMzVb9z4bbY4R5nONQ0ql6aoqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778059490; c=relaxed/simple;
	bh=j+OKmsFL/JotOyweP6504xDjQkf9oQY1pYSSHSoUZ1Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=t25joo3ydvrz8MS4PpQOg2YZjtF/NXrAhDUrItvizn8owugO36aCRXaxB2i7yR2YBZPlt3PjJtib7No1ziEaQEP59x1hP4rQglAGsysBmTZgl1CaKlM2OSj9WQB0N28twXjWP576dZ4Jtm323nthCJsU/wGFxn2HjWaZUDMFHYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=HFXfYB8Q; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=Lj0xUKXRifp/RhCmIiTNJQhayVisMI4pFmpAqEssGiA=; b=HFXfYB8QnzIwgGB+I8Y1OVj2wl
	VdM8JrjwSsa/YN/d6JcYcIEl4UKqoBV9Nm05ohVzV9S+F6//tQwbz8v6C928zFgO6IrlEKAtEk+bG
	t+pU8h2vlnwk+wMRMfGrrV2y/rnoNJ4sUhocm50YWQA2jmzTcaicgu8mV9A82bUPjR/D6SEpZN3aj
	UraC3DgnmgmrLE8WdxXMImaXjd7ylLnOF0cZhy81weXyxwHPPPwq8x+sAHdcAscY6Bv9pDHL38INZ
	UG3PFLeZeDS01XYwKuRAYYl4Wc21U/gIEEAQRCC9kbqRDObZlp9Kch8pASPQ+t0MyulX8v2Rt2Jdc
	0FZcp1oQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: wim@linux-watchdog.org,
	linux@roeck-us.net
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH] dt-bindings: watchdog: Add watchdog compatible for RK3528
Date: Wed,  6 May 2026 11:24:20 +0200
Message-ID: <20260506092420.3320031-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B42504D8942
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[bounces-293454-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,kwiboo.se:email]

From: Jonas Karlman <jonas@kwiboo.se>

The RK3528 uses the same watchdog block as all previous Rockchip SoCs.
So add a compatible for it to the soc-list.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
index 609e98cdaaff..731794dccd4a 100644
--- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
@@ -29,6 +29,7 @@ properties:
               - rockchip,rk3368-wdt
               - rockchip,rk3399-wdt
               - rockchip,rk3506-wdt
+              - rockchip,rk3528-wdt
               - rockchip,rk3562-wdt
               - rockchip,rk3568-wdt
               - rockchip,rk3576-wdt
-- 
2.47.3


