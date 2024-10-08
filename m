Return-Path: <devicetree+bounces-109188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 564839958AC
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:40:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3D261F27CA9
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D45B21503F;
	Tue,  8 Oct 2024 20:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="dmAdLIz2"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25605215014
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728420006; cv=none; b=Hn1oCiMfCnMtFTZbObFOYkaiWtCFEFZrj8D1wllti6Iatnl2FCqadMo4vUr8Ti+dOMFSk3zlL9z8L3NtMnOqXZ5nF1bS0njOe6Wtx0MVLKSjShjfMdyhpDy9Wg5Yu8L+uLx3H3U90ashsKDxmiwafo2tzlJCnXg72bPorj5LWR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728420006; c=relaxed/simple;
	bh=7d7j5WWZaufcky6pvnAhLX09DYyTpLdmRVw3Lz65bjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jGh4DASFfghdyCk9CmffnrsN/JccJeR7BS6M6NzvoHsAkciyD3GbjTW5HI9D2iyusFSEP7Glh384flva6JZgvN+6fFIaLKPw1vGYN1Modcvk9MiU5y7+wu6M7FSV2BoLNAoxL5KhIxVj1HkeIOuT+oxHVQBjMfW7ZLL+IV3vPWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=dmAdLIz2; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=a8vwVyS29rOLWb4fTtAHqldYQww/UW84ULndF4f+v14=; b=dmAdLIz2XoO9eTTfpODgOR3J9I
	LUwukipOXckhy0cbfKUF7OkXYm51EZap+kxUx5we10CXlFrWU/7h8KvqQDZoWT9TUGtocA2t/St+p
	yJb4QTfxMmucSoZhfNI3L4DQFFkjNHakPECIirua6+QS2EmIcn8U4Q95xTu8E1aOwhJwvTThdHEdn
	W8UzHlXHLio5/3VhdprthvYrXPZVMdIJD8F0y8yvDajh02C2qykevskc0GRLa24ellBjScvu3Z/zI
	gP7v00pt275dInHrMorPd3xiIFBYcrj5lFt2ZFQeA3iwgdCdhvu6i9ldhX0CQYcYYvAR70qmsou8i
	ronxEveQ==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzy-0007ua-GD; Tue, 08 Oct 2024 22:40:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sergey Bostandzhyan <jin@mediatomb.cc>
Subject: [PATCH v2 08/14] arm64: dts: rockchip: remove num-slots property from rk3328-nanopi-r2s-plus
Date: Tue,  8 Oct 2024 22:39:34 +0200
Message-ID: <20241008203940.2573684-9-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

num-slots was not part of the dw-mmc binding and the last slipage of
one of them seeping in from the vendor kernel was removed way back in
2017. Somehow the nanopi-r2s-plus managed to smuggle another on in the
kernel, so remove that as well.

Fixes: b8c028782922 ("arm64: dts: rockchip: Add DTS for FriendlyARM NanoPi R2S Plus")
Cc: Sergey Bostandzhyan <jin@mediatomb.cc>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
index 3093f607f282..4b9ced67742d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
@@ -24,7 +24,6 @@ &emmc {
 	disable-wp;
 	mmc-hs200-1_8v;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
 	status = "okay";
-- 
2.43.0


