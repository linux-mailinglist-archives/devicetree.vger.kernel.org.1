Return-Path: <devicetree+bounces-247908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 628ACCCC8EE
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:48:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B1CD2309D60D
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 15:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2910934D4FB;
	Thu, 18 Dec 2025 15:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="IRNE0NCV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay95-hz2.antispameurope.com (mx-relay95-hz2.antispameurope.com [94.100.136.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F420134D3B9
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 15:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.195
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766072714; cv=pass; b=N2DLdEVhx+EmPut4692Fln/+s/INXCNyLPyIFwWoYGGTiz2Ll4Ap6Vl1h5t+bwtW7MMWVknoCyazahZw8X8k8bezyNtdtXtm9lyO4gqQPNsdh5UP/5upRJnWt+wV2tmKxAkVcysfTkIURtD6hPovgh3+KdlDZwaDWJMk6Ye2hPI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766072714; c=relaxed/simple;
	bh=lYmjpxP0uO6WQqzTJeVwXGBg09KGDuuPwir+lNZhhrQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eGXlkohWJnm9fEIfe7SalKvu7TUGdfqji4pju/326b4zVq7tomBLTUV6pgR7A/7qgB72gMJzk8E3cSYsTtaz3amNNFlzmgsInxcOB9RSU+/Wo9wd3a8Pk0haqMnl2y+laTkCh+D4UUc8T+xqEAnQ8Ga0gbP/zBSnotp4+Mzl82k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=IRNE0NCV; arc=pass smtp.client-ip=94.100.136.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate95-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=cNktqPdORa2qnhbyWV/LXLPJYGLHHIks8TSaavnZQv8=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1766072672;
 b=Dsi8Y40AAxjBKUowwU9J6NHCmexto6zg0sXgHM8ZbnNeKdkGf6UK2ej0wRKd7KNdBGxKYogt
 Cn1yiLn8z/4JY8Hkq/9h4wExC/gXBIWDHPhGSMMHOrkA4Ebeuu/m1Yru4CEVYhdVdrSigatJX6/
 QZuyu2BAzeevBrZoBUeLk3xgJft+4v9vfFhyxUmiyuR5PkqOS5mxhBupAU49o55oFy75PkQ6cAf
 8ySK3YXTREEJRkj0Rbr2oAv9i9GpA1AG1OjwWnuZcrsB/fV1e1CtEjb6J3HsJRYz7AaE7I9gK1S
 Dxpj62duL3ZiGmyKHMzkSRlI9ZVARAOsFXDZK5CHSVjgw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1766072672;
 b=HfkEGsRnBMc9qvfa7QbASP4L2mkzukk60OMGwDZe6i/2Ob1f/gq36D3agcDN+DUsaaSsrh08
 9rArCo8xmNy1nRRDLWGnrYGQqOu7nFHRp+cPmx0yEXIHwF/goRWnfbf9pQAv/IQlfly1iz/7yYF
 NNpKUMGyePVs5ypLZPOlf9aP4OOEHosgFgXQ/otzvVtzh8Mw4DCDqjysGs4MSuM4y9JCrEGoeL2
 AVXkMFX6DB2Cy3sbFLNKyt+jI3B3oZ2fs0xGkrfzNtxlgPNawuC0QbpaA6wwEa8IkZgSQerJYK/
 6jaFP6+NcPSAYCMV7CaEXM4gBdDyqRrULfVLLny5mrZmQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay95-hz2.antispameurope.com;
 Thu, 18 Dec 2025 16:44:31 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 6EA1B220619;
	Thu, 18 Dec 2025 16:44:25 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Peter Chen <peter.chen@kernel.org>,
	Pawel Laszczak <pawell@cadence.com>,
	Roger Quadros <rogerq@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-usb@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com
