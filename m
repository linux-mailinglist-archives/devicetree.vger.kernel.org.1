Return-Path: <devicetree+bounces-158950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E2368A68BC9
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 12:36:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3C2119C5251
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 11:32:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A9B9254AFC;
	Wed, 19 Mar 2025 11:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kleine-koenig.org header.i=@kleine-koenig.org header.b="a2fVprjV"
X-Original-To: devicetree@vger.kernel.org
Received: from algol.kleine-koenig.org (algol.kleine-koenig.org [162.55.41.232])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B8220DD74
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 11:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.55.41.232
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742383910; cv=none; b=An7t5kpr8liZU6DoUa5Nwi7KohyqpXLIk9BVa07bQArhamrFQFsZcafrdkf6ANNDBqWwwImgPiCninHJCoFlD8oQC1JNLU2IJ1J31RlT7bRHMl5FRVJ1y9W7dwFIJAZrpxP8W0kx5lcFi0csT8TGfB+JbPPj52jibvZPF6Qe5vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742383910; c=relaxed/simple;
	bh=NgXaeGxC+7uR4MnVpvvGzey4eIPptRADjwnVsguAexg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=CZ3zxwbvTmw/HQ2BAv7QMWKOsgntH1QC6DWClFu8zW7RzTN3iznWgRAoTZAZKmQCFIoq+w7sqwuLz94Oc8Y8DeVOE27tFcmEockGcemdk+3xOaEKShy/EHzpWImZ8aYjMxJKcDi3WtRoe4NVKB4VDhEyLVg52JPEm2z0j72wF68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org; spf=pass smtp.mailfrom=kleine-koenig.org; dkim=pass (2048-bit key) header.d=kleine-koenig.org header.i=@kleine-koenig.org header.b=a2fVprjV; arc=none smtp.client-ip=162.55.41.232
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kleine-koenig.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742383905;
	bh=NgXaeGxC+7uR4MnVpvvGzey4eIPptRADjwnVsguAexg=;
	h=From:To:Cc:Subject:Date:From;
	b=a2fVprjV7HZl/rdZBRYqMEklnoDMRuuospdq03wo8rIcGcKryCvCKfSauGTqsmQac
	 OZJaXS/sV+aiqyNaDyx0PHX83ONqIK2bBL1ZXpUyI/kfPNFEHCBV9uLorl6Qx6p0yE
	 txcgf7LR4V5o2k7of/EjlNinSRzdxGfFY0iXxYvQ4V2imXAvrh/IDN3Iv/KCoW9+8s
	 haVmVVRpfA0HypuhDI7r6AviIIYIH73aojSRWmCCnjxNcwyV/Utm62ntvVKsdS74iI
	 NuZjsNAT3FiVCiV7nMUYzEVjyRH7erpsR1SlRp9dJReSqY7wH6S6YNy6h1CWCRrqsq
	 Hxa1zcLYgeZCg==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id BBA5EFC6421; Wed, 19 Mar 2025 12:31:45 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: ts433: Add pinmuxing for eMMC
Date: Wed, 19 Mar 2025 12:31:38 +0100
Message-ID: <20250319113138.125192-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1154; i=uwe@kleine-koenig.org; h=from:subject; bh=NgXaeGxC+7uR4MnVpvvGzey4eIPptRADjwnVsguAexg=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBn2qsbJHYdXM0d0aQbA1FFZuw1eiLFwFe3Y+sBO daSrDnrgMOJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ9qrGwAKCRCPgPtYfRL+ TuF6CACOXo7X4VMq5bPJ8hv6L9zADnu8GRCVAFmCIxijRN4ZEK6QfrTwWje3UQ/xWQvvHYAnXOO BU/NtN2e2CuF3G8gN6hOywwCQRzDuSoEbUUH5dAocJjSXQa/LXlfG0G7JAvr+rsldwrCf/TmGmn Xmf4XfPtZz9svXybEFlGK0nz47QbmZg32eFyVe9S6JljfNs00iPRs1nVS04C9uKFnAxK/eg/cm6 CU84nfDG+3P2x5wMQaHw/nGF/r4xBQecGY8xvRyon3ZJa7955n8feRWHCUYHOtA0eBd39PgI8ak lVljq39W3SOuFoewfzepk+R+IRAxJe0qH96OJ9Ay4LMNQ4Vh
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

With this added barebox is able to access the eMMC even when booted via
USB.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
Hello,

I tested that on top of v6.14-rc1 +
https://lore.kernel.org/linux-arm-kernel/cover.1742331667.git.ukleinek@kernel.org/
but I guess git can apply it just fine on a different tree.

Best regards
Uwe

 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 411f8ac7994b..6ae4316761c4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -630,6 +630,8 @@ &sdhci {
 	bus-width = <8>;
 	max-frequency = <200000000>;
 	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
 	status = "okay";
 };
 

base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
prerequisite-patch-id: 827ca0888cffe7cc82a938969cbe145d33967157
prerequisite-patch-id: 7d29172f7269dcddc26b0c6f08c4f1361a1fe0b3
-- 
2.47.1

