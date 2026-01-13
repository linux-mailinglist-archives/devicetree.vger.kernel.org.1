Return-Path: <devicetree+bounces-254283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FFCD16DFA
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:42:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83FA8301F8E6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 06:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FD07368291;
	Tue, 13 Jan 2026 06:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUJ7yxR3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218D735CB8D;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768286546; cv=none; b=tvEBxL5b5lcH4deNf/pqh7t7dpEwq07VXj26PR/Xxh39dYQ9os2DHZlmJefMqvZIqmtlroZNyZN6IcR2r8CyA2qaLsuRJYRQnESyCCfm1T4JQL6hGIy0X+c9l8oJhrnc0rqULFahz5xAlfXPI8AQjaGwzA/wv0mLysGEe7X4uzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768286546; c=relaxed/simple;
	bh=8tXZjIGktkSj/gIsBOODpm0xDPGQpoD1AscqdH+ddjM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LQAI3AI5YXeht5ZDD1dpd9Z44OsV8XHdm2yjr/Vj/eR7bdfiHgrDOR+XU6BNFMu7e2utg4YUADQWyKnkAifJC0f6WCb9Gnd3wJV3X2ODHviIHqzoXo3AJvZTsCWlwXonjEscpfXc8thbnaZxX3ANfa/y8LvrvrFPA5I6ZWNk/Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUJ7yxR3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F15C19421;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768286545;
	bh=8tXZjIGktkSj/gIsBOODpm0xDPGQpoD1AscqdH+ddjM=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=jUJ7yxR3zF7iMneSOtjf32VJ2lqx02jnF6tHFVQSHPXMhiU2MNm/VKm2ACxEx7sz7
	 njtst3O8l4UEiPGdfpiL/9Qd/5mDZKYOADJ0Ouge3eDJ9VPPgo4FalS6zgMjv7Q7dy
	 QO4xoGykMTc0ndD/t4MWnlL9zqFceCEIEzVf731yLgvMptpPdBof89zMfUZMUkYdQy
	 yBAL1rwRnv3ldJrf/R6RJMeUR7TDbbcBQFtbrHS7OQtxd/XSwDkAM0cMyJ4a09ZljL
	 TweD/lBJujQZFY8Ed6c5zFrDb/BmUTZ15hd/8OLtgptEP8foRr1n6nXD8S9m+eFpSO
	 Bl/ajQof/1u5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11F6D29DC3;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Subject: [PATCH 0/3] Pinephone Pro Connectivity: Adding Modem, Bluetooth,
 and Wi-Fi
Date: Mon, 12 Jan 2026 22:42:23 -0800
Message-Id: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAFDpZWkC/yXN2wrCMAyA4VcZvTbSlh3cEPE9ZIzaxRlY29nWq
 ojvbp25+wP58mYBPWFgXfFmHhMFcjaH2BRMX5WdEGjMzSSXNRdCwrIsg3bWoo6UKL6gwjFPcy5
 bXrJ8tni80HMlT/2/Pd7uWY7/JTMYglrlrthnuBJSVis803SNg9Ia58GoaUhuhtE9LKQaOOx00
 6oSdw3n4jgZRfNWO3P4PT2rgJDDUOyKVG9FC15XrP98vtxVLGDiAAAA
X-Change-ID: 20260112-ppp_connectivity-5edddd7b4904
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, Martijn Braam <martijn@brixit.nl>, 
 =?utf-8?q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>, 
 Ondrej Jirman <megi@xff.cz>, Danct12 <danct12@disroot.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768286545; l=3352;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=8tXZjIGktkSj/gIsBOODpm0xDPGQpoD1AscqdH+ddjM=;
 b=zixIm9Y8C+p6V0XPwI08j+ah9mKT91Eo3L76RzVp8W0TjkE+M7AfqSyS7f5AfgUzSQLMyLDEY
 Evxb8NGmqQvBlzyD44ElB20KzPu0uvR7fz8zWayHjnDK1RRsv2JfkCE
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
Reply-To: guptarud@gmail.com

