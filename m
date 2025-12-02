Return-Path: <devicetree+bounces-243575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EACA7C9A194
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 06:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9DF9F4E11DA
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 05:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA87B2DE6E5;
	Tue,  2 Dec 2025 05:32:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C5415746F
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 05:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764653521; cv=none; b=QQToExtFOmP3YLjoTua7+/kY8QlEntCKg4XUV0pg3aB2UBIweRnfF7e9nmPUUZGm6v/22KGGAQ7PuLYqfr02yBIm0bsW3B47JEShDfQdr8ccoJu59nlUdU8A05/W/ouCmP2KyfwAzxUkvGCuyTPwxAPqpW75uz10Oj3zuOX3SQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764653521; c=relaxed/simple;
	bh=iibVxKxx8C6HvAN/GYrtnawRrQLwkIFAioxf41qNga0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tRUukhZdhLBxZh1Rb4GR9YMsDgMACfNYL5/WNWMdp15c1t80mSXnUXb2fDxbK5KI6RLCixQHtgl82HEIskPH96YW+Bt5zmgDC7CGss6tdBNyLucSFARSXDldkQ14BKTO1U2Osci2GwfbdRpqhIPDIXOK5EVR4iV2GkNmzOtaIh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5B25R8HS007965;
	Tue, 2 Dec 2025 14:27:09 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
        kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com,
        inindev@gmail.com, michael.opdenacker@rootcommit.com,
        dsimic@manjaro.org, pbrobinson@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [RESEND PATCH v5 0/3] Add Radxa CM5 module and IO board dts
Date: Tue,  2 Dec 2025 05:26:59 +0000
Message-ID: <20251202052702.155523-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Joseph Kogut <joseph.kogut@gmail.com>

This patch series adds initial device tree support for the Radxa CM5 SoM
and accompanying IO board.

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
 .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 486 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-radxa-cm5.dtsi  | 135 +++++
 4 files changed, 629 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi

-- 
2.43.0


