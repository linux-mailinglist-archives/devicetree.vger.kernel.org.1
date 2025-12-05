Return-Path: <devicetree+bounces-244647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A5ACA7854
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 13:08:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1CB63082D5A
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 12:08:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7868F32E74B;
	Fri,  5 Dec 2025 12:08:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777DE32573D
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 12:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764936522; cv=none; b=hawynVGPj67Bp6XlhwA3LygdC1Gnzj7xpHnCYHP6HupCCFmYfm1FevCKrwcn5Sa7gGjUM9yJWZj7s2O0q8eyY7LbC59da/AblExiEBE72kpMbJU3SuQ5cM1Rcbepfb/HQ2/eye0BDpqxODSeOiFKWfjiN553AAAMCVhhWIVr3sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764936522; c=relaxed/simple;
	bh=oqrKsfdhEtMZfA9nc3Ybg/hoKMz+IDu3ETx4OFvATGk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iiArH8DBoRUdxDVj0kBN9CXUOtSqRRfUzgf0zLUn3SQNZOfdiqlcCmRb0gdzUbEfqCL2etPkS8w3S4izj3u76pLwsqYoD3IVO/Ng7L9zEbFFhemvoPQfxFWuoGsNijlsBMYpv9AIx3me5LJHzHakKWDv3GEQnaBO2cwPRkrntfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5B5C7DSH023400;
	Fri, 5 Dec 2025 21:07:13 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        quentin.schulz@cherry.de, jonas@kwiboo.se, kever.yang@rock-chips.com,
        inindev@gmail.com, michael.opdenacker@rootcommit.com,
        honyuenkwun@gmail.com, dsimic@manjaro.org, andrew@lunn.ch,
        pbrobinson@gmail.com, joseph.kogut@gmail.com, dmitriy@filchenko.org,
        shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 0/3] Add Radxa CM5 module and IO board dts
Date: Fri,  5 Dec 2025 12:07:00 +0000
Message-ID: <20251205120703.14721-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds initial device tree support for the Radxa CM5 SoM
and accompanying IO board.

V5 -> V6:
  Patch (2/3)
  - Move gmac1 (except status) from cm5-io.dts (Jimmy)
  - Move pmic from cm5-io.dts (Dmitriy)

  Patch (3/3)
  - Remove regulator-{always,boot}-on from vcc3v3_pcie (Shawn)
  - Remove max-frequency from sdmmc (Shawn)
  - Remove no-mmc from sdmmc (Jimmy)

V4 -> V5:
  Patch (2/3), per Jimmy:
  - Alias eMMC to mmc0
  - Remove unused sdio alias
  - Move gmac, hdmi0 nodes to carrier board dts

  Patch (3/3), per Jimmy:
  - Enable hdmi0_sound and i2s5_8ch
  - Remove redundant enablement of sdhci
  - Enable usb_host2_xhci

  - Tested HDMI audio

V3 -> V4:
  - Fixed XHCI initialization bug by changing try-power-role from source
    to sink

V2 -> V3:
  - Addressed YAML syntax error in dt binding (per Rob)
  - Fixed whitespace issue in dts reported by checkpatch.pl
  - Split base SoM and carrier board into separate patches
  - Added further details about the SoM and carrier to the commit
    messages

V1 -> V2:
  - Added copyright header and data sheet links
  - Removed non-existent property
  - Sorted alphabetically
  - Removed errant whitespace
  - Moved status to the end of each node
  - Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
  - Removed delays from gmac with internal delay

- Link to v4: https://lore.kernel.org/r/20250605-rk3588s-cm5-io-dts-upstream-v4-0-8445db5ca6b0@gmail.com

Joseph Kogut (3):
  dt-bindings: arm: rockchip: Add Radxa CM5 IO board
  arm64: dts: rockchip: Add rk3588 based Radxa CM5
  arm64: dts: rockchip: Add support for CM5 IO carrier

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 339 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-radxa-cm5.dtsi  | 280 +++++++++++++++
 4 files changed, 627 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi

-- 
2.43.0


