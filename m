Return-Path: <devicetree+bounces-297707-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOsvHrXyBWobdwIAu9opvQ
	(envelope-from <devicetree+bounces-297707-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:05:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A02544711
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:05:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F21833013A74
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 16:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4726330B10;
	Thu, 14 May 2026 16:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b="yZhIZyts"
X-Original-To: devicetree@vger.kernel.org
Received: from hall.aurel32.net (hall.aurel32.net [195.154.119.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387C032861E;
	Thu, 14 May 2026 16:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.154.119.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778774677; cv=none; b=BqwvIhEX7attKm9KjmAcoS7+uzIfZ7abDC+zQM6eKuIQb4qzdDZwQfx787y15kyJgnEhUNm6LV8oqLT/HsdCZNM469sqMVp1Q5stYf0sh54OCS6YQbeFEz7XKPJwe4Cxf1qOt+bbaAQb8VduLGTLwhDkQUt8UNVT33PqMrxBVlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778774677; c=relaxed/simple;
	bh=rrOdW8qoKUlykOXMeQf5zPkX1i0Yd/XA5CBLnoxNjPk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A6osiL5bQCkZXTauGAJP2Mn9L7Ntla6IFEHxYuCF476E0+GduxhEIc4mACJmnntGcE8ulnDDNJPNyVntksdp4TeRGIlzowQkzHfk7f7afIoSDPJgX0j5kcxdkuF/TDJwaiMQzV126qX88iSjmM6kRZgnVeOGaClgLtQr5C69L1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net; spf=pass smtp.mailfrom=aurel32.net; dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b=yZhIZyts; arc=none smtp.client-ip=195.154.119.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aurel32.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=qYt71o3PtWGLZ9GuEhxacyBLBwWKBmBbuhWalc9UlZ4=; b=yZhIZytsB1xa3pNk94EnYHoiXl
	BMHabjc6SKLtP8yT4m87SwMe5IY+R57HSh1hnJDfhYyg6mSZ3Gs+kpnx3ZeyIpQQP0J0YEK7uRZOI
	lEZXdzw0pEk7Xt5eP0vAp4DlQGPQgPlAhMzG3DQB9aRLhtJlE4VvgvihOCIO2xPTzS1BG8KH3B47k
	0MmjM1vJ3emDDr2yEHfowgSKClWTg2Gmk/7zX3Bec4FHZAgULWMCx9GGhQ8iXMHgFEjB/YBACtBCJ
	O7X54FdP97POO84EwtHQXV1f9/iuoXnJYwuTnGxElfJsljGTWCJOnnpzAfO7DVRDnvhUmavP2JYhy
	z4CkQRBg==;
Received: from authenticated user
	by hall.aurel32.net with esmtpsa  (TLS1.3)  tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1wNYXy-00000007W2E-3auH;
	Thu, 14 May 2026 18:04:26 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@kernel.org>
Cc: Aurelien Jarno <aurelien@aurel32.net>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-riscv@lists.infradead.org (open list:RISC-V SPACEMIT SoC Support),
	spacemit@lists.linux.dev (open list:RISC-V SPACEMIT SoC Support)
Subject: [PATCH 2/4] riscv: dts: spacemit: sort aliases on Milk-V Jupiter
Date: Thu, 14 May 2026 17:56:22 +0200
Message-ID: <20260514160356.1642075-3-aurelien@aurel32.net>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260514160356.1642075-1-aurelien@aurel32.net>
References: <20260514160356.1642075-1-aurelien@aurel32.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E9A02544711
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[aurel32.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[aurel32.net:s=202004.hall];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-297707-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aurelien@aurel32.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[aurel32.net:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,aurel32.net:email,aurel32.net:mid,aurel32.net:dkim]
X-Rspamd-Action: no action

Before adding more aliases, just sort them.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
index 9b1dfddf2bac5..450d28e438293 100644
--- a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
@@ -15,9 +15,9 @@ / {
 	aliases {
 		ethernet0 = &eth0;
 		ethernet1 = &eth1;
-		serial0 = &uart0;
 		i2c2 = &i2c2;
 		i2c8 = &i2c8;
+		serial0 = &uart0;
 	};
 
 	chosen {
-- 
2.53.0


