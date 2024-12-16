Return-Path: <devicetree+bounces-131378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F669F2F94
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:37:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2CF3169547
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 11:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 078D4205AA2;
	Mon, 16 Dec 2024 11:31:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E4120551A
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 11:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734348707; cv=none; b=FQoi10djNVjKw+wz1m5iCvJ9uq4h+ECpTc5KIHj1cNto3esoivotamH7kNnr+COlq7BcAXW4hUHENn43CVMNcqwfDQeCSQVPNxVXJBkN7eZGB1RBmtuWFTcTogsk7J0G+s4fYZXYOwhSumRLZIHyyrCzbOg/FaF3amD0VU9RvwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734348707; c=relaxed/simple;
	bh=TmuyLsarwsMCmaoGtXgiFQa6vty66uKZ5C8A2Q1NXVw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JW9DyyftsAT+X8eccrQyShngt87q3aNmog/kePaDLLrfnRCGBxPdprhzUbFBHViXJnSmgfOhYCz4/Ij3pprSEl2BVmScZmJsJsMGzKaQQgXbeFQGhznPXJIkInb4vSmz3pBUP5VDRonTMv8nDRyKZyu19+X0UlExcmZUsSlYloE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BGBUxOL028690;
	Mon, 16 Dec 2024 20:31:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v5 00/12] arm64: dts: rockchip: Refine dts for Radxa ROCK 5C
Date: Mon, 16 Dec 2024 11:30:40 +0000
Message-ID: <20241216113052.15696-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series includes fixes for difference from schematic and
vendor kernel, minor improvements, cosmetic changes, etc.

FUKAUMI Naoki (12):
  arm64: dts: rockchip: Change function name for blue LED for Radxa ROCK
    5C
  arm64: dts: rockchip: Change node name for pwm-fan for Radxa ROCK 5C
  arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa
    ROCK 5C
  arm64: dts: rockchip: Rename regulator for pcie2x1l2 for Radxa ROCK 5C
  arm64: dts: rockchip: Add properties for pcie2x1l2 for Radxa ROCK 5C
  arm64: dts: rockchip: Remove RTC and related node for Radxa ROCK 5C
  arm64: dts: rockchip: Separate pinctrl for vcc_5v0 for Radxa ROCK 5C
  arm64: dts: rockchip: Add cd-gpios for sdmmc for Radxa ROCK 5C
  arm64: dts: rockchip: Fix pmic dcdc-reg7 regulator-name for Radxa ROCK
    5C
  arm64: dts: rockchip: Fix pmic dcdc-reg10 label for Radxa ROCK 5C
  arm64: dts: rockchip: Fix proparties for pmic regulators for Radxa
    ROCK 5C
  arm64: dts: rockchip: Sort nodes for Radxa ROCK 5C

 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 62 +++++++------------
 1 file changed, 22 insertions(+), 40 deletions(-)

-- 
2.43.0


