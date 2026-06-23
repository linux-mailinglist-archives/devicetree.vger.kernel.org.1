Return-Path: <devicetree+bounces-314995-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GhqKAHrwOmoiMQgAu9opvQ
	(envelope-from <devicetree+bounces-314995-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:45:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA1D6BA195
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:45:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=aurel32.net header.s=202004.hall header.b=Ce5Z4mXp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314995-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314995-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=aurel32.net;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 23BD030C217B
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 377E13ABD8E;
	Tue, 23 Jun 2026 20:44:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from hall.aurel32.net (hall.aurel32.net [195.154.119.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C2B3A960E;
	Tue, 23 Jun 2026 20:44:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782247482; cv=none; b=dubWCI4EZt4IRT8hChy4bMAppk4VXrWIOZDh+f7rmeJdYla/qOBoRG8yo10megM2pAyZ21bHBRTHBuM4k2+mkLk8528CB/DmHrFMHmfGyU8ttvejfzbSl7CebehXXEw9U+4xUIA3Kc/1C4d3Gu13hBT95UhoAtXWCj6PgouZ3EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782247482; c=relaxed/simple;
	bh=e9J5g/swbHDzjgOU31Wc2wrmEVv0k2Tkk/VI2Hj0cFM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BYiI8yFPPJSjbVuWwwC3pCXPDOZJzjAHKvOocN168pLHF09Zoqd/Gvb4f+/QI3OGnUZOnuRaHCrJbaoL95qOcD9IrvhNSPuOC8bqEk1LLzrhFDIYRbS8hTO3Kb9rpH68UNuC/mNvwm0Ox0J/uFatQCRYCPQITFHr/7geAttjhK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net; spf=pass smtp.mailfrom=aurel32.net; dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b=Ce5Z4mXp; arc=none smtp.client-ip=195.154.119.183
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=Soo1HuDwKOflS4we3Kq2KkCVaLAcuHc9IrwUZyIjWdI=; b=Ce5Z4mXpSXVzV5WQHpSoInL9ZO
	yAnMOQOImQ7Z8j5ifwRh7IYaaytHxKWB0MfZPMpeoqTAjGoGM4Y4UozcQ4uqgm0hK5dzuQ3hus5uU
	VnXPGx9DTu0QcPoFk81GwJf2hHrUd3sySWrPWuU0RL2gvfAxPi2tRs3O/z5x/ZswY/bTt3Ah8E4Gl
	tU06VbNIuFGtC8Y5dGfGLC8L+QrLRmv8P/kFQyNcRm9AS/4n6zSk1sCMo3Asm/gT/Tya7GuFtQYq0
	2YI6wUANT0ZL9rjGe5ZkOK8yuPYeGZTAXcAc5BbP7SeaFD54gfTBH9qbIZmVbQSYP49sprYIWY6oW
	BzmLE9xw==;
Received: from authenticated user
	by hall.aurel32.net with esmtpsa  (TLS1.3)  tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1wc7z4-00000004gP9-3LXo;
	Tue, 23 Jun 2026 22:44:38 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>
Cc: Aurelien Jarno <aurelien@aurel32.net>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-riscv@lists.infradead.org (open list:RISC-V ARCHITECTURE),
	spacemit@lists.linux.dev (open list:RISC-V SPACEMIT SoC Support)
Subject: [PATCH v2 4/5] riscv: dts: spacemit: add i2c aliases on K3 Pico-ITX board
Date: Tue, 23 Jun 2026 22:43:48 +0200
Message-ID: <20260623204431.498700-5-aurelien@aurel32.net>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260623204431.498700-1-aurelien@aurel32.net>
References: <20260623204431.498700-1-aurelien@aurel32.net>
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
	DMARC_POLICY_ALLOW(-0.50)[aurel32.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[aurel32.net:s=202004.hall];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:aurelien@aurel32.net,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314995-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aurelien@aurel32.net,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[aurel32.net:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aurelien@aurel32.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,aurel32.net:dkim,aurel32.net:email,aurel32.net:mid,aurel32.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5DA1D6BA195

Add i2c aliases for i2c2 and i2c8 on K3 Pico-ITX board. This is useful
to keep a stable number for the /dev entries after loading the i2c-dev
module.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
index 0a0c221c99e74..bf64b6c6f867f 100644
--- a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
+++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
@@ -14,6 +14,8 @@ / {
 
 	aliases {
 		ethernet0 = &eth0;
+		i2c2 = &i2c2;
+		i2c8 = &i2c8;
 		serial0 = &uart0;
 	};
 
-- 
2.53.0


