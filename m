Return-Path: <devicetree+bounces-95511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3929599DF
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 13:30:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9B4CB26432
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 11:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC29B1D048D;
	Wed, 21 Aug 2024 10:32:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from muminek.juszkiewicz.com.pl (muminek.juszkiewicz.com.pl [213.251.184.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBCE21C6F45
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 10:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.251.184.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724236343; cv=none; b=NqFbg3y4MRnfWNf39FC6GXJmU2UEhBxifYDRp5dEiU9efBZZgMFT18V583wp3O2y/XZGGwZDaklwIEwx1HgB1npP2Ay1xc2/8clTZW5Bu9kB/kSCodr2H5W1j11glIT2ITqJfIRAzvOYd/Tq12orgUtPMZVWNU8aq4av8wQja7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724236343; c=relaxed/simple;
	bh=ERkoOJeWmb38YImwYTa/py3uhH3V6lgfJZWh4hPp4eU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NDDhONjTGVC8QAO0DofJq806BITzSFn1KMp7vrBDJXV5KGkf9DTDnC7l4U6/3ji9lTpwPNatUN5VR34Kn87zF3axs1a1HbF2xaeGas1w9J/5wVRIlVsLn3XWeZynH0ssRTOc1VQeztqkVGXmE0mUGdx5ft43qleVpwKAGOe9UeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org; spf=fail smtp.mailfrom=linaro.org; arc=none smtp.client-ip=213.251.184.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=linaro.org
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 4BC03261A0F;
	Wed, 21 Aug 2024 12:26:32 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id vamAc1oms5Ws; Wed, 21 Aug 2024 12:26:30 +0200 (CEST)
Received: from puchatek.local (79.186.29.241.ipv4.supernova.orange.pl [79.186.29.241])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 8E436261993;
	Wed, 21 Aug 2024 12:26:29 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Wed, 21 Aug 2024 12:26:13 +0200
Subject: [PATCH v3 3/7] arm64: dts: rockchip: define pinctl for SPI M1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240821-friendlyelec-nanopc-t6-lts-v3-3-3ecfa996bbe0@linaro.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
In-Reply-To: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.0

There are definitions for M0 and M2 pinouts while NanoPC-T6 uses M1 one.

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
index 30db12c4fc82..75d5816b6fa4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
@@ -407,6 +407,23 @@ fspim0_cs1: fspim0-cs1 {
 				<2 RK_PD7 2 &pcfg_pull_up_drv_level_2>;
 		};
 
+		/omit-if-no-ref/
+		fspim1_pins: fspim1-pins {
+			rockchip,pins =
+				/* fspi_clk_m1 */
+				<2 RK_PB3 5 &pcfg_pull_up_drv_level_2>,
+				/* fspi_cs0n_m1 */
+				<2 RK_PB4 2 &pcfg_pull_up_drv_level_2>,
+				/* fspi_d0_m1 */
+				<2 RK_PA6 5 &pcfg_pull_up_drv_level_2>,
+				/* fspi_d1_m1 */
+				<2 RK_PA7 5 &pcfg_pull_up_drv_level_2>,
+				/* fspi_d2_m1 */
+				<2 RK_PB0 5 &pcfg_pull_up_drv_level_2>,
+				/* fspi_d3_m1 */
+				<2 RK_PB1 5 &pcfg_pull_up_drv_level_2>;
+		};
+
 		/omit-if-no-ref/
 		fspim2_pins: fspim2-pins {
 			rockchip,pins =

-- 
2.46.0


