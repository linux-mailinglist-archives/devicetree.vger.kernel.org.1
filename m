Return-Path: <devicetree+bounces-266261-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBESIM23lGlmHQIAu9opvQ
	(envelope-from <devicetree+bounces-266261-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:47:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D177314F537
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:47:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFB3530B6215
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B97A5374191;
	Tue, 17 Feb 2026 18:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Is+BAFHA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DB2374750
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771353828; cv=none; b=P5PcnZ/0WT/J6j6Y9FzYGKedN9S0Y7lFQ57AxDzk+pImAJiNAFFWPE2a65O8b0nRDuEV2UN6bpLInN7WSjLSZCsZzrCqJuUt4/VuQXH8CPYly+ob5OtT6bhDy7fZgJOwMu46/81RaLE7XCcY2kDbVPfyDDWOYnih8rUpLy/QYfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771353828; c=relaxed/simple;
	bh=9zFjm7WzW3QzNYLbpdMx7MQocAGMtd66t+a7TsNWwsY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qqTcNuvQ1QPJMcgEm10y8bYmXJpzZ7Kh9jaTizg08UukTBTo2wLAyAoIKnes1TYcxkBaBa1Xrsg8Z90L4uB57afqaXVSPQ4acUOfgwR4FBm76F/NY3Snx+skHd4INsI4DS8qDy+KlT6x7Z83xIwIfhn+gPOGYAQodCZwM8BCPo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Is+BAFHA; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4836f4cbe0bso32114025e9.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771353818; x=1771958618; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xRFukmCvY+OSDRn1l1USalwiw2coOXo29afycHynqcQ=;
        b=Is+BAFHAjZ0SvHsexk9iC5VGP4wzWKRfBUyU1YoV3MmY6Ujmb+45sVzX7V+fkLwyEW
         /VfgT1NdCZWOl107iFSzTHbPC03uvF/EsVzEXwDZMMFsR5rvwFwfBBkrj682AhQ+rrWk
         6QVCt7jEoSTXRzUvwaDhvIcvHlFJ8J0m5Dp2hHBdO68U2KzWzSmmOZ8cKFVJoEB6d3RL
         ThvvapEL3Ar2gUbugs5+msPverXFSAXVST+lkDwoangFy/HapV5Khs5qO7/1jS1mGmFC
         Z2GJ5Tmds0rE2qfW/H2UMAJLDRX3kFfWqssqFjGR4OhmM7x0yj9WWpzo+lWg7Epbicx8
         y+Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771353818; x=1771958618;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xRFukmCvY+OSDRn1l1USalwiw2coOXo29afycHynqcQ=;
        b=kwn67x6HRp4R2ft75jAbEJUXVQ+pPuAc2a566TvFqJ2LV8uRP3zQzX0s1dslrE2vio
         zrZA8zUeMIxNmB8CLC14MP06m3SYgLCuqi2+HfejDf0HyfY0Bvsptg3PUSlBN7kS1GYc
         Mk9KKvIQlrL6MTiZU8zquDfUDmo3WZ9V3I5Htm+8r6rof6g3SOdn72NgJCltDD0P96KU
         ctbKi1sxe8dP+xfdTevkKqy7JGTHhueOvJrnM9PWH3MtvMo/IaZS5yvqKF9oiWRRRzA+
         Qej1HrKbet3M1zkQmzyZmcxRI9bjOhmJAgg5UNCedkhIgTDyU7O2fn72uSOrm2xh+B3v
         Ssew==
X-Forwarded-Encrypted: i=1; AJvYcCV2YGn0ysYBNv/EWUjSTp/1ZPx994D+qjaZXmrctKiWXKsI12nPIWdje/12AGAQajue111gwnFEGIEk@vger.kernel.org
X-Gm-Message-State: AOJu0YxagShoFs6UQk3jbHBpWi15DIyP3c5Y5UbwVcBv33KCXQCEWkF3
	v5FjinBKCOOknpSgpanRpNU+l4YYsxmKOHhON9mh46OlldyHwgl+Xecx
X-Gm-Gg: AZuq6aIsyDaQ7BIdCX5wX6HyU8eHXPulIpk2hmXfsRo1nuPYbBK1Q19YF8n/ACzgEyz
	cMeuJ1lQ4OsYYMWP+8HfGkLtPhJjXmKL1Tq97vIZ/mWd0cQXZzKXH4eT9P/BjXLKhci67gvqzqr
	hBpjMjOEyaJT8IVXS0tnM1XMJZKWfgK/tLPlNpu4YXHKFKiNZuLqV9jL0wUvjrCWMxCeCOrnznQ
	xSvX0DpG0xsaLVr2XfQhh7KmYrZwJ12eRln+UUxYwJPJCsRlFoXNUQJ+34DnsSeTeNZt2wy+rAV
	gY3BmBybJgPPWIn5t0sywGtCUNUtS1iXHBi+xtwaq/YrLxOytU9sUExmO196itWvtXmWsjl4PEK
	I/jCgrsZA0Ok0/yfcRXnxVV7u318Lbb96Aa/DcnLyK7rbNa2q9QOpgyJavZXsIWPIdDMw3TNs4n
	CA7OmGnovMCdM/nvrTuZlSOMd74lyi738XETZK4DPOxI1bjQ8nNOGpw0cOhM2sO2FgVBhsW5Av7
	w1VQHWPl5oZ89sbHUmgO2++MyepaQz/XIgm823+
X-Received: by 2002:a05:600c:34c3:b0:483:3d42:d04f with SMTP id 5b1f17b1804b1-48373a7b7bcmr244814115e9.37.1771353817903;
        Tue, 17 Feb 2026 10:43:37 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839731d7c3sm1096185e9.18.2026.02.17.10.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 10:43:37 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v1 11/11] arm64: dts: imx8mm-var-som-symphony: Enable PCIe
Date: Tue, 17 Feb 2026 19:42:45 +0100
Message-ID: <70bac0277cdbf455e2a7a83bf6da81e93b99e720.1771353301.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1771353301.git.stefano.r@variscite.com>
References: <cover.1771353301.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266261-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:mid,variscite.com:email]
X-Rspamd-Queue-Id: D177314F537
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Enable PCIe support on the VAR-SOM Symphony carrier board by adding the
external reference clock, configuring the PHY and providing the required
clock and reset properties.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../dts/freescale/imx8mm-var-som-symphony.dts | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 3d9658edd58c..8c1e2c77ba7f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/phy/phy-imx8-pcie.h>
 #include "imx8mm-var-som.dtsi"
 
 / {
@@ -15,6 +16,12 @@ chosen {
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
@@ -182,6 +189,27 @@ &i2c4 {
 	status = "okay";
 };
 
+&pcie_phy {
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
+	fsl,tx-deemph-gen1 = <0x2d>;
+	fsl,tx-deemph-gen2 = <0xf>;
+	fsl,clkreq-unsupported;
+	clocks = <&pcie0_refclk>;
+	status = "okay";
+};
+
+&pcie0 {
+	reset-gpio = <&pca6408 1 GPIO_ACTIVE_LOW>;
+	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcie0_refclk>,
+		 <&clk IMX8MM_CLK_PCIE1_AUX>;
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


