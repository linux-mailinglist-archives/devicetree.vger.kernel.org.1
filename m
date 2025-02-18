Return-Path: <devicetree+bounces-147892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6A8A39B81
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 12:56:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67FE73B61B1
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:55:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3161723FC67;
	Tue, 18 Feb 2025 11:55:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-190e.mail.infomaniak.ch (smtp-190e.mail.infomaniak.ch [185.125.25.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B06243360
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 11:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739879720; cv=none; b=FM3GWeSvNdIxTIwSh9GeXuU+e+C4ruU8h4Xm0NY8t1cDYvGEAKD4bTTdzfSWL4NdatA/eF+Y7ALj6OYhw8fSigW9jl/wfXPz7JHjrb+35U5MAj9oL/OZoJP6XizvgSUH17AqOFvbJVg7Hp5sG5/g+pL284x2pqmqqO2CWDc82sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739879720; c=relaxed/simple;
	bh=antamsgd2NQgdmKLWFJ3mDIWQtnYSTJgGEW/DQy2igc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TLHTVs+wz3y/dEy4DO51RmqqMTVcnPGGBHr8DYMzUdy/nU0qNKPBkGOm8fBSOVqbFK4Hhl9Efr31XimFUyj2jhRohpuGnQB5dWibEmch98DRrmhxCPijCyAXx6RtxXz2dOQ+hZ9CjqyS1s/T3Bi9h+7BcE8ufsx3Ze5uIgla934=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=185.125.25.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YxyVg6P1Hz79m;
	Tue, 18 Feb 2025 12:49:31 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YxyVg2l5Zzk6M;
	Tue, 18 Feb 2025 12:49:31 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 18 Feb 2025 12:49:16 +0100
Subject: [PATCH 5/9] arm64: dts: rockchip: enable I2S0 in Haikou
 carrierboard, not Puma DTSI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250218-tsd-align-haikou-v1-5-5c44d1dd8658@cherry.de>
References: <20250218-tsd-align-haikou-v1-0-5c44d1dd8658@cherry.de>
In-Reply-To: <20250218-tsd-align-haikou-v1-0-5c44d1dd8658@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

I2S0 is routed to the Q7 golden fingers and, on Haikou carrierboard, to
an I2S codec. Nothing aside from signal routing is done on the SoM,
therefore it's the duty of the carrierboard to enable I2S0 whenever an
I2S codec is present.

Such is the case of the Haikou carrierboard, therefore let's migrate the
enabling of this controller to the carrierboard DTS instead of the SoM
DTSI.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 3 +++
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi       | 1 -
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 327fbc0a56655d5e544a99cedbfb1bcd39ad769a..df8a8ec582ecc6830ef11be372f204057759d1f3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -185,6 +185,9 @@ sgtl5000: codec@a {
 	};
 };
 
+&i2s0 {
+	status = "okay";
+};
 
 &pcie_phy {
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 548bd7b486c185c80be87d433f149c3fac65ae8a..399c86bcbfefa5c667f11f31b3491eb693cfae76 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -447,7 +447,6 @@ &i2s0 {
 	pinctrl-1 = <&i2s0_2ch_bus_bclk_off>;
 	rockchip,playback-channels = <2>;
 	rockchip,capture-channels = <2>;
-	status = "okay";
 };
 
 /*

-- 
2.48.1