Subject: [PATCH 6/6] arm64: dts: imx8qm-tqma8qm-mba8x: Disable Cortex-A72 cluster
Date: Thu, 18 Dec 2025 16:44:08 +0100
Message-ID: <20251218154412.1524249-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251218152058.1521806-1-alexander.stein@ew.tq-group.com>
References: <20251218152058.1521806-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay95-hz2.antispameurope.com with 4dXFMt4MRFz2F8Jm
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:30ac5d452f02eb17521dada3ca6d72f8
X-cloud-security:scantime:1.560
DKIM-Signature: a=rsa-sha256;
 bh=cNktqPdORa2qnhbyWV/LXLPJYGLHHIks8TSaavnZQv8=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1766072671; v=1;
 b=IRNE0NCVAgARPFxcdniIYD7suq3JKktuCqWmC0mz20/73d8rCqQVkb0GLoAHG9/6Rf9YagRK
 aGe8tLMWZPfCiLcfVfhbInpRlN6Bxuxmn5ocm/iB98R/9tUQkkIKwvxa1cvw67EFcCGNMtThbLL
 0DVfMFbdNaanTRrwqUJBckHPHlnsRq8kaEfSi5cM+sZA1tZ6bC52KOWm+DUdOqXci1Lv80BFByO
 sVT9+tpqNon+e12Y4a2Noode0h/DpTXfOMcLbg+kKxuiGJlwpa6mCFEnP4ZM380uR0XqEGuK6D/
 Iaao94cDs30r6Szm0CkX4Eu0o15bjEd0a5OxX27DMRbpw==

Due to missing workaround for "ERR050104: Arm/A53: Cache coherency issue"
disable the whole Cortex-A72 cluster.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../dts/freescale/imx8qm-tqma8qm-mba8x.dts    | 39 -------------------
 .../boot/dts/freescale/imx8qm-tqma8qm.dtsi    | 13 +++++--
 2 files changed, 10 insertions(+), 42 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-tqma8qm-mba8x.dts b/arch/arm64/boot/dts/freescale/imx8qm-tqma8qm-mba8x.dts
index ba19c3c17c496..4a5ab14ddc550 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-tqma8qm-mba8x.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qm-tqma8qm-mba8x.dts
@@ -296,45 +296,6 @@ map3 {
 				};
 			};
 		};
-
-		cpu1-thermal {
-			trips {
-				soc_active1_0: trip-active0 {
-					temperature = <40000>;
-					hysteresis = <5000>;
-					type = "active";
-				};
-
-				soc_active1_1: trip-active1 {
-					temperature = <48000>;
-					hysteresis = <3000>;
-					type = "active";
-				};
-
-				soc_active1_2: trip-active2 {
-					temperature = <60000>;
-					hysteresis = <10000>;
-					type = "active";
-				};
-			};
-
-			cooling-maps {
-				map1 {
-					trip = <&soc_active1_0>;
-					cooling-device = <&fan0 1 1>;
-				};
-
-				map2 {
-					trip = <&soc_active1_1>;
-					cooling-device = <&fan0 2 2>;
-				};
-
-				map3 {
-					trip = <&soc_active1_2>;
-					cooling-device = <&fan0 3 3>;
-				};
-			};
-		};
 	};
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-tqma8qm.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-tqma8qm.dtsi
index 718c792259a65..57d06817aab63 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-tqma8qm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm-tqma8qm.dtsi
@@ -11,6 +11,13 @@ / {
 	model = "TQ-Systems i.MX8QM TQMa8QM";
 	compatible = "tq,imx8qm-tqma8qm", "fsl,imx8qm";
 
+	/* Due to missing workaround for ERR050104 */
+	cpus {
+		/delete-node/ cpu-map;
+		/delete-node/ cpu@100;
+		/delete-node/ cpu@101;
+	};
+
 	memory@80000000 {
 		device_type = "memory";
 		/*
@@ -171,6 +178,8 @@ &mu2_m0 {
 };
 
 &thermal_zones {
+	/delete-node/ cpu1-thermal;
+
 	pmic0-thermal {
 		polling-delay-passive = <250>;
 		polling-delay = <2000>;
@@ -196,9 +205,7 @@ map0 {
 					<&A53_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
 					<&A53_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
 					<&A53_2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-					<&A53_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-					<&A72_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-					<&A72_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					<&A53_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 			};
 		};
 	};
-- 
2.43.0


