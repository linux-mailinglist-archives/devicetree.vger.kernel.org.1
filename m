Return-Path: <devicetree+bounces-105627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F4B9874BB
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 15:49:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C5DF1C21C1B
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 13:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4822D4595B;
	Thu, 26 Sep 2024 13:48:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [195.130.132.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8875339A8
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 13:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727358536; cv=none; b=jMdzzUY5expF12GFEzS9dulOc3PmWeSaXNxXsNh2RxS4/JD+ywPq3YxO8cteWCy09i+Z+EoAo5b0IZj5VX+0VKi10py2TDxRF3MDLwNx1ae74i9zhh58jcbRGnhQOguj3rmd8g82eRKdBLlne3FDlqbECHPg+UDvf01jM20vc+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727358536; c=relaxed/simple;
	bh=o3YCp7oP7tyXYUGzT5XEC51fVb5uK+iI0BtAIQBRsuA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qQM8upLH04s/Ey/6mI+fo39BTSzZEvNRrR4zjHSr2I3it82jrdI7xPjcb+S8JlHmjMn4LxmRRwTpn9mYrCBvOiPiBCptdeYeV3RgwvN4YeJvWqRV4rK9WVK3pBDt5Jo1mTPBP8q3S9d9bE/0ZnVMOdlWHRsmmHkrqn8vX5SNTWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:7bd9:a854:38c6:ce04])
	by xavier.telenet-ops.be with cmsmtp
	id H1oj2D0013fTnLU011ojmy; Thu, 26 Sep 2024 15:48:45 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1storF-000bca-Qr;
	Thu, 26 Sep 2024 15:48:42 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1storK-001yEg-QI;
	Thu, 26 Sep 2024 15:48:42 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Jacob Chen <jacob-chen@iotwrt.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 1/2] arm64: dts: rockchip: rk3399-eaidk-610: Fix rt5651 compatible value
Date: Thu, 26 Sep 2024 15:48:40 +0200
Message-Id: <a9877b8b1bd0de279d2ec8294d5be14587203a82.1727358193.git.geert+renesas@glider.be>
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

Fixes: 904f983256fdd24b ("arm64: dts: rockchip: Add dts for a rk3399 based board EAIDK-610")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
index 1489eb32e266a748..4feb78797982baa5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
@@ -541,7 +541,7 @@ &i2c1 {
 	status = "okay";
 
 	rt5651: audio-codec@1a {
-		compatible = "rockchip,rt5651";
+		compatible = "realtek,rt5651";
 		reg = <0x1a>;
 		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		clock-names = "mclk";
-- 
2.34.1


