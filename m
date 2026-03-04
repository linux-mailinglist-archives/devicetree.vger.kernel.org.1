Return-Path: <devicetree+bounces-270977-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AFX+OBISqGm/ngAAu9opvQ
	(envelope-from <devicetree+bounces-270977-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:05:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9189E1FEA93
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:05:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F899304A6DC
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C931C3A1A56;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oipMk5D+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B5C3976A7;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772622332; cv=none; b=ndnJS4ZVxARcnhjw0UbRsWXz5sfwH7QARnQ4Q4xZTC6VvALbwvZ8SIPeiqYpE7AY07O3hsbToogNNAzx8oBGZut1OlNt7HOu9idR+8uSJtbkjwaUjmSeGzo3W609q2b2HwDehnz7Hmr3c5mCPcOC/JuIqMiWOiXtQ44h1pMEwP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772622332; c=relaxed/simple;
	bh=oNtScFnsv11UDaKYBOINzknnrX3eHJJSbkK3kyF8YPc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cciaYSgOREFgeSP1kCjjwKHu0yQMUj0a7PSzCgXGmI1MavJTkzlR9nR7XPgDmeOyzqUj2Q7V0D0H1yAgrV6BilasgDi8OqHrzpzQbLsFscy7l/bnc30pWuSHtCMbe/ZawXl3vflOG85NWOYoWneJcmIMC/cXsqs7Pll3Yr2hST8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oipMk5D+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A9D9C2BCAF;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772622332;
	bh=oNtScFnsv11UDaKYBOINzknnrX3eHJJSbkK3kyF8YPc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=oipMk5D+9lLUo32zwOPvNoN/bRHaLXrYrBHpDNCLQz5X89WKFynj7dWphOYvbXvhb
	 rq7UKe3ASJX8168EOQ0qh7dlfKrdykAZNEnLQnkIfvfzgFuw69Sqj1sj0h8ruBIeJS
	 elTDE1gILSQNKFoRzJV0pZZeGchsXPRQCWyvEn5HWDo3ZzHHqv84J2smFZHTZ2UwKc
	 LrhwNbrGBO1emqY1Xry1dge6/xVdY0eeFEk1pRf4t269j9zi6FFKW1McMjhlkraBK+
	 Rtclpvl29d2RthLjYZoGoOdkbi4CuFlL+c1JFXg7qrr7aJuyCtL7mwyrid0BKy94Tz
	 4XjEMb8xEZFNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 722A5EB7ECA;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Wed, 04 Mar 2026 12:05:29 +0100
Subject: [PATCH v4 3/4] arm64: dts: rockchip: Use reference PCIe clock
 generator for BPI-R2-Pro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-3-37abd7ba29d0@ixit.cz>
References: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
In-Reply-To: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Frank Wunderlich <frank-w@public-files.de>
Cc: Martin Filla <freebsd@sysctl.cz>, 
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3580; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=qow4qUP3UIWSB18kpm/RoKVGt1Pe1atZ2k7LXtc2JZw=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBpqBH5dQ3gPB87fst4g5zWYK+0nDYlwyVSNYcd3
 5c8TJrFEriJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaagR+QAKCRBgAj/E00kg
 ciYRD/0cu8MG+uMTfJQKXS9CYcxXuoAF+bdGfSLBMYoi6k7r+KLtuehwdjtD5rUyZ4szLNmotBl
 fwm/APb57O22uzO27eeKTmiQpDh03qBRpZBFJuLxb/yKXXVWbpWVbegd0LJx94rDPuqGlT3/O9S
 o/a7wzBBIVf1Kp9/so1mph7eSu2OCQMpNRfLe26OISEGzKUihQJ7CJWoixXS54J0r6gAuqSqk3h
 4hat6TxNtmgwJgCrnEjM2woKGO+XtWTAlavduRSIGPPbYct2XZbkqtxA75llV3gk0t/uRBTDMzj
 du1HJD20ucSpv67qsEQmrsUQgJw+ekvTY4Mb1dzyDSdEUkoIu0mqU5wRUcyOQx9YfG2Bv1CoKPn
 FNsCjlYHwj8jDpB7OKqEhW0O3vwp481StztCFTMqu7MzFUe68rGGFAO3o9wcbtOUsfMN3fIUqmA
 tHUbxLBgFXmeKmZljklNkFgEjC3uyADbHQIpl1Qz60O8MSMWyCDh6hqvI+OEmZt70R8gdue73Fo
 P70nNqz5gtpKS8gMn2l6NEJ/EeigCi4Xg/0mzosVrj4laqUIS20yGl0vYGVzfpieTO27Fk12Nte
 MLi2+AK5CUEVT1VDIeDh57O7fFZqabX1h1TLt3KpQXQs8vxwEgHFmAPXpTp8IwsztQvKr77Ttph
 lSPn72tzpw6o2nA==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
Reply-To: david@ixit.cz
X-Rspamd-Queue-Id: 9189E1FEA93
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270977-lists,devicetree=lfdr.de,david.ixit.cz];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,sntech.de,public-files.de];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[david@ixit.cz];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sntech.de:email,0.0.0.0:email,ixit.cz:replyto,ixit.cz:email,ixit.cz:mid,sysctl.cz:email]
X-Rspamd-Action: no action

