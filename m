Return-Path: <devicetree+bounces-109189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D51289958AD
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:40:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3EFA0B21A81
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B16AE215025;
	Tue,  8 Oct 2024 20:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="gx5ShjBN"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36B7215004
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728420006; cv=none; b=hwIKHAPyaaEE2z3op1u7gXufTWgpiTECyGuf36Ea97SP2JZAkjzEs0OPLAHAKCO8TuTmCNzcOfJ8O5SV4h8jtsTJ0PMw5P0f9TVMd7uza/ThEybp7I9DHwQlH7PbSUvnB42MvzuryLRpK4/SSKNn0BRVji4Bn4Iw5l2AGLMCYu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728420006; c=relaxed/simple;
	bh=Rwi25WVVVq2SiwI0ZAlhlyetCSNG47f1pEp41KnNzWI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=h9F22LZT4VTXj9LhQvFO4DwAzn0x4ysGYfpXqgQyzFCarOfLfG5dQDwWV0kGdmOcf29pdB1VmTj/NPmCBm9Xl+OqYwZgRuP3A9Vr3QEdYEUnnDwGyQxLz12AIZ9kCHGi+H0Zf/ne22Ta4s48ALT8ptNKGVchpv51bQywdTR+RIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=gx5ShjBN; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Yf04+QXT03J/TjvEQgDGnbMwpR73yd5cNPeoOtdIFnk=; b=gx5ShjBNYIrZSk4OMsyqJE52fQ
	q/5S+Z/47L4AfMrv4gQePKJrCmjdLlyA2T/4Aa23YZxjFLYY81yOlWLvnUIL4h0AWR2iZE7QNum7X
	iikekfZtptftfTv4Cr0TuwKO0+uOJWv9PIYWYzalHaIMuIvFFJW8Uf5wqANODACIUxhFkUpsRNfXe
	t7/LSZtkfHkKTM9Z6MSCMtfDEQTRpA+YK1sEppjpUKTdwHvihfi9mGyvXyKPTCxVAsRdSZcajtmuM
	KbgJKzlhIJP74te5EVl3clRhSEbeyDPegeavLzsL1bjOTC+oWP5RPJz07TXTMISlJqarpiLGOwfyz
	/FweGeFg==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzx-0007ua-TZ; Tue, 08 Oct 2024 22:40:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Klaus Goger <klaus.goger@theobroma-systems.com>,
	Quentin Schulz <quentin.schulz@cherry.de>
Subject: [PATCH v2 06/14] arm64: dts: rockchip: Remove #cooling-cells from fan on Theobroma boards
Date: Tue,  8 Oct 2024 22:39:32 +0200
Message-ID: <20241008203940.2573684-7-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

All Theobroma boards use a ti,amc6821 as fan controller.
It normally runs in an automatically controlled way and while it may be
possible to use it as part of a dt-based thermal management, this is
not yet specified in the binding, nor implemented in any kernel.

Newer boards already don't contain that #cooling-cells property, but
older ones do. So remove them for now, they can be re-added if thermal
integration gets implemented in the future.

Fixes: c484cf93f61b ("arm64: dts: rockchip: add PX30-µQ7 (Ringneck) SoM with Haikou baseboard")
Fixes: d99a02bcfa81 ("arm64: dts: rockchip: add RK3368-uQ7 (Lion) SoM")
Fixes: 2c66fc34e945 ("arm64: dts: rockchip: add RK3399-Q7 (Puma) SoM")
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Klaus Goger <klaus.goger@theobroma-systems.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi   | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi   | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index b7163ed74232..a6ea9d8c785c 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -293,7 +293,6 @@ &i2c1 {
 	fan: fan@18 {
 		compatible = "ti,amc6821";
 		reg = <0x18>;
-		#cooling-cells = <2>;
 	};
 
 	rtc_twi: rtc@6f {
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
index 8ac8acf4082d..ab3fda69a1fb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
@@ -61,7 +61,6 @@ i2c_lvds_blc: i2c@0 {
 			fan: fan@18 {
 				compatible = "ti,amc6821";
 				reg = <0x18>;
-				#cooling-cells = <2>;
 			};
 
 			rtc_twi: rtc@6f {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 650b1ba9c192..6de3128556b7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -395,7 +395,6 @@ &i2c7 {
 	fan: fan@18 {
 		compatible = "ti,amc6821";
 		reg = <0x18>;
-		#cooling-cells = <2>;
 	};
 
 	rtc_twi: rtc@6f {
-- 
2.43.0


