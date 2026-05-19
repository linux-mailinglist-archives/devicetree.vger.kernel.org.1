Return-Path: <devicetree+bounces-299722-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CrL/L9vjC2r+QAUAu9opvQ
	(envelope-from <devicetree+bounces-299722-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 06:15:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D77A57728E
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 06:15:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 08B3A30433C1
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 04:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC08530499A;
	Tue, 19 May 2026 04:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b="A8mZW7ub"
X-Original-To: devicetree@vger.kernel.org
Received: from hall.aurel32.net (hall.aurel32.net [195.154.119.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2773019A6;
	Tue, 19 May 2026 04:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.154.119.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779164119; cv=none; b=SLtm9BAGAy9XnnJKK3XW2Kw33yZb/YNfF/EykMythm870x8O7MbnMRSvwZDX5fiBbawKbrX8bwAlJQ1pGRR22bIAxH1HEzUgrIlXh3n6KS8+3HjYZtUhdcNnmkWgZlfHOxJAf1I4z+HrGL6WniiCy4HN1/GQZhe/kwKjbKqaaek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779164119; c=relaxed/simple;
	bh=c+gAyrHj70i9gkFrUIa3zijXirDxQi6697D1H0pYrCQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jpzRHEq0AaTyHNkEx6Ut+Mxz3/fJKiKpnRw2pauJlo41y8brupkl8z6hYQUTX6pGUpGOQ+XygltCP+5ah56HABcGFFohtQ3WoMgWJLYnYZ5FEKz3c1vC1mEoXA7jqvnwKi6raRgtU1wGYXbB7xGumsbnzCxFMcNnpZhSbPSOnk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net; spf=pass smtp.mailfrom=aurel32.net; dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b=A8mZW7ub; arc=none smtp.client-ip=195.154.119.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aurel32.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=LHwopLNH6+0n7dTSPaR+y20Y2iaeT0pnt+ZZ6F9ZDBs=; b=A8mZW7ubbr+bLe4+DH0LMbRiqj
	hbsrwqje7gspxP/hUukuZyiD92rLRMo+SEizhBg24YHTGOv/sS6d7jEI7z49nDG15w5ELenpBHhyX
	+NihrYwxfnfko6Rokm4GCKjiFu77hAxMVyiWBgFGklzyjRefdJfcLZs1eKpiFBjT7va349fMg6kCN
	exH9Ye1Oh+pChjLrPROaBGGEya/lDva2xfX6IAanCpQn/0cv1z45pEKR3rNHvZQiU7QHIh58u3+mu
	dF0N3hJuztvioTZltTmN9twZFzReuKFa0uVkWlXWy1JYdlGFPYFZGgN6yiTh8m6rOTjQGxtT06uap
	FjTmaKPA==;
Received: from authenticated user
	by hall.aurel32.net with esmtpsa  (TLS1.3)  tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1wPBrI-000000032lx-2eD4;
	Tue, 19 May 2026 06:15:08 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@kernel.org>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Aurelien Jarno <aurelien@aurel32.net>
Cc: devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-riscv@lists.infradead.org (open list:RISC-V ARCHITECTURE),
	spacemit@lists.linux.dev (open list:RISC-V SPACEMIT SoC Support)
Subject: [PATCH v2 5/5] riscv: dts: spacemit: fix uboot partition offset on Milk-V Jupiter
Date: Tue, 19 May 2026 06:12:39 +0200
Message-ID: <20260519041458.3287843-6-aurelien@aurel32.net>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260519041458.3287843-1-aurelien@aurel32.net>
References: <20260519041458.3287843-1-aurelien@aurel32.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-299722-lists,devicetree=lfdr.de];
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
	DBL_PROHIBIT(0.00)[0.0.234.96:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,aurel32.net:email,aurel32.net:mid,aurel32.net:dkim,0.1.17.112:email]
X-Rspamd-Queue-Id: 2D77A57728E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Correct the uboot partition node name to match its actual offset.

Fixes: 2829823956f0 ("riscv: dts: spacemit: enable QSPI and add SPI NOR on Milk-V Jupiter")
Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

v2: new patch

diff --git a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
index 0c13b7a401c3f..4e5f5dc69d060 100644
--- a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
@@ -412,7 +412,7 @@ env@60000 {
 			opensbi@70000 {
 				reg = <0x70000 0x30000>;
 			};
-			uboot@a00000 {
+			uboot@a0000 {
 				reg = <0xa0000 0x760000>;
 			};
 		};
-- 
2.53.0


