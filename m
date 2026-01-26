Return-Path: <devicetree+bounces-259539-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIypHrOAd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259539-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:56:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 002C289CF9
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:56:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 97D58300B18E
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:56:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48A2333891F;
	Mon, 26 Jan 2026 14:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eVuRbGH8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92929329C6B
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 14:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769439397; cv=none; b=jTHgEDnB8nvhut5eLN7V0fZE1kJcWPC5UPyXVsrlLC1WHql5JN6E5oJPqTVlSXY9qxiPan6x4sUmlYpOaucpiw6RFb9glML7wtiHkPtx9NEIqTU+iiS4gUXFyuvqjnRS1PoFGN4fRlrX+1r5gsLqPDUJ6/BG2Msg2rLLugWJ+io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769439397; c=relaxed/simple;
	bh=FXRkYQxW/Oh77PruZvMs8Ux+ule7NHMljC/BkJecFvU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E/KBMEdKd1nI2wPGtQIp1ADh9xzxvHrLxcR/7ojdeUx6pmn4LBYBzOYGupymbVMGUnsbjojrOdErkM1jme2P9frkjGtfkPgIsHcB+RK7TJeksnTaB5cyblcfZ5Vxzjzpc1q2MIkab0e5VvU8Z74SS+nTHcKUpFew4wCTI/3M8dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eVuRbGH8; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48049955f7fso39371455e9.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 06:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769439394; x=1770044194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/RQKD2gj0rQ1+sFwLWUcjWNz3iCRkkjiPuUiecwAUgg=;
        b=eVuRbGH8dy0fV3SKjMM9X6maJGwZRpdu+etwYDA2rsBPTPqympwlPFHDvkWI7NnaWe
         JcBnBYjebei6OLULyGh0CMiFmFt7azb2AB5uU40XYdHcqq0ook/QROcztWxZXSCfvg+3
         h4E0TBqTk+qM65Q6+ZS2hobc6scozgac6LWcvTRfncqFgs/amAqNvfNLJOEGjwr2XV3g
         OnJS/pFeY135tzcfCfNw0cy3K3tdGq05g6YuUWfeIfn6dG0nk8CX/jnAvR1cOhxkfokV
         Eox9S95sdjxNNUcXSizMlkq9Hmjdww4Lu1GrGIlcqedfSwvaOhFQ98ZLx+4U/B+DpYzF
         19Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769439394; x=1770044194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/RQKD2gj0rQ1+sFwLWUcjWNz3iCRkkjiPuUiecwAUgg=;
        b=Km7AjRzLca+9wY7S7TYE1W83zg/z3kckyRuIqL/iox8/SIqhX74VwxYA5LzsGLmvtR
         2K41wxqmwnG29ESqzL1jR/ReKhmkzDw00mbGfiQItawBgF4ps5bvd/5PoXTn/hbTWe0C
         4Xtioi3CE+roEhYcu3FpjrPA/DToNhOz4dR16j1UvEjlI+K2yJ1nMED3mIlCgK4S6LwE
         OlUqjXFntQ+OWf/ydjaIn+hu/gRByCqYyboMqGyBDMfSlxedh88LTrXQ6t6MPqTQHuOT
         rUwY+LMq1VRciDsUJse4mqbOqta0lY2UkAA4/+k/xihpUvdoE/jvZmbZxaed48Jok08E
         tQUA==
X-Forwarded-Encrypted: i=1; AJvYcCUiw29JbEzEsHgQxEwKQqHYyipA42P0X2Mhg3N6d3BuloGxNg9/yyRXCoO3Ytojdh0dIbXcxHA2hZiX@vger.kernel.org
X-Gm-Message-State: AOJu0YwAvHU4Ot6L5miNBasMjTAI2Si0H1Y1MBUIL+ffvHWROSPGi+K0
	4psXjME80rPXzBQ5Sd21rXQC6Tcc59e5D4uv31Y85lGknquKC1E5fy6A
X-Gm-Gg: AZuq6aKf5gKqOVsnD3GbFpa6t4wJeCjGuN1ZUNOPyTW75hTbOeCDkp9mfYxGI3zI73R
	3vJ6zOxvR5SiMLrrG/1GzSFwV2qIOUE02jXfTkt+6i4wWyOb5Gc/7jShNdY26bEutabgPK29YYe
	rGWqHwRsh8HL3GINece8uoqvfOLC2nedWj8khl7XBg9xH1OayPOGK2kCOoytilc+9iKJqT//RMT
	TmLi0kXMHX91AhTvoUlZ2gx3ucCxc7a01DX2nOXmwKFAolI9E3iw9KDtN4JmlO4ueuWOSXXmb+F
	QzLk3hC4816wzWuXM7fLczFtE7vbuPIpkI8fnSM3JjgF7E1PfqZfN79woC3hoRHifbmHX+HZ6rp
	wEyJpyxPZw4rWwPZ2rOxmOJeSGmMs/neaNZcnCBphahX2kOEzNxGbL12GNln5LKuiWN+ivlr4j3
	HjdvtY3Z1ZEJe7rjsm7QNLBAO65aKGZFcWny+Edg==
