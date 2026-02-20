Return-Path: <devicetree+bounces-266978-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBD7AZ1wmGkoIgMAu9opvQ
	(envelope-from <devicetree+bounces-266978-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:33:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5848E1685E8
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:33:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B1DF330A12D9
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C1FF258EE1;
	Fri, 20 Feb 2026 14:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="HoeIPB0m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay68-hz1.antispameurope.com (mx-relay68-hz1.antispameurope.com [94.100.133.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99B3255F5E
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.234
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771597905; cv=pass; b=CVfT3+9CcePV92tQrQqbJ2BA+Ywi7jDFkKOO3FImwZW/tFOisbsVnjUWgwQB8dIdacGgMMHwxemgAN4eZASJYR31uYBueL9MlgPY0Cl8kGdrpFZxzyJLwHNX48YgCDATsfAnEvraiGn344tAIiGwsBFZwHnfKRUdUTyG5E7brmQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771597905; c=relaxed/simple;
	bh=pknrNsXMvT/3ufvgZ7TLRGEdUQ5fD05TrbjxoeTVUn0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QExUfJUZgLa0pmhng1+g1U7pm5PFYbeYjbk47f9SCfNW+msd1S9+BkCruUqSmLJZNJVp39pYNI0eJw3DJloJKLqUr3g8ASsu6vC+ODXwBElZBVNnBWrM6Wp0k8TgUt+Fnkq48+FrWoXpQBQ4XoC9nlPRikXBPE1a/UbtNOj85QU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=HoeIPB0m; arc=pass smtp.client-ip=94.100.133.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate68-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=603U3ROzybwhiSlbS4OAQhgc3+1jl0bt89ybh3NF/Nc=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771597877;
 b=LspY0cINhvV8u9NrFbHKQq85BneqlUgGZGP9gdlHSRuvh+qlSFBeAilNUWgVPgdVskgj6z2P
 AJcuKv2wyK5QM4WOFWiLRD2na6tYLxg4mwa9LCknM1sURjdrVeNPm3dHPCneRxQCoGlCJ3YZ0BF
 qS85I1oe00yJte6ZNdZptfuYmOIVLgOlrt5A+BmSntaia34b6P1xN0QJDFqz+XU68wIEIyXrwvV
 ZsisAYE7HzmTxqlsmbrNC2mJXz4uRFCh97wZfTk33oq6GYbw79yoOzu/YIEWDbMNJ7kzlP+KHc8
 GCuktcLtjZyUfDdT9L+kakce/biuCBi5iclUJe8B4uXiA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771597877;
 b=tTKMYyue9mkEUPwHr7RtK1MW641C7HB7hrUDdJmCPbBmsFGQAJdL/hIAOTmWK2q3hpfuce+2
 +BZgQzuA4xcr9GwEdhdgYpkcIubDZZwMP5TJ2zxARDryZahG3Xik3pqEv90qq2wnCIudtITUYhY
 OrljksQuMinLv6PyoZuGtRLz9ZavtRuBYdeIFPpbmHOME6WxQNHIltrXtDk0O0OMEH5mcAZv6hp
 lfwZK5Jvj9YgYIBmn7aOWkrL1qZ/G/cL3P07R1yN9rmGho2GHslyHhqJ3/n+ScFIcebMbHbauBQ
 KzHOz77ZooX40EBe5KAP3/6WwN9DYI5HFfnJr9VR7P5sw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay68-hz1.antispameurope.com;
 Fri, 20 Feb 2026 15:31:17 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 18AB4220CB6;
	Fri, 20 Feb 2026 15:31:11 +0100 (CET)
From: Max Merchel <Max.Merchel@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Max Merchel <Max.Merchel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/4] ARM: dts: imx6ul[l]-tqma6ul[l]: add boot phase properties
Date: Fri, 20 Feb 2026 15:31:03 +0100
Message-ID: <20260220143107.186956-3-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260220143107.186956-1-Max.Merchel@ew.tq-group.com>
References: <20260220143107.186956-1-Max.Merchel@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay68-hz1.antispameurope.com with 4fHXjq5LdBz2QYhL
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:39bf467f7897a36c62318cbf4ba7f61d
X-cloud-security:scantime:2.185
DKIM-Signature: a=rsa-sha256;
 bh=603U3ROzybwhiSlbS4OAQhgc3+1jl0bt89ybh3NF/Nc=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771597877; v=1;
 b=HoeIPB0mbg8HN4BE5R4n1pOJp94I2x8BBsQDIbnRKIysGyaGc5qnrs8uuBxU0LPMdSnQEumo
 JkF19BQXGhsahf8qdN/FItYK15Gz/9CW9M3PFCyxlFPOZroGN885tEShl2Dtq9M9+HyuLhiLx78
 KYN889kNbQ38TW6xNFvFg+tjLZw12ibN/wbDezP1Xe70AJxSw3sRIIAMVB2w1YYZXDepco5btUk
 N1AL5hGNRKOT5B+DTfTOTE/RYoxU+bxRh48CE2BV78IA0bCA3ee8DB7BsKsx6ogjLv3bNSKpl4f
 3uuWDsgVD1mWmZV4pRpICpM4XLpjjz3KNNZHAsUFKVFmg==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266978-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.998];
	DBL_PROHIBIT(0.00)[0.0.0.8:email,0.0.0.0:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim,0.0.0.68:email]
