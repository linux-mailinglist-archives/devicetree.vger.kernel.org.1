Return-Path: <devicetree+bounces-240659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A2EC73DA3
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:00:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BE7743528B3
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC35F330B3E;
	Thu, 20 Nov 2025 12:00:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CFA6306B02;
	Thu, 20 Nov 2025 12:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763640033; cv=none; b=ZJ9wMTj0E/7JBd+zxCfLDiGxTzx0RIxU3aDQANH3mGCnTJVBULi2h0pGYn3ZW+3EHHioG2ETFfahig+uQnDrmhwm2btJtTpcIV7XFS2alvp2Ddao1ZMOY6BeRjPc8l8BBop5+WZl8Z4MqUJqS8rcKn5sDr9koUE0/slExysXjuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763640033; c=relaxed/simple;
	bh=rZO7Nr3YD5xfiP6mmFIl1nmneU7wko44giHw0INxAOw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sjdEStI6Y351GRvVbdWgqxonfzUkiMevfRMgrwwV0NJCoNgeqQZTpB7gmPE5zW66lvg3m6Z84Za/nZa6ry+6P9v00JaShLdEh4Hd0KGsNd04mSn4D2tlTzCQQGcDX9+uss8S6/J14LHaSNai2N+H+yl57C5V54hnqWxrSnmGCKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [116.25.94.95])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2a4b77145;
	Thu, 20 Nov 2025 20:00:27 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chukun Pan <amadeus@jmu.edu.cn>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/5] arm64: dts: rockchip: remove mmc max-frequency for 100ASK DshanPi A1
Date: Thu, 20 Nov 2025 20:00:07 +0800
Message-Id: <20251120120011.279104-2-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251120120011.279104-1-amadeus@jmu.edu.cn>
References: <20251120120011.279104-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9aa12327b903a2kunm2d0ac75b4ab69
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDTEMfVh9LHUhPGEJCTE1PQlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk9VQk5ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE5VSktLVUpCS0
	tZBg++

The max-frequency property is already defined in the mmc
node of rk3576.dtsi. Remove the redundant definition.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts b/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
index cb04ab96d1e8..f9dc4fa39167 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
@@ -689,7 +689,6 @@ &sai6 {
 &sdhci {
 	bus-width = <8>;
 	full-pwr-cycle-in-suspend;
-	max-frequency = <200000000>;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
 	no-sdio;
@@ -703,7 +702,6 @@ &sdmmc {
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	disable-wp;
-	max-frequency = <200000000>;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s0>;
 	vqmmc-supply = <&vccio_sd_s0>;
-- 
2.25.1


