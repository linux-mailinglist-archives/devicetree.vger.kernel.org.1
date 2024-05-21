Return-Path: <devicetree+bounces-68245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 316238CB538
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 23:13:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6304A1C21A14
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 21:13:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E659914A0A0;
	Tue, 21 May 2024 21:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="pixuky9x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380D614E2EC
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 21:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716325875; cv=none; b=Ff7YCrUPovR5U7vT5nl2uKOJX/IZerAT7z3SNHpvsOBuXAO32cEctTTGgFnLZJ+tOm9RMf1pQ9APpRiPrA6O3oAAQXrXn7OMERtwyE6kEPNM7hYvU6oOmux350SPkGOLHCgfmiaKWLXThZYEqMyfz5Xb6oq7W0X5K66Uxs7GBEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716325875; c=relaxed/simple;
	bh=ryYghDgFIk0dVzXcyqjtN2kmDRTlKaO5Ht1IKqhI02g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=miuceyPpxL3yjQGACmLiQagrZuNAd2dn7xHR5WsVqnDm5yqCO+YxbKKfcgglwHcuX2bMcm+J3NpMzdkA5vhLMtzk8GfqaqEnzUVo4ynIOS0kWL3SSL/qvUj8sOTW4fWVVJF+FUPqfYuDrPwXmAHkUapuDD2NnGTvrAequdHrHlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=pixuky9x; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325871; bh=eRQ+GqMMyX9va5/1fB0L7QxYQhHkZ2nYtteJt4bcTqY=;
 b=pixuky9xU41ZaDZ5yJWWm8NN/lxYjNmk2YpyxhwaGihCvyV/UNMi1Fxxcyp78Cyqvxum9kcOV
 5thzwXgLEq7ZmpsdkTVQ7HSdIqQRhyi0wVC9PzK8sInZOg3a2RSRBBrVP5QuroRBkeCYAEXprKJ
 j3lTpmkOeiopiL6FLCshW9OYMOFNzoAc4bzbS68nsMBRuka2Q4zolciRwWI3Fd9ADi/8eDT+pvy
 /gRhMA3NcmrtCZlRvBGjOxMvN2Zil0duYc84/AwKr9lmK2RNes/AypGL3ELbrbNVgDG7XmD7BTB
 BXWwi6ibd0AUdKqMHMyBWN7Ve+4N6aGLu2OcYgGodarA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 08/13] arm64: dts: rockchip: Add OTP device node for RK3308
Date: Tue, 21 May 2024 21:10:11 +0000
Message-ID: <20240521211029.1236094-9-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 664d0dec8b6b0c828344af2b

The RK3308 SoC contains a controller for one-time-programmable memory,
add a device node for it.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index c00da150a22f..6531ede13af9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -556,6 +556,30 @@ saradc: saradc@ff1e0000 {
 		status = "disabled";
 	};
 
+	otp: efuse@ff210000 {
+		compatible = "rockchip,rk3308-otp";
+		reg = <0x0 0xff210000 0x0 0x4000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		clocks = <&cru SCLK_OTP_USR>, <&cru PCLK_OTP_NS>,
+			 <&cru PCLK_OTP_PHY>;
+		clock-names = "otp", "apb_pclk", "phy";
+		resets = <&cru SRST_OTP_PHY>;
+		reset-names = "phy";
+
+		cpu_id: id@7 {
+			reg = <0x07 0x10>;
+		};
+
+		cpu_leakage: cpu-leakage@17 {
+			reg = <0x17 0x1>;
+		};
+
+		logic_leakage: logic-leakage@18 {
+			reg = <0x18 0x1>;
+		};
+	};
+
 	dmac0: dma-controller@ff2c0000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xff2c0000 0x0 0x4000>;
-- 
2.43.2


