Return-Path: <devicetree+bounces-272485-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOynAJlKrGn+oQEAu9opvQ
	(envelope-from <devicetree+bounces-272485-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:56:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE9222C937
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:56:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5BF59303F57E
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 15:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D34583A6F09;
	Sat,  7 Mar 2026 15:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CKvBEwBR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0837D1D618A
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 15:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772898928; cv=none; b=swyw/XrxImUQZjeWabxPvzGGy9Lvrte5eOjLRuWVVRIh7Ukayyoyq5pcPVxixNJ61hsDIoznRwALnlZD5GZBO9ibqI++iP70tggR2PsV9RQN2OCRHDPREGKkk9XxsIWvKkysgle0FuTFMPfUlSdANKIeL/eeW1QX84icIWZ1tks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772898928; c=relaxed/simple;
	bh=bQBUFvtahalri30V24Dq6Qe59tCww3BZ3N5QjH/KWkQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n7P3fFi5U7kQ7tH7bnwCVJzqH41OKOx+m9WNuC9lXSXVdEKDXCrCxeg/5ngYBIeLAlVlikU6Wj3cbOVdkt6jMm8Ty+vnxQodyBct4jhjxtAR31St3PvI/6PPbSvszIlEEQOMa6Ybrcs636fVrPtOHraVqYuxI///6OsliVbj00c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CKvBEwBR; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4852f73d0a3so3518325e9.3
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 07:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772898923; x=1773503723; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VUQBvmWHHGMJHsZAlltCWCeup7blkd+CdmrZNVv2zNU=;
        b=CKvBEwBRWawPBqFKbVxQAQ8BE8/12gEYGOY5ZDISeHz3Yb55xPEuVFi9lr29UMlrlX
         guFYTBkg9m447PWdpy0HT1on0T+VLSBDRkBFcTHHNYfJ/R0mE/UXbB0D/H9xQwLlQXVx
         MNK61EOljiHzPlzky8O7WgKETRQDAknWLxn3vfoH5+gbqcKrDaBjPo4bDxD3gh34Tuuj
         hsYyDTgJNa289vWyJmjcKjtAVdzugJJY5IPHhmMpup0IfQ8d1wAZrvZnIUuS7H/VQjbp
         Rnu34rIzB9loF2fWYTYnNdq/y8yRApNHr9fWGL8DQMLG3vE642aPyUjZ2RdGon4IkyR9
         fPSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772898923; x=1773503723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VUQBvmWHHGMJHsZAlltCWCeup7blkd+CdmrZNVv2zNU=;
        b=WhRTchQmpu1s1/TlVADtBDYr1wFVAKUT4hNbqW3PQb09HYu6AWrxVBz83iT2fiOtk0
         Yh1c9xWjahR+x9Y5JXtuMr/j+0Znt0QVjGCFiDjlPJlTu6E5najWfALkKlLNS+Sbar+1
         EXQBhyrMPQVAB34fZ973iQzlTFOg3jcVRRGdRfmA+3sdhe4a6fHNo7hEQq7GfA/gPm9h
         VkMDJ2TO+JK78kgwI+e5RsKw275K1279VPi1oiKHZHp5mdLk/RnAvOYenLBlE7D9r/QT
         m5AvSaOGueOm+lq7vsC8oUA/UdOk2FWTAHR8FOPD1SkhOUmMEkqn7tMO1EVXzQQmf99j
         1zRg==
X-Gm-Message-State: AOJu0Yzh87n+O4BuCMoO3HI+oyhEk1HHfApyoxmb3boHW2/SlRQDjPcB
	NyZv7lvvCElpDQ3Cm8DwLVd1PB4w5jSJJ3yAjj/JjckXoNmIOm5cxWKmjJY19A==
X-Gm-Gg: ATEYQzyYcFUCb5siTGWAS2noCq6FQ7PQNPi+FCAlA/KmetH59htPYeMOByBmu3/k6+i
	7ovR2WUU81Tvy6gpTtP1f+Hp6W2KBcHx7wEsQS5c5venITfoJMN1g30uNa5g/1lhc6Cz2Uhc02n
	h2s5sbwU+T1Y+cscoIwWdP7gS2jxSdGt9FP2q6hLBWS8IbXWLO7RcS8AVDVYKcxjpClnOoXG/+n
	HFjlqHuVlxp6PqxY28//VlTyh9zWsyjDOmtanO8exLxz9keQc4Abi300cmfRYTHQfJIMsetWihU
	YnSMnxjGwJBIsgaBUwzqMk/15OJW4jCQTSonWV7bB/UpRXQX4vaAlRLzDfZsJ1fqJ4LPSu9jndi
	LjUKkm9wkFVCDcaJJBrmhrJ68keo+8xZfMudBYv6Vqpbsx0fRe4dFegOuWCtMVVW0/D0J3W6IJi
	hozuCdNgSVIpARpCKQsfqQywmrHNGpAmCvEM5xMS36bBdSNYidPUWnjqDExhy/U7AM407HDbobs
	As4LfSkV/mPXINsBM8wloQn3Q==
X-Received: by 2002:a05:600c:a413:b0:485:2fe9:336f with SMTP id 5b1f17b1804b1-4852fe93699mr24092615e9.30.1772898923352;
        Sat, 07 Mar 2026 07:55:23 -0800 (PST)
Received: from GLaDOS.lan (93-35-179-236.ip56.fastwebnet.it. [93.35.179.236])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48527681a3esm261097785e9.4.2026.03.07.07.55.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 07:55:22 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 11/11] arm64: dts: imx8mm-var-som-symphony: Enable PCIe
Date: Sat,  7 Mar 2026 16:54:47 +0100
Message-ID: <50e9dc6710d6b2fe48a509e463e04e6ae8b21e4e.1772898346.git.stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772898346.git.stefano.radaelli21@gmail.com>
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 8DE9222C937
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272485-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,variscite.com:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

