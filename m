Return-Path: <devicetree+bounces-173848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE72FAA9D19
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 22:24:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D41B1189F7DE
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 20:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61E0D227EBB;
	Mon,  5 May 2025 20:24:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A2541FFC50
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 20:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746476686; cv=none; b=C5Qd6Yzp1IwtA1FVC1V+CBd4L49W8UlPk+rc5iynpnNDJZl7Mi5LBUkTw0+9xJoxq8bGzi6kkAXBUzyOPq1cVs4JUm/wvZciADzW2PBUQYU8pYU9cKMEiBT/bblTHmc0/4gfSb0k7dIShEaX10XOMSSMO2qVDstO8FCJcUhn72Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746476686; c=relaxed/simple;
	bh=LZ791ZeXfNg+rUEbjt6NyyA6acBDMIH05NFtfeDvWis=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=A7CKlIVfeh4kwceTRYOTvNhhP/IvzC/LwWipow6yrBejlhpnjwWooQRhCO7P1UdcEVOg7rrvdlnU9XTIwBYHLd2DyOSnwOiWnK/3LZXLHobuRwIx5Sv+mYbkR36T3drSJZOFNkcaLsIFpGcZSmd4mXAqI1kxE0mpPywpK106uGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3C27339;
	Mon,  5 May 2025 13:24:32 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8F9043F673;
	Mon,  5 May 2025 13:24:40 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Cody Eksal <masterr3c0rd@epochal.quest>,
	Philippe Simons <simons.philippe@gmail.com>,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: allwinner: a100: set maximum MMC frequency
Date: Mon,  5 May 2025 21:24:16 +0100
Message-ID: <20250505202416.23753-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.46.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The manual for the Allwinner A133 SoC mentions that the maximum
supported MMC frequency is 150 MHz, for all of the MMC devices.

Describe that in the DT entry, to help drivers setting the right
interface frequency.

Fixes: fcfbb8d9ec58 ("arm64: allwinner: a100: Add MMC related nodes")
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
Hi,

the Linux and FreeBSD kernels limit the MMC bus frequency to 52 MHz,
unless explicitly told otherwise via this property. So this patch
increases the performance of HS-200 eMMC from ~44 MB/s to 129 MB/s.

Cheers,
Andre

 arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
index 597c2b82693b0..ecc04be243c01 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
@@ -267,6 +267,7 @@ mmc0: mmc@4020000 {
 			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&mmc0_pins>;
+			max-frequency = <150000000>;
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -282,6 +283,7 @@ mmc1: mmc@4021000 {
 			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&mmc1_pins>;
+			max-frequency = <150000000>;
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -297,6 +299,7 @@ mmc2: mmc@4022000 {
 			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&mmc2_pins>;
+			max-frequency = <150000000>;
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.46.3


