Return-Path: <devicetree+bounces-266420-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4B1YGHe9lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266420-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:24:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6967D15694E
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:24:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5F09B3010703
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA36F2BF001;
	Wed, 18 Feb 2026 13:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="UrPktcs3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 859882D46B2
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421031; cv=pass; b=LVjWR6TnoHZMsWXJcCA47WR2d3q33O799MR0xuSG9dMqlzNw4mkOSfCtvnoIuoENOdpV/ec+XBGm9Oqwb3IfxY/QkigfGUT1QvjTBxX4camPr3BiIj8nqgVoATzpamFxzAub+0tkQSeJLrXxG3mlDcqwq5UkkOWkxRJUesVEJUQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421031; c=relaxed/simple;
	bh=Z1bTBRY6zw1t6uaJj2BKThq7pUXsKletLWM65laNWaw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NEFhYqSs2uXmRkW7jkJFkCRQ/L6lGsCnEnLjLOmOvLT0WZORVK7FUvetthiWVarBrG4kZUC4aFKkuGV4VcyslzT63tiV4Jw4h9TfP9tvZwzJVFPipGVme6uxLKxBmdgTXL6yca7bZ1Rv8ElM2wezEiIMFc3AO5QShLx0ssoypms=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=UrPktcs3; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=8Zcx4Gwsq0t5HYafz2dIuwiCTKeT7XB0utiZMiUPk6Y=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771421002;
 b=pRHmH4+2/JPH6gRi1bAWc4fQrw8Nuba8/rg3AF0d83QmUDQCeDM7yu+C8Wi7ZuxJzlttanxu
 513tS9Hy5h4+2soAIVcWlAAHriCpF7AjtXVEwVg3DKO/JW+FoLYX7gjCSr0ku1JQ4/SrGFPK6yQ
 kyBfAb0HM4eUB/rw2Ue7160wXH4zxCGac7KXwC6qmb+s75lGdVvoio4TUQOnOb2u9KWhknsXBvi
 AFhBFehEWni54VIaA9GOPgUlOseTXok1j3JE4sL8nMNdH8ntmkw959KOeV2cM+vNfAZ+yDnNlku
 KKSLlF81wdAyUSYZkSFo8MDd3tbzCVWJh83a6lmM5EQKg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771421003;
 b=fj/Qxbs7LGz1EU5QXGpUVAkH2aMDlHXGDjrwjuaKku4bqmuGePJPoFN9bbSE1syDeSCe45tK
 jBslZULQd3rqXsKpaa7rIaFF4ONpVlA9qns0hCvSluE+tA4xcO+fFMe+DV9iHVdiQbVpfbxEDcb
 +Folkaq8NRLypo7nIH/uCBnybwkXy4pgw0OnFulLy89iPtsaQEU+0QLkwLRseR+Bu21bE0BxZLs
 nYyQx4l/wqrdZm1CBwjyHstLk1XAtuaFCWRe12kk+0sYEygaZUwaQ+6lem5Ipjo2Psx6CUeFgTA
 dDRskFteoK71KPAgeFOwWKWbL3ALTp3KTupNhLljKE5IQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Wed, 18 Feb 2026 14:23:22 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 39FA4CC0CC4;
	Wed, 18 Feb 2026 14:23:13 +0100 (CET)
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
Subject: [PATCH 3/4] ARM: dts: imx6qdl-tqma6: add boot phase properties
Date: Wed, 18 Feb 2026 14:22:24 +0100
Message-ID: <20260218132228.32056-4-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260218132228.32056-1-Max.Merchel@ew.tq-group.com>
References: <20260218132228.32056-1-Max.Merchel@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4fGHJP11XQz3yb9j
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:cf7061861399f4e6f66565e8def3d525
X-cloud-security:scantime:1.925
DKIM-Signature: a=rsa-sha256;
 bh=8Zcx4Gwsq0t5HYafz2dIuwiCTKeT7XB0utiZMiUPk6Y=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771421002; v=1;
 b=UrPktcs36wKqmqTCJ0t7egqHbFfDA+/F0YZYKj16MH0TkuWLU16VHybFBcPG1woPS/QEonGu
 pcFFfmup/nTucyQbMA8rHLhLh5QWTUm2BMLjACBFes9An8zpDTamWsPnGjDhqT5Q9M3ioVK0M5z
 V5PZtZpVGQCjVnFsgwQM6DPPzwpkx5sI1FTc+sXotcp35oMP+CpCIzK+9C0Nt6crzOJqyBzy/Xy
 TRuUsrekXloFWbV7iw+wf+UXscApPytQUJh8H/QOE/1nOkSoXz/BJIkGAuwJa7RGWn9VfH+FUXz
 LbbQwaB/RVKBv1YBLbsI+Q9z1ZvY9pEE1sI54YswTQDBA==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266420-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,tq-group.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim,0.0.0.8:email]
