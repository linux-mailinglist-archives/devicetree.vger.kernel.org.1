Return-Path: <devicetree+bounces-315918-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jgYPO1n/PWrq+AgAu9opvQ
	(envelope-from <devicetree+bounces-315918-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 06:26:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E82C16CA1A5
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 06:26:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Qc8/OqhU";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315918-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315918-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F3AFF3005169
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FE6F32E128;
	Fri, 26 Jun 2026 04:25:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB2526ED46
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 04:25:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782447956; cv=none; b=bwsT4wrLoZNFRijycJUREkPI3dGLuRlYBC35/tVUpT+AuY7Kq6pWieTE2WgRjOPxYZwsX+tcpq8Rz5mh4/ATHjxhM1GjytHu++lKN+8yWbyC/kougshPRwcfCI6ncFO5pXA+o4VRLWeOOmru1w3CpYOPvyUSIxZWs1IlDAB0HDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782447956; c=relaxed/simple;
	bh=+0lS2EMi+0h9VBI8PrlkyfQqBXQ7AVOLeURGL8w6XYk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EQqfbZTSlBTdaEBi6/p3DI+hfw0uJZeVbdgd+OQvhbzSiYka0npf+o8XHEAsFQlKGppHATpBpzd70W6powobufBtMf+EnGdkwPMz+yS/Q7WVBuVYW7tM34FE4DcNf2jbm99zM6jm4yroMSsD6tBLF65uciRq5MH7XJE3SNTk/6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qc8/OqhU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE3571F00A3A;
	Fri, 26 Jun 2026 04:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782447955;
	bh=qBzUdJfd68dmIuSeaZwHcyasI9FppIw8BdvAOxDiPDY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Qc8/OqhUBCEghgZsES/PikaoV8UZ5+8+UWYIjvShOEFeQ6UJoUVyrrvn7RAxRCtn/
	 xaXeHhLB92EQL6XR5wsHMZxFZyPSrmG53MxJxILirD4KN8r2uIOo1GhsjLlu4UO0U5
	 XoucDMt32VybKQtiK6bhouUvcK/PkgW/tf/ISjXrPrHcDmhzRvdXCMkw7gg9du78wC
	 b9ccQVopuqL/WbVamlioB5zxITWu/tpHVM/kuh7nLXhVyGARj4z1zRevoc//Hgefv4
	 2DA06/OYUqlVwxGTYx27wdWfT85aWiro3t+MRHljhn+zgp9jL0kkP9PIEC6bqFEY6D
	 ESTXaHv9Q33FQ==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org,
	muhammad.nazim.amirul.nazle.asmade@altera.com
Subject: [PATCH 2/2] arm64: dts: socfpga: agilex5: update channel interrupts for gmac1 and gmac2
Date: Thu, 25 Jun 2026 23:25:41 -0500
Message-ID: <20260626042541.1091774-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20260626042541.1091774-1-dinguyen@kernel.org>
References: <20260626042541.1091774-1-dinguyen@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315918-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E82C16CA1A5

Populate the gmac1 and gmac2 interrupt list to support 8 TX/RX queue
pairs.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
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


