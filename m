Return-Path: <devicetree+bounces-21004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 069C2801F11
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 23:36:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A77C0281047
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 22:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52EF821114;
	Sat,  2 Dec 2023 22:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ixit.cz header.i=@ixit.cz header.b="X0h1uPrf"
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 364 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 02 Dec 2023 14:36:06 PST
Received: from ixit.cz (ip-89-177-23-149.bb.vodafone.cz [89.177.23.149])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F05A119;
	Sat,  2 Dec 2023 14:36:06 -0800 (PST)
Received: from newone.lan (unknown [10.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id 32C401612A4;
	Sat,  2 Dec 2023 23:30:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1701556215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/0H6bwtLy8JPhPVHInIhXdE8jtxG6LhIg62kFR5k+5I=;
	b=X0h1uPrf3r7C6DG25AuSYwdrFNnrV43PR8jJ03fHp1plIBbSkQlTpL0nUc2nE6aAT2DGc+
	DLltGofGejgoWohn4VDXtxsVELCTuhfrnVES4qW/ZT/tfujPiFZvpeyRVsUR4p17EhO9Go
	4MW3iT2OBsNf4CMJZgaI8cGiA1HtZV4=
From: David Heidelberg <david@ixit.cz>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Heidelberg <david@ixit.cz>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/5] arm64: dts: rockchip: make dts use gpio-fan matrix instead of array
Date: Sat,  2 Dec 2023 23:29:02 +0100
Message-ID: <20231202222934.137191-3-david@ixit.cz>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231202222934.137191-1-david@ixit.cz>
References: <20231202222934.137191-1-david@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

No functional changes.

Adjust to comply with dt-schema requirements
and make possible to validate values.

Acked-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 5 +++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index e6ac292ce645..69dd3568b84e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -44,7 +44,7 @@ dc_12v: dc-12v {
 	fan0: gpio-fan {
 		#cooling-cells = <2>;
 		compatible = "gpio-fan";
-		gpio-fan,speed-map = <0 0 3000 1>;
+		gpio-fan,speed-map = <0 0>, <3000 1>;
 		gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
 		status = "okay";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 854d02b46e6f..59843a7a199c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -31,8 +31,9 @@ gmac1_clkin: external-gmac1-clock {
 	fan: gpio_fan {
 		compatible = "gpio-fan";
 		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
-		gpio-fan,speed-map = <0    0
-				      4500 1>;
+		gpio-fan,speed-map =
+				<   0 0>,
+				<4500 1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&fan_en_h>;
 		#cooling-cells = <2>;
-- 
2.42.0


