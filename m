Return-Path: <devicetree+bounces-105628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D0C9874BC
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 15:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBC4D1C21C31
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 13:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C74252F88;
	Thu, 26 Sep 2024 13:48:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [195.130.137.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3971C6B2
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 13:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727358537; cv=none; b=st5U/Mn8gp1FBECdHLBWrxdcagWpsJNUK0QFYlLIvT5o/d4sQY26gjtCc1Mnc8WPMc1brp5EPhkiB9GLUV/I/4DUyivLZ1UymL6nZy7tPb6ErWZoa9FPcwqQHwMpP5f2b0Xrc/UgM02w+u/F3t05yiLZ5SpRc2vCu45WCL+JJbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727358537; c=relaxed/simple;
	bh=J374R4o6EvOCTH2UN8r63lsV2gnHs0D1MCfOAnSScjI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kbfCvWTDX/Hi9qe4Ne2Eb+iPYUYVsH/Xs/Rya5iKejPFCfpjoAswlP4a/e4T8CFg2Y64BTzsRVh1w7XdtT85YzFEwXbohh3bxyLA0Yj9/QoFroIPYFfvHLqX2CvC8nXN8hn83aUiz9ChNWDxwP8ZGwGHfyQQDAEeL/xPAj3t1Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:7bd9:a854:38c6:ce04])
	by laurent.telenet-ops.be with cmsmtp
	id H1oj2D0023fTnLU011oj8N; Thu, 26 Sep 2024 15:48:46 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1storF-000bcb-RT;
	Thu, 26 Sep 2024 15:48:42 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1storK-001yEj-S2;
	Thu, 26 Sep 2024 15:48:42 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Jacob Chen <jacob-chen@iotwrt.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3399-sapphire-excavator: Fix rt5651 compatible value
Date: Thu, 26 Sep 2024 15:48:41 +0200
Message-Id: <abc6c89811b3911785601d6d590483eacb145102.1727358193.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1727358193.git.geert+renesas@glider.be>
References: <cover.1727358193.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are no DT bindings and driver support for a "rockchip,rt5651"
codec.  Replace "rockchip,rt5651" by "realtek,rt5651", which matches the
"simple-audio-card,name" property in the "rt5651-sound" node.

Fixes: 0a3c78e251b3a266 ("arm64: dts: rockchip: Add support for rk3399 excavator main board")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
index dbec2b7173a0b677..31ea3d0182c062ef 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
@@ -163,7 +163,7 @@ &i2c1 {
 	status = "okay";
 
 	rt5651: rt5651@1a {
-		compatible = "rockchip,rt5651";
+		compatible = "realtek,rt5651";
 		reg = <0x1a>;
 		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		clock-names = "mclk";
-- 
2.34.1


