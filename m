Return-Path: <devicetree+bounces-8479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 571627C84D9
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:48:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EB1CAB20993
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 11:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFEF513FFC;
	Fri, 13 Oct 2023 11:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="XN2hI3fY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCD813FF1
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:47:51 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 821FFBF;
	Fri, 13 Oct 2023 04:47:49 -0700 (PDT)
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c8:b70a:ae01:c2e1:3bb7:ed5c:6a0d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 24893660735E;
	Fri, 13 Oct 2023 12:47:48 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697197668;
	bh=CCYO2Nxk6wHQeFOamNkL/4O7unR6kwkhjTCQuRoEydY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XN2hI3fYED/cM0FKRFyzVDLMLuOThRPGfqH52Baig1uVi93sCyF8orvE3K3/wyciY
	 aTS3P6U34nJKMd4bIw94gbKZ3tS6O/3CXTLqLqH8RreEWYVVUzk4/PjRvWZ9V4LMle
	 BCmwQY8zEhnTacnUQd0jkK9iIjgaoRskGmDNUl81/Gp24lVEBIWVgqTfu2OD+Wki63
	 5TmLyj6gQTDowHkDOuj5S7eD8+/R0xsViFXcCp6ZRRar37ixnfPBUSDsyJjwgrhsMh
	 UyiMdWzRBVN4zmyrYH+TtYadA5v0mcApRkiLgQdEdrh46GXHfmFhbOpW8Sy6+KiOyy
	 BsCRc9JizbPvg==
From: Christopher Obbard <chris.obbard@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>,
	Brian Norris <briannorris@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Yogesh Hegde <yogi.kernel@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] arm64: dts: rockchip: Fix i2s0 pin conflict on ROCK Pi 4 boards
Date: Fri, 13 Oct 2023 12:47:27 +0100
Message-ID: <20231013114737.494410-3-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231013114737.494410-1-chris.obbard@collabora.com>
References: <20231013114737.494410-1-chris.obbard@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Commit 91419ae0420f ("arm64: dts: rockchip: use BCLK to GPIO switch on
rk3399") modified i2s0 to switch the corresponding pins off when idle.
For the ROCK Pi 4 boards, this means that i2s0 has the following pinctrl
setting:

    pinctrl-names = "bclk_on", "bclk_off";
    pinctrl-0 = <&i2s0_2ch_bus>;
    pinctrl-1 = <&i2s0_8ch_bus_bclk_off>;

Due to this change, i2s0 fails to probe on my Radxa ROCK 4SE and ROCK Pi
4B boards:

    rockchip-pinctrl pinctrl: pin gpio3-29 already requested by leds; cannot claim for ff880000.i2s
    rockchip-pinctrl pinctrl: pin-125 (ff880000.i2s) status -22
    rockchip-pinctrl pinctrl: could not request pin 125 (gpio3-29) from group i2s0-8ch-bus-bclk-off  on device rockchip-pinctrl
    rockchip-i2s ff880000.i2s: Error applying setting, reverse things back
    rockchip-i2s ff880000.i2s: bclk disable failed -22

A pin requested for i2s0_8ch_bus_bclk_off has already been requested by
user_led2, so whichever driver probes first will have the pin allocated.

The hardware uses 2-channel i2s so fix this error by setting pinctl-1 to
i2s0_2ch_bus_bclk_off which doesn't contain the pin allocated to user_led2.

I checked the schematics for all Radxa boards based on ROCK Pi 4 and this
change is compatible with all boards.

Fixes: 91419ae0420f ("arm64: dts: rockchip: use BCLK to GPIO switch on rk3399")
Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---

 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 7dccbe8a93930..f2279aa6ca9e1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -492,6 +492,7 @@ &i2c4 {
 
 &i2s0 {
 	pinctrl-0 = <&i2s0_2ch_bus>;
+	pinctrl-1 = <&i2s0_2ch_bus_bclk_off>;
 	rockchip,capture-channels = <2>;
 	rockchip,playback-channels = <2>;
 	status = "okay";
-- 
2.42.0


