Return-Path: <devicetree+bounces-136180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D47A04203
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:18:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 247A616715C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFAB11F76A6;
	Tue,  7 Jan 2025 14:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="qwL8DB8L";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="IyqZO+j5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0911F669A;
	Tue,  7 Jan 2025 14:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736259097; cv=none; b=T2MVxyTvSTYjzXhMqRXnYU8tihQg4yuLVaCGdHNmbmopqWfxZ5rD+1WHtBWN2br3ewYaO+9bylvo/NLMpG8jvQggdhzAqFQ6ol8FadZ62XqN+FP4IiDIxhI5rJNA7RtAP46j/zeQvaKL/eeiLFu2muWXAwhLevp6nT5p1Q81RHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736259097; c=relaxed/simple;
	bh=JJoe3hW9Qvj0wFen/TGTJdt2PplkG7NHuWL2DSDET+8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bf62DRescnRYr3q6r4n7vUo85H5fC35SQWBQlpWZwAaAxzdt+p+UMhXc/R9xeGCTnQVdMaTiEAuyFJHvdgKZmfeBlkhm5b4fMj+ZA408qNzkzNjMFsgQX1mUesXC5Mk7E9q9xh0oJQiKYFwu8VwR9Rw17yk1LyyvbU4HvE2M/9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=qwL8DB8L; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=IyqZO+j5 reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1736259095; x=1767795095;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=RQt81lT3ohtYAwl2Xf5CAr0qwa/PSJBKzCsUu5z2In4=;
  b=qwL8DB8LuCp8v0Ao9haCOEqJHfj0wNWrcJTx7oOoZ8McrZHyjwigDQiG
   spORwDF5QBedoVlxx9r496VahP5b/rvPqqgkz1AYEuBwN49jSMQE+gC/Y
   iI6rUHs1FHZXsiRj5fEfPD3pTKGxa8AH69Khe4oBnwZ+thwHCgVSXhHrp
   1xw61U3QgkYpKoeKl/IvhvepcE2x0yMVVS68tbSyZTjilSe5hPv97N4p2
   yr2JWDEhiWa7gscrcedpaFBDoCIpiuV1IqKm6s2xxaEpPOGI1xI2mdj3n
   egkk0wWWV7A4ryrAoLnTDO2s98encufnU9pB1TzBBy4x0MYcW3SvmGAj7
   g==;
X-CSE-ConnectionGUID: GLtVm3fZTMmsqRBmuV9kRQ==
X-CSE-MsgGUID: F2pTd1wFT8uM+EXe50cxyw==
X-IronPort-AV: E=Sophos;i="6.12,295,1728943200"; 
   d="scan'208";a="40896501"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 07 Jan 2025 15:11:32 +0100
X-CheckPoint: {677D3614-38-31397509-E321C4C4}
X-MAIL-CPID: 36E5F9A0CCB1A3BE4EBBA98E1D59E6D5_0
X-Control-Analysis: str=0001.0A682F19.677D3614.00E6,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E00AE164D17;
	Tue,  7 Jan 2025 15:11:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1736259088;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RQt81lT3ohtYAwl2Xf5CAr0qwa/PSJBKzCsUu5z2In4=;
	b=IyqZO+j5FUsicsd7p+hguhlDgGewHix/apTdD/ff71NZKUyyv2Iuxw7vG8gDZkfVpuISbi
	KW5UVdz9FZIprlhiLG71mW27LiKUP9bvenWMzmr817UNRTNG8ybJRBLkzBg8/OVYR8aEO1
	7XU5fAW5gT66XdxVZtk0CxqsJZkgU2DSzpwlBPbxOdJu5HcV8jEV4BV96HqUVx4aXB4C+g
	usfmqcTkP+eIGzzJItJfzBGj7O81cLpUPEy7jrzCDiI+ZbhvKxMVR/k1K4whI8rQRTEZ2e
	0rq/34Wz6CH7JhXFllHiSHJ5PWc9qay+paTVNiqzUuBaKm8nG/q1YAYXRLFmDg==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: freescale: imx93-tqma9352-mba93xxca: sort pinctrl nodes
Date: Tue,  7 Jan 2025 15:11:15 +0100
Message-Id: <20250107141117.984652-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250107141117.984652-1-alexander.stein@ew.tq-group.com>
References: <20250107141117.984652-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Sort the entries alphabetically.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../freescale/imx93-tqma9352-mba93xxca.dts    | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts
index 8e939d716aac8..861a028a1b165 100644
--- a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts
@@ -755,12 +755,6 @@ MX93_PAD_GPIO_IO03__LPSPI6_SCK			0x051e
 		>;
 	};
 
-	pinctrl_pcf85063: pcf85063grp {
-		fsl,pins = <
-			MX93_PAD_SAI1_RXD0__GPIO1_IO14			0x1000
-		>;
-	};
-
 	pinctrl_mipi_csi: mipicsigrp {
 		fsl,pins = <
 			MX93_PAD_CCM_CLKO3__CCMSRCGPCMIX_CLKO3		0x051e /* MCLK */
@@ -769,6 +763,12 @@ MX93_PAD_GPIO_IO11__GPIO2_IO11			0x1400 /* SYNC */
 		>;
 	};
 
+	pinctrl_pcf85063: pcf85063grp {
+		fsl,pins = <
+			MX93_PAD_SAI1_RXD0__GPIO1_IO14			0x1000
+		>;
+	};
+
 	pinctrl_pexp_irq: pexpirqgrp {
 		fsl,pins = <
 			/* HYS | FSEL_0 | No DSE */
@@ -783,17 +783,17 @@ MX93_PAD_GPIO_IO09__GPIO2_IO09			0x1200
 		>;
 	};
 
-	pinctrl_temp_sensor_som: tempsensorsomgrp {
+	pinctrl_tc9595: tc9595-grp {
 		fsl,pins = <
-			/* HYS | FSEL_0 | no DSE */
-			MX93_PAD_SAI1_TXFS__GPIO1_IO11			0x1000
+			/* HYS | PD | FSEL_0 | no DSE */
+			MX93_PAD_CCM_CLKO4__GPIO4_IO29			0x1400
 		>;
 	};
 
-	pinctrl_tc9595: tc9595-grp {
+	pinctrl_temp_sensor_som: tempsensorsomgrp {
 		fsl,pins = <
-			/* HYS | PD | FSEL_0 | no DSE */
-			MX93_PAD_CCM_CLKO4__GPIO4_IO29			0x1400
+			/* HYS | FSEL_0 | no DSE */
+			MX93_PAD_SAI1_TXFS__GPIO1_IO11			0x1000
 		>;
 	};
 
-- 
2.34.1


