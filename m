Return-Path: <devicetree+bounces-277097-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCgNH/93ummTWwIAu9opvQ
	(envelope-from <devicetree+bounces-277097-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:01:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECB82B9956
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:01:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C6E9303EC30
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A9F13AEF46;
	Wed, 18 Mar 2026 10:01:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8183B8BA2;
	Wed, 18 Mar 2026 10:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773828076; cv=none; b=VmO147EGaJV+ehW/19Vm2sDO5rK5h7QJMnN60EYcGOLGVrW2IxaV5dM+h/Va+KmIVkxQvWvzVkj5S0/SDruQEaUVVh4WXtQ1b7KtGijSbEXofC+wPHW6/yn2PutSutrRFsP1DkpGYxp8qPYtZj25M7xBanj1eiXpfnpZDnBiyn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773828076; c=relaxed/simple;
	bh=+IuQFnatLOayxCjoLTohwxLI3YBsbG8XEWwfzcVFGgc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=r1kcLl0QrQAhS7+yqpK8v4wNN0dy7H9uVJyVY2BstHE1IRz4l6ODoxZV2fHy6JcJKpQBO1hFtggC5xSYyCxbHiV8jP5HVz7zyBCthOGhbmOgpr2rJI/HVoONqGIIz8QJ2maRspd07OMqH262qkc2Uz/XLLI4soX3PZWrSXMSvJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [116.25.94.199])
	by smtp.qiye.163.com (Hmail) with ESMTP id 376701b7b;
	Wed, 18 Mar 2026 18:01:02 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Yixun Lan <dlan@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 1/1] riscv: dts: spacemit: reorder phy nodes for K1
Date: Wed, 18 Mar 2026 18:00:00 +0800
Message-Id: <20260318100000.3934516-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9d00643e6f03a2kunma8eaf0e017a3ad
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGkJCVhpITx8aSR9PHkoeSVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk9VSkJCWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQk
	tLWQY+
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277097-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RSPAMD_URIBL_FAIL(0.00)[d4010800:server fail,c0a30000:server fail,jmu.edu.cn:query timed out];
	RSPAMD_EMAILBL_FAIL(0.00)[phy.c0b10000:server fail,phy.c0d10000:server fail,system-controller.c0888000:server fail,phy.c0c10000:server fail,i2c.d4010800:query timed out,system-controller.d4015000:query timed out,amadeus.jmu.edu.cn:query timed out];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.869];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,c0b10000:email,d4013800:email,d4010800:email,c0888000:email,d4015000:email]
X-Rspamd-Queue-Id: 1ECB82B9956
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Reorder the PHY nodes of USB and PCIe to the correct positions based on
the register address. This improves the readability and maintainability
of the DT. No functional change is introduced by this reordering.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 108 +++++++++++++--------------
 1 file changed, 54 insertions(+), 54 deletions(-)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index d2015201f8e5..f0bad6855c97 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -359,6 +359,60 @@ syscon_rcpu2: system-controller@c0888000 {
 			#reset-cells = <1>;
 		};
 
