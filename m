Return-Path: <devicetree+bounces-16418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D947E7EE8EB
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 22:47:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 66795B20A5E
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 21:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9067248CDC;
	Thu, 16 Nov 2023 21:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=permerror (0-bit key) header.d=tesaguri.club header.i=@tesaguri.club header.b="aAUoz/R3";
	dkim=pass (2048-bit key) header.d=tesaguri.club header.i=@tesaguri.club header.b="RzdA6FQI"
X-Original-To: devicetree@vger.kernel.org
Received: from gagc1.tesaguri.club (gagc1.tesaguri.club [172.93.166.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B7BCA7
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 13:47:33 -0800 (PST)
From: shironeko <shironeko@tesaguri.club>
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=tesaguri.club;
	s=ed25519; t=1700171252;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dkRXTxxP+G+rFgrYjpZBy174wAkPlDaLQdZ2Yyee0S4=;
	b=aAUoz/R3mZ3YgQoOduA5zrtv3NMIkhKXI0aJk6yNtFsHs7enWgmoqxKIkrNqJGkWM6JQv4
	QZgm6Lfte8VR8+DA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tesaguri.club;
	s=rsa; t=1700171252;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dkRXTxxP+G+rFgrYjpZBy174wAkPlDaLQdZ2Yyee0S4=;
	b=RzdA6FQIdIVorTIsrlhxCX09ksTkztiCQDZJY2xLMFJmpDF03FSXQO5pG86AgRI9itTLQ5
	7M7dUzeqqNlWZhnz8jUyYyFuIQniD/kqmYzLFt86HxjDgm0pTphBC4b4vcwnHaB3ez79Ur
	bGDHmHKtotTKIjEiqsknI3ZLd0m3DXj6TU+ka+twq01TuyO9yEp4hkM3hdr1vDt1qqbKvx
	+CwlwY4fD19G9pfQGMMkiT3zGv2ROt4oJcWohRrB2L+xMExZEvNfXJMsDb6jlZYuhRcmR2
	CDdGb6co1ySKrvK8yXBSMKgWkUInWBMqAoZWb+NrbGNowJRg7yVdATBTTiIqSA==
To: devicetree@vger.kernel.org
Cc: heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	shironeko <shironeko@tesaguri.club>
Subject: [PATCH v2] arm64: dts: rockchip: add missing tx/rx-fifo-depth for rk3328 gmac
Date: Thu, 16 Nov 2023 16:40:43 -0500
Message-ID: <20231116214042.11134-2-shironeko@tesaguri.club>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Without fifo depths attempting to change the MTU will fail. These values
are from the RK3328 Technical Reference Manual, gmac2io interface tested
with Rock64.

Signed-off-by: shironeko <shironeko@tesaguri.club>
---
v2: added depths for gmac2phy as well

 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index e729e7a22b23..06af280083ae 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -916,6 +916,8 @@ gmac2io: ethernet@ff540000 {
 		resets = <&cru SRST_GMAC2IO_A>;
 		reset-names = "stmmaceth";
 		rockchip,grf = <&grf>;
+		tx-fifo-depth = <2048>;
+		rx-fifo-depth = <4096>;
 		snps,txpbl = <0x4>;
 		status = "disabled";
 	};
@@ -938,6 +940,8 @@ gmac2phy: ethernet@ff550000 {
 		reset-names = "stmmaceth";
 		phy-mode = "rmii";
 		phy-handle = <&phy>;
+		tx-fifo-depth = <2048>;
+		rx-fifo-depth = <4096>;
 		snps,txpbl = <0x4>;
 		clock_in_out = "output";
 		status = "disabled";
-- 
2.42.1


