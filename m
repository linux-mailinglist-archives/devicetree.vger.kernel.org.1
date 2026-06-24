Return-Path: <devicetree+bounces-315373-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Gw1SI0wwPGqFlAgAu9opvQ
	(envelope-from <devicetree+bounces-315373-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 21:30:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8647A6C10DF
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 21:30:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kwiboo.se header.s=fe-e1b5cab7be header.b=PZ85ScJQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315373-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-315373-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kwiboo.se;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E22B23016C5D
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 19:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F07B938239D;
	Wed, 24 Jun 2026 19:29:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A53382376
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 19:29:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782329379; cv=none; b=kLsdjEnUt9kw/tHN9oNAAvPgCj8bfGxtEU/S6f0m4Xair+oMnTHk/pXdqBqXKJb55mF5hi8p34wSzRVCuxbTgC3AVw0zFKQPkagf+83n2720hAAuYJBNNdfAFAfUq5sijMUYzKY+9pdpXz0oUXqGtX2xY5FbN1BoIoLHhMeOM/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782329379; c=relaxed/simple;
	bh=ixngPg4wVUYXZ9I8svhRE1rYei1Cz5bpE8b6hANKxJs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JI151FwzV/TDPf4XyzWKm3p2xBUGnqQYqXJsEUgwx5FwDPtUUhs97/6fI/n1tUnbNfvLDDDMoUT3Jdr15EfqA9sejULORLhghzFFFaatPe27TzUaVoYh/4F6vfsFOCF78LW6KLnx7srxXTm/0dwhVFBWnFNc2ELVtaaOQgtPc3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=PZ85ScJQ; arc=none smtp.client-ip=121.127.44.73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1782329377; bh=QvtzBjRWJhsbenkKdH0SFCY3vwPhaULuIOm7rRelHtw=;
 b=PZ85ScJQ6OXjtO4bZd6ZSMVyL19+ba4EcxqJb+kpWtfJNTgjWv7iBWrPJiWcuH8nk1SbmLhHG
 JkkWxYFJzzcQJMBPTKsUbsQavTncsbJgn1JTkSR/TX96ZYtMHnwjANGBlH1/tC2H6RrOQ+oem11
 uNn3kM8cCZLwbD8D2Ujyik3YkiSecBjCsXeI3QQ4aGONnn0JGevNshT5IXS2b0QmVORSIWdT7jm
 K+P4zmrsth7wZoHwvGwlm3N24LWmnmcSLwq2WF3NsDfmCBiG92Yyh1PIRTfmbRdNrraA2TRdFG7
 ZwE/8JlxdpXcrSLz5Ck/B9KsMGCB7Bt8+0n7fsgsxNKA==
X-Forward-Email-ID: 6a3c2fa8138f49c481104ad8
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.8.32
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Geis <pgwipeout@gmail.com>,
	Michael Riesch <michael.riesch@collabora.com>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Fix devices suspend freeze on RK3568/RK3566
Date: Wed, 24 Jun 2026 19:27:25 +0000
Message-ID: <20260624192726.781864-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260624192726.781864-1-jonas@kwiboo.se>
References: <20260624192726.781864-1-jonas@kwiboo.se>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kwiboo.se,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kwiboo.se:s=fe-e1b5cab7be];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pgwipeout@gmail.com,m:michael.riesch@collabora.com,m:diederik@cknow-tech.com,m:gregkh@linuxfoundation.org,m:devicetree@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-usb@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:jonas@kwiboo.se,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[sntech.de,kernel.org,gmail.com,collabora.com];
	FORGED_SENDER(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-315373-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kwiboo.se:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,kwiboo.se:dkim,kwiboo.se:email,kwiboo.se:mid,kwiboo.se:from_mime,cknow-tech.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8647A6C10DF

The EHCI/OHCI controller depends on clk_usbphy1_480m being enabled, or
the system may freeze when registers are accessed, i.e. during suspend
in ohci_suspend().

Add the missing clk_usbphy1_480m clocks reference to EHCI/OHCI
controllers to ensure the clock is enabled when ECHI/OHCI registers are
accessed to prevent a system freeze.

Fixes suspend pm_test issue with EHCI/OHCI devices due to the missing
clk_usbphy1_480m reference and makes following pm_test modes work:

  echo N > /sys/module/printk/parameters/console_suspend

  echo devices > /sys/power/pm_test
  echo platform > /sys/power/pm_test
  echo processors > /sys/power/pm_test
  echo core > /sys/power/pm_test

  echo mem > /sys/power/state

Fixes: 91c4c3e06a25 ("arm64: dts: rockchip: add usb2 nodes to rk3568 device tree")
Fixes: 78f7186095db ("arm64: dts: rockchip: rename and sort the rk356x usb2 phy handles")
Tested-by: Diederik de Haas <diederik@cknow-tech.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: Collect t-b tag
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index a5832895bd39..c930a6fd6ea0 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -321,44 +321,44 @@ its: msi-controller@fd440000 {
 	};
 
 	usb_host0_ehci: usb@fd800000 {
-		compatible = "generic-ehci";
+		compatible = "rockchip,rk3568-ehci", "generic-ehci";
 		reg = <0x0 0xfd800000 0x0 0x40000>;
 		interrupts = <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_USB2HOST0>, <&cru HCLK_USB2HOST0_ARB>,
-			 <&cru PCLK_USB>;
+			 <&cru PCLK_USB>, <&usb2phy1>;
 		phys = <&usb2phy1_otg>;
 		phy-names = "usb";
 		status = "disabled";
 	};
 
 	usb_host0_ohci: usb@fd840000 {
-		compatible = "generic-ohci";
+		compatible = "rockchip,rk3568-ohci", "generic-ohci";
 		reg = <0x0 0xfd840000 0x0 0x40000>;
 		interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_USB2HOST0>, <&cru HCLK_USB2HOST0_ARB>,
-			 <&cru PCLK_USB>;
+			 <&cru PCLK_USB>, <&usb2phy1>;
 		phys = <&usb2phy1_otg>;
 		phy-names = "usb";
 		status = "disabled";
 	};
 
 	usb_host1_ehci: usb@fd880000 {
-		compatible = "generic-ehci";
+		compatible = "rockchip,rk3568-ehci", "generic-ehci";
 		reg = <0x0 0xfd880000 0x0 0x40000>;
 		interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_USB2HOST1>, <&cru HCLK_USB2HOST1_ARB>,
-			 <&cru PCLK_USB>;
+			 <&cru PCLK_USB>, <&usb2phy1>;
 		phys = <&usb2phy1_host>;
 		phy-names = "usb";
 		status = "disabled";
 	};
 
 	usb_host1_ohci: usb@fd8c0000 {
-		compatible = "generic-ohci";
+		compatible = "rockchip,rk3568-ohci", "generic-ohci";
 		reg = <0x0 0xfd8c0000 0x0 0x40000>;
 		interrupts = <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_USB2HOST1>, <&cru HCLK_USB2HOST1_ARB>,
-			 <&cru PCLK_USB>;
+			 <&cru PCLK_USB>, <&usb2phy1>;
 		phys = <&usb2phy1_host>;
 		phy-names = "usb";
 		status = "disabled";
-- 
2.54.0


