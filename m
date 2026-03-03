Return-Path: <devicetree+bounces-270743-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGumNRI8p2mofwAAu9opvQ
	(envelope-from <devicetree+bounces-270743-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:52:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7601C1F66AF
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:52:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 522B1304623F
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:52:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E78C2386C3A;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H50g3wSB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C101F384241;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772567550; cv=none; b=K07le5b/m6m2wt8Qw23CxwN5IUNBXnp23g0N8b/jHoqGXI8gkRx/13AJvHanp45CRsbVeBSVoLQThAKMji0PCGzmSi6XEA6DVud/VY1MTkXppohmVsSsJDdjv6kFGG3TmcgQW8HHzMblnJDL0Aaq0u0/gElDDOTJ9OBLYc9IG2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772567550; c=relaxed/simple;
	bh=5YFZUcbTUgRm5DTNoNPFw3sTzCo45qe21WCODDGKvS0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pkbUUcuykG9LEsZ7CxxsH6Y9f4sqIsIrs0LOxQUnjz5nq/78Z9NvWwFtu9MaSAkjesBSr8c5/Wvd/Dw9tfN55EUxSaSxGf/D2B2e5WhhW1JGLeobe+eTBPoMn+8BjWZFixFiXPS3f7dhvRTPgpvIrHYy+xkN/DAo3Y50DwHtEXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H50g3wSB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05BEC2BCB1;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772567550;
	bh=5YFZUcbTUgRm5DTNoNPFw3sTzCo45qe21WCODDGKvS0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=H50g3wSBgM1LjRrLe+T/UIcSXH7xANuYVo2Vfs8LxGm/JXP9ffECm5DhBktBs0xD1
	 +9deEUV9qwxElksYzk4a8zemc1M2rA0R0o8p4077bWJOsDh3edbqDTl6s5DW4ryTIL
	 8iev0NOWYU6temBQ0eA16lR2JE0v7bPPHSvZ0Z1M7bVA5xDe+to/MaaL43Dl6qL1i8
	 z1TW0Z8heTx9DUGJdlwk5F9shjw3KACGgJ6gxWMp7bvepR5C7n/0xvtST6ergB0htd
	 5p0kdP2caqTk8s4Q7tDvhIvFXow3+qO7F0sA+HJZvPgsnPNqvWx7RV1NHc8mM6tFB4
	 LW/j0PK7OjpHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A01EDEBEF;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Tue, 03 Mar 2026 20:52:29 +0100
Subject: [PATCH v3 3/4] arm64: dts: rockchip: Use reference PCIe clock
 generator for BPI-R2-Pro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-3-af5a5207b0a1@ixit.cz>
References: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-0-af5a5207b0a1@ixit.cz>
In-Reply-To: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-0-af5a5207b0a1@ixit.cz>
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
 bh=ErDena6uQvd0JzFK1uxs+tYPpVApCktOwvCHIp0f9fM=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBppzv8NGkEODwhzAbXCqppzfwNaLpq0XZL0mqZd
 I/ZhEoi+d6JAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaac7/AAKCRBgAj/E00kg
 cv5LD/4qAWipALq+N7TdC2t3WCrg3REaLfx5ZbkwdflIivDNk0hv0MBM5PSkOXmM1hFF6d83DCG
 xuJ9ICz5bqUT9qOulKIzdjAWqBXO6GNT5x/eAIdWujRmITN7ik4Mj8x8KJW4go1yYecuYtfMGOG
 SHUyU5sWesQsJoM/JU/ENp2ov/fzE8/2bKjVZdmDBqrjJzfMUQFawjTwiE5+rB3Zs8fhJX2bc6D
 HzB2i6p77zRbU9iPjxCvaH39YB/X6GZbXMPIVUGvoqIiZaC55fmNCpMjJOJRiZaseuKaVwSqZzl
 /tfIvXpXSOenFcfmNeCZhEvQUYFzxp5t1BWag7/6kz9RqufdKEjKHaHwb3eDjqJSuBF1SbB9J+u
 VN9RbhHNAZ6VOvXmKwB9PkO6rM5a8Aom4wnSqA6/GrdNoT9AwhEIPjEcgm6cyXL9YkzVfMff+6x
 OhqL1rDqrJxl1qm/eU4l2UkfO03bEgL5DzEG7PxEFX8Dja1T5wmMtpFW9spl2xu5nnLyUC2mUE2
 2b0gMPZ/vdYsym0O7jfFQtIx2A2HHsGNVNwig2t+tl66iBL23ZQys2c5gQI/N4PvOI5C3AJty8/
 R8WfdceqAaweEoIpkF1kKynWnrU1dxhJ7I6CpJGyGy8mOES99XmY9ImDREXcKRKbMXdoJtG444C
 akzUKBzT/d/NbFg==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
Reply-To: david@ixit.cz
X-Rspamd-Queue-Id: 7601C1F66AF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270743-lists,devicetree=lfdr.de,david.ixit.cz];
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[david@ixit.cz];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,0.0.0.0:email]
X-Rspamd-Action: no action

From: David Heidelberg <david@ixit.cz>

Describe properly PCIe clock, which allows us correct the
toplogy (removing the vcc3v3-{minipcie,ngff} dependency on pi6c as
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



