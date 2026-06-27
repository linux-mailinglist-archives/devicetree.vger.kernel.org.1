Return-Path: <devicetree+bounces-316255-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZBOVEZJfP2pHSQkAu9opvQ
	(envelope-from <devicetree+bounces-316255-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 07:28:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6E96D12D2
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 07:28:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=163.com header.s=s110527 header.b=TCkjbpfR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316255-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316255-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=163.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1DC563032CCB
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 05:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C58F8292B4B;
	Sat, 27 Jun 2026 05:28:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF526221FCD;
	Sat, 27 Jun 2026 05:28:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782538125; cv=none; b=Ue8rwV5tRpHUZ/PN3F4tMGgSZIv7Gee129eoE0OqG9V3tZmUFMN9PCB645lxp2cnXsVwjcD0HBEHbA7FjO7bxZIja+UtL4I4MbkLBLBdUjqbLnio3TtzCwfvfgz/MaPssVMgYAWfOpPCCihEL4n4DoLjAkxKXl6lF5BCA+zryUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782538125; c=relaxed/simple;
	bh=hPhINhcx4YVoHZCH7POd41tsoj27nakwQpMuGaM6XSw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Vj7xJTl4ycNlSbBSSY4UGT+eQmYqKPsMuhM0x7c6iseRoGHwLzoAfpc93IezJEadDCoVvZH7Bnlj7CFiLP2Gwq4Ef/t8LT6/ZjesaYcjNgBWseerDLI8FwafAJjWRjvDmtWsYMikXvfez7x17694umWwFNkllJXY24tHvQ+g88A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=TCkjbpfR; arc=none smtp.client-ip=117.135.210.3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=Sj
	Do9zkPqh5G3a4cJVEabwQF/qW3EfvDIzwridmYrhk=; b=TCkjbpfRH/7tLfUjmQ
	qzbCkOInafayZdvaCXmqft3mb286eZg7/1lTSWRC1pQdBbu1flSG7PRhq1WgEIyM
	FAoo4nzx1vL/wSIHWAbg8wM+LENOBProUGbnROs0me2vuPTNOJAE8VHriVp1U+AX
	90hIu53qkfUfBhSdBpOTQsKhU=
Received: from haiyue-pc.localdomain (unknown [])
	by gzsmtp3 (Coremail) with SMTP id PigvCgBXCwMxXz9qZPylEg--.40725S2;
	Sat, 27 Jun 2026 13:27:15 +0800 (CST)
From: Haiyue Wang <haiyuewa@163.com>
To: devicetree@vger.kernel.org,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Haiyue Wang <haiyuewa@163.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/ASPEED MACHINE SUPPORT),
	linux-aspeed@lists.ozlabs.org (moderated list:ARM/ASPEED MACHINE SUPPORT),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v1] ARM: dts: aspeed: g6: Use KCS AST2600 compatible string
Date: Sat, 27 Jun 2026 13:27:07 +0800
Message-ID: <20260627052708.172918-1-haiyuewa@163.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:PigvCgBXCwMxXz9qZPylEg--.40725S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7AF4DCFyUZFy3XrW3AryDtrb_yoW8AF43pa
	909aykX39aqw4aq3WDWF1ktr4kJ3yrAF4DK39xAayUJF9Fg34IqF43tF4xKFsrXr4kuwnI
	qF18CFyqqr1DWr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0pRj0P-UUUUU=
X-CM-SenderInfo: 5kdl53xhzdqiywtou0bp/xtbCzRRPumo-XzQRUwAA3Q
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316255-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:andrew@codeconstruct.com.au,m:haiyuewa@163.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[haiyuewa@163.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[163.com,kernel.org,jms.id.au,lists.infradead.org,lists.ozlabs.org,vger.kernel.org];
	DKIM_TRACE(0.00)[163.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[haiyuewa@163.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7D6E96D12D2

As the commit 2596f6b93a60 ("ipmi: kcs: aspeed: Add AST2600 compatible
string") does, change the AST2600 DTS file to use kcs ast2600 compatible
string.

Signed-off-by: Haiyue Wang <haiyuewa@163.com>
---
 arch/arm/boot/dts/aspeed/aspeed-g6.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
index 56bb3b0444f7..774d5af495fb 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
@@ -585,7 +585,7 @@ lpc: lpc@1e789000 {
 				ranges = <0x0 0x1e789000 0x1000>;
 
 				kcs1: kcs@24 {
-					compatible = "aspeed,ast2500-kcs-bmc-v2";
+					compatible = "aspeed,ast2600-kcs-bmc";
 					reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
 					interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
 					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
@@ -594,7 +594,7 @@ kcs1: kcs@24 {
 				};
 
 				kcs2: kcs@28 {
-					compatible = "aspeed,ast2500-kcs-bmc-v2";
+					compatible = "aspeed,ast2600-kcs-bmc";
 					reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
 					interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
 					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
@@ -602,7 +602,7 @@ kcs2: kcs@28 {
 				};
 
 				kcs3: kcs@2c {
-					compatible = "aspeed,ast2500-kcs-bmc-v2";
+					compatible = "aspeed,ast2600-kcs-bmc";
 					reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
 					interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
 					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
@@ -610,7 +610,7 @@ kcs3: kcs@2c {
 				};
 
 				kcs4: kcs@114 {
-					compatible = "aspeed,ast2500-kcs-bmc-v2";
+					compatible = "aspeed,ast2600-kcs-bmc";
 					reg = <0x114 0x1>, <0x118 0x1>, <0x11c 0x1>;
 					interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
 					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
-- 
2.54.0


