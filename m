Return-Path: <devicetree+bounces-299725-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADTLNxjkC2r+QAUAu9opvQ
	(envelope-from <devicetree+bounces-299725-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 06:16:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 447835772C3
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 06:16:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62849304857C
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 04:15:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5AAC30C16E;
	Tue, 19 May 2026 04:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b="DICVQVIR"
X-Original-To: devicetree@vger.kernel.org
Received: from hall.aurel32.net (hall.aurel32.net [195.154.119.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81CD7303A07;
	Tue, 19 May 2026 04:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.154.119.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779164120; cv=none; b=tLI3fpnCteVKjN4tAnemJgnSxkPJJCn3Z9jn6n1RfAQbEV0DXIzjMJkC+otF6NyH7XOBqRPFuSu5Rb6gI5OYh/viLVypEIxZSwpzIpqmFRNcTQu9ELadDTChj7xq6v5IaE8G45Ho9oF8tozrv1OHpZyJ/+r/r86OzO+kLryPdOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779164120; c=relaxed/simple;
	bh=F+/hp7xOqsoQQNdBKjJcH1yFFL3aFA1na8KJNQt0n5A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hrFe5iGlC9Nhqnjvz/ganS7ETicPFwu78HU4CfV8dObc4N319CnLW4sB6hTMjfW9HIarXQKJhfcFfK/0yFi1+sT5SL5zzvs+IhwTtO1VAOpvuXzoz60/+CoKLnmHJgE4/OO/kLAyDC/axlCP7rzvpiErZJ0Vp3sHQfKndvbTSlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net; spf=pass smtp.mailfrom=aurel32.net; dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b=DICVQVIR; arc=none smtp.client-ip=195.154.119.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aurel32.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=q92OjoForvj8MezGB26uKy2lPZ5V2E2aoUdpVR5SCfs=; b=DICVQVIR50AeqPnQXMAV/1pqoy
	CgaxOumlMpGqrMIfvabXugeS5wCtFTvPglfgo9ROPQkSqTD/4roJOkoDIm8+NUmDB0sFJhGFJJ2A9
	aQxos0r8bbghSnJZedM91aqnJ+Fry5kWLRcmfJcJESr290o7rzr1ryAt6kGHCspQJFyfHwqbG21s0
	vEyJl5MX6cTfCAJd3E27ukVWD5pd6rdZsHBPoaPlqPEPXrWPb12AQKODCsm+anWDDZQ+RYGQVMtx9
	3+YMq8o0yuIvoNN8sd4XTs77Var/pcyQk4D/s5imUxpcy91xLrr3r4JhAN5s2K7X+p9mJfK6+7w+B
	FjoXj+lQ==;
Received: from authenticated user
	by hall.aurel32.net with esmtpsa  (TLS1.3)  tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1wPBrH-000000032lg-0QAR;
	Tue, 19 May 2026 06:15:07 +0200
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
	Javier Martinez Canillas <javierm@redhat.com>
Cc: Aurelien Jarno <aurelien@aurel32.net>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-riscv@lists.infradead.org (open list:RISC-V SPACEMIT SoC Support),
	spacemit@lists.linux.dev (open list:RISC-V SPACEMIT SoC Support)
Subject: [PATCH v2 1/5] riscv: dts: spacemit: set console baud rate on Milk-V Jupiter
Date: Tue, 19 May 2026 06:12:35 +0200
Message-ID: <20260519041458.3287843-2-aurelien@aurel32.net>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299725-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[aurel32.net:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aurelien@aurel32.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,aurel32.net:email,aurel32.net:mid,aurel32.net:dkim]
X-Rspamd-Queue-Id: 447835772C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Because the default console's baud rate is not set, defconfig kernels do
not have any serial output on this platform. Set the baud rate to
115200, matching what is used by U-Boot etc on this platform.

See-also: 24c12ca43b12c ("dts: spacemit: set console baud rate on bpif3")
Fixes: 5b90a3d6092d9 ("riscv: dts: spacemit: Add Milk-V Jupiter board device tree")
Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

v2: no changes

diff --git a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
index 95c35154da96d..9b1dfddf2bac5 100644
--- a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
@@ -21,7 +21,7 @@ aliases {
 	};
 
 	chosen {
-		stdout-path = "serial0";
+		stdout-path = "serial0:115200n8";
 	};
 
 	leds {
-- 
2.53.0


