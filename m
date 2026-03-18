Return-Path: <devicetree+bounces-277053-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCb1DeVnumnnWAIAu9opvQ
	(envelope-from <devicetree+bounces-277053-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:52:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA562B87C7
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:52:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1498E3060CD4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F8E392825;
	Wed, 18 Mar 2026 08:51:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9BF736BCDC;
	Wed, 18 Mar 2026 08:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.160.252.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773823907; cv=none; b=fvfFTsrO5pQKvSFqkd08uWKoRqI8IZMAAjhY0qYQk2VstJbfXPUamsFyEqM4oZPBb6xg4J4YCArXz7M59cOiXuEXz6CXCwk6oSV498g6H2ETrhAuJPYHAg53JdcHdZQdcwJDBkpMnaz2j7IVrMTqGrOdH3Y807H5bGQPIPkuYTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773823907; c=relaxed/simple;
	bh=zexrboqHSr0BacjYL6ioKwUvCrBSWh26gIT2xxEP3cY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KictA8FxWVnWFP2yuq3qCNtjOelpEQNurOADcOK2W897LBeRGhxYWjjjsMp07IlcTPuWB2yFeGxEXn1mIMX2OkA2a8cyulv8qhVA4WmT7iVDjncwnvDFMrdSjA7eDStOjscNdyByh5nWkGufddHTFBIyPeVUpKBanaCiRAcOzRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com; spf=pass smtp.mailfrom=bp.renesas.com; arc=none smtp.client-ip=210.160.252.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bp.renesas.com
X-CSE-ConnectionGUID: OVfhYCr6QGqz79BpbX7LAg==
X-CSE-MsgGUID: tIFl4+VWT+me+y5m+oK33w==
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 18 Mar 2026 17:51:45 +0900
Received: from ubuntu.adwin.renesas.com (unknown [10.226.92.3])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id B824040103B0;
	Wed, 18 Mar 2026 17:51:40 +0900 (JST)
From: John Madieu <john.madieu.xa@bp.renesas.com>
To: claudiu.beznea.uj@bp.renesas.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	geert+renesas@glider.be,
	krzk+dt@kernel.org
Cc: robh@kernel.org,
	bhelgaas@google.com,
	conor+dt@kernel.org,
	magnus.damm@gmail.com,
	biju.das.jz@bp.renesas.com,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	john.madieu@gmail.com,
	John Madieu <john.madieu.xa@bp.renesas.com>
Subject: [PATCH v9 3/4] arm64: dts: renesas: r9a09g047e57-smarc-som: Add PCIe reference clock
Date: Wed, 18 Mar 2026 09:51:18 +0100
Message-ID: <20260318085119.44717-4-john.madieu.xa@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260318085119.44717-1-john.madieu.xa@bp.renesas.com>
References: <20260318085119.44717-1-john.madieu.xa@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[renesas.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277053-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.737];
	FROM_NEQ_ENVFROM(0.00)[john.madieu.xa@bp.renesas.com,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.220.108.0:email,renesas.com:email,bp.renesas.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.7:email]
X-Rspamd-Queue-Id: 9FA562B87C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The RZ/G3E SMARC SoM has a fixed 100 MHz reference clock generator
for PCIe. Model it as a fixed-clock and assign it to the PCIe port.

Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
---

Changes:

v9: No changes
v8: No changes
v7: No changes
v6: No changes
v5: No changes
v4: No changes
v3: No changes
v2: No changes

 arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi
index 3b571c096752..fcf01fcfb6f3 100644
--- a/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi
@@ -43,6 +43,12 @@ memory@48000000 {
 		reg = <0x0 0x48000000 0x0 0xf8000000>;
 	};
 
+	pcie_refclk: clock-pcie-ref {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+	};
+
 	reg_1p8v: regulator-1p8v {
 		compatible = "regulator-fixed";
 		regulator-name = "fixed-1.8V";
@@ -176,6 +182,11 @@ phy1: ethernet-phy@7 {
 	};
 };
 
+&pcie_port0 {
+	clocks = <&pcie_refclk>;
+	clock-names = "ref";
+};
+
 &pinctrl {
 	eth0_pins: eth0 {
 		clk {
-- 
2.25.1


