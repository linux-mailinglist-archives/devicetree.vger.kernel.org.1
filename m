Return-Path: <devicetree+bounces-164099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F395FA7F308
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 05:07:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FFFF1893356
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 03:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F002E253B47;
	Tue,  8 Apr 2025 03:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="IJ/S2HHv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973177.qiye.163.com (mail-m1973177.qiye.163.com [220.197.31.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68E44A1E
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 03:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744081611; cv=none; b=IryDXWuJFUeWccKepAYVHvnAbosHpNk6iih96htshQZQyRp8ImGaXLb3KrZUpDNypSG8vebEnRD+l1xLD1yu2DBE9W9lUjFqi519Ri5a1dvEHM8k4CBABSbY3/ZQ6ik3wfkCgiBX92JnDn5pT7dpq8WWCAPpVW1N9lULw7U9jyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744081611; c=relaxed/simple;
	bh=oEXxAuWB2Y19YiE4fHvh1FqDyhDZHz1iEUI/R16/L5k=;
	h=From:To:Cc:Subject:Date:Message-Id; b=q/RlLMzUjLC1Tc/K1lIRI/9aUbPsCH2f5KjPXkcvB4BVGxml+lNvzhzILsIeGeNDR8UlVdNvo8Mi5Gp40GqB4SRU54SDFQc+icASgmwt0OPSUyyDv/kbc5o38bxriaTzcGPdai2dk1/H5mF1gqrSk+We/ehWzCP9cQ0b85ubx9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=IJ/S2HHv; arc=none smtp.client-ip=220.197.31.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 10ffa4d61;
	Tue, 8 Apr 2025 10:31:20 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: Rename vcc3v3_pcie0 to vcc3v3_pcie1 for rk3576-evb1-v10
Date: Tue,  8 Apr 2025 10:31:15 +0800
Message-Id: <1744079475-211962-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxpLGVYfT0oZTB9NTkhKHx1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96133ce71d09cckunm10ffa4d61
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nhg6GBw5HzIDTEMBQyxMOU0o
	PTIKCQhVSlVKTE9PS0xCT0NKTU9DVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpJTU83Bg++
DKIM-Signature:a=rsa-sha256;
	b=IJ/S2HHvGZKP1BjYxVvgn5nMII4ps47pjF4LaS5xD7nB+m1wgKfTiaKRLx/+yPW70I9pdCMtUnC5Y4+48+vEKNUY8jxd0NOs8mH9t3pX0PP+sVMogha7IlJz0mu+jPPoM8pYnzoHtLPxOChoI1/zuZQ7hE65LhRUneUibaBlnW0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=gCtSicSZgeSysBZm1uaYwpPZagFKxkwDTECWnoliX5Y=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

It's for pcie1, correct the name.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index 08c1884..ac397ac 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -128,7 +128,7 @@
 		vin-supply = <&vcc_3v3_s0>;
 	};
 
-	vcc3v3_pcie0: regulator-vcc3v3-pcie0 {
+	vcc3v3_pcie1: regulator-vcc3v3-pcie1 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_pcie1";
 		regulator-min-microvolt = <3300000>;
-- 
2.7.4