X-Rspamd-Queue-Id: 6967D15694E
X-Rspamd-Action: no action

Add boot phase properties to TQMa6 device trees.

Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6.dtsi  | 11 +++++++++++
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi |  1 +
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi |  2 ++
 3 files changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6.dtsi
index 07492f63a1f8..14676d1d905a 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6.dtsi
@@ -11,6 +11,7 @@ &ecspi1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_ecspi1>;
 	cs-gpios = <&gpio3 19 GPIO_ACTIVE_LOW>;
+	bootph-pre-ram;
 	status = "okay";
 
 	m25p80: flash@0 {
@@ -19,6 +20,7 @@ m25p80: flash@0 {
 		spi-max-frequency = <50000000>;
 		vcc-supply = <&sw4_reg>;
 		m25p,fast-read;
+		bootph-pre-ram;
 
 		partitions {
 			compatible = "fixed-partitions";
@@ -28,6 +30,10 @@ partitions {
 	};
 };
 
+&gpio3 {
+	bootph-pre-ram;
+};
+
 &iomuxc {
 	pinctrl_ecspi1: ecspi1grp {
 		fsl,pins = <
@@ -38,6 +44,7 @@ MX6QDL_PAD_EIM_D16__ECSPI1_SCLK 0xb099
 			 /* eCSPI1 SS1 */
 			MX6QDL_PAD_EIM_D19__GPIO3_IO19 0xb099
 		>;
+		bootph-pre-ram;
 	};
 
 	pinctrl_i2c1: i2c1grp {
@@ -45,6 +52,7 @@ pinctrl_i2c1: i2c1grp {
 			MX6QDL_PAD_CSI0_DAT8__I2C1_SDA 0x4001b899
 			MX6QDL_PAD_CSI0_DAT9__I2C1_SCL 0x4001b899
 		>;
+		bootph-pre-ram;
 	};
 
 	pinctrl_i2c1_recovery: i2c1recoverygrp {
@@ -73,6 +81,7 @@ MX6QDL_PAD_SD3_DAT5__SD3_DATA5 0x17059
 			MX6QDL_PAD_SD3_DAT6__SD3_DATA6 0x17059
 			MX6QDL_PAD_SD3_DAT7__SD3_DATA7 0x17059
 		>;
+		bootph-all;
 	};
 };
 
@@ -117,6 +126,7 @@ sw4_reg: sw4 {
 			regulator-min-microvolt = <3300000>;
 			regulator-max-microvolt = <3300000>;
 			regulator-always-on;
+			bootph-pre-ram;
 		};
 
 		reg_5v_600mA: swbst {
@@ -186,6 +196,7 @@ &usdhc3 {
 	bus-width = <8>;
 	#address-cells = <1>;
 	#size-cells = <0>;
+	bootph-all;
 	status = "okay";
 
 	mmccard: mmccard@0 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi
index 1251749a8dd0..67f8f59aff5a 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi
@@ -20,6 +20,7 @@ &i2c1 {
 	scl-gpios = <&gpio5 27 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	sda-gpios = <&gpio5 26 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	clock-frequency = <100000>;
+	bootph-pre-ram;
 	status = "okay";
 
 	pmic: pmic@8 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi
index 7f526f39e0f2..db552802554d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi
@@ -13,6 +13,7 @@ &i2c3 {
 	scl-gpios = <&gpio1 5 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	sda-gpios = <&gpio1 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	clock-frequency = <100000>;
+	bootph-pre-ram;
 	status = "okay";
 
 	pmic: pmic@8 {
@@ -40,6 +41,7 @@ pinctrl_i2c3: i2c3grp {
 			MX6QDL_PAD_GPIO_5__I2C3_SCL 0x4001b899
 			MX6QDL_PAD_GPIO_6__I2C3_SDA 0x4001b899
 		>;
+		bootph-pre-ram;
 	};
 
 	pinctrl_i2c3_recovery: i2c3recoverygrp {
-- 
2.43.0


