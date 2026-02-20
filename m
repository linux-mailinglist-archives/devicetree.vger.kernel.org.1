Return-Path: <devicetree+bounces-266984-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNHJLRBxmGkoIgMAu9opvQ
	(envelope-from <devicetree+bounces-266984-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:34:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B75168635
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:34:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4150B30EAC92
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C887284671;
	Fri, 20 Feb 2026 14:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="dyeTjFV2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay94-hz2.antispameurope.com (mx-relay94-hz2.antispameurope.com [94.100.136.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B99A264617
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.194
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771597926; cv=pass; b=a76Kn22m3/fdB6pZAwuZ+VhUmVc4ivBxVJ74PDl9ZqR1EKAY/o7Ie7jTnP7loEnozrwtrbfu6h6PCrMQGskALc1lOXXRZ5OASnXhXrWZeoR1g8rrAD2aRBTfV09FU58n+/Bj1ziX92DrPl8CMtwXt0i3tvb/R08Pl5ZIkYRf/4k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771597926; c=relaxed/simple;
	bh=/bqxzQpzzJ81IQljbkViUoD0W4RZVJhyMGiKRtMNksI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jc9HOtorpotOWFttAkVTr/+NF6ww/wmuIKoPDD+cJphrPF0QJB5nGlyuNgfHYAx/YhpIAcxToDfWKgj9VxYhwac45kQePTF0FEsc/4I/pNr7a/AuEYiPsVy1/+qe4qw6HOGO4k5a6ZUoGNX9PiZLzSbuBKQQUDJuCx9w+0aTekA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=dyeTjFV2; arc=pass smtp.client-ip=94.100.136.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate94-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=wqJgdoCqiOdzIhzrfhNSF/MhiuLEn1kACd6MHSSRwJY=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771597837;
 b=pH0Hm7DLhLEZDsfqXdkE4ui6DYfCWOV+49+bjT5DMUSdD/orrtDvfvHX+WS+nrWGJrRHDKxv
 Ug/AiSrOXJI1voZ4U/7ZO1J1XpY5LJbdhEnd8iBNYBEy5RN4NnTcLGflIvb3hht2PwK9X6yavYX
 3Qq2DT+ds6i54WnsFw+bWksVnTkyYmon+ZGSNx+HVDn/n5opu/AqscvzofV9fpvkkr5MEyt4TlW
 /06iu378oQbvR3Qt18+yL9Ozu7Bb3QifyilKyqk2Dy9gkXDhD0e5GX4oGOavC/FK/DBwJ6otMN5
 HBcGGRRHk3umRu7BKst1mozkuu/lKstOFyDVxZKO1prpg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771597837;
 b=Qa1bTB1QSzQb8NwJIUXFA5PsJOlSoRoXaaM3JSy89FKkhHCH6Sq8DfSndIZxfomzxiX1WQXs
 b0FlkcSgxy8UHwQrH/8gvMSpV/FbuqpRGK6s+qOw7Y1r8FRu04hvTEW8SaJtOVmG0VCNYEWHTOX
 MpSy7E/u90LlKyndng4uCD7KC9ZM1r4jxvBzYm5y0CwV/haWgc2cvTMs1zzsP2YCUJ4z15OjXCu
 iKwgeBL8gQH7nY/ssmxzOCwuvfYPBs4RohYUdkO/IpegxCdyKneuaiAXBiuilVZme7jsnVlrg43
 MVohP8RZwigV5Y5yA6OS2BC8VQZiUv3PotSfR/I+j+t/Q==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay94-hz2.antispameurope.com;
 Fri, 20 Feb 2026 15:30:36 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id D84CCA41357;
	Fri, 20 Feb 2026 15:30:29 +0100 (CET)
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
Subject: [PATCH v2 3/4] ARM: dts: imx6qdl-tqma6: add boot phase properties
Date: Fri, 20 Feb 2026 15:30:04 +0100
Message-ID: <20260220143008.186851-4-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260220143008.186851-1-Max.Merchel@ew.tq-group.com>
References: <20260220143008.186851-1-Max.Merchel@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay94-hz2.antispameurope.com with 4fHXj24CHgz3dG6N
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:c0a012c4c0204103e9d00e65e5abcb83
X-cloud-security:scantime:2.128
DKIM-Signature: a=rsa-sha256;
 bh=wqJgdoCqiOdzIhzrfhNSF/MhiuLEn1kACd6MHSSRwJY=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771597836; v=1;
 b=dyeTjFV2L/+lAzcv6Goca8qC8e4HcMyZFrkISw4WNxBjgp0gmZSrFQ6nbDRJwuiwThtjYi6u
 s5Imwi//RriVG1EcTQ1HYRmdDuncnCAMtuYn5EoD2GIHdwDe+VYGSzYVex56i1XygFI+Cweihs/
 sGMD/zZ34buYnVV6mByC7++4OcHVnoms1BNsaI9MzShPb7bG56GuwOHic5GwPDPfipmxgQEF4W8
 vGvjJ+nFJmAYKhL/t8chsTKzjc0BjIeV3MN3mLwhDBD7QrBBEWoxy9MnsdmjYqu68e59zjT4zJ+
 L4ZQI+FVGIyWbZDj+ON1SlgAi0wlCJZ/g8jR/3+0i6J/Q==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266984-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.998];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ew.tq-group.com:mid,ew.tq-group.com:dkim,tq-group.com:email,0.0.0.8:email]
X-Rspamd-Queue-Id: E5B75168635
X-Rspamd-Action: no action

dtschema/schemas/bootph.yaml describe various node usage during
boot phases with DT.

TQMa6 need eMMC, I2C, GPIO, regulator and QSPI access during
boot process.

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


