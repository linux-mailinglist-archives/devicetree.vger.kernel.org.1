Return-Path: <devicetree+bounces-266383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHfEC2ealWmsSgIAu9opvQ
	(envelope-from <devicetree+bounces-266383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:54:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C98E155AF7
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:54:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A9ED3007F5B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:54:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 729B130275F;
	Wed, 18 Feb 2026 10:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="Ws5IGoVF"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (pouet.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701AF30148D;
	Wed, 18 Feb 2026 10:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771412068; cv=none; b=apq25K1QcGWycC/WQswJj3Uw/xl1mhd5kfOGhefho73/6bs9QSJTWsx4OftjWvAvqLDnacKCjPMkVUBzzATBCoCoZYKExqvY35chzNwVTgTh9E2CURfEYVckU2GdpZpTRl1Ns+Xb3zTbthxKkU7iiRsN091BX7U1nS/JzHGrdGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771412068; c=relaxed/simple;
	bh=SN9ME6m2+GqvYXiK6+XH80iCtYwqSTRmIwev20M6/PE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WQwV9pqSmqb0dK5wubTTS32SVDZd5iK7iTDID4TusUapU1A4mq9dzhJ6p6ODnysSVxMf3Lxz/efp4nbc1jP2cEWetzUXJ8Zps5k894QRwZZqQ7zOEfoFfG1nK/K5HY33DrIMSKNZAnX79DtkdNczQpxGJVBDF/HcgwTR73mUGjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=Ws5IGoVF; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
Received: from localhost.localdomain (2a02-842b-8136-0001-b865-661D-5641-e7C6.rev.sfr.net [IPv6:2a02:842b:8136:1:b865:661d:5641:e7c6])
	by courrier.aliel.fr (Postfix) with ESMTPSA id DEF8440244;
	Wed, 18 Feb 2026 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1771412063;
	bh=SN9ME6m2+GqvYXiK6+XH80iCtYwqSTRmIwev20M6/PE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Ws5IGoVFsDpjxp2bzzNiUoyzNUvVXL2zmLuxYIc3OaF/uFiYDYKZrTHuPMFdRGqoI
	 T2scZyu61tzoFo8IRawcknMzeuxk8e+6T20SuxnjXECL7O80jPWCcuDtGgey28Ue4g
	 SyH4Rw2P8mqZjF2DVlZTzRHTRdiY0cXIUkHYhhYw=
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
To: linux-amlogic@lists.infradead.org
Cc: Ronald Claveau <linux-kernel-dev@aliel.fr>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 7/7] arm64: dts: amlogic: Add EMMC for T7 khadas VIM4
Date: Wed, 18 Feb 2026 11:53:04 +0100
Message-ID: <20260218105306.36151-1-linux-kernel-dev@aliel.fr>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260218101709.35450-1-linux-kernel-dev@aliel.fr>
References: <20260218101709.35450-1-linux-kernel-dev@aliel.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266383-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[aliel.fr];
	DKIM_TRACE(0.00)[aliel.fr:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[aliel.fr,linaro.org,baylibre.com,googlemail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,aliel.fr:mid,aliel.fr:dkim,aliel.fr:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7C98E155AF7
X-Rspamd-Action: no action

Add EMMC support for Amlogic T7 Khadas VIM4 device dts.

Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 .../amlogic/amlogic-t7-a311d2-khadas-vim4.dts | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
index fffdab96b12e..fbc43a307015 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
@@ -15,6 +15,10 @@ aliases {
 		serial0 = &uart_a;
 	};
 
+	chosen {
+		stdout-path = "serial0:921600n8";
+	};
+
 	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x2 0x0>; /* 8 GB */
@@ -45,6 +49,42 @@ xtal: xtal-clk {
 		#clock-cells = <0>;
 	};
 
+	dc_in: regulator-dc-in {
+		compatible = "regulator-fixed";
+		regulator-name = "DC_IN";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	vsys_3v3: regulator-vsys-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VSYS_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&dc_in>;
+		regulator-always-on;
+	};
+
+	vcc_3v3: regulator-vcc-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vsys_3v3>;
+		regulator-always-on;
+		/* FIXME: actually controlled by VDDCPU_B_EN */
+	};
+
+	emmc_1v8: regulator-emmc-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "EMMC_AO1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_3v3>;
+		regulator-always-on;
+	};
+
 };
 
 &uart_a {
@@ -52,3 +92,25 @@ &uart_a {
 	clocks = <&xtal>, <&xtal>, <&xtal>;
 	clock-names = "xtal", "pclk", "baud";
 };
+
+/* eMMC */
+&sd_emmc_c {
+	status = "okay";
+	pinctrl-0 = <&emmc_ctrl_pins>, <&emmc_data_8b_pins>, <&emmc_ds_pins>;
+	pinctrl-1 = <&emmc_clk_gate_pins>;
+	pinctrl-names = "default", "clk-gate";
+
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	max-frequency = <200000000>;
+	disable-wp;
+	non-removable;
+
+	power-domains = <&pwrc PWRC_T7_EMMC_ID>;
+
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&emmc_1v8>;
+};
-- 
2.49.0


