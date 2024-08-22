Return-Path: <devicetree+bounces-95826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2AA95B6D6
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 15:33:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BAC351C23B7A
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 13:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E1061CB305;
	Thu, 22 Aug 2024 13:32:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from muminek.juszkiewicz.com.pl (muminek.juszkiewicz.com.pl [213.251.184.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A394181310
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 13:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.251.184.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724333553; cv=none; b=r3ErQCzA/D9EzPk0kynIwTI1nhgYmmx/pmHd72m83FgFN2LTjqTtmx4CzjNluJKfSaHaowXb1SV58JPjlwYECqAZnpC48Y7boNXPNH7AeDAxOmQAfiS+vgvpmF4b5cJ65BQYcQ08BjiXBIzuTxOg1IEZ5kF4whETDk0T8IMph2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724333553; c=relaxed/simple;
	bh=ERkoOJeWmb38YImwYTa/py3uhH3V6lgfJZWh4hPp4eU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V92rtYJmjCKH50wLRWArGKmtVlBPiM+m2JymD3XH3Hyrw1MU7Vj5EdpliqxhG7WVVXBdtdXi956UMFb3VtLQABMluvvf/kaB8EZZgoE4DvEG2qdQvbsxHbU2EDXcKd5ExzZ6N6+n+bcvDRmDlh5SFzGfo/EHHupYBV7nYKZ5cMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org; spf=fail smtp.mailfrom=linaro.org; arc=none smtp.client-ip=213.251.184.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=linaro.org
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id ACBDF260984;
	Thu, 22 Aug 2024 15:32:23 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id HIS5tonwIR9c; Thu, 22 Aug 2024 15:32:21 +0200 (CEST)
Received: from puchatek.local (83.25.211.12.ipv4.supernova.orange.pl [83.25.211.12])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 73B702602F0;
	Thu, 22 Aug 2024 15:32:21 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Thu, 22 Aug 2024 15:32:05 +0200
Subject: [PATCH v4 1/8] arm64: dts: rockchip: define pinctl for SPI M1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240822-friendlyelec-nanopc-t6-lts-v4-1-892aebcec0c6@linaro.org>
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
In-Reply-To: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
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


