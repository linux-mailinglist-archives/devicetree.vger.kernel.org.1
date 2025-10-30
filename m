Return-Path: <devicetree+bounces-233234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFEDC2016A
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:51:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 54FF14E4A34
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9994F354AF8;
	Thu, 30 Oct 2025 12:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="qIfWGUmg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA18F341650
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761828668; cv=pass; b=MG6opyRer+P3TJARe2FI0/qzWvIzX6HOgPnfcIiBTEAV3kId/n0sAQbUMb32gVlEodvA9eDmMsYHMznltFyv0SYmU0D6JncoFMAL2yqDyyo9p/dEx8QQAKiT1jZEnwRqXDg2bOsJgcIQFssjOLxxksNT1TtaIEWwQAqszB0WExE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761828668; c=relaxed/simple;
	bh=MxFVFohRZKm6vYmHBOWCpbni7KD1iEQ0SAmlRMH+Sfo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O2t+y/Ab02/S60XEkPDot8FmLbM55fAD+vGgLFB9SvM5U5C9aE4PgfpznaFjJWHHWCXL3sMjtlkk5e38QO2VASwsI5VrMaeX8j91O25uAv4RhOWuSO/Eoei75TX/SCNCDiKRSPwmSNLm63x7LsXQhnWsshN9w75eh3A57SEXNY8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=qIfWGUmg; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=dJM31IhVnkrhRCrb49g6ODItYSKCRzC2GROjcDOi1x0=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761828609;
 b=HqZeHpDMN1fPUtJZViWYVrH3zBlPK53i1/xkqTx/A2tJ7UFMrRyPMdr8/JHL6JH1ZvmEDPs6
 Mo6/Khj6P0VXJy1p/I1gLMXJCtgtwMB97DXrjuBarQMmFJg2hKmRvMUTMYuCMFSQUj370z7wqsm
 K9rELxaa1GA12aNMI1MkyVK4bQEK/v/tz4LVtOYQZd1mYKew3HlY75UsR0rtNvubnnlDOvH/AtJ
 x9mGgVzPKscODVXTNqH7TeAEOPTGWaZ1ew1ZXNJ3doLq9v6bV1AambYz9/5cA0QwL2r9IS/0qoD
 TNnnafqkat6JQGUF7w2tJpXcFBVZMWP0tz5H4c/m39G1w==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761828609;
 b=oL0+RYMcXOm8pEe8itPArY03AIz9NrsHi8T7qBuwszqkbZHsiLE/zoT7p/GmM84yA00KK+k6
 Xa1SHtjIMH2e8Ur1dEqMosoP6+9kKUkskv9b2fpoh4Cnmx6JTYo3ev4clGXzgIim48KMJKJzqEG
 RyxJUwGvqNuc+IsZJwQ4LVTbb9zX4KSnaoq3FMSqEnY3MXm1s/8gfgwDq2N6LK7pkPlLY2XIOkz
 bq48gP6YtblZpA9o7utbNloDWIdT4U/Eds7YU5LMOLXCeugq0yGzmBRu4e0ZCewB7ILgeOqgrCP
 Q2G2hCilqHZiH0e+g3HIoeVc/9V0Yvh/XWcspTPWOuc3A==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Thu, 30 Oct 2025 13:50:08 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 9F4B6220D37;
	Thu, 30 Oct 2025 13:50:01 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 09/19] arm64: dts: imx95-tqma9596sa: update pcie config
Date: Thu, 30 Oct 2025 13:49:16 +0100
Message-ID: <20251030124936.1408152-10-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
References: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4cy3qG2sY6z1kNh4N
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:0baac1aa37dfad4f2d55415cd4bd5fae
X-cloud-security:scantime:1.795
DKIM-Signature: a=rsa-sha256;
 bh=dJM31IhVnkrhRCrb49g6ODItYSKCRzC2GROjcDOi1x0=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761828608; v=1;
 b=qIfWGUmgMHqrJ5tQ03b4jaexRZ+nu1nxHpWtGh3gqjTYAHtyOvhVU7KFMyycEsHvhu57egUC
 DhrxxDXAJ1c2kMComeXn/pJfHTZ/ooAUMVtxwnvAHn1n1PIzuKzbNptTaEFguN3LRTsNV4DKnp9
 IosEnYKKZjc6eXr8fK12QlFuh19V0XBqXKqSRQCluN/dJmw7mJfHgP+SJyHkaaT4wygp5H8sqLe
 aotlAYJfIrbFD5NBJWCH0W+yr475X1T0ok8i0Se00yVqCzOp3nbL8YbdipdNGntvvjTulQ8u7wt
 4drQ0YFucMAjU1ECPjz56du4wpVgIghZS3lPxWxi2xe5g==

Fix pcie clock config and switch from deprecated reset-gpio to
reset-gpios.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../boot/dts/freescale/imx95-tqma9596sa.dtsi   | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index 832c753abcd75..36da8ff8d1835 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -395,22 +395,24 @@ &pcie0 {
 	pinctrl-0 = <&pinctrl_pcie0>;
 	pinctrl-names = "default";
 	clocks = <&scmi_clk IMX95_CLK_HSIO>,
-		 <&pcieclk 1>,
+		 <&scmi_clk IMX95_CLK_HSIOPLL>,
 		 <&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
-		 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
-	clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux";
-	reset-gpio = <&expander2 9 GPIO_ACTIVE_LOW>;
+		 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>,
+		 <&pcieclk 1>;
+	clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux", "ref";
+	reset-gpios = <&expander2 9 GPIO_ACTIVE_LOW>;
 };
 
 &pcie1 {
 	pinctrl-0 = <&pinctrl_pcie1>;
 	pinctrl-names = "default";
 	clocks = <&scmi_clk IMX95_CLK_HSIO>,
-		 <&pcieclk 0>,
+		 <&scmi_clk IMX95_CLK_HSIOPLL>,
 		 <&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
-		 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
-	clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux";
-	reset-gpio = <&expander2 10 GPIO_ACTIVE_LOW>;
+		 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>,
+		 <&pcieclk 0>;
+	clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux", "ref";
+	reset-gpios = <&expander2 10 GPIO_ACTIVE_LOW>;
 };
 
 &sai3 {
-- 
2.43.0


