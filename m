Return-Path: <devicetree+bounces-109184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4049958A8
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:40:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 309F91F27C07
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 200E721501D;
	Tue,  8 Oct 2024 20:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="0Jly2FwY"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923D6212D0B
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728420005; cv=none; b=X8SjPfRfvPjhzmyNMP1w/VKgfQ9HmC2myutffSWsLJa18E0swtVAzrIg4poiiaU3UJISs2WQ6lENb6KTMkjmGK3vLahhvLm+DyUtnhVLS8hcuQZreaqaP/uHojxi/IekMdcCIafpwi3EhY7Gge1bmU7EUBskIHDLANd1jxrEVqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728420005; c=relaxed/simple;
	bh=IPNnsIBJCATJeUEI0EYWepCqEYWyupkQJIDZoOsxU+0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YHvq1IJUodn590mz7D/vXZ0GHNFbPR/crIN7fXXmvzDSsHr+8CwnjnzU+AuBDksPo9IjM0SNnl0FhdhtKPr+mwWUecqWPuhlbj3+8azn9UT4vDprqnRnXZlJl+COVeZDYxx4/miGMvE0J50q3DuDk7vVsEkTjr17rqFnunwWfGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=0Jly2FwY; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=k/5sNKevC+o9Lp1ItqUhRy3pPTMdn3RRBndu2fGnT5c=; b=0Jly2FwYX3Ck1HU3A++7h39T1n
	Qx/WO/nnoMpEc3Fm1fSa0+iLFTiPwN9eSbT7krtfJIF0lYkqZFH1KlP16gMN/fc+VX57Z71Pay3kC
	pj98cjFwi0tU8ZUTSV9YQ9DUwtyq9QI4GvqhO76L8ZCMULQrxx9LNvOVoa8gDJH1RaFoKiWoxpPAv
	i/xCQ8t8TrBZW8rbAXe46BWsqw3AILnpzjetD4V0Dd8IuV9W9C67d8MoJn1X0OpmlgSAGOmwz07dq
	mGs00UADlqGgt3tH/ff/Os2ge7KCnO9sjy6KgjPTgyYnq8t7lUFo0fOOU1vIT2FRodNloQHOYcaQu
	QOjShNyg==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzw-0007ua-Rh; Tue, 08 Oct 2024 22:40:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 03/14] arm64: dts: rockchip: Fix bluetooth properties on rk3566 box demo
Date: Tue,  8 Oct 2024 22:39:29 +0200
Message-ID: <20241008203940.2573684-4-heiko@sntech.de>
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

The expected clock-name is different, and extclk also is deprecated
in favor of txco for clocks that are not crystals.

The wakeup gpio properties are named differently too, when changing
from vendor-tree to mainline. So fix those to match the binding.

Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk3566 box demo board")
Cc: Andy Yan <andyshrk@163.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
index 0c18406e4c59..7d4680933823 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
@@ -449,9 +449,9 @@ &uart1 {
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&pmucru CLK_RTC_32K>;
-		clock-names = "ext_clock";
-		device-wake-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
-		host-wake-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
+		clock-names = "txco";
+		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
-- 
2.43.0


