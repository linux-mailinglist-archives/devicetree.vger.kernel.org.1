Return-Path: <devicetree+bounces-101979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D81D5974FEF
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 12:41:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FE081F251BE
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDA85185B7F;
	Wed, 11 Sep 2024 10:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="iFy3VlOI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A3A183090;
	Wed, 11 Sep 2024 10:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726051306; cv=none; b=Q5ncI7z3DAZxCfL9by1vfqJgB2sC/G/D8u5LXsVxzo6Fl5JqDJ+MbxCfOZ6xuwrepnuFaW8a3zrPQ8r8pKv/4N4PzsQu5+fqucrK3swAqIPmZQpYIqNnEkzHFWMEcUFLTuhrkr6gzCQSqPAs7Ov5S4JIdkw97Y93/cdfjXKBlPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726051306; c=relaxed/simple;
	bh=I20UKD7TQvAFU5EVSACkB6b8Z2rW1py26Q1UcKXaY+I=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=K7s6B/v1iFzNVZ5B4lD4V1FNgc+sFasT7xPw0D+raizIUzdb3lATSLkn3K4aPLxcmPf20KqI3gOMUnM5ZZfqT3zm4Fj/cbSS/BT+98oVRTr6u82i+M/AIu46XyYEJ51G4aGafqRAM6CeQ71hXK8t2Y+IMnI9Qsk2hBr4U7rqZR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=iFy3VlOI; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48B7nWjM005470;
	Wed, 11 Sep 2024 12:41:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	4fv1sQ8oNVXZbR6VQwj242LUMa622njNgXPkguclEbo=; b=iFy3VlOIok70Wf1D
	XUBfK0zXFXtae8gE8k6iHXkrjbNnU83Iipeq1g//KG6xywr3vsQcZ0BUpoNtzTeq
	0v3MgtPMhrMudblbrx9/TOkY9aY9NoZJXeHXNX/bLla2kX6p2fxPt/3Kyph65Ftm
	4bYJyZe2y87ORsYfgAweJUiD7v0Xd57bVtMyqHohpkJYw+3/W5nqNFqQ4rKYjhqq
	8yflMO5mcmi0PKad8ua33DF+7qW+07cuIBaezpXYA5EnLcg3riBp3SbMCFMpdKos
	lR6sOSdeocg5hsh8nQYUdiHvmlE/B9MJ/QRdplN7OU74/zE5HCkrMqbxNlr/0oKx
	Nu4Icw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41gyeh6fkr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Sep 2024 12:41:29 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id EB711400B9;
	Wed, 11 Sep 2024 12:40:15 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3043F265097;
	Wed, 11 Sep 2024 12:37:42 +0200 (CEST)
Received: from localhost (10.129.178.212) by SHFDAG1NODE3.st.com
 (10.75.129.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Wed, 11 Sep
 2024 12:37:41 +0200
From: Christian Bruel <christian.bruel@foss.st.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mcoquelin.stm32@gmail.com>, <alexandre.torgue@foss.st.com>,
        <p.zabel@pengutronix.de>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <fabrice.gasnier@foss.st.com>,
        Christian Bruel <christian.bruel@foss.st.com>
Subject: [PATCH v7 4/5] arm64: dts: st: Add combophy node on stm32mp251
Date: Wed, 11 Sep 2024 12:37:28 +0200
Message-ID: <20240911103729.2980431-5-christian.bruel@foss.st.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240911103729.2980431-1-christian.bruel@foss.st.com>
References: <20240911103729.2980431-1-christian.bruel@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01

Add support for COMBOPHY which is used either by the USB3 and PCIe
controller.
USB3 or PCIe mode is done with phy_set_mode().
PCIe internal reference clock can be generated from the internal clock
source or optionnaly from an external 100Mhz pad.

Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>
---
 arch/arm64/boot/dts/st/stm32mp251.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index 1167cf63d7e8..b596afec1b6e 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -7,6 +7,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/st,stm32mp25-rcc.h>
 #include <dt-bindings/regulator/st,stm32mp25-regulator.h>
+#include <dt-bindings/phy/phy.h>
 
 / {
 	#address-cells = <2>;
@@ -518,6 +519,21 @@ i2c8: i2c@46040000 {
 				status = "disabled";
 			};
 
+			combophy: phy@480c0000 {
+				compatible = "st,stm32mp25-combophy";
+				reg = <0x480c0000 0x1000>;
+				#phy-cells = <1>;
+				clocks = <&rcc CK_BUS_USB3PCIEPHY>, <&rcc CK_KER_USB3PCIEPHY>;
+				clock-names = "apb", "ker";
+				resets = <&rcc USB3PCIEPHY_R>;
+				reset-names = "phy";
+				access-controllers = <&rifsc 67>;
+				power-domains = <&CLUSTER_PD>;
+				wakeup-source;
+				interrupts-extended = <&exti1 45 IRQ_TYPE_EDGE_FALLING>;
+				status = "disabled";
+			};
+
 			sdmmc1: mmc@48220000 {
 				compatible = "st,stm32mp25-sdmmc2", "arm,pl18x", "arm,primecell";
 				arm,primecell-periphid = <0x00353180>;
-- 
2.34.1


