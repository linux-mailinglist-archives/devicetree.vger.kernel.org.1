Return-Path: <devicetree+bounces-251853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76963CF7A9A
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 11:04:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91B3C3067DE3
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 10:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 696082DF152;
	Tue,  6 Jan 2026 10:00:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D413F27B349;
	Tue,  6 Jan 2026 10:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767693617; cv=none; b=gm35grvQIjshfeeEtrK8IaQRMd5ZXWUCce2UD9uFWplLziEyVcJ5CYvnTE9pVqgUlFz7w2OcukMqBqfj4nDIsS3RBXOyhltp8nCG6FIAURrV/ipe/twqSiQI6xvhFIgWxjCMoMat4TZTyvjDMH8hSuZelB27QjovshMQbXBPPuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767693617; c=relaxed/simple;
	bh=MpQeH4AsBnML+qyvDaP4V5LgmDluD/rff0bbfed/RYI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fieEncHXo1cAaGWS4tllgJQYFOnrKKJJq2qTt3Om2izgExr7AxL+WXWUlIi11ch7eyHrIIMeiRbevzHqUAvdq3Nb6lDQVFcOkHTGqFYtNQdZiEi9iBOwUAN00UONaaf8hcri7xLVvsXcJ1omhZ35gzuzSdM1j+Lqnh+w9k8INKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c02:600:9c6c:d401:7c:acd6])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2fac29e94;
	Tue, 6 Jan 2026 18:00:08 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: rockchip: Enable PCIe for ArmSoM Sige1
Date: Tue,  6 Jan 2026 18:00:00 +0800
Message-Id: <20260106100000.225445-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9b92bfe48203a2kunmc41de11c388acc
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGRgYVkNMTk1OH0JKGUhDQ1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtJQU1LS0FCGE0YQR9PS0pBTBhBGhgfTVlXWRYaDxIVHR
	RZQVlPS0hVSktISk5MTlVKS0tVSkJLS1kG

Enable the RTL8125 network controller and corresponding PHY
connected via PCIe on the ArmSoM Sige1.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 .../boot/dts/rockchip/rk3528-armsom-sige1.dts  | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts b/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
index 6e21579365a5..c41af8fc0c8d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
@@ -232,6 +232,10 @@ sdio_pwrseq: sdio-pwrseq {
 	};
 };
 
+&combphy {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_arm>;
 };
@@ -293,6 +297,14 @@ rgmii_phy: ethernet-phy@1 {
 	};
 };
 
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie20_perstn>;
+	reset-gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
 &pinctrl {
 	bluetooth {
 		bt_reg_on_h: bt-reg-on-h {
@@ -324,6 +336,12 @@ r_led: r-led {
 		};
 	};
 
+	pcie {
+		pcie20_perstn: pcie20-perstn {
+			rockchip,pins = <4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	rtc {
 		rtc_int_l: rtc-int-l {
 			rockchip,pins = <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.25.1


