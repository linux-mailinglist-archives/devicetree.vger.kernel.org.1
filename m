Return-Path: <devicetree+bounces-92034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D47B194B9D5
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 11:39:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 116C21C21B7A
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95B83189BBE;
	Thu,  8 Aug 2024 09:38:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D7F189B95
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 09:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723109928; cv=none; b=WFXYiCBErsuUk5kPOIbHqOdErmB+kncZ5w+VegqYdqybhG6jHN4i2q5hiXB+rYKdQj76XFCesrGetOlw6a5vA/6wcPQJKPw9BU8GvmjvFstbMUXvU6fOEzlbSpzzYqf+qqKAhtZ7j2EnWGk81cta6EbSVj3LI4UO53jUDLjCrG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723109928; c=relaxed/simple;
	bh=t/OAmG9D64H60yvPL15pVlmMpQv3kHmLdLCsvjkZBFY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mfbJcDhPJaVGRaqiO958rjK7ZuY0j2Qx+IFt3pfhSk5xvt6Jdkrm0ncK/ll7DqxEDgqUiY/Qwdf8noI7L9mzFBkvT+Sd1N+10ERTDSIC3YARae3dXGS5qyI6y5QXfWRaQZzehGi2T4BErjiuZl50CADe6LCYFcZMYsF7kmmr4ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4789cSE1030905;
	Thu, 8 Aug 2024 18:38:28 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 00/10] arm64: dts: rockchip: standardize the definition of LEDs for Radxa boards
Date: Thu,  8 Aug 2024 18:37:58 +0900
Message-ID: <20240808093808.1740-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

the standard definition of LEDs for Radxa boards are:

  color = <LED_COLOR_ID_xxx>; [1]
  default-state = "on"; [2]
  function = LED_FUNCTION_xxx [1] [3]
  gpios = <&gpioX RK_Pxx GPIO_ACTIVE_xxx>;
  linux,default-trigger = "xxx"; [3]
  pinctrl-names = "default"; [4]
  pinctrl-0 = <&xxx>; [4]

[1] use "color:function" instead of `label = "xxx:yyy:zzz"`
[2] all LEDs should be turned on at U-Boot
[3] if trigger is "heartbeat", FUNCTION should be HEARTBEAT
[4] if it's SOM and carrier board, put pinctrl properties here
    if it's SBC, put them under `compatible = "gpio-leds"`

FUKAUMI Naoki (10):
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK Pi S
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK Pi E
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK 4C+
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK Pi 4
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa CM3
    IO
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK 3C
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa E25
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK 3A
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK 5B
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK 5A

 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 4 +---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi   | 4 +++-
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 6 ++++--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 3 ++-
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 5 +++--
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi   | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts      | 9 +++++----
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 5 +++--
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts    | 7 ++++---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 9 +++++----
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts      | 3 ++-
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 3 ++-
 12 files changed, 37 insertions(+), 27 deletions(-)

-- 
2.43.0


