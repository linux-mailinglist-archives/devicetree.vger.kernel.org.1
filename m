Return-Path: <devicetree+bounces-277176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBArFmOSumnSXgIAu9opvQ
	(envelope-from <devicetree+bounces-277176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:54:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFDD2BB219
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:54:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E00CF302AC30
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 415FB3CEB88;
	Wed, 18 Mar 2026 11:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="lVo0O16I"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF503ACA72;
	Wed, 18 Mar 2026 11:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773834748; cv=none; b=qaHe2peSOjCHJNUsdP6twdGsaq9dH7SatDhlyNyKSIQrdoF7YfmmofZdAg/n/ButzqKZ/S5Ifa77LPwoOAuJIqP6J69/IHwG14kMzq8+DiTk2hhNMGYEBiEWHED+1S/Zh2rmsyUUDp32Q629+Dv+C7MeszK5UsbpSUQG662WlqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773834748; c=relaxed/simple;
	bh=pUQ5oVP0QzrDMIjnu7AHCW79vzNCU/fqlkIEOJAarjQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=o77SWyxAPtFuh1RgParqW9ifZiCZQmyn0lh3x+Y5EwoiS4cdyDqbHHysyzvUnJaM0GM4MVB4Cv8Xi0CejRtXYlfe1o3WimKf6lacBbwiK21fDmfBnbJ84+WZqGA73Kkt2XbSBndWUz2/GEh8N40eXJBmTaNzjnCuaS0b4od33N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=lVo0O16I; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=4ddV1Y2JFO294bsw/tWTjQ2fw+3OQrn/h1nPZsDOLes=; b=lVo0O16IuuSO6bHHveg+5DIWyH
	irEZM/NiuAu8Q0Ri07g5nMF7AobtVEpo9cNlMfgxQKapT1MpJCyrSeJz7W2k8Y2KX+bMiKE+yMV3+
	5wj1j7SHA6QF9EUk6BT6r9SXF9HR5nASKaBW4US8UNDLxbqe3X9UXzDrHn5SpFD7jUo1rvhVQ1HQB
	5ZBfnb59YxCigknwRVJn0h6C+Sm9oRShyrMB87fCtQStY6qV9Kg7r+57vtaZH1cDZSxLGIpJjy4gU
	GvEOfZ1SVqkqJcBY/BbyfLnz+O/wamBxxs7b39+ucbqDfCP2PzqxARHQszyCgxgDHMQmoQ32Aeykd
	xEEDwImg==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2pRm-0006Sv-30;
	Wed, 18 Mar 2026 12:52:22 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy05.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2pRn-000OYd-05;
	Wed, 18 Mar 2026 12:52:22 +0100
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH] arm64: dts: ti: k3-j722s: add I2C4 node and range
Date: Wed, 18 Mar 2026 12:51:44 +0100
Message-ID: <20260318115144.7702-1-nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27944/Wed Mar 18 07:24:13 2026)
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277176-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nora.schiffer@ew.tq-group.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:email,tq-group.com:url,1.220.19.0:email,1.203.160.16:email]
X-Rspamd-Queue-Id: ACFDD2BB219
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

I2C 0..3 are common to the AM62P and J722S, and are thus defined in
k3-am62p-j722s-common-main.dtsi. The J722S has an additional I2C
controller I2C4 that does not exist on AM62P; add it to
k3-j722s-main.dtsi.

Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
---

Prerequisite for one of the RPi-compatible MIPI-CSI camera interfaces
found on the TQ-Systems MBa67xx baseboard for the TQMa67xx SoM (will be
submitted separately once the other prerequisites for the board have
been accepted).

 arch/arm64/boot/dts/ti/k3-j722s-main.dtsi | 13 +++++++++++++
 arch/arm64/boot/dts/ti/k3-j722s.dtsi      |  1 +
 2 files changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi b/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi
index be7e533e6c38a..aad2169bff75c 100644
--- a/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi
@@ -154,6 +154,19 @@ usb1: usb@31200000 {
 		};
 	};
 
+	main_i2c4: i2c@fe80000 {
+		compatible = "ti,am64-i2c", "ti,omap4-i2c";
+		reg = <0x00 0x0fe80000 0x00 0x100>;
+		interrupt-parent = <&main_gpio_intr>;
+		interrupts = <178>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		power-domains = <&k3_pds 257 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 257 2>;
+		clock-names = "fck";
+		status = "disabled";
+	};
+
 	ti_csi2rx1: ticsi2rx@30122000 {
 		compatible = "ti,j721e-csi2rx-shim";
 		reg = <0x00 0x30122000 0x00 0x1000>;
diff --git a/arch/arm64/boot/dts/ti/k3-j722s.dtsi b/arch/arm64/boot/dts/ti/k3-j722s.dtsi
index 059c65ece183f..1e8f9cb5558f8 100644
--- a/arch/arm64/boot/dts/ti/k3-j722s.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j722s.dtsi
@@ -160,6 +160,7 @@ cbass_main: bus@f0000 {
 			 <0x00 0x0fd80000 0x00 0x0fd80000 0x00 0x00080000>, /* GPU */
 			 <0x00 0x0fd20000 0x00 0x0fd20000 0x00 0x00000100>, /* JPEGENC0_CORE */
 			 <0x00 0x0fd20200 0x00 0x0fd20200 0x00 0x00000200>, /* JPEGENC0_CORE_MMU */
+			 <0x00 0x0fe80000 0x00 0x0fe80000 0x00 0x00000100>, /* I2C4 */
 			 <0x00 0x20000000 0x00 0x20000000 0x00 0x0a008000>, /* Third peripheral window */
 			 <0x00 0x30040000 0x00 0x30040000 0x00 0x00080000>, /* PRUSS-M */
 			 <0x00 0x301c0000 0x00 0x301c0000 0x00 0x00001000>, /* DPHY-TX */
-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


