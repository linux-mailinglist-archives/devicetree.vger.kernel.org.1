Return-Path: <devicetree+bounces-313989-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DnCsDGk4NmqS8gYAu9opvQ
	(envelope-from <devicetree+bounces-313989-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 08:51:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C0B6A871B
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 08:51:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=aurel32.net header.s=202004.hall header.b=N8o7YjXn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313989-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313989-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=aurel32.net;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB8E93031CC5
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 06:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7624F373C1D;
	Sat, 20 Jun 2026 06:50:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from hall.aurel32.net (hall.aurel32.net [195.154.119.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D973603D7;
	Sat, 20 Jun 2026 06:50:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781938259; cv=none; b=UwoEyAIVuP5wTosWSe0GTEG418ymNsiqHQ3o88VWAUYodRAT06qtdSENRDQtuMA9hbwJm/ML988sCksRQvzcWMIIQdqfX43zEpBBfVIVyIR3NpbEp+JwYABThXjVp1+2WEEw1APuTCmY1nr3rfvQK0Sl95wJHQ0x2OsdxDMaQpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781938259; c=relaxed/simple;
	bh=YEL/PgtG9CJxPalkrRDkd4g6pTV9pVtSpKYqOFpW7ZQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OQCMOrxv9lDsU0h0uYyycltRpcuHenXdqdJI9mrIhFdEkY4W5qinqtNT4uqMP1DmwJgaQJBfJZYP1L3qbKBIEdkxISX2rqpcPgsn6/pKk6I6IlxLqFejUfRJXuwF6jxGYVAy24346uTYWbvIoZVUNNcssjDn4DwI+A6JWqH5+QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net; spf=pass smtp.mailfrom=aurel32.net; dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b=N8o7YjXn; arc=none smtp.client-ip=195.154.119.183
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=tROYkmU4fHW2liLJr2fdOl3XmpMuw693HPJxJNUuxvE=; b=N8o7YjXnWei+quY1zVnWPrbvhf
	4UGHV6Q3lxVvXw4VYqjSBOiSEY0EiROa7kYJCa6AyZETwD+AzfSVOGC8Uvap5yajVeDzz3Kq3IKnD
	1F/NIZWEf7CdBnc/nN7Hj7XSYzxP2mAgeaF3UpiXiMqXzcObbcLNND9CF5BJte76odu5FC48Dba15
	Xc3qEyOriVm8ZIO1amgWwU3eTvSqP4+bIzooC600IT0SwIwLVVPId6yMUMLSBbTz0C1oWm76iiM6l
	lsKeX5QFVNSwGJlYooAGYfvfPyn+3+qZMMRWn2tJ59WJz0EbJemsYD8U1PIn9tQjLVURT+lmTpZ0r
	d2odhs4Q==;
Received: from authenticated user
	by hall.aurel32.net with esmtpsa  (TLS1.3)  tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1wap6T-000000006dl-26zo;
	Sat, 20 Jun 2026 08:22:53 +0200
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
Subject: [PATCH 3/5] riscv: dts: spacemit: add 24c02 eeprom on K3 Pico-ITX board
Date: Sat, 20 Jun 2026 08:22:04 +0200
Message-ID: <20260620062238.3199108-4-aurelien@aurel32.net>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260620062238.3199108-1-aurelien@aurel32.net>
References: <20260620062238.3199108-1-aurelien@aurel32.net>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[aurel32.net:s=202004.hall];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:aurelien@aurel32.net,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-313989-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aurel32.net:dkim,aurel32.net:email,aurel32.net:mid,aurel32.net:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81C0B6A871B

The K3 Pico-ITX board includes a 24c02 eeprom, that stores the product
name, the part name, the MAC address of the network interfaces and the
board's serial number. These values are also exposed via an
onie,tlv-layout nvmem layout.

The eeprom is marked as read-only since its contents are not supposed to
be modified.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 30 ++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
index 5fe9041ec5702..0a0c221c99e74 100644
--- a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
+++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
@@ -47,6 +47,36 @@ &i2c2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c2_1_cfg>;
 	status = "okay";
+
+	eeprom@50 {
+		compatible = "atmel,24c02";
+		reg = <0x50>;
+		pagesize = <8>;
+		read-only;
+		size = <256>;
+		status = "okay";
+
+		nvmem-layout {
+			compatible = "onie,tlv-layout";
+
+			mac-address {
+				#nvmem-cell-cells = <1>;
+			};
+
+			num-macs {
+			};
+
+			part-number {
+			};
+
+			product-name {
+			};
+
+			serial-number {
+			};
+
+		};
+	};
 };
 
 &i2c8 {
-- 
2.53.0