From: David Heidelberg <david@ixit.cz>

Describe properly PCIe clock, which allow us correct the
topology (removing the vcc3v3-{minipcie,ngff} dependency on pi6c as
supply) and adding the clock dependency in the PCIe nodes.

Suggested-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Martin Filla <freebsd@sysctl.cz>
Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 47 +++++++++++++++-------
 1 file changed, 33 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index d02b82c5f979a..3cdea9456a28c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -120,18 +120,13 @@ pcie_refclk_gen: pcie-refclk-gen-clock {
 		clock-frequency = <100000000>;
 	};
 
-	vcc3v3_pi6c_05: regulator-vcc3v3-pi6c-05 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_pcie";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		enable-active-high;
-		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
-		startup-delay-us = <200000>;
-		vin-supply = <&vcc5v0_sys>;
+	pcie_refclk: pcie-refclk-clock {
+		compatible = "gpio-gate-clock";
+		clocks = <&pcie_refclk_gen>;
+		#clock-cells = <0>;
+		enable-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
 	};
 
-	/* actually fed by vcc3v3_sys, dependent on pi6c clock generator */
 	vcc3v3_minipcie: regulator-vcc3v3-minipcie {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_minipcie";
@@ -142,10 +137,9 @@ vcc3v3_minipcie: regulator-vcc3v3-minipcie {
 		pinctrl-names = "default";
 		pinctrl-0 = <&minipcie_enable_h>;
 		startup-delay-us = <50000>;
-		vin-supply = <&vcc3v3_pi6c_05>;
+		vin-supply = <&vcc3v3_sys>;
 	};
 
-	/* actually fed by vcc3v3_sys, dependent on pi6c clock generator */
 	vcc3v3_ngff: regulator-vcc3v3-ngff {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_ngff";
@@ -156,7 +150,7 @@ vcc3v3_ngff: regulator-vcc3v3-ngff {
 		pinctrl-names = "default";
 		pinctrl-0 = <&ngffpcie_enable_h>;
 		startup-delay-us = <50000>;
-		vin-supply = <&vcc3v3_pi6c_05>;
+		vin-supply = <&vcc3v3_sys>;
 	};
 
 	vcc5v0_usb: regulator-vcc5v0-usb {
@@ -586,12 +580,24 @@ rgmii_phy1: ethernet-phy@0 {
 
 &pcie30phy {
 	data-lanes = <1 2>;
-	phy-supply = <&vcc3v3_pi6c_05>;
+
 	status = "okay";
 };
 
 &pcie3x1 {
 	/* M.2 slot */
+	/*
+	 * The board has a gpio-controlled "pcie_refclk" generator,
+	 * so add it to the list of clocks.
+	 */
+	clocks = <&cru ACLK_PCIE30X1_MST>, <&cru ACLK_PCIE30X1_SLV>,
+		 <&cru ACLK_PCIE30X1_DBI>, <&cru PCLK_PCIE30X1>,
+		 <&cru CLK_PCIE30X1_AUX_NDFT>,
+		 <&cru CLK_PCIE30X1_PIPE_DFT>,
+		 <&pcie_refclk>;
+	clock-names = "aclk_mst", "aclk_slv",
+		      "aclk_dbi", "pclk", "aux",
+		      "pipe", "ref";
 	num-lanes = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&ngffpcie_reset_h>;
@@ -602,6 +608,19 @@ &pcie3x1 {
 
 &pcie3x2 {
 	/* mPCIe slot */
+	/*
+	 * The board has a gpio-controlled "pcie_refclk" generator,
+	 * so add it to the list of clocks.
+	 */
+	clocks = <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
+		 <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
+		 <&cru CLK_PCIE30X2_AUX_NDFT>,
+		 <&cru CLK_PCIE30X2_PIPE_DFT>,
+		 <&pcie_refclk>;
+	clock-names = "aclk_mst", "aclk_slv",
+		      "aclk_dbi", "pclk", "aux",
+		      "pipe", "ref";
+
 	num-lanes = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&minipcie_reset_h>;

-- 
2.53.0



