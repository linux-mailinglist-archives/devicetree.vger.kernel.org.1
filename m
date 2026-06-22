Return-Path: <devicetree+bounces-314527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qCTdNhh2OWqGtgcAu9opvQ
	(envelope-from <devicetree+bounces-314527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 19:51:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 332A86B19B2
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 19:51:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b="XDnB0G z";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314527-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314527-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7E0013063913
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 17:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 325C033B6FC;
	Mon, 22 Jun 2026 17:48:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6CF264619
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 17:48:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782150509; cv=none; b=GPoRQutmdrdv+7rYD1vHhEJrwbpXTkuTHVF5aRrlCBoXiXiZf9scsWp7KxmnKaJ6XSw9f0HL3pYt8M7FKK1TN724P7bQEZX92M1m8Lvwvtx2MsR4WZcXqqtrPUAkpSQFVXHiiU03fVmq4echo2bZfa2Q04zI2qGXPBe3P5xmLNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782150509; c=relaxed/simple;
	bh=7TPZVOChhXFJ+Xzv8h12VhLMWCoe41c8rsUOGMrITss=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p5Ed4WybJz0ENDTRiFcZoM8KmjnJ/Ie5DgiLAwWCoKk0m2UWUgtV3zrhxtyEvlFjS6pJzsWJeXeR+lbfiutHlrOpcneKK0nS+vh3Wa7JXeeT0f5EGJeMxbrK7raqRp9SXSUyXyKd2eiN8oxm0OBYNxxAsWoLR9O6PYj7tUeFQ/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=XDnB0Gzc; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=cHKJCJji6pcQ2HCUYNNZYTZH61nVppa6O7UMGWt56gg=; b=XDnB0G
	zcrMIrv0Dy3EzrYYhPFLnvMRpVCPhDRRMsesvWcDeO78/abv0TMZV5hI9fFQJg7K
	xSwMAsdo/KWxL5ehYf4IY81XL+myCdxXz3wJlbxenJQD/zZHpXGWWcaqeIkBvKA0
	zJbi9JyFKYAktr2Y+a+7tcZKk59bjsSCjFDa54QSl3AMEh/1fTWqc8sMrmPB2G6Q
	gQJ6dmkIYPjQWpQUJm0SRa8YfUhJckkFp0iHJrAENiNmz+HYA0T8QlQ6YOSsKNJi
	R/pYc1LvX+dQNvkjyIu5zDONerTmqQ92zAnskzLCULYSNyRGVs535LSgn5a/r+az
	pMNHHX/I69JMSXbg==
Received: (qmail 2061448 invoked from network); 22 Jun 2026 19:48:21 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 22 Jun 2026 19:48:21 +0200
X-UD-Smtp-Session: l3s3148p1@THqSP9tUtOcujnum
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v3 2/3] ARM: dts: renesas: r9a06g032: Describe SPI controllers
Date: Mon, 22 Jun 2026 19:48:08 +0200
Message-ID: <20260622174806.74450-7-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260622174806.74450-5-wsa+renesas@sang-engineering.com>
References: <20260622174806.74450-5-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-renesas-soc@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:herve.codina@bootlin.com,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:geert@glider.be,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314527-lists,devicetree=lfdr.de,renesas];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[sang-engineering.com];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[172.234.253.10:from];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[sang-engineering.com,bootlin.com,glider.be,gmail.com,kernel.org,vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received,194.117.254.33:received];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sang-engineering.com:dkim,sang-engineering.com:email,sang-engineering.com:mid,sang-engineering.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 332A86B19B2

Add nodes for the 6 SPI controllers of the Renesas RZ/N1D SoC. The first
4 can only be controllers, the latter 2 can only be targets. DMA nodes
are not added yet because DMA needs some extra code in the drivers and
cannot be tested yet. Basic FIFO mode works reliably, though.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Tested-by: Herve Codina <herve.codina@bootlin.com>
---

Change since v2:
* tag added (Thanks, Herve!)

 arch/arm/boot/dts/renesas/r9a06g032.dtsi | 84 ++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/arch/arm/boot/dts/renesas/r9a06g032.dtsi b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
index 442ea26b40f5..19c9bce0a26d 100644
--- a/arch/arm/boot/dts/renesas/r9a06g032.dtsi
+++ b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
@@ -563,6 +563,90 @@ gic: interrupt-controller@44101000 {
 				<GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_HIGH)>;
 		};
 
+		/* Controller only */
+		spi1: spi@50005000 {
+			compatible = "renesas,r9a06g032-spi", "renesas,rzn1-spi";
+			reg = <0x50005000 0x200>;
+			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sysctrl R9A06G032_CLK_SPI0>, <&sysctrl R9A06G032_HCLK_SPI0>;
+			clock-names = "ssi_clk", "pclk";
+			power-domains = <&sysctrl>;
+			num-cs = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		/* Controller only */
+		spi2: spi@50006000 {
+			compatible = "renesas,r9a06g032-spi", "renesas,rzn1-spi";
+			reg = <0x50006000 0x200>;
+			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sysctrl R9A06G032_CLK_SPI1>, <&sysctrl R9A06G032_HCLK_SPI1>;
+			clock-names = "ssi_clk", "pclk";
+			power-domains = <&sysctrl>;
+			num-cs = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		/* Controller only */
+		spi3: spi@50007000 {
+			compatible = "renesas,r9a06g032-spi", "renesas,rzn1-spi";
+			reg = <0x50007000 0x200>;
+			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sysctrl R9A06G032_CLK_SPI2>, <&sysctrl R9A06G032_HCLK_SPI2>;
+			clock-names = "ssi_clk", "pclk";
+			power-domains = <&sysctrl>;
+			num-cs = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		/* Controller only */
+		spi4: spi@50008000 {
+			compatible = "renesas,r9a06g032-spi", "renesas,rzn1-spi";
+			reg = <0x50008000 0x200>;
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sysctrl R9A06G032_CLK_SPI3>, <&sysctrl R9A06G032_HCLK_SPI3>;
+			clock-names = "ssi_clk", "pclk";
+			power-domains = <&sysctrl>;
+			num-cs = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		/* Target only */
+		spi5: spi@50009000 {
+			compatible = "renesas,r9a06g032-spi", "renesas,rzn1-spi";
+			reg = <0x50009000 0x200>;
+			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sysctrl R9A06G032_CLK_SPI4>, <&sysctrl R9A06G032_HCLK_SPI4>;
+			clock-names = "ssi_clk", "pclk";
+			power-domains = <&sysctrl>;
+			spi-slave;
+			#address-cells = <0>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		/* Target only */
+		spi6: spi@5000a000 {
+			compatible = "renesas,r9a06g032-spi", "renesas,rzn1-spi";
+			reg = <0x5000a000 0x200>;
+			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sysctrl R9A06G032_CLK_SPI5>, <&sysctrl R9A06G032_HCLK_SPI5>;
+			clock-names = "ssi_clk", "pclk";
+			power-domains = <&sysctrl>;
+			spi-slave;
+			#address-cells = <0>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		/*
 		 * The GPIO mapping to the corresponding pins is not obvious.
 		 * See the hardware documentation for details.
-- 
2.47.3


