Return-Path: <devicetree+bounces-275963-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8N2CLNert2nkUAEAu9opvQ
	(envelope-from <devicetree+bounces-275963-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:05:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 204922955D8
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:05:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D96353013682
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A20A34D394;
	Mon, 16 Mar 2026 07:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="Em3apcim"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-226.siemens.flowmailer.net (mta-65-226.siemens.flowmailer.net [185.136.65.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4E7346FC0
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773644755; cv=none; b=Ca9BmOgJJIArZOYmrquOuBIg9BvaU1PvM7NYVm15F16IMZ41S5cLJVk8no90uFptfZNAc5olSDVJnzdqzLEMpTUzL7W3N3LU1qMlQ2pULnKFm+va9d7LnsKRA2ApIaVPhxONCoyn2NCRYx9BQS3WWQWI+1/ikTFWcjwH/PCmBzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773644755; c=relaxed/simple;
	bh=mU3EnCLp/bFBNlT0RunECJqGrJPRXHTVr6sTpYFK+Hg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F2i8T+4NCYAQ+maQ3V1b+yQSoeIT+xu67/OyOfgNjtg3sQdsyMyUtRCXAxF8wPYWFbfAEJdUMvYFSBIi13eMY2vAsgFV+79rsRqTPiU5KM1NApp+woo1nOeAbmu7mvpkCOlstp5Fvfo0vNHWyAro9J3NT9ZDN6lETc1xebqrlAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=Em3apcim; arc=none smtp.client-ip=185.136.65.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id 202603160705416546bdaf2900020732
        for <devicetree@vger.kernel.org>;
        Mon, 16 Mar 2026 08:05:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=nCp2IUyZSG3Ta11plRL9Oe3OMExs/bvEcTbIRdbhTkU=;
 b=Em3apcim3nacc0cVwHG+50ghzpRjqkyScqAVHKOk86YY7Hss06CSOHMabwFWagDL1snWns
 DlKDyEtoKwKJyWT1kB8ojv2kT7rcMw327pJflYDVMTEBSGuUGgBTBj5nvSdJCVwmj3HEpA6v
 RCa2VobW1ob4KP8GJGF2V8P4QTQxtycpy54p6EtXrf9zsAqWUKT3pZSVYzzHOMrHvTVgRYZ7
 TT6OLjx4svGPRomFz/OmLExK6yclk/xM+fJoloqbue0vgUO/zrxZg0CVn0HbXls6+Qah2Ilr
 hE7fCI5JtfnQgfzz7tnBCxb4v3x04tDtYq46Ic0Bg+JwRo2oo5G+Nlog==;
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
Subject: [PATCH v2 2/3] arm64: dts: ti: k3-*: Add am64x and newer reset registers
Date: Mon, 16 Mar 2026 08:04:24 +0100
Message-ID: <20260316070429.1545707-3-alexander.sverdlin@siemens.com>
In-Reply-To: <20260316070429.1545707-1-alexander.sverdlin@siemens.com>
References: <20260316070429.1545707-1-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-456497:519-21489:flowmailer
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[siemens.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[siemens.com:s=fm1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275963-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[siemens.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.sverdlin@siemens.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.70.250:email,0.0.16.34:email,0.27.119.64:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[siemens.com:dkim,siemens.com:email,siemens.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.15.178:email]
X-Rspamd-Queue-Id: 204922955D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Add the reset registers present on AM64x and newer SoCs carrying reset
cause information.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
---
Changelog:
v2: no changes

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


