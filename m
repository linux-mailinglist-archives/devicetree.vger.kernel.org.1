Return-Path: <devicetree+bounces-68238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CDA8CB519
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 23:10:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 881251F21F7E
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 21:10:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C5AE1494CD;
	Tue, 21 May 2024 21:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="0Q7Z6al0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02CE50276
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 21:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716325841; cv=none; b=CwZBKOyEyTHtm79eS0TNW5JAevZLyWDnowlsZ9SqAQOiPJ7jfhJ4yXpjWmvWB5yAiktS5NqwPzokyO2771lSwwknopTQLcjjSBUpvw1r5YJfthuy/2h5OYvR1SW54PmGevXVHnruTbw6Vs6gutiT5VBEXOHh/TH2XmbrftWf8b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716325841; c=relaxed/simple;
	bh=8JBMNubzBlrNFlIoszTi2j2WKGqaWIMzeKz/8RA/I9c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aPGrw0M5NWlH8YFCE3BshLrOSTFAvNYlDGgMBj5v1DkxFuYU12r3DXHZzenPxx51Lf5ydQ3/Zh8fEbmgnxjuadiOwvelMm6sqjktkKRT3mb8ICWDr5rYrXkZ/8jMRXaOEYuE26hIDE9QmEo7uCVT7MPcPvspxBtcPg04GX1xKIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=0Q7Z6al0; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1716325836;
 bh=CngQAMHgs11xPbXeeW6bhvCsMpbYaqV/+RYWVdlvtmw=;
 b=0Q7Z6al0I4Ke4HeLwCaNYwpxM/WxgoWi77FQLARLAD2zl5mcBrN5YXjGbYLoXvRMXElMr2VX2
 QfCajEkB/FVXcudoboBshN6yTG79nd7Om4e1iG0zILX7CHfUF1P1xwRBkEmf2m2LWd9i/Ancwks
 xzSKbNk+lA28ypNsNErK/Nhapcw3mnOucYF6o1Yw5ko6AssD3hBgT2ZmKrXA6VwfUKO3ZqZdGOM
 sDEUaHPvAgpDcGhJK4LuvY5fv6ss00q97Z3zSBqIdeiwgGuaAUpd2ttwOnzfJyHLAyKEP/GjJBo
 jrZ/jqtnLFHOxgSiEmwBFufyMvfljV+oztpcOqMucNVg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 00/13] rockchip: Fixes and improvements for ROCK Pi S
Date: Tue, 21 May 2024 21:10:03 +0000
Message-ID: <20240521211029.1236094-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 664d0dcb8b6b0c828344ae94

This series include fixes for DT schema validation, fixes and improve
support for onboard features of the Radxa ROCK Pi S board.

Patch 1-2 fixes DT schema validation of ethernet and audio codec.

Patch 3 fixes use of onboard SD NAND and eMMC.

Patch 4-7 improve details and support for onboard features.

Patch 8 add OTP device node to SoC DT.

Patch 9-11 add support for RK3308 IO voltage domain to driver and DT.

Patch 12-13 correctly configures IO voltage domain and fixes WiFi/BT.

This series have been tested on a v1.3 board having a RK3308B SoC.

David Wu (1):
  soc: rockchip: io-domain: Add RK3308 IO voltage domains

Jonas Karlman (12):
  dt-bindings: net: rockchip-dwmac: Fix rockchip,rk3308-gmac compatible
  arm64: dts: rockchip: rk3308: Fix codec@ff560000 reset-names
  arm64: dts: rockchip: rk3308-rock-pi-s: Fix SD NAND and eMMC init
  arm64: dts: rockchip: rk3308-rock-pi-s: Add sdmmc related properties
  arm64: dts: rockchip: rk3308-rock-pi-s: Add pinctrl for UART0
  arm64: dts: rockchip: rk3308-rock-pi-s: Rename LED related pinctrl
    nodes
  arm64: dts: rockchip: rk3308-rock-pi-s: Add mdio and ethernet-phy
    nodes
  arm64: dts: rockchip: Add OTP device node for RK3308
  dt-bindings: power: rockchip: Document RK3308 IO voltage domains
  arm64: dts: rockchip: Add RK3308 IO voltage domains
  arm64: dts: rockchip: rk3308-rock-pi-s: Enable the io-domains node
  arm64: dts: rockchip: rk3308-rock-pi-s: Update WIFi/BT related nodes

 .../devicetree/bindings/net/snps,dwmac.yaml   |  1 +
 .../bindings/power/rockchip-io-domain.yaml    | 24 +++++
 .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 99 ++++++++++++++++---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      | 31 +++++-
 drivers/soc/rockchip/io-domain.c              | 40 ++++++++
 5 files changed, 182 insertions(+), 13 deletions(-)

-- 
2.43.2


