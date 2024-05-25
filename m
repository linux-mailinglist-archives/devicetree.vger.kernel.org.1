Return-Path: <devicetree+bounces-69155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A208CF068
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 19:19:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4BD4281D29
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 17:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 498E91272BC;
	Sat, 25 May 2024 17:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="bWwDs9Me"
X-Original-To: devicetree@vger.kernel.org
Received: from omta036.useast.a.cloudfilter.net (omta036.useast.a.cloudfilter.net [44.202.169.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B404D126F09
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 17:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716657562; cv=none; b=tbkG6VWNTkxLiAaI12LBXYvuZjb0NVXcRNT6AtC84vkmsFtsJFMbRz9S1Guxu5jAtKB98ajhFknJVh+2bij6nm1t2GrEksMQ/zu3ENjLUCrq7qpEsAbVtwk+FgHA3GpkvJn7sLgmqNK7tpj5ZvflFgv3DvMmMDcEMlM9JTEUj+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716657562; c=relaxed/simple;
	bh=mXfaldkmQp9zoxainTSGgMi/YAMt/fNUyWQZOsHCuQ8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MKlHCY3UFct6CSEs9S+dZV6CtWMyRNa8YeUfSRbyTvKnIcdtTeI32uRJGvbH+utRbo5hnuHCgEjUpP+VakcRuii950oiCkrR3z6aqNZSsCGvEU1qT0necVdnWjTg8Id4Tc/1H+e7tTRl3GJDWWek9PbIpc9AETTG/RtobIEXUz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=bWwDs9Me; arc=none smtp.client-ip=44.202.169.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6002a.ext.cloudfilter.net ([10.0.30.222])
	by cmsmtp with ESMTPS
	id Ai6dsvBzhAidIAv33sbXXd; Sat, 25 May 2024 17:19:14 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id Av2zsrz8QiKqRAv31si7EG; Sat, 25 May 2024 17:19:12 +0000
X-Authority-Analysis: v=2.4 cv=I9quR8gg c=1 sm=1 tr=0 ts=66521d90
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=TpHVaj0NuXgA:10 a=oz0wMknONp8A:10 a=vU9dKmh3AAAA:8 a=a9P5MKdw97X2SnwXmdQA:9
 a=kY_tvdopC4hwhjKiM0yX:22 a=rsP06fVo5MYu2ilr0aT5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
	:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=jD/YoOEgXZvli1lq03GtvXqlgEPL32eow8Ak1hlEoaU=; b=bWwDs9MexH9P/9n/UyOFrSyx5u
	jG6HuRvty6Z0Y6jbdIx7TrvuBUmoy4UpkzqGUf6xyD6cEe/XuULSDah6XSEw9Izj2zZILDxasISLH
	a+utkFp2uvtguApbHtq0ao2oFiLC7bKh2xUQs4mGTVxiWJ5IQaZpoPjiWCaAJkdWFIX3XisEf9SgH
	iBd6MZxZmvX3kkO5gKEPnTu0M73akA3My1WI/bEZOWSsk5QwMgVdttiONnfmfvXln3eOd8S2f0aPI
	sxBXnHlAWtznNnEnlLOavI9lBInd0+0fsygVfZwGwu88zP5wEipV061JQCHY7Y6mCg4gd2sAIlG3Y
	I+cVJz6w==;
Received: from [122.165.245.213] (port=56054 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1sAv2x-001NCX-2L;
	Sat, 25 May 2024 22:49:07 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Parthiban Nallathambi <parthiban@linumiz.com>
Subject: [PATCH 1/2] arm64: phygate-tauri-l enable pcie phy
Date: Sat, 25 May 2024 22:48:53 +0530
Message-Id: <20240525171854.2165241-1-parthiban@linumiz.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1sAv2x-001NCX-2L
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:56054
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 2
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfErRno/oLnWrtfDK0eOLD7ORokeJmApQhLv0qSiW1Z6P5ty72NYTtrmUKzohZ5/xp8TP+uIwF4ePyPSw/Vbd989Psp+EehJNkUmmANhJnW04EB6vnq7d
 fBln/C4uzzM242dNkDfKWBRWu5u6wnlWHSVSMj9HlPEZO0J/XxX1WuQSFgX4ICFPOVTi5I43LEzUgylaAe4+mBK8K9IFrKcO0gs=

I210 intel ethernet controller is connected to PCIe. Enable the PHY
to use the ethernet controller.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 .../boot/dts/freescale/imx8mm-phygate-tauri-l.dts      | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l.dts b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l.dts
index 27a902569e2a..ba6ce3c7f477 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l.dts
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/phy/phy-imx8-pcie.h>
 #include "imx8mm-phycore-som.dtsi"
 
 / {
@@ -185,6 +186,15 @@ &pcie0 {
 	status = "okay";
 };
 
+&pcie_phy {
+	clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
+	fsl,clkreq-unsupported;
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_OUTPUT>;
+	fsl,tx-deemph-gen1 = <0x2d>;
+	fsl,tx-deemph-gen2 = <0xf>;
+	status = "okay";
+};
+
 &pwm1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm1>;
-- 
2.34.1


