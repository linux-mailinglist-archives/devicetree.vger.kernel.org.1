Return-Path: <devicetree+bounces-89815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E2A942CFE
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 13:12:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D705B1F24E5D
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 11:12:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA51D1AB531;
	Wed, 31 Jul 2024 11:12:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-42a9.mail.infomaniak.ch (smtp-42a9.mail.infomaniak.ch [84.16.66.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED8D1AB52E
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 11:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.66.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722424364; cv=none; b=BFu49o29G3Jm3eRaU++rqYWUtJmtli2HAzvcMitj/zUII3HAEuS+loF0gt3nFR8PVKlQ639Ab2EnR1RvS0PCYMmak7GpZwoWIR0tw8kMZGpkB4m4+b8VIMVxCElmuhaFifOeiPYeofduthLf+RrBUYxIGp0QZglJVap5xs4UEg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722424364; c=relaxed/simple;
	bh=dOyIOG9bAIEMgUL/lfBwC5nC2+cdXzNNtcrGu35hluk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=OU8vypU0ss1sECkWSIJvy+8rgulAP6F8QpC8Og/1j3g8Jm4sQmpRqOf8OCiigHR5Nn4AH6W1GLMxtc/xRacholMrqk99XKQ5h/78XlVsIR0MwZ2hZpNubnBLhSbIJ8h89+Cw68VjVPGoZFJvYqNb7S8avcPTSaC5Yi5KY93L0OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=84.16.66.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4WYq6722Tpz1KK;
	Wed, 31 Jul 2024 13:06:23 +0200 (CEST)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4WYq661mx4zR92;
	Wed, 31 Jul 2024 13:06:22 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH 0/2] fix eMMC/SPI flash corruption when audio has been used
 on RK3399 Puma
Date: Wed, 31 Jul 2024 13:05:27 +0200
Message-Id: <20240731-puma-emmc-6-v1-0-4e28eadf32d0@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHcaqmYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDc2ND3YLS3ETd1NzcZF0z3WRDE8NUC0tDIyODJCWgjoKi1LTMCrBp0bG
 1tQArVyiAXQAAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Judy Hsiao <judyhsiao@chromium.org>, 
 Brian Norris <briannorris@chromium.org>
Cc: stable@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, 
 foss+kernel@0leil.net
X-Mailer: b4 0.14.0
X-Infomaniak-Routing: alpha

In commit 91419ae0420f ("arm64: dts: rockchip: use BCLK to GPIO switch
on rk3399"), an additional pinctrl state was added whose default pinmux
is for 8ch i2s0. However, Puma only has 2ch i2s0. It's been overriding
the pinctrl-0 property but the second property override was missed in
the aforementioned commit.

On Puma, a hardware slider called "BIOS Disable/Normal Boot" can disable
eMMC and SPI to force booting from SD card. Another software-controlled
GPIO is then configured to override this behavior to make eMMC and SPI
available without human intervention. This is currently done in U-Boot
and it was enough until the aforementioned commit.

Indeed, because of this additional not-yet-overridden property, this
software-controlled GPIO is now muxed in a state that does not override
this hardware slider anymore, rendering SPI and eMMC flashes unusable.

Let's override the property with the 2ch pinmux to fix this.

While at it, add a GPIO hog for this software-controlled GPIO to make it
explicit and also make it reserve the pin through the pinctrl subsystem
to make sure nobody can mistakenly request it for something else: better
have a non-working feature than eMMC/SPI being corrupted "randomly"!

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Quentin Schulz (2):
      arm64: dts: rockchip: fix eMMC/SPI corruption when audio has been used on RK3399 Puma
      arm64: dts: rockchip: override BIOS_DISABLE signal via GPIO hog on RK3399 Puma

 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 36 ++++++++++++++++++++++++---
 1 file changed, 33 insertions(+), 3 deletions(-)
---
base-commit: e4fc196f5ba36eb7b9758cf2c73df49a44199895
change-id: 20240731-puma-emmc-6-c141e891220b

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


