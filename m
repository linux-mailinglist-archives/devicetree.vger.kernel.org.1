Return-Path: <devicetree+bounces-324526-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UqWRNoQQUWqk+wIAu9opvQ
	(envelope-from <devicetree+bounces-324526-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 17:32:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4162873C45D
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 17:32:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=JweXbF0p;
	dmarc=pass (policy=reject) header.from=bootlin.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324526-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324526-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 82052301A523
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 15:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA36B42DA5B;
	Fri, 10 Jul 2026 15:32:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B942DCC1F;
	Fri, 10 Jul 2026 15:32:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783697527; cv=none; b=lIQ8raavPXz2cGuWcj/G9MzjAjsp/V/eLO69hNWfi3dDiz7x0asa+kf4vAU0bPvEGOB3h1q8jzqrvCZtxcy7s+AtyHDkFoOdI8QpfKwLLkGYqu8XHqZzZhKC0dmRdoPVhU8cLW20px0M3+UCYk+xu9OZqRdobdXsZzhgwaOOglI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783697527; c=relaxed/simple;
	bh=tMINuLjLJ6HDyHzWHhXF+F/0+DLwvl+f1K67mHj7CM8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WQWeZuBJktyh3a7bUKCrpdnNo9rAV9gnEq+2UQvpeUR6qoPPcB7gg80jDRxUBAdDxbnQaL/qnns5rxS8DzhWe6z6JuI25E3O0OQaRZg1zFEkn5hur65LGuBJJwpidnRLmcmQyva3sOM2FR9Y7UZ+nMP9iHkbnaqIjCbXX5yT0oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=JweXbF0p; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 3E8A01A0F44;
	Fri, 10 Jul 2026 15:32:04 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0A30960345;
	Fri, 10 Jul 2026 15:32:04 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5CB8111BD1A6A;
	Fri, 10 Jul 2026 17:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1783697522; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=f5fTdgEeWJWIqqdOx484hH91tnkn5FQXkKW5S5qABMo=;
	b=JweXbF0pcF3lJ16gDTz5t6xkecvGbda8586WSisqEmVbjC0kOq89RTi8EdxKqd49s2iAwa
	l6Te3WhMJl9y9KUgzHOaokgWDbhQWPEKTSbzbRRcphvjDA+c2Z6RJ7BUwAaIYlSDwTcz2N
	hLy+iBZy2cs/BqZIKnI2VZbnFjOf54+MvtQ/Jg+21ULeKlNx8pKdbqb+KNdbKAhxEnnqL6
	jX/p8JpWNbBOtiaQ7dGhdXqB220VVRsdkiPECmWBpB7OtKo/flD8N2s+8dC22Yy4TSmX8E
	DyyvRjtV7RqMzcDD9EVfruerACQUk4mTrbKw8Y4p79tzuCqsNmIbv/ltLEOVGQ==
From: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Date: Fri, 10 Jul 2026 17:31:34 +0200
Subject: [PATCH 1/5] arm64: dts: freescale: Import optee node from u-boot
 device trees
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260710-mathieu-uboot-dts-import-v1-1-ffe0210e50c9@bootlin.com>
References: <20260710-mathieu-uboot-dts-import-v1-0-ffe0210e50c9@bootlin.com>
In-Reply-To: <20260710-mathieu-uboot-dts-import-v1-0-ffe0210e50c9@bootlin.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Wei Xu <xuwei5@hisilicon.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, 
 Tali Perry <tali.perry1@gmail.com>, Patrick Venture <venture@google.com>, 
 Nancy Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, openbmc@lists.ozlabs.org, 
 Tom Rini <trini@konsulko.com>, Peter Robinson <pbrobinson@gmail.com>, 
 Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783697511; l=7005;
 i=mathieu.dubois-briand@bootlin.com; s=20241219; h=from:subject:message-id;
 bh=tMINuLjLJ6HDyHzWHhXF+F/0+DLwvl+f1K67mHj7CM8=;
 b=p4TnV3T1XPtN3EsK55Xihkn4CYcplvwLwi+99X+LyT+PDsy/6wBOXSJ+NaY9Vqk9nb95sCpg2
 M+1n8ELDbKFBBoxX0YKkL6Qw8ASb26OKyxfNSxTw36WxhB0Kt/JhiKx
X-Developer-Key: i=mathieu.dubois-briand@bootlin.com; a=ed25519;
 pk=1PVTmzPXfKvDwcPUzG0aqdGoKZJA3b9s+3DqRlm0Lww=
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324526-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,foss.st.com,hisilicon.com,codeconstruct.com.au,google.com];
	FORGED_SENDER(0.00)[mathieu.dubois-briand@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:xuwei5@hisilicon.com,m:andrew@codeconstruct.com.au,m:avifishman70@gmail.com,m:tmaimon77@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:thomas.petazzoni@bootlin.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:openbmc@lists.ozlabs.org,m:trini@konsulko.com,m:pbrobinson@gmail.com,m:mathieu.dubois-briand@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,m:mcoquelinstm32@gmail.com,m:taliperry1@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[bootlin.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,st-md-mailman.stormreply.com,lists.ozlabs.org,konsulko.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathieu.dubois-briand@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:from_mime,bootlin.com:email,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4162873C45D

U-Boot is importing kernel device trees for these platforms, but adding
a firmware node to enable communication with OP-TEE. Importing
changes here will allow to remove these additions in U-Boot.

Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi                | 7 +++++++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi                | 7 +++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi                | 7 +++++++
 arch/arm64/boot/dts/freescale/imx91-11x11-evk.dts        | 7 +++++++
 arch/arm64/boot/dts/freescale/imx91-11x11-frdm.dts       | 7 +++++++
 arch/arm64/boot/dts/freescale/imx91-phyboard-segin.dts   | 7 +++++++
 arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts        | 7 +++++++
 arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts          | 7 +++++++
 arch/arm64/boot/dts/freescale/imx93-kontron-bl-osm-s.dts | 7 +++++++
 arch/arm64/boot/dts/freescale/imx93-phyboard-segin.dts   | 7 +++++++
 arch/arm64/boot/dts/freescale/imx93-var-som-symphony.dts | 7 +++++++
 11 files changed, 77 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 5cf2998d396d..4a55464e8a6f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -233,6 +233,13 @@ timer {
 		arm,no-tick-in-suspend;
 	};
 
+	firmware {
+		optee: optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+
 	thermal_zones: thermal-zones {
 		cpu-thermal {
 			polling-delay-passive = <250>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 79b169b07c4f..c3b4560ec9b4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -265,6 +265,13 @@ timer {
 		arm,no-tick-in-suspend;
 	};
 
+	firmware {
+		optee: optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+
 	soc: soc@0 {
 		compatible = "fsl,imx8mn-soc", "simple-bus";
 		#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 5ce2825182fd..285b98384255 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -404,6 +404,13 @@ timer {
 		arm,no-tick-in-suspend;
 	};
 
+	firmware {
+		optee: optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+
 	soc: soc@0 {
 		compatible = "fsl,imx8mp-soc", "simple-bus";
 		#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/freescale/imx91-11x11-evk.dts b/arch/arm64/boot/dts/freescale/imx91-11x11-evk.dts
index 5716febb5a50..c7050bafacae 100644
--- a/arch/arm64/boot/dts/freescale/imx91-11x11-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx91-11x11-evk.dts
@@ -110,6 +110,13 @@ linux,cma {
 		};
 	};
 
+	firmware {
+		optee: optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+
 	sound-wm8962 {
 		compatible = "fsl,imx-audio-wm8962";
 		model = "wm8962-audio";
diff --git a/arch/arm64/boot/dts/freescale/imx91-11x11-frdm.dts b/arch/arm64/boot/dts/freescale/imx91-11x11-frdm.dts
index c25561574d3f..c0156921414f 100644
--- a/arch/arm64/boot/dts/freescale/imx91-11x11-frdm.dts
+++ b/arch/arm64/boot/dts/freescale/imx91-11x11-frdm.dts
@@ -152,6 +152,13 @@ linux,cma {
 		};
 	};
 
+	firmware {
+		optee: optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+
 	soc@0 {
 		bootph-all;
 		bootph-pre-ram;
diff --git a/arch/arm64/boot/dts/freescale/imx91-phyboard-segin.dts b/arch/arm64/boot/dts/freescale/imx91-phyboard-segin.dts
index 022e9c6841ef..62b6eff013f1 100644
--- a/arch/arm64/boot/dts/freescale/imx91-phyboard-segin.dts
+++ b/arch/arm64/boot/dts/freescale/imx91-phyboard-segin.dts
@@ -35,6 +35,13 @@ chosen {
 		stdout-path = &lpuart1;
 	};
 
+	firmware {
+		optee: optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+
 	flexcan1_tc: can-phy0 {
 		/* TI SN65HVD234D CAN-CC 1MBit/s */
 		compatible = "ti,tcan1043";
diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
index c6db9c85f2ac..0bea169d7029 100644
--- a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
@@ -42,6 +42,13 @@ reg_usdhc3_vmmc: regulator-usdhc3 {
 		enable-active-high;
 	};
 
+	firmware {
+		optee: optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+
 	usdhc3_pwrseq: usdhc3_pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&pcal6524 12 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts b/arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts
index 01c11c517986..6b99c0594125 100644
--- a/arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts
@@ -147,6 +147,13 @@ reg_usdhc3_vmmc: regulator-usdhc3 {
 		enable-active-high;
 	};
 
+	firmware {
+		optee: optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+
 	sound-bt-sco {
 		compatible = "simple-audio-card";
 		simple-audio-card,name = "bt-sco-audio";
diff --git a/arch/arm64/boot/dts/freescale/imx93-kontron-bl-osm-s.dts b/arch/arm64/boot/dts/freescale/imx93-kontron-bl-osm-s.dts
index 4620c070f4d7..b8fa0cda33b2 100644
--- a/arch/arm64/boot/dts/freescale/imx93-kontron-bl-osm-s.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-kontron-bl-osm-s.dts
@@ -62,6 +62,13 @@ reg_vcc_panel: regulator-vcc-panel {
 		regulator-min-microvolt = <3300000>;
 		regulator-name = "VCC_PANEL";
 	};
+
+	firmware {
+		optee: optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
 };
 
 &eqos { /* Second ethernet (OSM-S ETH_B) */
diff --git a/arch/arm64/boot/dts/freescale/imx93-phyboard-segin.dts b/arch/arm64/boot/dts/freescale/imx93-phyboard-segin.dts
index d929aa9ff255..e96b8437f922 100644
--- a/arch/arm64/boot/dts/freescale/imx93-phyboard-segin.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-phyboard-segin.dts
@@ -36,6 +36,13 @@ chosen {
 		stdout-path = &lpuart1;
 	};
 
+	firmware {
+		optee: optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+
 	flexcan1_tc: can-phy0 {
 		compatible = "ti,tcan1043";
 		#phy-cells = <0>;
diff --git a/arch/arm64/boot/dts/freescale/imx93-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx93-var-som-symphony.dts
index 409c7e74ffe3..20eaabc23b49 100644
--- a/arch/arm64/boot/dts/freescale/imx93-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-var-som-symphony.dts
@@ -125,6 +125,13 @@ ele_reserved: ele-reserved@87de0000 {
 		};
 	};
 
+	firmware {
+		optee: optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 

-- 
2.47.3


