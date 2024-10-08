Return-Path: <devicetree+bounces-109180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6C69958A4
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:40:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3020D1F27AF7
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C0AB215004;
	Tue,  8 Oct 2024 20:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="2b5quYwp"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694D41D5CDB
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728419997; cv=none; b=uWQM2MUrRO6/j+sxPMJnoyK/X2w3MbE/9r2/+0x1rUeFsPxhBEahJqK/h2UqdpsGtt2XY2s0pUMZHLsz5ai2TbdLDgM8avoze3kYX12Hf16VOiKPTnD8BkIW9qWuP2O8LR6q9x7JTE3OQEoXdcC3CefrjwxAq/rLZEAy0Ccl5/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728419997; c=relaxed/simple;
	bh=EFFTT29k5liAP7kemMemnoH5REvEeKe+9tqyo8mpwe4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=iOVVx3l2/zDIxlNh0s9hhFO9Jm7nBq1AByYj4BdP9cFOud8GStno3yrEKuMxjtFGWeacBnZi40KQ/VYTQzr8fXg+39BlRH4q217WtJ/zNSTeKzlOA/Qal86wDe+ApnYTsHfp0i0fufMMMRpL73shLe6kMU5W/1cxFi07nf5Itdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=2b5quYwp; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+wnTrkpeqYeGIYrvQCycWqExHJfN6ud3GRMcEZQjkhk=; b=2b5quYwpBfV32GR+HZrAYDiYrI
	TRkm7LKkareRd8DBiKzaaz59Laq5okfsrT6wQhjSQwDn95SDe20Q32oPouvreUH7PK9AKmkY9BH2T
	S9ZmVebaci1gWG9LuQlavdYZ4qs17nKKXffaaXloL1Q6I2jSJnVrVDtsJIX3xo62/kqGgvxGJt6lh
	nRoTddl6Gj1MDv+bDWaDEbCRnbN2mAFj/RtEo7U/4eWFAlkXrsNMN/gdPwtkzzgZ/q+J1aGXlzKmi
	nRvyHLxGAmdrKVkNCCZAL0V04W1z1ezyw+MjsTCRloP69XzJL9Q8nSdEjoy95s61MgblAwT4AQIVx
	m9MNknyg==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzp-0007ua-Jw; Tue, 08 Oct 2024 22:39:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 00/14] Fixing some dtbscheck warnings
Date: Tue,  8 Oct 2024 22:39:26 +0200
Message-ID: <20241008203940.2573684-1-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fixing dtbs-check warnings should be declared addictive, one starts
with one warning, then another one and then it's oh, I'll just fix
this "last" one over and over ;-)

We still have more, if others want to play too :-D .

changes in v2:
- more fixes
- use more appropriate txco clk for brcm bluetooth

Heiko Stuebner (14):
  arm64: dts: rockchip: fix i2c2 pinctrl-names property on
    anbernic-rg353p/v
  arm64: dts: rockchip: Drop regulator-init-microvolt from two boards
  arm64: dts: rockchip: Fix bluetooth properties on rk3566 box demo
  arm64: dts: rockchip: Fix bluetooth properties on Rock960 boards
  arm64: dts: rockchip: Remove undocumented supports-emmc property
  arm64: dts: rockchip: Remove #cooling-cells from fan on Theobroma
    boards
  arm64: dts: rockchip: Fix LED triggers on rk3308-roc-cc
  arm64: dts: rockchip: remove num-slots property from
    rk3328-nanopi-r2s-plus
  arm64: dts: rockchip: Remove 'enable-active-low' from two boards
  arm64: dts: rockchip: remove orphaned pinctrl-names from pinephone pro
  ARM: dts: rockchip: fix rk3036 acodec node
  ARM: dts: rockchip: drop grf reference from rk3036 hdmi
  ARM: dts: rockchip: Fix the spi controller on rk3036
  ARM: dts: rockchip: Fix the realtek audio codec on rk3036-kylin

 arch/arm/boot/dts/rockchip/rk3036-kylin.dts        |  4 ++--
 arch/arm/boot/dts/rockchip/rk3036.dtsi             | 14 +++++++-------
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi    |  2 --
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts     |  4 ++--
 .../boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts   |  2 --
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi      |  1 -
 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     |  2 --
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      |  1 -
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |  2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg353p.dts   |  2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg353v.dts   |  2 +-
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts   |  6 +++---
 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts |  1 -
 arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts |  1 -
 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts     |  3 ---
 .../rk3568-wolfvision-pf5-io-expander.dtso         |  1 -
 .../arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts |  1 -
 .../arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts |  1 -
 18 files changed, 17 insertions(+), 33 deletions(-)

-- 
2.43.0


