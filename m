Return-Path: <devicetree+bounces-136423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AAEA05215
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 05:27:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B89801889148
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 04:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01DAE19E99E;
	Wed,  8 Jan 2025 04:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="bHXXh4nQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E7614F9D6;
	Wed,  8 Jan 2025 04:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736310415; cv=none; b=HduMc/YLTrn+wUOnUAnF7vIxm4uY8vO4F4lv5LgT5+lwaCc1Zjr9INnH1QdEQrLzOTliqM7s5biWt0xobk+Yd3VbA0Ykr5benNoO4DQoQu2/zjPEHBb4csoKVefHbHP/cpqg42TJNzmaf3X+kk2AIUrDcplb7cPJsoIEyc+Q15k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736310415; c=relaxed/simple;
	bh=UZK/0ylh2L41ooqU+jf4Xr0ukficvONl3qK4CX00fFE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=pi1Ej9aNSCNpUjctknbK0SSDRQbfKX5oMT2QLq2u00OLK0bcSWqicSjtcgupZFkwwA2/NVMVKOt4XV0M9B1KDc8aTwgOXg61UNlv3Pa5hdG0RnZamud93TZ/Xw7ADjJGU0G4JzjgHfhnGfCtS1hC8DkvAAq98fERyTPt7lR9JLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=bHXXh4nQ; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1736310411;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=33QtUlxOPOmb/cO56wq3MJ9fAtcDp8zjHLoxp9vv/4I=;
	b=bHXXh4nQ5KdPBDuBvMx1k+rYvc1hMzszD05ecS8fF0eWPBhAqyEto0JsUhGEbsVCmzBQd/
	vm4w/gzzUUwPxc4Njahs9n1tEGw8GxJkBbxt/hmVdT9RrK4atBFXjepbpWJ4WWu2oF+bxe
	/C0Xd40UvNgZRUCKJ5KRj2XJLeF7uEsHJ2BZ4OdP7uB/KaSUbATJRTswRIrEdihUfksf83
	F+qlFbETy/GyjvKkw0LHpoHWpVU4o+pjbMFdAmfW7vJmTM0M50+p+qRJZoR+mtOpK/72LE
	PrVqvDN1Mc8ejefFky4uuyCNkKkMig8VOBDfk86bN8QLv1CeHyk8i1lLvw/LIA==
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
Subject: [PATCH v2] arm64: dts: rockchip: Use "dma-noncoherent" in base RK3588 SoC dtsi
Date: Wed,  8 Jan 2025 05:26:45 +0100
Message-Id: <fa1a672dae3644bb3caa58f03216d0ca349db88b.1736279094.git.dsimic@manjaro.org>
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
Acked-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---

Notes:
    Changes in v2:
      - Demoted the series to a single patch, as suggested by Marc [4]
      - Collected Acked-by tag from Marc [5]
    
    Link to v1: https://lore.kernel.org/linux-rockchip/cover.1735313870.git.dsimic@manjaro.org/T/#u
    
    [4] https://lore.kernel.org/linux-rockchip/87bjwxoyzo.wl-maz@kernel.org/
    [5] https://lore.kernel.org/linux-rockchip/87a5choyxg.wl-maz@kernel.org/

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

