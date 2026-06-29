Return-Path: <devicetree+bounces-316986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Zyq3CItbQmpt5QkAu9opvQ
	(envelope-from <devicetree+bounces-316986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 13:48:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B610E6D99EF
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 13:48:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AITq3imU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316986-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316986-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2FF1A300B9E0
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01E47361DBF;
	Mon, 29 Jun 2026 11:48:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E098938A718
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 11:48:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782733704; cv=none; b=cSnyc18Yr2p2144go0u2CKI0gnK0VMvxNjgltp9nfpCcD/DPl4TQS/pU+dymPNIGJHVwj3UE/rh02UTi0f4UTBdPp81/gKksK5Vc8bLSVmMKUB7k8xDXtAUsjciXzlzY3QGrGIBimvwbcMkkJGyf34FuqRu73/Qq5nQ0Ta/0rzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782733704; c=relaxed/simple;
	bh=J00Pn5wN0uddYGojhlzaNFq+jOtgGNf2dYnkemvDAzI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Xm8YN10rxjKouo0AXsrC/CCAzktfn6nJYxYVZrPNjRCa4O8ApZVAbfMhNbVd8eUU5i6odKtUc3dJzEQrKDrpF+PIwAeXZf6J85qGVpQWlRIBAHL/M9nF0PZDSJHQD3qe2zl1UQlkgg/6TPPu3NsL/zTcyIbKpXh4o5MqlbMVf/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AITq3imU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A0D81F00A3A;
	Mon, 29 Jun 2026 11:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782733703;
	bh=esn6g84YApgt7DeO1miYz7BTaLoRhtFrbSl9Z8uqfWY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=AITq3imU6OFzxhVMpRoPkfFMxIiEt3GTvcRUc/seqGGULitDiqU9uTlTA1E7aWwCC
	 DhS24TRzGanWdXgXj+P91e4hxWOvKZ55CRWsFqZk1kOLUm+U2xATttkzHi5ESjGNUH
	 bv9SjzUNN0pZ0siRbe/vDgV4BVssNRpxNB7sMjLlJumo7dkOq47P95oznwoXQbsNCD
	 8yPKdG2lk654esBVsQgynUyCxm8i2Yqb49YLoV/PNSePf58lmnBThLgINQXfZ1Azht
	 oBAbL3hYjFMrxPvRTN0SGLdmnI+w05kSm/Xk0PYQjimlN+O7K5KkN9RvtOcsh7f3UV
	 xOZKj9neDXd5A==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org,
	muhammad.nazim.amirul.nazle.asmade@altera.com
Subject: [PATCHv2 2/2] arm64: dts: socfpga: agilex5: update channel interrupts for gmac1 and gmac2
Date: Mon, 29 Jun 2026 06:48:18 -0500
Message-ID: <20260629114818.1746410-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20260629114818.1746410-1-dinguyen@kernel.org>
References: <20260629114818.1746410-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316986-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dinguyen@kernel.org,m:devicetree@vger.kernel.org,m:muhammad.nazim.amirul.nazle.asmade@altera.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B610E6D99EF

Populate the gmac1 and gmac2 interrupt list to support 8 TX/RX queue
pairs.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
v2: no changes
---
 .../arm64/boot/dts/intel/socfpga_agilex5.dtsi | 72 +++++++++++++++++--
 1 file changed, 68 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
index 2096decb5655..f54767d1526e 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
@@ -702,8 +702,40 @@ gmac1: ethernet@10820000 {
 			compatible = "altr,socfpga-stmmac-agilex5",
 				     "snps,dwxgmac-2.10";
 			reg = <0x10820000 0x3500>;
-			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "macirq";
+			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 210 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 211 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 212 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 213 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 214 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 215 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 217 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq",
+					  "tx-queue-0",
+					  "tx-queue-1",
+					  "tx-queue-2",
+					  "tx-queue-3",
+					  "tx-queue-4",
+					  "tx-queue-5",
+					  "tx-queue-6",
+					  "tx-queue-7",
+					  "rx-queue-0",
+					  "rx-queue-1",
+					  "rx-queue-2",
+					  "rx-queue-3",
+					  "rx-queue-4",
+					  "rx-queue-5",
+					  "rx-queue-6",
+					  "rx-queue-7";
 			resets = <&rst EMAC1_RESET>, <&rst EMAC1_OCP_RESET>;
 			reset-names = "stmmaceth", "ahb";
 			clocks = <&clkmgr AGILEX5_EMAC1_CLK>,
@@ -816,8 +848,40 @@ gmac2: ethernet@10830000 {
 			compatible = "altr,socfpga-stmmac-agilex5",
 				     "snps,dwxgmac-2.10";
 			reg = <0x10830000 0x3500>;
-			interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "macirq";
+			interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 230 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 231 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 235 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 236 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 237 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 238 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 239 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq",
+					  "tx-queue-0",
+					  "tx-queue-1",
+					  "tx-queue-2",
+					  "tx-queue-3",
+					  "tx-queue-4",
+					  "tx-queue-5",
+					  "tx-queue-6",
+					  "tx-queue-7",
+					  "rx-queue-0",
+					  "rx-queue-1",
+					  "rx-queue-2",
+					  "rx-queue-3",
+					  "rx-queue-4",
+					  "rx-queue-5",
+					  "rx-queue-6",
+					  "rx-queue-7";
 			resets = <&rst EMAC2_RESET>, <&rst EMAC2_OCP_RESET>;
 			reset-names = "stmmaceth", "ahb";
 			clocks = <&clkmgr AGILEX5_EMAC2_CLK>,
-- 
2.42.0.411.g813d9a9188


