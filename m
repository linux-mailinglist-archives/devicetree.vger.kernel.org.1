Return-Path: <devicetree+bounces-233236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 852C5C2016D
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:51:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 01685188746F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13CA8355042;
	Thu, 30 Oct 2025 12:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="AcBU3M5J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay47-hz3.antispameurope.com (mx-relay47-hz3.antispameurope.com [94.100.134.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5499346A18
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761828668; cv=pass; b=fYmBEi8aCqm6iNMJhCix8sLQ23Wz2Iq44CJohWlfE6SgSn52saaxQTEwVIlP5j82D1yy/zxyhogp0vBqSTpFPzvbndXhFn7vZqOUopMKMdLqcjqlptCnghoCooRg85+ZabZXtnVB2oWFYSUUMa3vhbudzOqae79vihdVHL8rJ3E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761828668; c=relaxed/simple;
	bh=TLtc63oA8rsVyxrQ/YtnZvIuF5UIyZJhCDrvQsCFiSg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KYXMtuAFh3zB1l1s8GGBbv7lQMxQpWHugvbkDjT0uK4+FP2G2VaYrjVCOSCMRC437iz8wfibVgwBzFQDejrvzJdj7RgjM/k4ncVz/TjNQYndbhTEJyydG2DtvsSg4ZJ94tcaOsefYNw2Wh+mKzMKC7gK+KV9DUUeY5cLouBJohY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=AcBU3M5J; arc=pass smtp.client-ip=94.100.134.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate47-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=y4zFQ3e3A9iazkDCS1HKUeYMC1gBPcCfcKqKlQwEs3Q=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761828607;
 b=cQJlbhWVziR4ObEmarQV7bMWk5DmotlFNRwOV4fQOHcGytx4i6bIqzGrozq/JGhGdfE+ytkM
 eHoy21rB+Z+N3jQ9YyVkQqR05Yd2HcEQzG0Gp7XbF8t6HRPvVtFf41vdyazLtCcwFSgP/kzU1kR
 kGfPghBCny4Wfc5DjvwCajUvV6omutUxoCit2bCCXyGX9mOtpyu8jSMCKFPoO5vFMLpHhGcos8N
 xQWpCqO+LTRnE2dB2TpC84W67RZBVh7LwWE9AiCblCoGmP3jQzvEd0UyGaZfwR+H4wQY5hAtZ8I
 TrXt+uiGCGreLqmBeJYPxrrw1H1L1LGMx3KSQZEKLs3KQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761828607;
 b=G3ZoJo17lh5vV3FInIuPZinUnVFV7m0LEKdYZnP114DetKgHZetJr2/h5guB7sZx65dFot/F
 IQcK53bVRhHqQvkALF/R1KFc1nIwVIPGs+WNlErijb20Czu2INytWQwh1hdAEEjC+zRCiygmlqS
 iSw00FcUSBIyN5rlAezAETvCJ8c5U1N9tlQuryTMBv8ellkQCLZ1pu0SEfPYVhdj8NoYDSRA+w+
 3KfjnGzuYJtEdQz6e6Y4MCQO+PRmIdQ1gk0FiAWnPhnrSD0u7jtCobDSawFeYNuN3Z7cnjf4lWP
 dZf4JZO99G/L+WhQ+eouo+2AJriihNo5c/OK0tZ4DzDMA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay47-hz3.antispameurope.com;
 Thu, 30 Oct 2025 13:50:07 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id C48DD220BF3;
	Thu, 30 Oct 2025 13:49:57 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 06/19] arm64: dts: imx95-tqma9596sa: move USDHC2 config to SOM
Date: Thu, 30 Oct 2025 13:49:13 +0100
Message-ID: <20251030124936.1408152-7-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay47-hz3.antispameurope.com with 4cy3qB3ns8z4Mb38
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:441aea839c344cb72b836383b2e3b063
X-cloud-security:scantime:2.677
DKIM-Signature: a=rsa-sha256;
 bh=y4zFQ3e3A9iazkDCS1HKUeYMC1gBPcCfcKqKlQwEs3Q=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761828607; v=1;
 b=AcBU3M5JPI+RhnpS4j49gf1uqQJFh26MWvJ9RXCtNeCPxsv59+4V10AVuLJBpow7NhGloN7n
 T6/OUN5rZASjRJaKRpEUWDA26bbrI6Aeanf073o90vcBSeOMFYM3FN+/zXitdADZdPbVlGdAm2G
 G0E3yB+DsEnJP1cyBmVn/VE4mbGcQIYpRD+twfDFymN8Zc9TANpyzDCTJfFRZFQGRl6CTk0yStK
 AWYIBnvVA2pnwLioSZu8WWbPwptL+6pGFvB4SdU15OtIv5IUd/DEuo9V5Lgo7dxUnU4lmx/FqNy
 vU+Bm1ZBeGhoGF20HVZAVIADvNaJNHWSOka6Vkqn42SfQ==

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

The muxing and other features are mostly determined by SOM,
so add it at this level.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts    | 10 ----------
 arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi  | 12 ++++++++++++
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
index 43ed55e57d2a3..02bbaaf298930 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
@@ -301,17 +301,7 @@ &usb2 {
 
 /* X16 */
 &usdhc2 {
-	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
-	pinctrl-0 = <&pinctrl_usdhc2>;
-	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
-	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
-	pinctrl-3 = <&pinctrl_usdhc2>;
-	vmmc-supply = <&reg_sdvmmc>;
-	cd-gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
-	no-1-8-v;
 	no-mmc;
 	no-sdio;
-	disable-wp;
-	bus-width = <4>;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index 8da9e368c1f4d..166439e251c53 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -453,6 +453,18 @@ &usdhc1 {
 	status = "okay";
 };
 
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
+	vmmc-supply = <&reg_sdvmmc>;
+	cd-gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
+	no-1-8-v;
+	disable-wp;
+	bus-width = <4>;
+};
+
 &wdog3 {
 	status = "okay";
 };
-- 
2.43.0


