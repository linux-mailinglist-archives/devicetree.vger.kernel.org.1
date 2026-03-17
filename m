Return-Path: <devicetree+bounces-276518-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMYrBSYJuWm+nQEAu9opvQ
	(envelope-from <devicetree+bounces-276518-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:56:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 423A42A526B
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:56:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 61A773009F38
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E8D93932CD;
	Tue, 17 Mar 2026 07:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b="yr6HN9ue"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast2.qq.com (smtpbguseast2.qq.com [54.204.34.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61093932E4;
	Tue, 17 Mar 2026 07:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773734175; cv=none; b=Ul+GPHbFv09ynCyh3NMubKci2TuNglS8WnsCQG1zKLprDkUHzA04BIdOF9aHZ1AXrcHwk9ayzCXvmeeUcTUTUaELSVkvTS1QhJLIvvIRHwIyI53JSl+4zJM8Gh9F00vlrVQWFDE0AhC7ahPV7nVlFIzy6lwuJRb3fm/qjZDzKM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773734175; c=relaxed/simple;
	bh=88z24i4Mu4dMX0+3MiP08K4JRaNoaZcAVvLBU8NrdgM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=KUnXXSHvKNBGgIAImD8Fl7tQjzfm8Llxallgqh/Ne3X8qGB9QO5eX7KjWc/k1Gm851YC7C5qsmd1ia53NaGRJZplmpuiPgrRnzOhdD9vd6NILIt6eZ/VBz1BPu8JDEQTEES8qFB8cU/HkblPUElsHXQQKqM4+IAiLA7nFZGamrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com; spf=none smtp.mailfrom=linux.spacemit.com; dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b=yr6HN9ue; arc=none smtp.client-ip=54.204.34.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.spacemit.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.spacemit.com;
	s=mxsw2412; t=1773734165;
	bh=2x3H1s4Sa0yhs6+gMgWwNOfaEbRWoZBFTbfGwSBZafY=;
	h=From:Date:Subject:MIME-Version:Message-Id:To;
	b=yr6HN9ueM/u5wjjGiibKiGVM1/luD9w0SZgmk5KTTOn+FwrdT37CDXanRrUbzQ/E6
	 uGAuFI1T0NfZTTnfhhMSAWrJ46rt6Rr1LQAa1qxcfv8q7Rk3PXL8geq/90kWBupAel
	 biSkZKEZwPMaKVIzzIDfFcEFHHBNJqMzPrXtG1Es=
X-QQ-mid: esmtpgz14t1773734164td4b9ac16
X-QQ-Originating-IP: M88vjTllWXtDO6TtolrovEckKrAGjRt6n+l2s8Qou0g=
Received: from = ( [120.237.158.181])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 17 Mar 2026 15:56:01 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16495269182346670904
EX-QQ-RecipientCnt: 13
From: Troy Mitchell <troy.mitchell@linux.spacemit.com>
Date: Tue, 17 Mar 2026 15:55:58 +0800
Subject: [PATCH] riscv: dts: spacemit: Add PDMA controller node for K3 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-k3-pdma-v1-1-f39d3e97b53a@linux.spacemit.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDY0Nz3Wxj3YKU3ERd82RDc2MTE2NDE2MzJaDqgqLUtMwKsEnRsbW1AGc
 2xwxZAAAA
X-Change-ID: 20260317-k3-pdma-7c1734431436
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773734161; l=1958;
 i=troy.mitchell@linux.spacemit.com; s=20250710; h=from:subject:message-id;
 bh=88z24i4Mu4dMX0+3MiP08K4JRaNoaZcAVvLBU8NrdgM=;
 b=Y+IAEWOo3h4hOK1f8C70fhGXYsB4h9Xx8sqUos0crU5miTr+1bZ1OxlGMdybE07C1Vd2OpstJ
 4wWif//EQX8A6wH/vL1rtXbCBp3niqfCWVk+0H2ZX2YGj5rR23c8EwR
X-Developer-Key: i=troy.mitchell@linux.spacemit.com; a=ed25519;
 pk=lQa7BzLrq8DfZnChqmwJ5qQk8fP2USmY/4xZ2/MSsXc=
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:linux.spacemit.com:qybglogicsvrgz:qybglogicsvrgz3a-0
X-QQ-XMAILINFO: NEcZE6lIdVxnDqL+FAQTTM2UEx00kuGiloRpyLDLyvuNPutVKoiBSwax
	5uQdLS+wDpzj65b/7JYS2YL+iajEZuYMbHJ/QZiJ6/p1ym9dx2Wbdg1NlZg20MqfDvjFmVO
	qv5oKlArMGLs9djBzIyuofLIGkmHLdCKJ8QvIsUAPbbkn7cFKhD4c4stJbsVx0SK9vfHrp4
	CuH9TLbXtf4Cpgb+FY45jQXrO8AEaFgx4bARNALhCaAW6u8aFaSJxudA0I1adKZS/FUjqR6
	3c/tc41ZMR4pTkToW3wOME7nZ2FXVbM/dJQZ8hBM3NU5OfcbfK6iwE3L5hSaLuyJbTxIsb8
	d0FlxgX4dzqorKJhwWoGyQmDxViuX7f4NZ6B3QeNaZ4OyH57NHVDpaZzboelKDscSy9hx72
	1Hio4j3EBdOUSTAWXzdfOD6N1doh8xPbVLjCvakY9f6QWXK0DO6ZB5+QU+r2S1c803NAb+F
	ObrZdIt5rXiAHhCojf9dA3eWHrxqGnUVizx+mW0jECcdGjZBG9lUHeuykNW/+ZjRPYkSDA9
	VUeY6Oan1A2yvwENqM+f0qFv8gXY0YN8GBC5QkkUoDXLexo4YzNSNbIlOhyq0CPNbAqxFot
	BgMLY6h2nyv28zx2yHg9h8AUW51+/rQ5Cpthb0VtfuJzXlZB4HVLEfTNqrGJT8IT5DAc3QC
	ALYQLCmqljObzHtS95FoMfLBcl2hFc/bvJB4XTrCUO/Az2p7Bylk8U2tITE/vbWwKJYV6tF
	lcHvYixgcGStiWG4DuOdJU9WeRNmrbm4yOJoBpkX5hCvMo1EueyOvnxCeSnwbQtBR8CqjM5
	Anff/KwFHuReO+vb2uX7y0m7zzGVYdVc1Y4noI5OeU4U0Qh6cgZ+Zgos1yax9gxggvQ/m3F
	tpRy9Ds9TdhFVftbNFZ/ejE8wkpPZghzmBEIuBun7+NPWVq76j9rBj0zKHbbT/Yr3OOTfb7
	7kZJki0JAJTeQ5NdvfvCRCUiiUSK4GWVFfXsd789lhhLJrwI53ZLRrBlTdtwOyTfUwsA855
	AygPZl2WPdtxVl1LYdGmtZAi+mNhP3NP2YExYJSl0j5FdYVQuxirWXCOOATVJckWTp6IDHW
	MDYkzvO2kISIcAxuHom4HjlQF7EhbMj8PsIQSSs2atZlGgd30Ynu1lwc+6M4t0drp/sYh9A
	Bx0/3v2QxeNJ6jjwwnO2VdStYw==
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
X-QQ-RECHKSPAM: 0
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[linux.spacemit.com:s=mxsw2412];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[spacemit.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276518-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[troy.mitchell@linux.spacemit.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.spacemit.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,spacemit.com:email,d4000000:email]
X-Rspamd-Queue-Id: 423A42A526B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the Peripheral DMA (PDMA) controller node for the SpacemiT K3 SoC.
The PDMA controller provides general-purpose DMA capabilities for various
peripheral devices across the system to offload CPU data transfers.

Unlike the previous K1 SoC, where some DMA masters had memory addressing
limitations (e.g. restricted to the 0-4GB space) requiring a dedicated dma-bus
with dma-ranges to restrict memory allocations, the K3 DMA masters have
full memory addressing capabilities. Therefore, the PDMA node is now
instantiated directly under the main soc bus.

This configuration defines the essential hardware properties:
- Register base address and size
- High-level triggered interrupt
- Associated APMU clock and reset controls
- 16 hardware DMA channels

The node is disabled by default and should be enabled by specific
board device trees as needed.

Signed-off-by: Troy Mitchell <troy.mitchell@linux.spacemit.com>
---
 arch/riscv/boot/dts/spacemit/k3.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k3.dtsi b/arch/riscv/boot/dts/spacemit/k3.dtsi
index a3a8ceddabec..f90d34a81be0 100644
--- a/arch/riscv/boot/dts/spacemit/k3.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k3.dtsi
@@ -438,6 +438,17 @@ soc: soc {
 		dma-noncoherent;
 		ranges;
 
+		pdma: dma-controller@d4000000 {
+			compatible = "spacemit,k1-pdma";
+			reg = <0x0 0xd4000000 0x0 0x4000>;
+			clocks = <&syscon_apmu CLK_APMU_DMA>;
+			resets = <&syscon_apmu RESET_APMU_DMA>;
+			interrupts = <72 IRQ_TYPE_LEVEL_HIGH>;
+			dma-channels = <16>;
+			#dma-cells = <1>;
+			status = "disabled";
+		};
+
 		syscon_apbc: system-controller@d4015000 {
 			compatible = "spacemit,k3-syscon-apbc";
 			reg = <0x0 0xd4015000 0x0 0x1000>;

---
base-commit: 95c541ddfb0815a0ea8477af778bb13bb075079a
change-id: 20260317-k3-pdma-7c1734431436

Best regards,
-- 
Troy Mitchell <troy.mitchell@linux.spacemit.com>


