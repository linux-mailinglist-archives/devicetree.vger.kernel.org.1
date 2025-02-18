Return-Path: <devicetree+bounces-148032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4B4A3A57A
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 19:27:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86A3A3A38F6
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 18:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F4562356B5;
	Tue, 18 Feb 2025 18:26:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7A62356AA
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 18:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739903218; cv=none; b=r3bRw2UBlTeKRyURy0wp6DdHWVll6MXv5oVFym/Ieu8KG4GvUkGUDQ2lUr3lISWpgjEqMWmszz53YUW1yuSjzlYSrBDuCRvXySgg6K92ylRfgCNwbs4gXKVR7vwfFL0CIL46gGiHdOb/HJMkwZ3S5CDOoSmGsEMdQpCkzS68Gvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739903218; c=relaxed/simple;
	bh=Z5PJWTXHUpdDNMvkpgBC58f9J1RgsGcmAkDtpVMsujk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=drLAqC/0d6HC3h5sdmM1xqCM2oUTarO1/SF78qIqHXpVjomdJmCSI/wzPALNaczcLcPVv1USMv3c6jiVbq9yEh1XaY7rDIbUtATklpYDBS5hfigwo+6S7aiOG+TOhNA7gD5d6J/S1JvyhTC4EsE5M3mhStf5GATG9/uUuzzlsFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tkSIy-0006Bh-10; Tue, 18 Feb 2025 19:26:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tkSIx-001dVE-1d;
	Tue, 18 Feb 2025 19:26:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tkSIx-00A9Hm-1F;
	Tue, 18 Feb 2025 19:26:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Feb 2025 19:26:45 +0100
Subject: [PATCH v4 5/6] arm64: dts: freescale: imx8mp-skov: operate SoC in
 nominal mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250218-imx8m-clk-v4-5-b7697dc2dcd0@pengutronix.de>
References: <20250218-imx8m-clk-v4-0-b7697dc2dcd0@pengutronix.de>
In-Reply-To: <20250218-imx8m-clk-v4-0-b7697dc2dcd0@pengutronix.de>
To: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Frank Li <Frank.li@nxp.com>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Abel Vesa <abel.vesa@linaro.org>, 
 Marek Vasut <marex@denx.de>
Cc: linux-clk@vger.kernel.org, imx@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

To reduce heat generation, the Skov i.MX8MP boards should run in nominal
drive mode with a VDD_SOC voltage of 850 mV.

At this operating point, not all frequencies that are achievable with
overdrive mode are possible, so import imx8mp-nominal.dtsi to clock down
the clocks.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
index 59813ef8e2bb3a3d5672ba1c5776cf0e45fb6862..9dc36517e90c16dd10d14f55d8d5582e845b0f60 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: (GPL-2.0 OR MIT)
 
 #include "imx8mp.dtsi"
+#include "imx8mp-nominal.dtsi"
 
 #include <dt-bindings/leds/common.h>
 
@@ -237,8 +238,8 @@ pmic@25 {
 		regulators {
 			reg_vdd_soc: BUCK1 {
 				regulator-name = "VDD_SOC";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <2187500>;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
 				vin-supply = <&reg_5v_p>;
 				regulator-boot-on;
 				regulator-always-on;

-- 
2.39.5