From: Stefano Radaelli <stefano.r@variscite.com>

Enable PCIe support on the VAR-SOM Symphony carrier board by adding the
external reference clock, configuring the PHY and providing the required
clock and reset properties.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v2->v3:
 - Add clock-names porperty along with clocks

v1->v2:
 - 

 .../dts/freescale/imx8mm-var-som-symphony.dts | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 9a29c81b06eb..0ffee2d58122 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/phy/phy-imx8-pcie.h>
 #include "imx8mm-var-som.dtsi"
 #include "imx8mm-var-som-wifi-bt-iw61x.dtsi"
 
@@ -17,6 +18,12 @@ chosen {
 		stdout-path = &uart4;
 	};
 
+	pcie0_refclk: pcie0-refclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+	};
+
 	reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
@@ -205,6 +212,29 @@ &i2c4 {
 	status = "okay";
 };
 
+&pcie_phy {
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
+	fsl,tx-deemph-gen1 = <0x2d>;
+	fsl,tx-deemph-gen2 = <0xf>;
+	fsl,clkreq-unsupported;
+	clocks = <&pcie0_refclk>;
+	clock-names = "ref";
+	status = "okay";
+};
+
+&pcie0 {
+	reset-gpio = <&pca6408 1 GPIO_ACTIVE_LOW>;
+	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcie0_refclk>,
+		 <&clk IMX8MM_CLK_PCIE1_AUX>;
+	clock-names = "pcie", "pcie_bus", "pcie_aux";
+	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
+			  <&clk IMX8MM_CLK_PCIE1_CTRL>;
+	assigned-clock-rates = <10000000>, <250000000>;
+	assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_50M>,
+				 <&clk IMX8MM_SYS_PLL2_250M>;
+	status = "okay";
+};
+
 /* Header */
 &uart1 {
 	pinctrl-names = "default";
-- 
2.47.3