+		usbphy2: phy@c0a30000 {
+			compatible = "spacemit,k1-usb2-phy";
+			reg = <0x0 0xc0a30000 0x0 0x200>;
+			clocks = <&syscon_apmu CLK_USB30>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		combo_phy: phy@c0b10000 {
+			compatible = "spacemit,k1-combo-phy";
+			reg = <0x0 0xc0b10000 0x0 0x1000>;
+			clocks = <&vctcxo_24m>,
+				 <&syscon_apmu CLK_PCIE0_DBI>,
+				 <&syscon_apmu CLK_PCIE0_MASTER>,
+				 <&syscon_apmu CLK_PCIE0_SLAVE>;
+			clock-names = "refclk",
+				      "dbi",
+				      "mstr",
+				      "slv";
+			resets = <&syscon_apmu RESET_PCIE0_GLOBAL>,
+				 <&syscon_apmu RESET_PCIE0_DBI>,
+				 <&syscon_apmu RESET_PCIE0_MASTER>,
+				 <&syscon_apmu RESET_PCIE0_SLAVE>;
+			reset-names = "phy",
+				      "dbi",
+				      "mstr",
+				      "slv";
+			#phy-cells = <1>;
+			spacemit,apmu = <&syscon_apmu>;
+			status = "disabled";
+		};
+
+		pcie1_phy: phy@c0c10000 {
+			compatible = "spacemit,k1-pcie-phy";
+			reg = <0x0 0xc0c10000 0x0 0x1000>;
+			clocks = <&vctcxo_24m>;
+			clock-names = "refclk";
+			resets = <&syscon_apmu RESET_PCIE1_GLOBAL>;
+			reset-names = "phy";
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		pcie2_phy: phy@c0d10000 {
+			compatible = "spacemit,k1-pcie-phy";
+			reg = <0x0 0xc0d10000 0x0 0x1000>;
+			clocks = <&vctcxo_24m>;
+			clock-names = "refclk";
+			resets = <&syscon_apmu RESET_PCIE2_GLOBAL>;
+			reset-names = "phy";
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		i2c0: i2c@d4010800 {
 			compatible = "spacemit,k1-i2c";
 			reg = <0x0 0xd4010800 0x0 0x38>;
@@ -429,60 +483,6 @@ i2c5: i2c@d4013800 {
 			status = "disabled";
 		};
 
-		usbphy2: phy@c0a30000 {
-			compatible = "spacemit,k1-usb2-phy";
-			reg = <0x0 0xc0a30000 0x0 0x200>;
-			clocks = <&syscon_apmu CLK_USB30>;
-			#phy-cells = <0>;
-			status = "disabled";
-		};
-
-		combo_phy: phy@c0b10000 {
-			compatible = "spacemit,k1-combo-phy";
-			reg = <0x0 0xc0b10000 0x0 0x1000>;
-			clocks = <&vctcxo_24m>,
-				 <&syscon_apmu CLK_PCIE0_DBI>,
-				 <&syscon_apmu CLK_PCIE0_MASTER>,
-				 <&syscon_apmu CLK_PCIE0_SLAVE>;
-			clock-names = "refclk",
-				      "dbi",
-				      "mstr",
-				      "slv";
-			resets = <&syscon_apmu RESET_PCIE0_GLOBAL>,
-				 <&syscon_apmu RESET_PCIE0_DBI>,
-				 <&syscon_apmu RESET_PCIE0_MASTER>,
-				 <&syscon_apmu RESET_PCIE0_SLAVE>;
-			reset-names = "phy",
-				      "dbi",
-				      "mstr",
-				      "slv";
-			#phy-cells = <1>;
-			spacemit,apmu = <&syscon_apmu>;
-			status = "disabled";
-		};
-
-		pcie1_phy: phy@c0c10000 {
-			compatible = "spacemit,k1-pcie-phy";
-			reg = <0x0 0xc0c10000 0x0 0x1000>;
-			clocks = <&vctcxo_24m>;
-			clock-names = "refclk";
-			resets = <&syscon_apmu RESET_PCIE1_GLOBAL>;
-			reset-names = "phy";
-			#phy-cells = <0>;
-			status = "disabled";
-		};
-
-		pcie2_phy: phy@c0d10000 {
-			compatible = "spacemit,k1-pcie-phy";
-			reg = <0x0 0xc0d10000 0x0 0x1000>;
-			clocks = <&vctcxo_24m>;
-			clock-names = "refclk";
-			resets = <&syscon_apmu RESET_PCIE2_GLOBAL>;
-			reset-names = "phy";
-			#phy-cells = <0>;
-			status = "disabled";
-		};
-
 		syscon_apbc: system-controller@d4015000 {
 			compatible = "spacemit,k1-syscon-apbc";
 			reg = <0x0 0xd4015000 0x0 0x1000>;
-- 
2.34.1


