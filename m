Return-Path: <devicetree+bounces-283032-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHGRIjnZy2kaMAYAu9opvQ
	(envelope-from <devicetree+bounces-283032-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 16:24:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4C736AE49
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 16:24:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0F4AC30A380B
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 14:19:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 847F13FB075;
	Tue, 31 Mar 2026 14:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="c7YY0sT1"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB41A3DDDC5;
	Tue, 31 Mar 2026 14:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774966769; cv=none; b=pgKYl/fP+IqaL0YCkePYEqmzWoxrUHm/dOePqntG+6Zs9dNO/QBfHlDVBQ+jtq/AbPF/fpgidh7UxQDXlcHtYo9+4n2qDOjKfI/gDJawOdbdRGZQQqrMlW61AHuE/G+bbZQIHpTlXADQ5oUsxheSfOUbiS6nmKbBSjsR2FQvFQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774966769; c=relaxed/simple;
	bh=rc79PrskglrbOIeqo3w2tff9iVbhZUGUlEcbazTtf8E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MsArYqERAuI2yI8YDlRbszIDPA+5JF5rb4FM7Eix2AOtoJQ7M3lRMehDCXVVr7eHZ4fFk14I7l/ywiOUj9GnAPKP49oPFMaGuzyeZGKaj57gDqpTX1RHkp5MH0LQXPXnbE091p1kuvlAztZD8LqAARjKct7xwwxa+AKHFPnFtGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=c7YY0sT1; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=ZNMU7R0+PtTCXkLPMkSZUIxZhAoZeXOu0BjqlP2xt14=; b=c7YY0sT1vUNSMvnHN3lGle78gM
	TYbzYY45vzyuk+SOLtRbaOwZ0GTCkaqYA+nHH6USLjGaOyFLi2Yfv9zjIVUICZrX7ERpEE+iBcDIL
	GEmKInaL7ie3++04Dc3MaV45dyQXlDye2yzy2CAyBWF8ZTs1ICOW4DLXPqEv0KUN3CAW3ARsStIRn
	VVwYf9NXphN15LsmUp9fI3nTzHXS01C+0kMbT743Q5PkWgoDag+BQT26+UNRiWJgAQCQvMS4KTdV9
	0QuYwo7hZ5XeVWopRQqo0koW/7brQyWrvaxBajtNZA+47V0OANkp/ZPYaBuevLF7ibCjnP8BTc7KH
	eFLpBRBQ==;
Received: from sslproxy02.your-server.de ([78.47.166.47])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w7ZwE-000JtF-17;
	Tue, 31 Mar 2026 16:19:26 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy02.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w7ZwD-000Mdz-2B;
	Tue, 31 Mar 2026 16:19:25 +0200
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Nora Schiffer <nora.schiffer@ew.tq-group.com>,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 6/7] arm64: dts: fsl-lx2160a-tqmlx2160a-mbls2160a: specify Ethernet PHY reset GPIOs
Date: Tue, 31 Mar 2026 16:19:07 +0200
Message-ID: <20260331141915.2918927-7-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260331141915.2918927-1-alexander.stein@ew.tq-group.com>
References: <20260331141915.2918927-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27957/Tue Mar 31 08:24:30 2026)
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283032-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.3:email,0.0.0.4:email];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,0.0.0.2:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,tq-group.com:email,0.0.0.5:email,ew.tq-group.com:dkim,ew.tq-group.com:mid,0.0.0.6:email]
X-Rspamd-Queue-Id: 0C4C736AE49
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Nora Schiffer <nora.schiffer@ew.tq-group.com>

Correctly describe the PHY resets.

While the TI DP83867 requires only a 1us reset pulse in RGMII mode, 2.5ms
are needed for SGMII, where series capacitors would result in incorrect
sampling of strap pins if they don't have enough time to discharge.

Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../fsl-lx2160a-tqmlx2160a-mblx2160a.dts      | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts
index 46a9fdc92bb56..687fd0d62235d 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts
@@ -106,36 +106,59 @@ &dpmac18 {
 	phy-connection-type = "rgmii-id";
 };
 
+/*
+ * Assert reset for 2.5ms on SGMII PHYs to let capacitors discharge before
+ * strap pin sampling
+ */
+
 &emdio1 {
 	status = "okay";
 
 	dp83867_1_1: ethernet-phy@1 {
 		reg = <1>;
+		reset-assert-us = <2500>;
+		reset-deassert-us = <200>;
+		reset-gpios = <&gpioex1 1 GPIO_ACTIVE_LOW>;
 		ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
 	};
 
 	dp83867_1_2: ethernet-phy@2 {
 		reg = <2>;
+		reset-assert-us = <2500>;
+		reset-deassert-us = <200>;
+		reset-gpios = <&gpioex1 2 GPIO_ACTIVE_LOW>;
 		ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
 	};
 
 	dp83867_1_3: ethernet-phy@3 {
 		reg = <3>;
+		reset-assert-us = <2500>;
+		reset-deassert-us = <200>;
+		reset-gpios = <&gpioex1 3 GPIO_ACTIVE_LOW>;
 		ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
 	};
 
 	dp83867_1_4: ethernet-phy@4 {
 		reg = <4>;
+		reset-assert-us = <2500>;
+		reset-deassert-us = <200>;
+		reset-gpios = <&gpioex1 4 GPIO_ACTIVE_LOW>;
 		ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
 	};
 
 	dp83867_1_5: ethernet-phy@5 {
 		reg = <5>;
+		reset-assert-us = <2500>;
+		reset-deassert-us = <200>;
+		reset-gpios = <&gpioex1 5 GPIO_ACTIVE_LOW>;
 		ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
 	};
 
 	dp83867_1_6: ethernet-phy@6 {
 		reg = <6>;
+		reset-assert-us = <2500>;
+		reset-deassert-us = <200>;
+		reset-gpios = <&gpioex1 6 GPIO_ACTIVE_LOW>;
 		ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
 	};
 };
@@ -145,16 +168,25 @@ &emdio2 {
 
 	dp83867_2_1: ethernet-phy@1 {
 		reg = <1>;
+		reset-assert-us = <2500>;
+		reset-deassert-us = <200>;
+		reset-gpios = <&gpioex1 7 GPIO_ACTIVE_LOW>;
 		ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
 	};
 
 	dp83867_2_2: ethernet-phy@2 {
 		reg = <2>;
+		reset-assert-us = <2500>;
+		reset-deassert-us = <200>;
+		reset-gpios = <&gpioex1 8 GPIO_ACTIVE_LOW>;
 		ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
 	};
 
 	dp83867_2_3: ethernet-phy@3 {
 		reg = <3>;
+		reset-assert-us = <1>;
+		reset-deassert-us = <200>;
+		reset-gpios = <&gpioex1 9 GPIO_ACTIVE_LOW>;
 		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 		ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 		ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
@@ -162,6 +194,9 @@ dp83867_2_3: ethernet-phy@3 {
 
 	dp83867_2_4: ethernet-phy@4 {
 		reg = <4>;
+		reset-assert-us = <1>;
+		reset-deassert-us = <200>;
+		reset-gpios = <&gpioex1 10 GPIO_ACTIVE_LOW>;
 		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 		ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 		ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
-- 
2.43.0