Continuing the work on upstreaming Pinephone Pro functionality,
this patch series gets the connectivity side of the Pinephone Pro
mainlined. Here are the following patches with sources to the original
implementation(s):

arm64: dts: rockchip: Remove interrupt GPIO for WiFi for the Pinephone Pro
- arm64: dts: rockchip: Disable interrupt GPIO for WiFi for the Pinephone Pro
----- https://codeberg.org/megi/linux/commit/7395662eb6700ba19a92fbfb244d4858f08404f3

mfd: rk8xx-core: Configure `rk808-clkout2` function
- power: rk818: Configure rk808-clkout2 function
----- https://codeberg.org/megi/linux/commit/75be96faf939504d0fd5112846e73e437573f716

arm64: dts: rockchip: Add modem to the Pinephone Pro
- arm64: dts: rk3399-pinephone-pro: Add 5V power supply
----- https://codeberg.org/megi/linux/commit/808e7cdaf3ed
- arm64: dts: rk3399-pinephone-pro: Add modem support 
----- https://codeberg.org/megi/linux/commit/8f7e3464
- arm64: dts: rk3399-pinephone-pro: Change modem codec samplerate to 16kHz
----- https://codeberg.org/megi/linux/commit/3bea535
- arm64: dts: rk3399-pinephone-pro: Remove modem node
----- https://gitlab.com/pine64-org/linux/-/commit/f9f847c6fd1

I've also included a short guide on how to test these patches. This
generally follows this page:
https://wiki.postmarketos.org/wiki/PINE64_PinePhone_Pro_(pine64-pinephonepro)

To test, please follow the following steps:
// Follow pmbootstrap installation instructions:
//   https://docs.postmarketos.org/pmbootstrap/main/installation.html
// Next, follow the instructions here to put the Pinephone Pro into USB Mass Storage mode:
//   https://wiki.postmarketos.org/wiki/PINE64_PinePhone_Pro_(pine64-pinephonepro)#Internal_storage_(eMMC)
cd /to/linux/directory/with/these/patches/on/top
// I typically choose Phosh. Defaults should work
pmbootstrap init
wget https://gitlab.postmarketos.org/postmarketOS/pmaports/-/raw/master/device/community/linux-pine64-pinephonepro/config-pine64-pinephonepro.aarch64 -O arch/arm64/configs/orangepi_defconfig
make LLVM=1 CC="ccache clang" O=.output ARCH=arm64 -j $(nproc) W=1 orangepi_defconfig all
pmbootstrap build --envkernel linux-pine64-pinephonepro
pmbootstrap build --force device-pine64-pinephonepro
// Change /dev/sdX appropriately
pmbootstrap install --sdcard=/dev/sdX
// Cleanup everything
pmbootstrap -y zap -a

Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
Kamil Trzciński (1):
      mfd: rk8xx-core: Configure `rk808-clkout2` function

Ondrej Jirman (1):
      arm64: dts: rockchip: Remove interrupt GPIO for WiFi for the Pinephone Pro

Rudraksha Gupta (1):
      arm64: dts: rockchip: Add modem to the Pinephone Pro

 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     | 86 +++++++++++++++++++++-
 drivers/mfd/rk8xx-core.c                           |  1 +
 include/linux/mfd/rk808.h                          |  2 +
 3 files changed, 86 insertions(+), 3 deletions(-)
---
base-commit: d0e305301e82474223bf26185e86e7dc2eb85350
change-id: 20260112-ppp_connectivity-5edddd7b4904
prerequisite-message-id: <20251225-ppp_light_accel_mag_vol-down-v6-0-8c79a4e87001@gmail.com>
prerequisite-patch-id: 8b32de16edffc9f81d299e40107c95908ead6a81
prerequisite-patch-id: 7714aa0d065ea9bc58a8fe67f04d738153752221

Best regards,
-- 
Rudraksha Gupta <guptarud@gmail.com>



