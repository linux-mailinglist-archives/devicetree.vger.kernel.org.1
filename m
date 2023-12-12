Return-Path: <devicetree+bounces-24174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AF28D80E520
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:54:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C7DD1F21242
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 07:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9775A17735;
	Tue, 12 Dec 2023 07:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="NH8DvxEX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31555B8
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 23:53:55 -0800 (PST)
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702367633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=GQ4f8+gg0gRtP47ZKqPupgOZu+elqk+j6WeCTAxMuhk=;
	b=NH8DvxEXuWGrv9wFR0S1uzf2/1eBmqolKzGyLH9P/f80ijf3FEBl+DSrMYDp51+e7/5oIa
	lcdc0K9b0Q1RmC7rQDVxYo6/T0vOT2hj02BQZ8KqpLY4ONCbKxXxQwSq9ESM1zLb3YaVbk
	VOOp5Mh8YsQpCR8joUDg6JICyhyVZ/5unyXj8jS57NxVXx6jHyad1xTBI3TTVgpBhym62N
	pXjaEx0JxFXyRWhv+y+hBWFijXcQTC0fiIs+oz5MoJIuNYiPeRC9PBr5ea3IB5B5S9Kaoh
	zfbCmux0Zf2vGHORazWuTFwbrJvujMt1hhE314zg18ZmjwchaUwat7PqCg5VIA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 0/4] Remove ethernetX aliases from the SoC dtsi for RK3399, RK3368, RK3328 and PX30
Date: Tue, 12 Dec 2023 08:53:47 +0100
Message-Id: <cover.1702366958.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Unlike for the I2C buses, GPIO lines and UARTs, the Rockchip SoC TRMs and
datasheets define no numbering for the built-in GMAC(s) or MAC(s), if there
are more than one found in the particular Rockchip SoC.

Moreover, not all boards or devices based on these SoCs actually use the
built-in GMAC(s) or MAC(s).  Thus, let's remove the ethernetX aliases from
the SoC dtsi files and add them back to the appropriate board and device
dts(i) files.  See also [1] for the initial discussion.

This is quite similar to the already performed migration of the mmcX aliases
from the Rockchip SoC dtsi files to the board dts(i) files.

The correctness of the patches in this series was verified by comparing the
contents of the compiled dtb files before and after applying the patches.
All of the affected dtb files checked out fine.

[1] https://lore.kernel.org/linux-rockchip/5119280.687JKscXgg@diego/T/#u

Dragan Simic (4):
  arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for
    RK3399
  arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for
    RK3368
  arm64: dts: rockchip: Remove ethernetX aliases from the SoC dtsi for
    RK3328
  arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for
    PX30

 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi       | 1 +
 arch/arm64/boot/dts/rockchip/px30-evb.dts                   | 1 +
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts       | 1 +
 arch/arm64/boot/dts/rockchip/px30.dtsi                      | 1 -
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts             | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts                  | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts                 | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts          | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts    | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts              | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts           | 2 ++
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts              | 1 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi                    | 2 --
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi                | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts             | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi               | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts                 | 1 +
 arch/arm64/boot/dts/rockchip/rk3368.dtsi                    | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts                 | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts               | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts             | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts          | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-captain.dts | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dts       | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi            | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts            | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi               | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi             | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts        | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi          | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi          | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi           | 1 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi                    | 1 -
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi       | 1 +
 38 files changed, 44 insertions(+), 5 deletions(-)


