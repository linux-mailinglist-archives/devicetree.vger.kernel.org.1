Return-Path: <devicetree+bounces-272818-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8J22M0qcrmldGwIAu9opvQ
	(envelope-from <devicetree+bounces-272818-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:09:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D67236CC7
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:09:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B653B300C02D
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:09:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B6E937FF6B;
	Mon,  9 Mar 2026 10:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="gE2T+R5H"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEFFE38BF83
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 10:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773050951; cv=none; b=Wm+fgMEUYFmrAZt5MrDx2tGYx3vrOYH+4esTomlTNb0O8L8sOjPzjwybSZTmrCj3CqhGNgSDZJ+OFQCH497NmhMTvSzL86f+1OBOCORWWFMIiuCRppWg/gtpDiM/i8S2ZP4R/KvRfGEWiUlMb0Il9THNgqbpl4Dd5ZMbfMvXHl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773050951; c=relaxed/simple;
	bh=Bz3uHxPJsi+GfYB8PIagDJtRb3B+tZGSqBgMCcloEwE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FNfaifh+oiF2FzBDGnM2rN6i2xr71aoyBCJVu8TU/lGLemCmJQpXJQNAuYEp5n8z6rLK1cw5NtjYT9b6TAL6EV92M+bzcn+gI4PXJJ+6VkkkvKeLaa01/AEMaE3mfRZWfpYpnFo4DHxE+UASvhzrBsaTN6YnP+O5/dN1urQ5H4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=gE2T+R5H; arc=none smtp.client-ip=185.136.64.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 20260309100858095cb4ebb200020728
        for <devicetree@vger.kernel.org>;
        Mon, 09 Mar 2026 11:08:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=iwcbSGp09t7fYDLIc6ZTHBDejH8ml8Uwme+4NuDlzy4=;
 b=gE2T+R5HEGKddmuIw9d1finp+OO0LMtJFyHANmtCWX1Ro0EYP75YZ4b6I/X4JhV7l6XAJR
 pynHSjdVAcHXyW4KeKa5/Lr3vVHZi4ff3uXbC4uEmJl25lZkzesqhC0rEvZynnqkKuROtYBK
 mvD9LnA0AKnFQ7IX8xK2XtHiKREyqBS6Ptin2Wz52PrRAkEg7UL7vYZ8iGrj/HZxuOxac6Se
 BnTOhca+tBHRkEciDLaBH+/O/wiCLf5cZqXku6+6TaGtTsh9mumCr77BdhxObolW/TxMnr4V
 CE/l4cW+PC6FoC5XiiD+n/552AqSZBNJW+TW/lwbvXXInMOfwkh5Qk4w==;
From: "A. Sverdlin" <alexander.sverdlin@siemens.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Andrew Davis <afd@ti.com>,
	Jayesh Choudhary <j-choudhary@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Abraham I <kishon@kernel.org>,
	Roger Quadros <rogerq@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: ti: k3-*: Add am64x and newer reset module
Date: Mon,  9 Mar 2026 11:07:54 +0100
Message-ID: <20260309100800.1134701-3-alexander.sverdlin@siemens.com>
In-Reply-To: <20260309100800.1134701-1-alexander.sverdlin@siemens.com>
References: <20260309100800.1134701-1-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-456497:519-21489:flowmailer
X-Rspamd-Queue-Id: 03D67236CC7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[siemens.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[siemens.com:s=fm1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272818-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[siemens.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.sverdlin@siemens.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.27.119.64:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.989];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,siemens.com:dkim,siemens.com:email,siemens.com:mid,0.0.16.34:email,0.0.70.250:email,0.0.15.178:email]
X-Rspamd-Action: no action

From: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Add the reset module present on AM64x and newer SoCs carrying reset cause
information.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi  | 5 +++++
 arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi | 5 +++++
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi    | 5 +++++
 3 files changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
index 75aed3a88284d..954130e8f37ba 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
@@ -41,6 +41,11 @@ usb1_phy_ctrl: syscon@4018 {
 			compatible = "ti,am62-usb-phy-ctrl", "syscon";
 			reg = <0x4018 0x4>;
 		};
+
+		rst@18170 {
+			compatible = "ti,am64-rst";
+			reg = <0x18170 0x10>;
+		};
 	};
 
 	target-module@2b300050 {
diff --git a/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
index 23877dadc98dc..7c94e6e16c069 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
@@ -39,6 +39,11 @@ usb1_phy_ctrl: syscon@4018 {
 			compatible = "ti,am62-usb-phy-ctrl", "syscon";
 			reg = <0x4018 0x4>;
 		};
+
+		rst@18170 {
+			compatible = "ti,am64-rst";
+			reg = <0x18170 0x10>;
+		};
 	};
 
 	target-module@2b300050 {
diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index 1b1d3970888b8..acbc7243cb16a 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
@@ -74,6 +74,11 @@ epwm_tbclk: clock-controller@4130 {
 			reg = <0x4130 0x4>;
 			#clock-cells = <1>;
 		};
+
+		rst@18170 {
+			compatible = "ti,am64-rst";
+			reg = <0x18170 0x10>;
+		};
 	};
 
 	gic500: interrupt-controller@1800000 {
-- 
2.52.0


