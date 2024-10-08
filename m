Return-Path: <devicetree+bounces-109193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D12869958B2
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:41:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D0EF1F27E7F
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:41:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B663215022;
	Tue,  8 Oct 2024 20:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="WiwbPRuR"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEAB81E104B
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728420080; cv=none; b=j3zSVD5hq8PhGsQ2kCTeCT3cgeBENJddPY3ylsgsLBa93sWckuLWtcQZwMWsvGMsXRq7zOVflp916M5npp6DBp+f8DKIKRk1n3X8/QeKhs5H8rLLGI6+HDvPRfT3CbgC3YHZagkaGVNbIV3a4QU0Mol1WRPA48LPcoCjXBAEHmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728420080; c=relaxed/simple;
	bh=ih+X46H3Zxu50GjyW8OJQW3zp3hwJVJYTR+30wyi7t8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Fx3ew+05RD21wHeEWpjLV+ZcbSxuHCWnx3waG/tPbWo6IWO3AWRb+3JcHnj18yrtmYDRpZocYWMSzBiQ3xQ4tjTj7P0PHoJ9AncrUb8hlGO/oUnqVNiJX3UfgtAJ3gur7/ym4FepdzxwQlYf3KLafvuMvt1gNoKgWueF7g7e4xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=WiwbPRuR; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Dx6qSKCScjkQMoZc8ORhv4gyksrl/9l68dxlNO0Nn/Q=; b=WiwbPRuRkG4uxFgmzeN33dV/06
	M0/4AHjFt9JTYPHJ2l7MinthOje+M2tZHH3PTtojU1x4qVJdv/I9c7s+9qWsRvF3Rpfbtf2HGt2rr
	51LnTDkacVJYEVBDE77+Th6MF8tKaN1KK7v5hV0I4nEySBMhnS6OQLVdJJ7zXGcmYuB0CsAO1h/b8
	kXpUZ0xmHLzRRH5mDM2VYEgtQkTcL4ROOgr2WO/XaZyvptVjxuqLLlx1+3k4ZqmHsVX5AjfGzKc47
	t9uEYolu1Nkqol8V0E8TPgqVW+8oRZVxfCFl8AlUmTREyQZMd3cF8m2yJo+FU2JwtX1yua2Yom7M8
	FtnU8ihw==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzz-0007ua-Dh; Tue, 08 Oct 2024 22:40:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 11/14] ARM: dts: rockchip: fix rk3036 acodec node
Date: Tue,  8 Oct 2024 22:39:37 +0200
Message-ID: <20241008203940.2573684-12-heiko@sntech.de>
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

The acodec node is not conformant to the binding.
Set the correct nodename, use the correct compatible,
add the needed #sound-dai-cells and sort the rockchip,grf
below clocks properties as expected.

Fixes: faea098e1808 ("ARM: dts: rockchip: add core rk3036 dtsi")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rockchip/rk3036.dtsi | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index 96279d1e02fe..37369538483f 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -384,12 +384,13 @@ reboot-mode {
 		};
 	};
 
-	acodec: acodec-ana@20030000 {
-		compatible = "rk3036-codec";
+	acodec: audio-codec@20030000 {
+		compatible = "rockchip,rk3036-codec";
 		reg = <0x20030000 0x4000>;
-		rockchip,grf = <&grf>;
 		clock-names = "acodec_pclk";
 		clocks = <&cru PCLK_ACODEC>;
+		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
 
-- 
2.43.0


