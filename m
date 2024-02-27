Return-Path: <devicetree+bounces-46559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E1686A155
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 22:05:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ABF421F21804
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 21:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0E9314E2D0;
	Tue, 27 Feb 2024 21:05:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F4251C4C
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 21:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709067953; cv=none; b=PE3IHgDk0nwL6hnoqGNTtSYXJ9fsSsU6ZnSNioAGH/7h98+hZHOJLxYbZcuDSVWFwoRTHGX2t7TmWflPSpvKiboPz4M8XpHlzW6rgvJohw/xqVQyb1b9Knd4Z4forlaoS/Rmy0odLqg/Q8o7/gaMe/N165XHxsyyq7bn9getZzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709067953; c=relaxed/simple;
	bh=8cLTMoySmXspnfaIrCQu9Oh+aH0+jm83NF/Npt3qbi8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=IGe66xLWrb0vQQVuK1aMQx7j0KDxZMsCXYN3orSPYilCCvHl3J4oTOdqa35LGsDFF9vvgv3v+i7n8AQtakm3Rx4RuFdAhnv7gOR4cqCilfIyiSqjeRLZJHYG7Q4Q7oqugvFcoyovK2HohhDRzYKf0ItX7gm2P6CIH+9DNTFXDOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf4e4-00016v-TK; Tue, 27 Feb 2024 22:05:48 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	heiko@sntech.de,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH] arm64: dts: rockchip: add clock to vo1-grf syscon on rk3588
Date: Tue, 27 Feb 2024 22:05:21 +0100
Message-Id: <20240227210521.724754-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The VO*-general-register-files need a clock, so add the correct one.

Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
This goes on top of Sebastian's series [0] cleaning up the some VO clk-
handling.

[0] https://lore.kernel.org/linux-rockchip/20240126182919.48402-4-sebastian.reichel@collabora.com

 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 36b1b7acfe6a1..7e40958b5174b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -519,6 +519,7 @@ vop_grf: syscon@fd5a4000 {
 	vo1_grf: syscon@fd5a8000 {
 		compatible = "rockchip,rk3588-vo-grf", "syscon";
 		reg = <0x0 0xfd5a8000 0x0 0x100>;
+		clocks = <&cru PCLK_VO1GRF>;
 	};
 
 	php_grf: syscon@fd5b0000 {
-- 
2.39.2


