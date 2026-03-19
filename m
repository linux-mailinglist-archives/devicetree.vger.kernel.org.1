Return-Path: <devicetree+bounces-277993-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SO1hHcpEvGmAwAIAu9opvQ
	(envelope-from <devicetree+bounces-277993-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:47:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D244D2D147C
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:47:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 28C543149FD4
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 535603F99DD;
	Thu, 19 Mar 2026 18:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SQyhhUs2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327BB3F881F
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945725; cv=none; b=p/nScROzLylVelpPuX3sIEA5rjcTlhmV4tx/RuHXHN10Egra+SpC3/23PcKtF+VLmihso+pkrc3eLfJwqjZhI8M8uBwJ4pNSR05txySByid2yFBheBkG4Zbkq/GznZaCyx0Cv19uCkOLgRvA6xj8ZnG+cERwMuZKHYCtRotKQEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945725; c=relaxed/simple;
	bh=NBG95zW6i90tiCFEeQUOmZfkJk45aW+Rt4XZK3y2dsg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LhOhRJP9DbKgpQElt5X7iQgEDPjmxigXxIzXPTiABHYKTJAHTBro0VLH4kQX3dsQt/1S1MGD9IdY53M7jIowiFRCnavWx9IpvuTqhr/m156o1VnnY6ti+jKRFANGnfnRUthqIxpGoOdxUBxfGScUnfptNi6IKFDD3pIf/VKcL58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SQyhhUs2; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4853c1ca73aso11125005e9.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945721; x=1774550521; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tlCReu0S/csjkL3628OmCFhensI/pGag/I8DUVwMu3g=;
        b=SQyhhUs2WSYQ0ww70Cdo5mTqUHK93otqzUayCnKaPoH6QYLUj/jWmz+7Bu9+PPdN2h
         G9cloo18gleQXOo8WHnG6YTeNhDMULAwO4RF6ntomeLqn/WPAuNX6DEsRyv69JD16aeS
         xT9AGPKCM3tcl4OcP5GPzwLgiaDGTHX4JTNkTEDBuT93DNKgPEITT8kM3Z3X7OhEOPEH
         pmwMADo/kuhUn2TLeNIySH9QyFfM24PqEuBnXwgNPYPUHL3x9sR93F7U7XfF2JXNKDVb
         IhRal8e0iMhFG6ERlgWUrhiTPc3uo3+Usd6AIFh47a7H+IN4opd94p1Wg88INpm5Jv+8
         D4ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945721; x=1774550521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tlCReu0S/csjkL3628OmCFhensI/pGag/I8DUVwMu3g=;
        b=HX1RFcaDOaXB/e+hfUUnZYkg61fHmzigC0QbwmmXHJp8zTylFEHj+Kj0VLfBu55iy5
         pmLHrhEGwPGZeKgwdVyxwEmaIYHcx1zoTZ1M2djTV5h5vxtOmqTWl+RRCTF7ElOLNqOp
         QFSOEKNogci7pzr3iOP4yZMuQjMSqMQ5EkxjsvFNRI/+m21zf2LndNPP4eaXUNpXjdEp
         bNNTIPrbW0mPzZRdZSJxVvqLxFWpb7BS8fizEJ9lrxYMDup7xCTyZd8JSylr0ialTYaz
         bAfDCCQgPG8hif2T3NK2OG0Ny3Wx9P+ChAwb4NetXZm9bnQ8LWkXaXZSbESc3ZzUQf3+
         Q81Q==
X-Forwarded-Encrypted: i=1; AJvYcCVN6h+s+TFyb/Ez+ZaaAdOhml8d2P7TtLi8aV8mQyQEdjXktGBRB2jl7EfyIjIgIsILRirAEAdwwHRt@vger.kernel.org
X-Gm-Message-State: AOJu0YwIYIzjm4sGxWNZuYdAfD0KsPd57+P7L5Rm4/aCQDjnazZ6trFi
	CLTxkE7dEf/KKbgQrbMydAXkxPOOCXcSht+5uKN5wPJVTJBY6Mfl9dai
X-Gm-Gg: ATEYQzwUA6WLB+CvLKMRGLnJP0wxHMW31XinINSBMCld38H8Uf/Ue89ItQal0X8Wtt5
	3NyfCo/FXgdr9bpQekWsnYFKyCTfnDxhSaARcaqqeIzc0fqS7CLSfoQHWlhJd8ghUx80smISXT0
	+Al/M3GsI696+Hkv/2ZzzKld2f85HV02y2S41nsDMbYrQMnV0oaXrj7owVjCd230fZWhFLwL/go
	hhoKu5kNTH3G9JfUy+djpgBxDiXUMLTtekQxF2MMx44t0mQMcuDblaAD+GMyTLSMbN4FlzmYqYW
	uC5XYwiPAhbhafgJjyAKoFK9ZqaQiUzbvtl1YkOGnJKN1xTcusdxYLUi3gNv50YblfbpMi6iEN8
	G33TihF/T8v17+0u31WneJ2xPztf5M7aFcnmcff/XYTcbP7F9DJw9ZihKm7nJ7G90DcuX/1mIyT
	lmhxEw8pX7aKukzWliI8zlAu6a+FNaVJ/V9cu5yzUil5OhxiP/RqZYAlJzugkx9JLB3kaUiSZH/
	k/3SL4NKSABjH3xrz9ypGcRz4KAdVtdR69Yrlk=
X-Received: by 2002:a05:600c:19d4:b0:485:4278:24f0 with SMTP id 5b1f17b1804b1-486ff03d9d4mr2150745e9.30.1773945721076;
        Thu, 19 Mar 2026 11:42:01 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b1fe65sm77289195e9.5.2026.03.19.11.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:42:00 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v4 11/11] arm64: dts: imx8mm-var-som-symphony: Enable PCIe
Date: Thu, 19 Mar 2026 19:40:31 +0100
Message-ID: <6c4f4ee33a3c8cf2c36de57bf4f0a706334c10ed.1773944896.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773944896.git.stefano.r@variscite.com>
References: <cover.1773944896.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-277993-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,nxp.com,pengutronix.de,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.834];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:email,variscite.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D244D2D147C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Stefano Radaelli <stefano.r@variscite.com>

Enable PCIe support on the VAR-SOM Symphony carrier board by adding the
external reference clock, configuring the PHY and providing the required
clock and reset properties.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v3->v4:
 - Move vendor properties to the bottom

v2->v3:
 - 

v1->v2:
 - 

 .../dts/freescale/imx8mm-var-som-symphony.dts | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index fbad5d2d4a97..857325ef4461 100644
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
@@ -198,6 +205,29 @@ &i2c4 {
 	status = "okay";
 };
 
+&pcie_phy {
+	clocks = <&pcie0_refclk>;
+	clock-names = "ref";
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
+	fsl,tx-deemph-gen1 = <0x2d>;
+	fsl,tx-deemph-gen2 = <0xf>;
+	fsl,clkreq-unsupported;
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


