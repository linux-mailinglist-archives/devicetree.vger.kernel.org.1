Return-Path: <devicetree+bounces-275764-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WONsIHvytWl87QAAu9opvQ
	(envelope-from <devicetree+bounces-275764-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 00:42:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E526F28F8C8
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 00:42:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ED330309E7D6
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 23:42:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1769834EEE8;
	Sat, 14 Mar 2026 23:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oss.cipunited.com header.i=@oss.cipunited.com header.b="WFCXGrKW"
X-Original-To: devicetree@vger.kernel.org
Received: from sg-1-13.ptr.blmpb.com (sg-1-13.ptr.blmpb.com [118.26.132.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C612ED15D
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 23:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=118.26.132.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773531757; cv=none; b=GCGeqdr78p3TRy3chrdnSiuA9lvcNq2XrCUSh8uus6QzEVMvHC4/M19ZFGDi1sSIq4T7xavvSslbdmopyVleUIpWMnchXWzQhLv0XyKfM0yFdSM9fDYo2SQpqdyIp3HemaXJoTnuXU6pgphwlU+r0IjeqsI5LpvnMzc9mmaGWnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773531757; c=relaxed/simple;
	bh=wv6HpXrIlfr6EXsqbV6jc8CuC8VrTOicp6tv1wBw7BY=;
	h=Date:Mime-Version:In-Reply-To:To:Cc:From:Content-Type:Subject:
	 Message-Id:References; b=PoybnsLmPIwkw7V5/T4Be4FC+Zwx6bmOa8EvF9JUXv5lqVCPm2N6ZHvSrrwFzo2PsFIt9j2sZ49BWTZGG7672SumOrsLLky2v3wYSOXbYuFjNteDhQdn6hPmjgHEFtny4fZE1kyOWCytc80cfqRX9c4N5xBooMf0enWhi28uums=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.cipunited.com; spf=pass smtp.mailfrom=oss.cipunited.com; dkim=pass (2048-bit key) header.d=oss.cipunited.com header.i=@oss.cipunited.com header.b=WFCXGrKW; arc=none smtp.client-ip=118.26.132.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.cipunited.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.cipunited.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=feishu2303200042; d=oss.cipunited.com; t=1773531712;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=BZW8ZqsLZjXZI6wPg1zAMlBbDDZ7mr231EF1XozrvFk=;
 b=WFCXGrKWmmRok8znSvaJPV797atmUDGLEEJlJLw3A0Sdx8EeI0Ljc3rwzNF8gjkK8I98mN
 pfbPhgNp0sRcnWxP9E7L+TNDko/UQf3j1NwMf3OSmgDqcdnFvCBqcUKo6/s/187uawiR+0
 m2bG3aOhYy6OS2Yp36INx13lxdnHry9RU6CkTE8rnVQqSQWlT+9pSzTLrSlBPJPAExHQK+
 1euDrE9Z5z7Yso8w/4R/1PiqiB+QeiHx+SHH43HkuQe+W+tRyMn+blofvbDiqILjUh+Ti9
 iDHtxe/awCBPVZFpXc8q/R1ZyvBhCYWD/TiUB3Lvbo33EC/zQC+Sq8W7IT1g+Q==
Date: Sun, 15 Mar 2026 07:41:43 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
In-Reply-To: <20260314234143.651298-1-rongrong@oss.cipunited.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, 
	"Jiri Slaby" <jirislaby@kernel.org>, "Rob Herring" <robh@kernel.org>, 
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>, 
	"Conor Dooley" <conor+dt@kernel.org>, 
	"Thomas Bogendoerfer" <tsbogend@alpha.franken.de>, 
	"Huacai Chen" <chenhuacai@loongson.cn>, 
	"Jiaxun Yang" <jiaxun.yang@flygoat.com>
Cc: "Rong Zhang" <rongrong@oss.cipunited.com>, 
	<linux-kernel@vger.kernel.org>, <linux-serial@vger.kernel.org>, 
	<linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>, 
	"Yao Zi" <me@ziyao.cc>, "Icenowy Zheng" <uwu@icenowy.me>, 
	"Rong Zhang" <i@rong.moe>
X-Lms-Return-Path: <lba+269b5f23e+a7f42a+vger.kernel.org+rongrong@oss.cipunited.com>
X-Mailer: git-send-email 2.53.0
From: "Rong Zhang" <rongrong@oss.cipunited.com>
Received: from tb ([223.88.91.90]) by smtp.feishu.cn with ESMTPS; Sun, 15 Mar 2026 07:41:49 +0800
Content-Transfer-Encoding: 7bit
X-Original-From: Rong Zhang <rongrong@oss.cipunited.com>
Content-Type: text/plain; charset=UTF-8
Subject: [PATCH 3/3] MIPS: dts: loongson64g-package: Switch to Loongson UART driver
Message-Id: <20260314234143.651298-4-rongrong@oss.cipunited.com>
References: <20260314234143.651298-1-rongrong@oss.cipunited.com>
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[oss.cipunited.com,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[oss.cipunited.com:s=feishu2303200042];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275764-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rongrong@oss.cipunited.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[oss.cipunited.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,1fe00100:email,oss.cipunited.com:dkim,oss.cipunited.com:mid,cipunited.com:email,1fe00110:email]
X-Rspamd-Queue-Id: E526F28F8C8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Loongson64g is Loongson 3A4000, whose UART controller is compatible with
Loongson 2K1500, which is NS16550A-compatible with an additional
fractional frequency divisor register.

Update the compatible strings to reflect this, so that 3A4000 can
benefit from the fractional frequency divisor provided by loongson-uart.
This is required on some devices, otherwise their UART can't work at
some high baud rates, e.g., 115200.

Tested on Loongson-LS3A4000-7A1000-NUC-SE with a 25MHz UART clock.
Without fractional frequency divisor, the actual baud rate was 111607
(25MHz / 16 / 14, measured value: 111545) and some USB-to-UART
converters couldn't work with it at all. With fractional frequency
divisor, the measured baud rate becomes 115207, which is quite accurate.

Signed-off-by: Rong Zhang <rongrong@oss.cipunited.com>
---
 arch/mips/boot/dts/loongson/loongson64g-package.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/boot/dts/loongson/loongson64g-package.dtsi b/arch/mips/boot/dts/loongson/loongson64g-package.dtsi
index d4314f62ccc2..029daeedd0ab 100644
--- a/arch/mips/boot/dts/loongson/loongson64g-package.dtsi
+++ b/arch/mips/boot/dts/loongson/loongson64g-package.dtsi
@@ -40,7 +40,7 @@ liointc: interrupt-controller@3ff01400 {
 		};
 
 		cpu_uart0: serial@1fe00100 {
-			compatible = "ns16550a";
+			compatible = "loongson,ls3a4000-uart", "loongson,ls2k1500-uart", "ns16550a";
 			reg = <0 0x1fe00100 0x10>;
 			clock-frequency = <100000000>;
 			interrupt-parent = <&liointc>;
@@ -50,7 +50,7 @@ cpu_uart0: serial@1fe00100 {
 
 		cpu_uart1: serial@1fe00110 {
 			status = "disabled";
-			compatible = "ns16550a";
+			compatible = "loongson,ls3a4000-uart", "loongson,ls2k1500-uart", "ns16550a";
 			reg = <0 0x1fe00110 0x10>;
 			clock-frequency = <100000000>;
 			interrupts = <15 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.53.0

