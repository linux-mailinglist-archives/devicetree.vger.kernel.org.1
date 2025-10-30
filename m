Return-Path: <devicetree+bounces-233237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC69FC2019A
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:54:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3018D3BBF8F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:51:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A42A35504A;
	Thu, 30 Oct 2025 12:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="rytKAoib"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A303431F6
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761828669; cv=pass; b=LUuMLVFuaWlx+sIQVfSCHE73qUlaPbYzKVtwL2DlLtMoiG9VNFA/IIv45qHhNGKhTKU3TWkaXvdAUEJ7wDjibNRfWNrGVc3pWJu+572j14S7yG92U+z2FbkA8BUEgRALfmgdkXpLvLTuFAOIlnMA9dB9n5IcghXrjNjCMlyNf0o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761828669; c=relaxed/simple;
	bh=a8HQgogvK4zUKTZ4FzXujcdIdsCm+/5nLbwQ0VbXq8Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WvfMrBuNOafv0qh6if0Suhk9asS5JgYvJETiRjtXERlYcbpsSNzQBqQZuWN1ZilQbpS0EZV+WPIA9lH5KLkRk0ZjZrMLIa7pgPI9lrzrqWBPtEXtXjGOJKxfYOWXsEX3tMCW3vHMejBS859TL2N4flZWHbh/RA3SI3xTRgf7S70=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=rytKAoib; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=PK5ZZtJo+tl9vrIOwQupM3QlXvu4Jm4LnZkxXhrCHtU=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761828608;
 b=k0ssDcvCam97p7Zt6gGc88Il78Ty9iZtRRWb0dbXee4LPB3mhfsDe4Vh0ijg6zTrma35Ia+1
 YnMWmKJ4VqxrVmWrz0LE51dHYBHsir+Ydv+/v2iiaEtEthYa+4uFuBsJqIpnoOeqE8on01d6OlL
 ORZkKhjku6Y8vyOTaq7coB67XciEL3xkdUmY2iEPmSUhheR0pOo6nt/jlSq66Yl6kFHGKNYOGp1
 8NlkaXKulHMjblCRA2aWeq9j6lB7NSRo+ZKQeKcNTTs0X/rn6EHRdx8QFPc9oG+JJ5HNyZx8+e9
 euTYplmM7E0HLXvb/k8QYx97dEv+vWEQmGY7wali3aYhQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761828608;
 b=AC1Tty0VBd1toNvWFR8WyNRiVsYifhkPb2KHwMSQPMS/cemQMIYgK+nrH5klXuIK5//wDUZ9
 RmzjYROpYGm1qSF2XTYbhlhWqRXgxuzHAB7Jhb9MSehPKph/37ItfuK8+KwABa1DY4y8oFWUToQ
 Q/6MM9F/6CDNl8Cgj+y1PvVyPASaucrmPZ0smSwO6AAEuVeEWma0TsPCWcYrLUHClelvU7e9poP
 HgrdXP949O5/IoF0CrtCQDmIxA0vsqYGAFeWgGcgTWQHQnyyi4wWAM1xfYdpVX843QjC8782RJr
 f15r4EWBt3ht0aR3iP57E7JOmw1wMIGkqyFFrOnjIEvnQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Thu, 30 Oct 2025 13:50:08 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 7E327220D26;
	Thu, 30 Oct 2025 13:50:00 +0100 (CET)
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
Subject: [PATCH 08/19] arm64: dts: imx95-tqma9596sa: move pcie config to SOM
Date: Thu, 30 Oct 2025 13:49:15 +0100
Message-ID: <20251030124936.1408152-9-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4cy3qF1SYTz3yc2t
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:6e315f0fcc0e47734d335f45771da7a3
X-cloud-security:scantime:1.865
DKIM-Signature: a=rsa-sha256;
 bh=PK5ZZtJo+tl9vrIOwQupM3QlXvu4Jm4LnZkxXhrCHtU=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761828607; v=1;
 b=rytKAoibzzrNu3EUTjlLwdSVAQiJVvxS+Q7kfq97DKw467wEVfvtT17zYNzRmxCCirVp9e80
 tOJnJz7cQ6KG3R6U2R5VOdzCPLGKbew4wNYiF2EsCluoIV1QOcyVg964jkR4jDVxCd9DTQXARE6
 QMT6HEVBbhn2jNwwWCtyP/3ZLyuXpj/gmg93YeUx1U8jg5FbcoTGJ9vay3qLK638RRD8hlE0npI
 iW+DXgdtheXkfdEzXAbXJMVUh35BH24O8h8la0ocZwYKena3lv+tAhj0I+yH/hFC/nUo7Etukxo
 ihbhdQbwAg3iDAAZCTq4YbGM+IC+hTJkz1S7hMvcNEzHg==

The muxing and other features are mostly determined by SOM, so add it
at this level.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../freescale/imx95-tqma9596sa-mb-smarc-2.dts | 16 --------------
 .../boot/dts/freescale/imx95-tqma9596sa.dtsi  | 22 +++++++++++++++++++
 2 files changed, 22 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
index 5c94d8cf28c4c..8caf0c68ba9fc 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
@@ -225,27 +225,11 @@ &lpuart8 {
 
 /* X44 mPCIe */
 &pcie0 {
-	pinctrl-0 = <&pinctrl_pcie0>;
-	pinctrl-names = "default";
-	clocks = <&scmi_clk IMX95_CLK_HSIO>,
-		 <&pcieclk 1>,
-		 <&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
-		 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
-	clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux";
-	reset-gpio = <&expander2 9 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
 /* X22 PCIe x1 socket */
 &pcie1 {
-	pinctrl-0 = <&pinctrl_pcie1>;
-	pinctrl-names = "default";
-	clocks = <&scmi_clk IMX95_CLK_HSIO>,
-		 <&pcieclk 0>,
-		 <&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
-		 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
-	clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux";
-	reset-gpio = <&expander2 10 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index e7edeec712dcb..832c753abcd75 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -391,6 +391,28 @@ ethphy3: ethernet-phy@3 {
 	};
 };
 
+&pcie0 {
+	pinctrl-0 = <&pinctrl_pcie0>;
+	pinctrl-names = "default";
+	clocks = <&scmi_clk IMX95_CLK_HSIO>,
+		 <&pcieclk 1>,
+		 <&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
+		 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
+	clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux";
+	reset-gpio = <&expander2 9 GPIO_ACTIVE_LOW>;
+};
+
+&pcie1 {
+	pinctrl-0 = <&pinctrl_pcie1>;
+	pinctrl-names = "default";
+	clocks = <&scmi_clk IMX95_CLK_HSIO>,
+		 <&pcieclk 0>,
+		 <&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
+		 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
+	clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux";
+	reset-gpio = <&expander2 10 GPIO_ACTIVE_LOW>;
+};
+
 &sai3 {
 	#sound-dai-cells = <0>;
 	pinctrl-names = "default";
-- 
2.43.0


