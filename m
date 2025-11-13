Return-Path: <devicetree+bounces-238128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC424C577CC
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 13:52:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F00F23A2C9B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 12:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE7A634DCC9;
	Thu, 13 Nov 2025 12:47:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD3902DECA5
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 12:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763038058; cv=none; b=a+vyKDDBKVsPod4LHDUUUAtQ7rVphICgHbxhBNSw8WULapg3uHA1bAxFhkV/LB/piLASZQrCxVckw4gtyN5rpv104ksoTe+8aFYcqz54RnNQv6zkyrXD5nTpQst6NCMjawAPZMG1uCIHeDDc0HrR1DG6VcqxHUhVgOqhRGNWvDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763038058; c=relaxed/simple;
	bh=gBAROcRUkYwTba1+ec+AWeOEYXvzBOkKYswP41fgJXY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RYjV48weAnSrDdZOWifyBobGSDrGckkOZpnrEXbYCckrplC2oSe88KElLiKnyRtg7Ix2s+ylqFCnzmL8rshLogB4xcuzgEEDeSGsb9/FaMC8pmAqWAq2MHYuYknY1jtkAbjOdbbZdUxrxiBR0UmdZCaxQGKpq6T2rozIxMAYezU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5ADCgQXt030553;
	Thu, 13 Nov 2025 21:42:27 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, pgwipeout@gmail.com, didi.debian@cknow.org,
        jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn,
        nicolas.frattaroli@collabora.com, pbrobinson@gmail.com,
        wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com,
        sebastian.reichel@collabora.com, liujianfeng1994@gmail.com,
        andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
        kuninori.morimoto.gx@renesas.com, damon.ding@rock-chips.com,
        kylepzak@projectinitiative.io, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 0/3] Consolidate and clarify LED device tree descriptions on Radxa boards
Date: Thu, 13 Nov 2025 12:42:19 +0000
Message-ID: <20251113124222.4691-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently, on Radxa boards, the power LED is turned on immediately
after power-up, independent of software control. The heartbeat LED and
other available LEDs are subsequently turned on by the initial
software, such as U-Boot, to indicate software is running.

However, the device tree description for this behavior is inconsistent
and fragmented, with definitions split between the main Linux DTS
files and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).

This patch series addresses this inconsistency and fragmentation by
consolidating the description within the upstream device tree, thereby
improving overall clarity.

Patch 1 addresses the inconsistency for the power LED by using
default-state = "on" instead of linux,default-trigger = "default-on".

Patch 2 addresses the description fragmentation for the heartbeat LED
by consolidating its default-state = "on" definition from the U-Boot
files into the main Linux DTS.

Patch 3 addresses inconsistency by removing redundant default-state =
"off" definitions, as this is already the default configuration.


This patch series does not address some LEDs that are (implicitly)
default-state = "off" at kernel but should be "on" at bootloader.
These will be addressed separately.

FUKAUMI Naoki (3):
  arm64: dts: rockchip: Use default-state for power LED for Radxa boards
  arm64: dts: rockchip: Turn on heartbeat LED at boot for Radxa boards
  arm64: dts: rockchip: Remove default-state = "off" from LEDs for Radxa
    boards
---
Changes in v3:
- Split into three patches
- Reword commit message
Changes in v2:
- Add more URLs for reference
- Reword commit message
---
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 1 -
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts    | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 3 ++-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 1 +
 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts   | 2 --
 arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts      | 1 -
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 1 +
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts      | 3 ++-
 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts   | 2 --
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi     | 1 +
 arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 3 ++-
 16 files changed, 15 insertions(+), 10 deletions(-)

-- 
2.43.0


