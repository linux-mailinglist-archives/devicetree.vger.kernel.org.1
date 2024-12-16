Return-Path: <devicetree+bounces-131383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B829F2FBC
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:46:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A36C41635B4
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 11:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32900203D6B;
	Mon, 16 Dec 2024 11:46:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995A31FFC48
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 11:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734349585; cv=none; b=QzioxAGVYypoREsUU3P3Y4hFV3ah5RJ+bpCVZ8DQSJlXm3zLcXnUgEpsgDwTVy5V1S/euFdCwBR2hVbWC9Cg79mCV945iGgDccZu4mx1iOuYQwilDtDZH2Wp1lZR8FF6YCsWtR3H3bQGyyC+RoaQhMyIrQKQ6li96cKSljHBBqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734349585; c=relaxed/simple;
	bh=vKGhlv8wAhkABv/ciHlsXxMgDYOmr54YO4Rnj7SLY/k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QiBD5/vKB/EUTwL07A6c3BMjh/rK9WunqJynXqgsymImQiXRwysVAY+p5Ng0E86ZGiepV8AeM4LAFoudoCl65mk+1gY9ayijYkKtZaYf6yIASQH3rBvU+ulA1+vb5giq8gHvqWlfWJmdISUJDUMK2Z4iflmTXdMw9y/2ibpjDb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BGBjsxV028760;
	Mon, 16 Dec 2024 20:45:54 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, jbx6244@gmail.com, kever.yang@rock-chips.com,
        cristian.ciocaltea@collabora.com, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v5 0/2] arm64: dts: rockchip: Use shared .dtsi and board-specific .dts for Radxa ROCK 5A and 5C
Date: Mon, 16 Dec 2024 11:45:45 +0000
Message-ID: <20241216114547.15892-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since Radxa ROCK 5C is slightly updated version of Radxa ROCK 5A,
almost every part of dts can be shared.

This patch series split .dts for ROCK 5C into a sharable .dtsi and a
board-specific .dts, then convert .dts for ROCK 5A to use the shared
.dtsi.

(This patch series depends on patch series for Radxa ROCK 5C[1])

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241216113052.15696-1-naoki@radxa.com/

FUKAUMI Naoki (2):
  arm64: dts: rockchip: Split dts into sharable dtsi and board-specific
    dts for Radxa ROCK 5C
  arm64: dts: rockchip: Convert to use shared .dtsi for Radxa ROCK 5A

 ...k3588s-rock-5c.dts => rk3588s-rock-5.dtsi} |  40 +-
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 869 +---------------
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 946 +-----------------
 3 files changed, 74 insertions(+), 1781 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3588s-rock-5c.dts => rk3588s-rock-5.dtsi} (96%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts (98%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts (95%)

-- 
2.43.0


