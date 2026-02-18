Return-Path: <devicetree+bounces-266426-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKVgIR2+lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266426-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:26:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B491569F9
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:26:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AA2013033E53
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 904F52D47E6;
	Wed, 18 Feb 2026 13:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="pAhSUGB5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D640F2C3259
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421104; cv=pass; b=B8WA19QZwSeIp8THMWAzAUyUcMdP/uFK4TObHdClPYseyMDDX6VoTXzUtoVohaWoY5eTYgJSuvz/qtXRh62q/3B42u2zZdESb22fnW1WNBMjW2sDy3OpmnGyH0sjXq/6Lb8TGV+tCKOX98TgB3ZDXozSQRxjZvV1gWIInh4HhLs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421104; c=relaxed/simple;
	bh=xfXwqwBueJTPOc+EBrMOGueLlKYVIP+u+Q5hEbBwUhs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O0YVeSXkhPUm6KJk7jmGldPtnZJl13rtKlOpj9AvU0Z0ELFlIG1UJ/7wkgkoOzyTJZtf3qbuu/pF8pMp2/aE87rHDJ0dxFdyGszp6jhFDoZBd2x7GYPcODHuRPWmy1MbsojqhsMThtjvdJShGLOxH9+t4t9MnWE6c8VZxVEcBhY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=pAhSUGB5; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=RDEB7Al8C9dMaYAoYH02KGoF+Zms3cmMuP6jo0DNw98=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771421031;
 b=mxpk5JzBaPkuUqd6Bd6N84HJ6vUByYVDr0cNHwS/lsMxRtuygTeeTaTbPCYVwHDucthbe3Kj
 jw1819JyyulzFr0qnhGdpzzc6NMSOC1MneP+u4VKoX96Vd9NypwLWe0IIZp0hmPXERc893Idgoc
 mla+F2mr8Hv8jdPqZT2q0fVyMOzB+VQWQTAcKWbclts57G5xkQCdL6WzpPKJDjP8jT0GYOB6Kz4
 b/d1B7WXhkFUP4GexLYNW9UUaXnNV2uiF7wqZsmGMepKK9OOUBRA7WrBz7vLPoMJR6HEKM8aRNP
 KmybXLT0mubfk4xttJrtURu77FuBh1eJEW8mu/T26su4Q==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771421031;
 b=kZ9UkMrob/qETjpWLWd1/r+JWprFTp+UwnFRZ6MCc77UA3clK3LNkURpZJzGDNuF3MzZRO/s
 ghiZxdpIAmkjNyVAqGNzbCCcH6I4JIpDWd/vNrRZfHgiAvJc2/OO8Df1sGEY+Ot7aqO8YFQtBfS
 zPLyS5wKoDSDHogIRP3j4LWp/IJrMLhqOWzE6fpriK1PzjfivmIUuanuALE7wS96Pssdy1OJkTf
 QBoL+bz2YbSqrQw95I7mlbK5VBM59/B+GXaZp+5odg47RcFhH4RlorjWhhOZo2M9D+3m7uHyN7u
 CxGaHyQYDf8gPFwNMFhuVndpDvl+OmO2LxChtAEj10C+w==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Wed, 18 Feb 2026 14:23:50 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 3242B2205F0;
	Wed, 18 Feb 2026 14:23:44 +0100 (CET)
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
Subject: [PATCH 2/4] ARM: dts: imx6ul[l]-tqma6ul[l]: add boot phase properties
Date: Wed, 18 Feb 2026 14:23:35 +0100
Message-ID: <20260218132339.32157-3-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260218132339.32157-1-Max.Merchel@ew.tq-group.com>
References: <20260218132339.32157-1-Max.Merchel@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4fGHJw6VYjz1kPGCB
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:24d8cc4ecc148cb0df8ddce9d33b9577
X-cloud-security:scantime:1.977
DKIM-Signature: a=rsa-sha256;
 bh=RDEB7Al8C9dMaYAoYH02KGoF+Zms3cmMuP6jo0DNw98=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771421030; v=1;
 b=pAhSUGB520tlZdPMLkK762kBNdY0fryl30yldCQZyOtmXIvr66f5840TsWdCntY0Pt005th/
 hkRXvJ/sDINBS90Bd8l3v3WG+S1DkDA2EgPz3lubf3MCougiLGw4jU1UEHYz7c5mUbvMFZiA8SC
 JEAO64xxk7wNEusCbbdA1g730sZEyKDcvnxFpS0YqK/ZXI23y95c1o5jpjcwi5CPGyXbc7q8CnA
 o7qtOQNH7NU1VknNMQNILXfrB4isE+v15CaoEDgQrUZWoEZQFt9iVIMHs/GSrB0Jk8GqcdaEfGv
 tntS9wOexKd0sATHfK24R+0hx0LqWJacVnGmljKHruPgA==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266426-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,tq-group.com:email,0.0.0.8:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ew.tq-group.com:mid,ew.tq-group.com:dkim,0.0.0.68:email]
X-Rspamd-Queue-Id: F1B491569F9
X-Rspamd-Action: no action

Add boot phase properties for TQMa6UL[L] device tree.

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


