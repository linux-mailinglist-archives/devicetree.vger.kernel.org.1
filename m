Return-Path: <devicetree+bounces-236393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E84CC43FF3
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 15:19:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D37463ACD56
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 14:19:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C82A22FDC53;
	Sun,  9 Nov 2025 14:19:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D482FD7B4
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 14:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762697987; cv=none; b=bK4EACRDUeef8ejfHWsPiFtNQs/DZPvx8xUhfZ5lcexEknNWN8lvhU5iFMbYjF4jX0Q7MEyyKr2YSx/tIhSh8FfQ9TbGuFoThPGA23i7wvWiHFq5WJu6t+aPWp7J8rur1ZatINgm1nijSqMmdXdm9nUuSe8WzwiFWsm5xE9O9Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762697987; c=relaxed/simple;
	bh=ojzdEXqE+WksE9jVDMijO99vO66cxCgcS84ZkVQBj7s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qDO8AXPXJfwlu8SJgRlA+kaY1Ux7bZBBtU46LfSPqU2Vn70njAbYAIsaJ6AH5dh4lECfMspyuhsDXT1FOrnv6X1lN9nHhfeu09G5Ufgk1rZcisGSKDHk1MksO4Wvz2tDWmuW/2db7p7SnvfccCqjiochlT/5tb7xpwwehodTWnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A9EJ5dk015030;
	Sun, 9 Nov 2025 23:19:05 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v7 00/14] arm64: dts: rockchip: Refine dts for Radxa ROCK 5C
Date: Sun,  9 Nov 2025 14:18:45 +0000
Message-ID: <20251109141859.206835-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series provides fixes, improvements, and other minor
changes for the Radxa ROCK 5C.

FUKAUMI Naoki (14):
  arm64: dts: rockchip: Fix the function of the blue LED for Radxa ROCK
    5C
  arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa
    ROCK 5C
  arm64: dts: rockchip: Remove rtc for Radxa ROCK 5C
  arm64: dts: rockchip: Fix microSD card detect for Radxa ROCK 5C
  arm64: dts: rockchip: Fix pmic properties for Radxa ROCK 5C
  arm64: dts: rockchip: Add missing properties for sdhci for Radxa ROCK
    5C
  arm64: dts: rockchip: Add pinctrl-names for uart2 for Radxa ROCK 5C
  arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 5C
  arm64: dts: rockchip: Fix vcc_3v3_s0 vin-supply for Radxa ROCK 5C
  arm64: dts: rockchip: Trivial changes for Radxa ROCK 5C
  arm64: dts: rockchip: Sort nodes/properties for Radxa ROCK 5C
  arm64: dts: rockchip: Enable HDMI audio for Radxa ROCK 5C
  arm64: dts: rockchip: Enable NPU for Radxa ROCK 5C
  arm64: dts: rockchip: Add eMMC to uSD module support for Radxa ROCK 5C

 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 290 ++++++++++--------
 1 file changed, 157 insertions(+), 133 deletions(-)

-- 
2.43.0


