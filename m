Return-Path: <devicetree+bounces-19106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5549A7F9B6F
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 09:14:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F6E0280D6E
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 08:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D22C5111A7;
	Mon, 27 Nov 2023 08:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 043FA184;
	Mon, 27 Nov 2023 00:14:21 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 43C592F4;
	Mon, 27 Nov 2023 00:15:08 -0800 (PST)
Received: from e129166.arm.com (unknown [10.57.4.90])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E7FBF3F6C4;
	Mon, 27 Nov 2023 00:14:18 -0800 (PST)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: lukasz.luba@arm.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	daniel.lezcano@linaro.org
Subject: [PATCH] arm64: dts: rockchip: Add dynamic-power-coefficient to rk3399 GPU
Date: Mon, 27 Nov 2023 08:15:11 +0000
Message-Id: <20231127081511.1911706-1-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dynamic-power-coefficient to the GPU node. That will create Energy
Model for the GPU based on the coefficient and OPP table information.
It will enable mechanism such as DTMP or IPA to work with the GPU DVFS.
In similar way the Energy Model for CPUs in rk3399 is created, so both
are aligned in power scale. The maximum power used from this coefficient
is 1.5W at 600MHz.

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 9da0b6d77c8d..87cfdf570b19 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2113,6 +2113,7 @@ gpu: gpu@ff9a0000 {
 		interrupt-names = "job", "mmu", "gpu";
 		clocks = <&cru ACLK_GPU>;
 		#cooling-cells = <2>;
+		dynamic-power-coefficient = <2640>;
 		power-domains = <&power RK3399_PD_GPU>;
 		status = "disabled";
 	};
-- 
2.25.1


