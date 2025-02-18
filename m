Return-Path: <devicetree+bounces-147889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1F2A39B71
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 12:51:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC7B01749D8
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1AD424293A;
	Tue, 18 Feb 2025 11:49:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-1908.mail.infomaniak.ch (smtp-1908.mail.infomaniak.ch [185.125.25.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FFB624110F
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 11:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739879383; cv=none; b=D5Peo9RaEMQP3IhCg29JzxzEd5otv1J/ycxBSJT77v1g6x5OM6RNiRjvlB8Z3H+NetaImmlxObgDPPY1TfaHTehLsy7O6TgxthnyWePbDzA0kAlAJOg+Qe4Lr+CY6PhQCFIWtKAbBt5jf4RTlS+i+aoGw4oslyhDgVwSXKEs9R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739879383; c=relaxed/simple;
	bh=R2a4tbDKSBugqAO0zjzbVr3epAy4dYQ+sI1ml2rRAdI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G49Zc2NdcTyTn4j1m5F0aL+L2sof5a/5atF+f2AqY3DjpuYwm/xLYA4JikHvMqUNxNrkU6cI+coeQ+8Bjmgy7i70EiokAUN9Sa6bIAzC54NzAXgbiui8OvofDczzQdcWgQ0S1/a2eH8BDaAOuSG2BFvLWQlJeODa2fVBIql+mi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=185.125.25.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YxyVj6m9wz79p;
	Tue, 18 Feb 2025 12:49:33 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YxyVj3DxqzmC2;
	Tue, 18 Feb 2025 12:49:33 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 18 Feb 2025 12:49:20 +0100
Subject: [PATCH 9/9] arm64: dts: rockchip: disable I2C2 bus by default on
 RK3588 Tiger
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250218-tsd-align-haikou-v1-9-5c44d1dd8658@cherry.de>
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

RK3588 Tiger routes I2C2 signals to the Q7 Camera FFC connector (P2) but
nothing on the SoM itself is on that bus, therefore it'll be up to the
adapter connected to the Q7 Camera FFC connector (P2) to enable the I2C2
controller, if need be.

Thus, disable it by default.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
index 81a6a05ce13b68a93e381f7051c1f861c1f11a25..0ab7032924cf60768f848e0d5ecbe32c189dbdfe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
@@ -173,7 +173,6 @@ &i2c1m0_xfer {
 
 &i2c2 {
 	pinctrl-0 = <&i2c2m3_xfer>;
-	status = "okay";
 };
 
 &i2c2m3_xfer {

-- 
2.48.1


