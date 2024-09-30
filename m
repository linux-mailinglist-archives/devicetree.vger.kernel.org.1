Return-Path: <devicetree+bounces-106590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9C198AECC
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 23:01:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 603BA2823DF
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 21:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BB041A256C;
	Mon, 30 Sep 2024 21:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="AM/njkCd"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E69F1990CD
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 21:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727730085; cv=none; b=u7uDqjnN1BmJA4luYQEFNNj4G0FAvBIqwnHy6upFdBI0PP+t9tjR0xphgTU5+87xak5b8Nf9BKP7OLawOtS+HxmWRifHXvDkTF1OBDDugtYbX8TcIU5Q8A2m2xv5s1Mdz5G6q2+agWJHk+xm9bGwuOccsngFixTBIsqeEAx2p7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727730085; c=relaxed/simple;
	bh=8OmGjk0/35/nty+ur41NaHzrzNXhqkFz98p7TyoZHWI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Q3t2JkM00M+i4UQfwIeS4HC2Vy64PMDJZS/7nq5hMZ/QXkVOxv/Z+yIG1eB/+JH2C6HdR+/w7egTM9FjGIPPhkVGg3qu5p7CiLniwlrgenhbRekCXQ7a3YrAvq900ogB47CW3qboBSUyb5jYjhxWh1HnkNmQbavtpTGqwsDBFcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=AM/njkCd; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=2Qd8cUrd68LMMhtCYDpDVdYUtkKDeWIKPRQxYiYHgCc=; b=AM/njkCd0qdq30BG3UnQk3yjF2
	qfg0ajASqqxwc5YvnjmDoibEERX2zrGdDToZRiVYLZ+j3yw6D9oTfAVy8pgtl/mSMCWRcxqT8qUe5
	nyzaooFAsE9c9p1H/sGsU4l1OrlRGtlmiO4ghf2PmWpqFvvpB2e6MV2RZ/KvimbwPvvp/3nrHcsY5
	ued7Q/QqFDT1vGYY3itF0/JdxO8+a/fErErp85LePpRCQq9gOedHAj9oAj2cbHxzE2omP81AOnkfq
	6HGThsK5Du7ejRTIYjj4iYinohrS+pfYpP4szdz+TLJpBTOHMxqDPjQBWPF7uDGYoH+TYroqgaaS9
	ijudYc8w==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWE-00087h-0a; Mon, 30 Sep 2024 23:01:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Klaus Goger <klaus.goger@theobroma-systems.com>
Subject: [PATCH 8/8] arm64: dts: rockchip: Remove #cooling-cells from fan on Theobroma boards
Date: Mon, 30 Sep 2024 23:01:12 +0200
Message-ID: <20240930210112.1993625-9-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930210112.1993625-1-heiko@sntech.de>
References: <20240930210112.1993625-1-heiko@sntech.de>
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


