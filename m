Return-Path: <devicetree+bounces-26589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8EB816FA2
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:07:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51B8A1C23E5E
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4D134237E;
	Mon, 18 Dec 2023 12:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="Akw18inm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF54242369
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904117; x=1734440117;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=lI+BDLs7vftFwRdJ9CQWwYZ/T8g6H50fnaRNWJHnRL4=;
  b=Akw18inml0+YL7UR1SIIkwfTa+22xSuh6GMOrPitaULaXeLEkvlmErK/
   oXGeyygnFnObiNjdTZlQhgDC+YX0mdfEwYFyMDtG/AnHoJ6GTT8Y7NnF+
   h7VgHpQUkEcGoNmwtBqWM4DmhDRie6/GY5vr2NfLuzU3lsJK4BspJDDf9
   vxK8Uf+7BNyqZ8ThkrxNm5U6OeOn7YIUtdGL821/gY3pY0QeeWxz/5YSC
   ND2KH4Ru8GAryyvOtMur4Rs86sXEFMMhxHwgbp6K8kl1K8hpC+gDnqK2A
   2T3n3Gn0tVPp55r1WCcMrRhf3/SbU5VkTMzYufkavidyQ4q7xqomjIMop
   Q==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562716"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:55:04 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 349FD2800A2;
	Mon, 18 Dec 2023 13:55:04 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 21/23] ARM: dts: imx7-tqma7: Add missing vcc supply to i2c eeproms
Date: Mon, 18 Dec 2023 13:54:57 +0100
Message-Id: <20231218125459.2769733-22-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
References: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixes the warnings:
at24 0-0050: supply vcc not found, using dummy regulator
at24 0-0056: supply vcc not found, using dummy regulator

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
index 14fd9455c162..0cf0304a8db6 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
@@ -149,6 +149,7 @@ m24c64: eeprom@50 {
 		read-only;
 		reg = <0x50>;
 		pagesize = <32>;
+		vcc-supply = <&vgen4_reg>;
 		status = "okay";
 	};
 
@@ -156,6 +157,7 @@ at24c02: eeprom@56 {
 		compatible = "nxp,se97b", "atmel,24c02";
 		reg = <0x56>;
 		pagesize = <16>;
+		vcc-supply = <&vgen4_reg>;
 		status = "okay";
 	};
 
-- 
2.34.1


