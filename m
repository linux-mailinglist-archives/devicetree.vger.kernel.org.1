Return-Path: <devicetree+bounces-60874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 624158AACE2
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 12:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9458A1C20C8D
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 10:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 632467F499;
	Fri, 19 Apr 2024 10:31:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A64E3883D;
	Fri, 19 Apr 2024 10:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713522670; cv=none; b=e2Md8mFClec0mJKQvXnW5cYE3AlO+Y/KG0AREPbxB7Xqq2hPuaMrQUkwjdL/+Fp2990mLfDiCCG/AtViUFa+J3DDky0imKojn9UO7heZHWOO85kP1Pq+bWiHYwUhcY9jaiDlVi39csI12r94aQdc6slaFhUsCAZINyd4d0NLNpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713522670; c=relaxed/simple;
	bh=ucBn4hcqpD+T31luycIIx+gzpOExuWHDVtQ6NUR0NYc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ae+CqlbhQTkHESdSd50g4Va0IS3VjmyamXP3tRTKnKJ2lzknfTSf929uw5H9fpDYb0aCG0AGrCJcqeoObFeaPkI+Qt5kPQm2tAjBKs9k+Unuy+QHFlNtY3DdD8+K4NKxLPqbnJD1X+EHrENn/qrHIyvKdPdgLDc3rd+lY2Xs9S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c01:4860:bdbf:c4be:ec53:8f46])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 1EBE77E014D;
	Fri, 19 Apr 2024 18:30:35 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: correct the model name for Radxa ROCK 3A
Date: Fri, 19 Apr 2024 18:30:19 +0800
Message-Id: <20240419103019.992586-3-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240419103019.992586-1-amadeus@jmu.edu.cn>
References: <20240419103019.992586-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGUlKVhgaGUhLQk4aSk0fQlUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlPSx5BSBlIQUkYS0pBT0NNS0EZHxkdQRhPGR5BHhhOSEFDHU9NWVdZFhoPEhUdFF
	lBWU9LSFVKTU9JSklVSktLVUpCWQY+
X-HM-Tid: 0a8ef5e8729e03a2kunm1ebe77e014d
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MT46DBw6OTMXK08dSFYfP0o6
	PjEKCz1VSlVKTEpITklJTUhOQ0lPVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0pBT0NNS0EZHxkdQRhPGR5BHhhOSEFDHU9NWVdZCAFZQUlISkM3Bg++

According to https://radxa.com/products/rock3/3a,
the name of this board should be "Radxa ROCK 3A".

Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index c62230308457..ebdedea15ad1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -8,7 +8,7 @@
 #include "rk3568.dtsi"
 
 / {
-	model = "Radxa ROCK3 Model A";
+	model = "Radxa ROCK 3A";
 	compatible = "radxa,rock3a", "rockchip,rk3568";
 
 	aliases {
-- 
2.25.1


