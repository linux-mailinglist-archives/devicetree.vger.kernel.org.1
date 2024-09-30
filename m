Return-Path: <devicetree+bounces-106591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED61B98AECE
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 23:01:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 80BE9B21645
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 21:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA19D1A255F;
	Mon, 30 Sep 2024 21:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="DTw3tdHQ"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A67B1A0AFA
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 21:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727730085; cv=none; b=NS9nVY7lbowDgctkEzElg3WXwr6jVL4SrwOYWazTAU2S2L85xLb0grx4uJ7mLr7d0L5NlerRoCJzG+4ucHK8gPUME5ZOlWI2bwRezF36TAwMl+CNTyGn3T+NQiR1T8w5fENS1KfAD1FDQkQuW9edJ6rg4zVsDWOfuy8pnpTadoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727730085; c=relaxed/simple;
	bh=2E5UufDwVTCuAtZoi8igRE4Jnb8o9KyjJ5exVA7U2oY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=idkq7dl4FsoT1QtOPCVBKW64g37crZ8ySs6jXt0bpCHLN4tb4i19X7Gs3BsrcF76bXC+26j43glzdZYQYqg46wmrWXWEHyShVPbC7IVlv5sDwPfUyqtgQvkXdHbfdGlBqICnnAQDX+t7Z4XVpZpNOZ5U6bX96tkK15MH/Q5bLIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=DTw3tdHQ; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4Lv3Kwynzpq1gYkAA3f1MJlappE0nwgEQR7axSKWxUE=; b=DTw3tdHQKAZGnnqZCT7CYlTq9H
	SKenGOw55chQNnxUCzDwfZmR2RNBdHaodX1EaLDInPEqBvls4baTQBlZgFDAar49rXRX6YSpQibdM
	cvtx0NmJcQE3GlVhAemGho91YG9YwSGzIipBMdP4t1CuoRNmSLiNcqdOdxZn7XfRILlc9o4ZDr9YX
	4kKGkhQmcKeK8GXDjMn5sMKDPEB4wEwMix1jjOK2l2boGd7Lz0DQZC5376UtzH8WuKkFO1LdE/8eZ
	dQbaEzmcQcwJWJhYk6/zoas3q/hH1TRix5AL21Xh5GACZyIsYHO0nQ4FDFJJa581aLbRpMdUipHtu
	8oRi5yqw==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWD-00087h-24; Mon, 30 Sep 2024 23:01:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 5/8] arm64: dts: rockchip: Fix bluetooth properties on rk3566 box demo
Date: Mon, 30 Sep 2024 23:01:09 +0200
Message-ID: <20240930210112.1993625-6-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930210112.1993625-1-heiko@sntech.de>
References: <20240930210112.1993625-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The expected clock-name is different (ext_clock -> extclk) and the wakeup
gpio properties are named differently when changing from vendor-tree to
mainline. So fix those to match the binding.

Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk3566 box demo board")
Cc: Andy Yan <andyshrk@163.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
index 0c18406e4c59..dd6fe964d618 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
@@ -449,9 +449,9 @@ &uart1 {
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&pmucru CLK_RTC_32K>;
-		clock-names = "ext_clock";
-		device-wake-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
-		host-wake-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
+		clock-names = "extclk";
+		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
-- 
2.43.0


