Return-Path: <devicetree+bounces-197271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D401B08AE0
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:38:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E05B1A63112
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 10:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3EC7299928;
	Thu, 17 Jul 2025 10:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="g/9sSgqy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182841DE8A3
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 10:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752748671; cv=none; b=ddbBVYSGZGoMq8HvmENVFL1Qa8HTCkV0CmHeuPVBeMSfg8OjanCli1jO4wyJo3cAr1VDx4aB7YQrOEh/BlzG+qhwMqP3y2s559yEIJLAr4djyW91/NlXXitdKHhCNXZAd+faqVVhWd4MpOvtSB4yIJFXlrJQ7+bwFFpvU5Sb3ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752748671; c=relaxed/simple;
	bh=GgpNL/XXWtKjZf510/o0Qy50FLTQiRccuWLFGLTEmAM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=loCV5Ni7vSECXGwxs5eCWeHopinFf1ZoJUdvGf6fzKER0KpwA31JJ3LPz0pD3ZNE0aGtVl0d4DqtymuVlltrZUbJAiV/ECUPKoN8peJqpYbSRiPppn4Vcl2AjvaZv2wBr+M+hYpy4umpvJg0lODCzUH1D+J7fWqug1AaL9ms+1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=g/9sSgqy; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1752748668;
 bh=4QObQHg0Pp7WjLsIyMhmuEM54eUelHYMuhyQ1jYYViw=;
 b=g/9sSgqyRSk7L/LFokcJjNX/swhKgGiITHC2ULsJ4xAJiZpC5XubzDs09qpZaUZC3FhkL1bkS
 /WQBGYBrPjqNlZFRuWp5+0DxnHjLdPbGZ2XeCO4lfMG2AD456HK+AnrGIIX3fdrkOvpqdStB+rj
 V585QM7oxdbd501bhWsbvSetXkjW9J0gAdkFNQwbelzCuGfPuA6T6k8p7+xs5c8PU20/K11MBWy
 jSn+BDFDJS8gywUaoYiN600yh7aL2po24v+2sTLSv6/rU5fB9dzrVWkV14lH05mOqIuRULmuQ7e
 Pz36zHrFYdyz0K69TtGiYToaj7uPHat/BD59Nj7ETvCw==
X-Forward-Email-ID: 6878d2655e51505848fe5f75
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 0/6] arm64: dts: rockchip: Add ROCK 2A/2F, Sige1 and NanoPi Zero2
Date: Thu, 17 Jul 2025 10:37:02 +0000
Message-ID: <20250717103720.2853031-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds dt-bindings and initial device tree for the following
Rockchip RK3528A boards:
- Radxa ROCK 2A/2F
- ArmSoM Sige1
- FriendlyElec NanoPi Zero2

The bt/wifi_reg_on pins are described in the device tree using
rfkill-gpio nodes.

Changes in v4:
- Remove disable-wp prop from sdio0
- Collect r-b and t-b tags

Changes in v3:
- Rename led nodes to led-0/led-1
- Remove pinctrl* props from sdio0
- Collect a-b tags

Changes in v2:
- Limit sdmmc max-frequency to 100 MHz on ROCK 2A/2F
- Drop clock-output-names prop from rtc node on Sige1 and NanoPi Zero2
- Drop regulator-boot-on from usb 2.0 host regulators on Sige1
- Add bluetooth and wifi nodes on Sige1
- Collect t-b tag for NanoPi Zero2

These boards can be booted from emmc or sd-card using the U-Boot 2025.07
generic-rk3528 target or work-in-progress patches for these boards [1].

For working bluetooth on ArmSoM Sige1 the patch "arm64: dts: rockchip:
Fix UART DMA support for RK3528" [2] is required.

[1] https://source.denx.de/u-boot/contributors/kwiboo/u-boot/-/commits/rk3528
[2] https://lore.kernel.org/r/20250709210831.3170458-1-jonas@kwiboo.se

Jonas Karlman (6):
  dt-bindings: arm: rockchip: Add Radxa ROCK 2A/2F
  arm64: dts: rockchip: Add Radxa ROCK 2A/2F
  dt-bindings: arm: rockchip: Add ArmSoM Sige1
  arm64: dts: rockchip: Add ArmSoM Sige1
  dt-bindings: arm: rockchip: Add FriendlyElec NanoPi Zero2
  arm64: dts: rockchip: Add FriendlyElec NanoPi Zero2

 .../devicetree/bindings/arm/rockchip.yaml     |  17 +
 arch/arm64/boot/dts/rockchip/Makefile         |   4 +
 .../boot/dts/rockchip/rk3528-armsom-sige1.dts | 464 ++++++++++++++++++
 .../boot/dts/rockchip/rk3528-nanopi-zero2.dts | 340 +++++++++++++
 .../boot/dts/rockchip/rk3528-rock-2.dtsi      | 293 +++++++++++
 .../boot/dts/rockchip/rk3528-rock-2a.dts      |  82 ++++
 .../boot/dts/rockchip/rk3528-rock-2f.dts      |  10 +
 7 files changed, 1210 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-rock-2.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-rock-2f.dts

-- 
2.50.1


