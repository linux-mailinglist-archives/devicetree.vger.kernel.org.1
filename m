Return-Path: <devicetree+bounces-6797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 572D97BCE83
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 15:12:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E6B91C208B2
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 13:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A944C2C6;
	Sun,  8 Oct 2023 13:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="yvwRmuIG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE09BE48
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 13:12:40 +0000 (UTC)
X-Greylist: delayed 388 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 08 Oct 2023 06:12:38 PDT
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D414FB9
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 06:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696770367; bh=lCxrvJiIvXZ0HfTe8LyeC4TXQ7SH+n5WoJvO6bicxbg=;
	h=From:To:Cc:Subject:Date:References:From;
	b=yvwRmuIGJN9AkL4zeoVM34YZ6YaTTNIT8x9MWtLKCPgnrrJ67rNJrLlK4mi4ndEf9
	 FLXR6rdD3YxsuxVSaNhw4V5kzR1IgkVRzqq7yYUyg0XwH4nSpROYAfd3oJa8Q1zh0h
	 7AXIA4bV3O4z9oSXxWyD0MqQ7EeU9iFBFKnh4RLs=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Jagan Teki <jagan@edgeble.ai>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] arm64: dts: rockchip: rk3588s-pinctrl: Add I2S2 M0 pin definitions
Date: Sun,  8 Oct 2023 15:04:59 +0200
Message-ID: <20231008130515.1155664-2-megi@xff.cz>
In-Reply-To: <20231008130515.1155664-1-megi@xff.cz>
References: <20231008130515.1155664-1-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Ondrej Jirman <megi@xff.cz>

This is used on Orange Pi 5 Plus.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 .../boot/dts/rockchip/rk3588s-pinctrl.dtsi    | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
index 48181671eacb..72708b1d8036 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
@@ -1349,6 +1349,41 @@ i2s1m1_sdo3: i2s1m1-sdo3 {
 	};
 
 	i2s2 {
+		/omit-if-no-ref/
+		i2s2m0_lrck: i2s2m0-lrck {
+			rockchip,pins =
+				/* i2s2m0_lrck */
+				<2 RK_PC0 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s2m0_mclk: i2s2m0-mclk {
+			rockchip,pins =
+				/* i2s2m0_mclk */
+				<2 RK_PB6 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s2m0_sclk: i2s2m0-sclk {
+			rockchip,pins =
+				/* i2s2m0_sclk */
+				<2 RK_PB7 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s2m0_sdi: i2s2m0-sdi {
+			rockchip,pins =
+				/* i2s2m0_sdi */
+				<2 RK_PC3 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s2m0_sdo: i2s2m0-sdo {
+			rockchip,pins =
+				/* i2s2m0_sdo */
+				<4 RK_PC3 2 &pcfg_pull_none>;
+		};
+
 		/omit-if-no-ref/
 		i2s2m1_lrck: i2s2m1-lrck {
 			rockchip,pins =
-- 
2.42.0


