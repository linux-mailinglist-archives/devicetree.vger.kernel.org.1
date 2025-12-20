Return-Path: <devicetree+bounces-248461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C65FCD2D23
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 11:16:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 94EB8301D31A
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 10:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 329713093C7;
	Sat, 20 Dec 2025 10:15:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66392F90DB;
	Sat, 20 Dec 2025 10:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766225748; cv=none; b=k5Ll8jd7b68gn4mbfpGQCVgzbzLBNxdYvj/YU2YTJxtICMVziAzwAFtGzqrr1lxhcbyKQb3w7Nv302VaPAv40mcW+uJCAu9ZJOgiftH68Yi4YLewYC1L3ECIsOWpC1q4yaPis0pzYpN7eGjmuXJuDgC5MnNzJ/6jJCoR/60Np3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766225748; c=relaxed/simple;
	bh=ieIy90LcHCUuHl4Z9+eZ02oXnCWTU8K2Qi5XoSUMBik=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=urgVnIyLNIBz77pbaTxjMX6PmCJnuvdM0NjN6gPHl2SI1VBwZ8CkAsE+ZDW7rek2dXwHMXy/2RkNs23gY9kPTmXCJ6KQ53edydFjATuVz43KLO3L4JO0W28JetQEZ7c8XYhJM1iL8Chk3zJcmWgTLAKn4YTBdXhT81xGPSI4ovc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [119.122.214.229])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2df715fa4;
	Sat, 20 Dec 2025 18:00:24 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: rockchip: enable saradc for ArmSoM Sige5
Date: Sat, 20 Dec 2025 18:00:10 +0800
Message-Id: <20251220100010.26643-3-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251220100010.26643-1-amadeus@jmu.edu.cn>
References: <20251220100010.26643-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9b3b340a4703a2kunmb12117682b90b9
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTUMfVk8YHR0dGEtNQkoZS1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKT1VJSUJZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE5VSktLVU
	pCS0tZBg++

Add ADC support to ArmSoM Sige5 board.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
index a0d8f52a706f..d372ba252af8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
@@ -897,6 +897,11 @@ &sai6 {
 	status = "okay";
 };
 
+&saradc {
+	vref-supply = <&vcca_1v8_s0>;
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	full-pwr-cycle-in-suspend;
-- 
2.25.1


