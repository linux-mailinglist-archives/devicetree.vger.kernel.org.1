Return-Path: <devicetree+bounces-134393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1D99FD5AD
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:42:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E6D23A34CB
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 15:42:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81D2A1F7573;
	Fri, 27 Dec 2024 15:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="nyx6qur0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262A81F5433;
	Fri, 27 Dec 2024 15:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735314163; cv=none; b=gNVVDLzHCov3/4D3/Ml+CxpRYQTbvafkdV5ISsjKT33PrlmkWh3Q48HXBO2JsEeQ/2c4XzKJ0/Mv4qyh0M67lqhGuhTVJ2Yk7j1m1ozzpC5YLJQVtAXmA5tlZyBXmha1AUWqAELDo7e6P3VHFbvDG13sT95k9n2WPY5RdA07+Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735314163; c=relaxed/simple;
	bh=8mRE4En6RhYiVT8i+Ue7qQwG8+2GFsQ9myuHHur+b6g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VvKx/2b+IdMrojm+jhM9K/dzpwz8A2mAcLcHSZPQuO7e+j0jH8kPybG3yuaQc8p8W5UFm887AnwRxq7wyOa5WdHRYOt+4COLOhtWo6YASGClO2Im+ISrmRbaIlYBjr0eWOU04ksV6xK/3A+SWqSYsa+Mno+CS6YpoV/ltMYi2aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=nyx6qur0; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735314158;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fpAoN691ZMq93DDFamwdYsr4hx8aHUG0+VLaMt58XnA=;
	b=nyx6qur0Mtqhp/NKCI8DlvrPDj77GRamoTO4n2Kl+Lzrh6yjlT07t9r35Ahyuv0Q9uR8+y
	XGWuAqw/teJHX1yPhBNErnfBlf5lKTBfF/vwwFYENrEVW9eiF2ViYcB0mHOVI25H3OUm1g
	DivoLe4jeA+jmgYUZ8V0uTBnczrgfFDll2IQOagt+vFVvfpsA0jenPavvAPO8biFddZkBf
	vlN/ko5lCRTydOgrkN1PBU+yhFLRBtMg+8LsgCxE9yvIB5BGW4C1G2/o3Wqw7qFaAUUNeG
	K0yY2HMPB8F8lKzRGVkgwdg4bbIXT9bM7Qj0+cCj0skVDexnWFQy7HiaEOGMmw==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	maz@kernel.org,
	tglx@linutronix.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Use "dma-noncoherent" in base RK3588 SoC dtsi
Date: Fri, 27 Dec 2024 16:42:23 +0100
Message-Id: <ecf3505af1a690ed8b975f60d095331778593339.1735313870.git.dsimic@manjaro.org>
In-Reply-To: <cover.1735313870.git.dsimic@manjaro.org>
References: <cover.1735313870.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

The preferred way to denote hardware with non-coherent DMA is to use the
"dma-noncoherent" DT property, at both the GIC redistributor and the GIC ITS
levels, [1] instead of relying on the compatibles to handle hardware errata,
in this case the Rockchip 3588001 errata. [2]

Let's have the preferred way employed in the base Rockchip RK3588 SoC dtsi,
which also goes along with adding initial support for the Rockchip RK3582 SoC
variant, with its separate compatible. [2][3]

[1] Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
[2] https://lore.kernel.org/linux-rockchip/86msgoozqa.wl-maz@kernel.org/
[3] https://lore.kernel.org/linux-rockchip/20241222030355.2246-4-naoki@radxa.com/

Cc: Marc Zyngier <maz@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index d97d84b88837..bd2385b6bd7f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1972,27 +1972,30 @@ &i2s3_sdi
 
 	gic: interrupt-controller@fe600000 {
 		compatible = "arm,gic-v3";
+		dma-noncoherent;
 		reg = <0x0 0xfe600000 0 0x10000>, /* GICD */
 		      <0x0 0xfe680000 0 0x100000>; /* GICR */
 		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH 0>;
 		interrupt-controller;
 		mbi-alias = <0x0 0xfe610000>;
 		mbi-ranges = <424 56>;
 		msi-controller;
 		ranges;
 		#address-cells = <2>;
 		#interrupt-cells = <4>;
 		#size-cells = <2>;
 
 		its0: msi-controller@fe640000 {
 			compatible = "arm,gic-v3-its";
+			dma-noncoherent;
 			reg = <0x0 0xfe640000 0x0 0x20000>;
 			msi-controller;
 			#msi-cells = <1>;
 		};
 
 		its1: msi-controller@fe660000 {
 			compatible = "arm,gic-v3-its";
+			dma-noncoherent;
 			reg = <0x0 0xfe660000 0x0 0x20000>;
 			msi-controller;
 			#msi-cells = <1>;