X-Received: by 2002:a05:600c:5494:b0:47e:e78a:c833 with SMTP id 5b1f17b1804b1-4805d064297mr74645505e9.32.1769439393871;
        Mon, 26 Jan 2026 06:56:33 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d8c0aebsm278448735e9.15.2026.01.26.06.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 06:56:33 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Chancel Liu <chancel.liu@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v2 2/2] arm64: dts: imx95-15x15-frdm: support AONMIX MQS
Date: Mon, 26 Jan 2026 06:55:37 -0800
Message-ID: <20260126145537.2301-3-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260126145537.2301-1-laurentiumihalcea111@gmail.com>
References: <20260126145537.2301-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259539-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,pengutronix.de,nxp.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurentiumihalcea111@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.84:email]
X-Rspamd-Queue-Id: 002C289CF9
X-Rspamd-Action: no action

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Add support for AONMIX MQS (i.e. MQS1).

Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 .../boot/dts/freescale/imx95-15x15-frdm.dts   | 73 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx95.dtsi      |  5 ++
 2 files changed, 78 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts b/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts
index ca1c4966c867..0f43e3be7058 100644
--- a/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts
@@ -243,6 +243,12 @@ codec {
 		};
 	};
 
+	sound-mqs {
+		compatible = "audio-graph-card2";
+		links = <&sai1_port1>;
+		label = "mqs-audio";
+	};
+
 	usdhc3_pwrseq: usdhc3-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&pcal6524 8 GPIO_ACTIVE_LOW>;
@@ -473,6 +479,21 @@ &mu7 {
 	status = "okay";
 };
 
+&mqs1 {
+	clocks = <&scmi_clk IMX95_CLK_SAI1>;
+	clock-names = "mclk";
+	pinctrl-0 = <&pinctrl_mqs1>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	mqs1_port: port {
+		mqs1_ep: endpoint {
+			dai-format = "left_j";
+			remote-endpoint = <&sai1_port1_ep>;
+		};
+	};
+};
+
 &netc_blk_ctrl {
 	status = "okay";
 };
@@ -534,6 +555,51 @@ &pcie0 {
 	status = "okay";
 };
 
+&sai1 {
+	clocks = <&scmi_clk IMX95_CLK_BUSAON>, <&dummy>,
+		 <&scmi_clk IMX95_CLK_SAI1>, <&dummy>,
+		 <&dummy>, <&scmi_clk IMX95_CLK_AUDIOPLL1>,
+		 <&scmi_clk IMX95_CLK_AUDIOPLL2>;
+	clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3", "pll8k", "pll11k";
+	assigned-clocks = <&scmi_clk IMX95_CLK_AUDIOPLL1_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL1>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2>,
+			  <&scmi_clk IMX95_CLK_SAI1>;
+	assigned-clock-parents = <0>, <0>, <0>, <0>, <&scmi_clk IMX95_CLK_AUDIOPLL1>;
+	assigned-clock-rates = <3932160000>, <3612672000>,
+			       <393216000>, <361267200>,
+			       <24576000>;
+	fsl,sai-mclk-direction-output;
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* leave unconnected - no RX in the context of MQS */
+		port@0 {
+			reg = <0>;
+
+			endpoint {
+			};
+		};
+
+		sai1_port1: port@1 {
+			reg = <1>;
+			mclk-fs = <512>;
+
+			sai1_port1_ep: endpoint {
+				dai-format = "left_j";
+				system-clock-direction-out;
+				bitclock-master;
+				frame-master;
+				remote-endpoint = <&mqs1_ep>;
+			};
+		};
+	};
+};
+
 &scmi_iomuxc {
 	pinctrl_emdio: emdiogrp {
 		fsl,pins = <
@@ -618,6 +684,13 @@ IMX95_PAD_GPIO_IO31__LPI2C4_SCL				0x40000b9e
 		>;
 	};
 
+	pinctrl_mqs1: mqs1grp {
+		fsl,pins = <
+			IMX95_PAD_SAI1_TXFS__AONMIX_TOP_MQS1_LEFT		0x31e
+			IMX95_PAD_SAI1_RXD0__AONMIX_TOP_MQS1_RIGHT		0x31e
+		>;
+	};
+
 	pinctrl_pcal6524: pcal6524grp {
 		fsl,pins = <
 			IMX95_PAD_GPIO_IO34__GPIO5_IO_BIT14			0x31e
diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
index 55e2da094c88..0c55861d673c 100644
--- a/arch/arm64/boot/dts/freescale/imx95.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
@@ -391,6 +391,11 @@ scmi_misc: protocol@84 {
 		};
 	};
 
+	mqs1: mqs-1 {
+		compatible = "fsl,imx95-aonmix-mqs";
+		status = "disabled";
+	};
+
 	pmu {
 		compatible = "arm,cortex-a55-pmu";
 		interrupts = <GIC_PPI 7 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;
-- 
2.43.0


