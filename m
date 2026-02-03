Return-Path: <devicetree+bounces-262163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHoKASDJgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:08:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEB0D751F
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:08:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 428D430D25F1
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A97E539C62A;
	Tue,  3 Feb 2026 10:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UQhzVGJF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FA939A810
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770113099; cv=none; b=X+2uHUP88i1KAX9XI+zQjIXRXIwoZtvY43GD8fVjd47DDaXdvd+S4VhS1pVMvm71+MVUtTLKw3kh3IBDZRl5WTc8C4xElQ87egWOkNw74khjBaNHd65Nkehh62qoDSUMSYm6/BzvX4qMPk3Ry19VV1SyLxoG47zi/rmm7Aure9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770113099; c=relaxed/simple;
	bh=Hik5asmTwUamyL0nKO98yWSe3Rq6gzjjcbyeQGAYfqU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WTee1uKwHECF2NlTwWkAjxS62y7yNj3GEtQTOf+0S/CiPjQxR0twU04hQjacf18J+PEwNqlc9IFPxcI8mTtXvQ9EU2j49JgKY52G+cjWr8qQnAJyxRLK9nyAoemAIqkJxSP2yIptefoxF20oUufR294a+7JBLRG3pZ+7ZhXVK2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UQhzVGJF; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4806e0f6b69so39597715e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:04:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770113096; x=1770717896; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z51/LSwxyVQQCwJzOsYDCUnfNLjjWuW1smeCgpUaBns=;
        b=UQhzVGJFJIgH6ZpiyRd/POZOK/80/d/bcnh3baHNVwyNtJFlrLWdvUhcRbvSG2XV8J
         sSsVmPqx4Hr2LcrTjYkv5DnTJ14Vip3U7866dQh3Yq6XyVV5DmxQLTIcEL2qwmL6SItx
         hKwjW0k4+Usetc11b6ySIzfq8Hza3xD9WXqX/Zz/SCB/PJP4r8/VsRVH1OqcfpoK7t0m
         3CQrJCAGPmvO0kNuBMkG/pGvPkfgxchuDWLh7jZGKOnZ7vxHDbFj+gTcerrYXmxZHtNk
         XOO4lltmVPho+w6X/Jr63Ug+2tWMBYQdbmOhmD0VUqbLn8IJTAsoBVf4hUXQYG+hproO
         rGcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770113096; x=1770717896;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=z51/LSwxyVQQCwJzOsYDCUnfNLjjWuW1smeCgpUaBns=;
        b=KrzYjBA9xqVGL8yW/zE+1Xjg8RVhrJODDEKu8VxYefyDD1CZ4cGmK4ECqD5mZ0PP8X
         KnEVguC/ckIjPl8YDrJOuu7Ss5poUzGh84sizsgeX5nVblSXwvquVOAvom/0RTLmXllc
         2GHOkqZ95TtO5f/erYCDBifHsGVlKGoyXXrx7Rzbz6GIoCAIrCOsjw0v6b4Bh/LbBfJy
         bMXo5FD1XeHvkQpKY/9MN3lBBq+I/TJaBVZ0NyIBf5ApOuyl3zFiXcSO/BxKNH+mTbjQ
         cCxKX9sKhJdzx68KfxbFxxGPVXY0GMusYaTUnNOYjtZBwVOi4vDHSyNPy1atVBFwF8wq
         8gCw==
X-Gm-Message-State: AOJu0Yxvii7B0HAWEAA5PVhostSPKpKzV6IRFBvLSIqplOMJUl0iKNfe
	MOe11xORMAylKQqMkF92LQFW7AAzbI8OB2K5Nq/foS0wdz0lfKcY9ukl
X-Gm-Gg: AZuq6aLBDCKrOTdbMX5J0iJIquXXzF560RSIRoxTRoziqrwefAbgdQ9yivrP6f9XPkx
	HPm9gxID0FH++OxmBxtlVZMj8z6S0SE3gmFC8+DcJwukIfS129U1F5rku/Ahb/phbB22xsz/vc9
	Kl9VuryeWIUwKjf0cz2NNr+aDUBUDBxbe0lzcFNfZp7WbnXoumDijzlGzN7pn13b2vJcMK6JHol
	4amuii/xu6/kx51Ih7fbznHgSSLQULhQe0risBBpSzoclLjX1kcli4z4g9oob2AWna+yZnxFjRJ
	h0i1s930EQNKUNnt+0HsJvx4Sp1XirGBVIY3Fx4dvFRUSiQdlkBHSxvkeVW5FerKxCxO/atYpKp
	HPY4QpTyF4h9TXE2seQyBKwiKX51v1vASiGqMKq3Jv4aKGRrvRZRBXTtwiEcXv7T2ArpU8+ErQk
	e8qB0RWfeJTS72NrdpcAeTUe14dlD7nixsAuTkAA==
X-Received: by 2002:a05:600c:34c4:b0:480:52fd:d2e4 with SMTP id 5b1f17b1804b1-482db012dd7mr201253775e9.0.1770113096399;
        Tue, 03 Feb 2026 02:04:56 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482dffd47c2sm115534365e9.0.2026.02.03.02.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 02:04:55 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Chancel Liu <chancel.liu@nxp.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v3 2/2] arm64: dts: imx95-15x15-frdm: support AONMIX MQS
Date: Tue,  3 Feb 2026 02:03:32 -0800
Message-ID: <20260203100332.915-3-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203100332.915-1-laurentiumihalcea111@gmail.com>
References: <20260203100332.915-1-laurentiumihalcea111@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262163-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurentiumihalcea111@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,0.0.0.0:email]
X-Rspamd-Queue-Id: 4CEB0D751F
X-Rspamd-Action: no action

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Add support for AONMIX MQS (i.e. MQS1).

Reviewed-by: Chancel Liu <chancel.liu@nxp.com>
Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 .../boot/dts/freescale/imx95-15x15-frdm.dts   | 73 +++++++++++++++++++
 1 file changed, 73 insertions(+)

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
-- 
2.43.0