X-Rspamd-Queue-Id: 5848E1685E8
X-Rspamd-Action: no action

dtschema/schemas/bootph.yaml describe various node usage during
boot phases with DT.

TQMa6UL need eMMC, I2C, GPIO and QSPI access during boot process.

Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul-common.dtsi   | 10 ++++++++++
 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2.dtsi         |  1 +
 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l.dtsi        |  1 +
 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ulx-common.dtsi  |  1 +
 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ulxl-common.dtsi |  1 +
 arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2.dtsi       |  1 +
 arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l.dtsi      |  1 +
 7 files changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul-common.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul-common.dtsi
index 2dd635a615cb..4fa98e6a66d7 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul-common.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul-common.dtsi
@@ -26,6 +26,7 @@ &i2c4 {
 	pinctrl-1 = <&pinctrl_i2c4_recovery>;
 	scl-gpios = <&gpio1 20 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	sda-gpios = <&gpio1 21 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	bootph-pre-ram;
 	status = "okay";
 
 	pfuze3000: pmic@8 {
@@ -140,9 +141,14 @@ rtc0: rtc@68 {
 	};
 };
 
+&gpio1 {
+	bootph-pre-ram;
+};
+
 &gpio4 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pmic>;
+	bootph-pre-ram;
 
 	/*
 	 * PMIC & temperature sensor IRQ
@@ -159,6 +165,7 @@ pmic-int-hog {
 &qspi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_qspi>;
+	bootph-pre-ram;
 	status = "okay";
 
 	flash0: flash@0 {
@@ -168,6 +175,7 @@ flash0: flash@0 {
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <1>;
 		vcc-supply = <&reg_vldo4>;
+		bootph-pre-ram;
 
 		partitions {
 			compatible = "fixed-partitions";
@@ -189,6 +197,7 @@ &usdhc2 {
 	non-removable;
 	no-sdio;
 	no-sd;
+	bootph-all;
 	status = "okay";
 };
 
@@ -212,5 +221,6 @@ pinctrl_pmic: pmicgrp {
 			/* PMIC irq */
 			MX6UL_PAD_CSI_DATA03__GPIO4_IO24	0x1b099
 		>;
+		bootph-pre-ram;
 	};
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2.dtsi
index e2e95dd92263..f81cd09fe0c7 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2.dtsi
@@ -33,6 +33,7 @@ MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x00017051
 			/* rst */
 			MX6UL_PAD_NAND_ALE__GPIO4_IO10		0x0001b051
 		>;
+		bootph-all;
 	};
 
 	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l.dtsi
index 4b87e2dc70dc..11c8f1af4173 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l.dtsi
@@ -33,6 +33,7 @@ MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x00017051
 			/* rst */
 			MX6UL_PAD_NAND_ALE__GPIO4_IO10		0x0001b051
 		>;
+		bootph-all;
 	};
 
 	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ulx-common.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ulx-common.dtsi
index 5afb9046c202..5c90d0a3ee2e 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ulx-common.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ulx-common.dtsi
@@ -39,5 +39,6 @@ MX6UL_PAD_NAND_CE1_B__QSPI_A_DATA02   0x70b9
 			MX6UL_PAD_NAND_CLE__QSPI_A_DATA03     0x70b9
 			MX6UL_PAD_NAND_DQS__QSPI_A_SS0_B      0x70a1
 		>;
+		bootph-pre-ram;
 	};
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ulxl-common.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ulxl-common.dtsi
index ba84a4f70ebd..133961ee7283 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ulxl-common.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ulxl-common.dtsi
@@ -44,5 +44,6 @@ MX6UL_PAD_NAND_CE1_B__QSPI_A_DATA02   0x70a9
 			MX6UL_PAD_NAND_CLE__QSPI_A_DATA03     0x70a9
 			MX6UL_PAD_NAND_DQS__QSPI_A_SS0_B      0x70a1
 		>;
+		bootph-pre-ram;
 	};
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2.dtsi
index 8541cb3f3b3e..1224ef132439 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2.dtsi
@@ -38,6 +38,7 @@ MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x00017039
 			/* rst */
 			MX6UL_PAD_NAND_ALE__GPIO4_IO10		0x0001b051
 		>;
+		bootph-all;
 	};
 
 	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l.dtsi
index be593d47e3b1..6dd1b359e086 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l.dtsi
@@ -38,6 +38,7 @@ MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x00017039
 			/* rst */
 			MX6UL_PAD_NAND_ALE__GPIO4_IO10		0x0001b051
 		>;
+		bootph-all;
 	};
 
 	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
-- 
2.43.0


