Return-Path: <devicetree+bounces-256603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 17631D39BCF
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 02:12:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A8DE33019BFA
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 01:11:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC3D1F3BA2;
	Mon, 19 Jan 2026 01:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="lJO80M2e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta193.mxroute.com (mail-108-mta193.mxroute.com [136.175.108.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C92205E26
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 01:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768785115; cv=none; b=HWgv8cTVmt3lIlyOrQdY7jmZJC9eHJe3W2n1jXggWmHt18nNAdM/5+ciDfZnwsULCQumV8OPoJmG6YcdkncK8UN+I++aJXA+Rm8V5XyBNbeKBnMA/IIRzYxxmEJW7KiApg0Bphf/9ody56FX22Iov7tDHQiKSo9SppXB5aosLhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768785115; c=relaxed/simple;
	bh=LKRx5Phifut9Fv/RWfSfSEUbr9BDIfjQ4qQYz8gZKvo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Hhiz9PFRY/i4uetolUT4YhUFjWkuz1aaU3EfmVk4TUkv69Ihv//pW/hlEworctDpqp4ZqAA02C8R0q28R7LG4hzvVHqKp8YiCGU4mQhy+M0N0TX8e9kwWAHxa5pI09h8bvCTEyO9EJ0m9i8NklZXAeiW4nsWQZjCdFlshOJA+iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=lJO80M2e; arc=none smtp.client-ip=136.175.108.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta193.mxroute.com (ZoneMTA) with ESMTPSA id 19bd3ca26450009140.005
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Mon, 19 Jan 2026 01:06:39 +0000
X-Zone-Loop: 55fe360d2cc96a86cd05205f390281a74f434452b5a7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID; bh=icmFEkvGmO6/Ja++vZelqbWCf/Yf71OKFAdhqjynVoI=; b=lJO80M
	2eBX6QSmsSlEbBLrbF/bl1XOcdBXea0eFw6ShzyyRrrNTY2TJbReyMR4GSevV+uxjaQqQu6s4qvaP
	X3sLQs3Xt4yg8kbVtUEQfg9JspkYMYHTD4Q8DkMIxR221066qdqIfOxDPD7g9yfGFXXXXR/icLFJ6
	wVkcM7igI8GtQmBs3uGaB0U8PBd9q7YwOyz7Cba3B0YhP+7Ir+Z6yjQMN47kcoaUaECLIXFrQW3Py
	keYl+87qQmzUr6XAvyKoHrDzKXboFBdLtEFDIyJoUQNFhoPY14p5xbYW0GUzcj5JPa6tlhflJZo4b
	NBiD0XEDV1y3Ccv0jRm3KexzkPEA==;
From: Luis Garcia <git@luigi311.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Olivier Benjamin <olivier.benjamin@bootlin.com>,
	megi@xff.cz,
	Luis Garcia <git@luigi311.com>
Subject: [PATCH v2] arm64: dts: rockchip: Fix imx258 variant on pinephone pro
Date: Sun, 18 Jan 2026 18:06:33 -0700
Message-ID: <20260119010633.3447863-1-git@luigi311.com>
In-Reply-To: <20260118214620.3319040-1-git@luigi311.com>
References: <20260118214620.3319040-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: git@luigi311.com

imx258 had the driver updated a while back and it introduced
two variants, the imx258 and imx258-pdaf. The pinephone pro
is using the pdaf variant so this switches it to the correct
variant and eliminates the pdaf pixels from the sensor output
resulting in a much cleaner image.

Signed-off-by: Luis Garcia <git@luigi311.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 2dca1dca20b8..fd6facf1da2b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -451,7 +451,7 @@ &i2c1 {
 	status = "okay";
 
 	wcam: camera@1a {
-		compatible = "sony,imx258";
+		compatible = "sony,imx258-pdaf";
 		reg = <0x1a>;
 		clocks = <&cru SCLK_CIF_OUT>; /* MIPI_MCLK0, derived from CIF_CLKO */
 		lens-focus = <&wcam_lens>;
-- 
2.50.1


