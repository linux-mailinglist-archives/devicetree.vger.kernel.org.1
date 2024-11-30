Return-Path: <devicetree+bounces-125638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A6E9DEDDB
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:41:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8A23280DF0
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 00:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A70B41EF01;
	Sat, 30 Nov 2024 00:41:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7464EBA45
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 00:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732927312; cv=none; b=Co8wP8jhs/pD7tsmsMugx4xxja+JvXZsAjDl8zKaACqcSCq34nKkNtqsRxsZYgRLvzgaN1h/ovv3t8XqNDZPzwlFULDNe7ekyRUrQFTLPdbq9xzDSMta4u0hNFpL6TotbaahuKRMcHGXGYsGIVzTIlHrXoXRpFuJ61cpe85t1L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732927312; c=relaxed/simple;
	bh=sfVGWLhY2g8PtF5QxWMhsHjOtC44IzyL2O5reG9+zks=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ezEkck+c18dfxiT3fHlb1ukVwCeWUckHrHhqqOhB4gpTM28MuvdLz4abdWIX279BoVvBKJO+wmoNBkT6tfUV3uUn7i8Jd7zcRaNgJyyC2fHwfb8ARHWZNmld7bH6nESnOVfLUK2pSrI1KhH97F6duzQDPz8WRrmPMh/J4j9pUtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0f3BE024368;
	Sat, 30 Nov 2024 09:41:03 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 0/6] arm64: dts: rockchip: sync dts with schematic for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:40:51 +0000
Message-ID: <20241130004057.7432-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

this patch series fixes regulators, pmic, pwm-fan, and rtc to match
with schematic[1]. some missing info is taken from vendor kernel[2].

in addition to above, convert heartbeat LED to "pwm-led" to control
brightness.

this patch series depend on following patch:
 "arm64: dts: rockchip: rename rfkill label for Radxa ROCK 5B"
 https://patchwork.kernel.org/project/linux-rockchip/patch/20241128120631.37458-1-naoki@radxa.com/

[1] https://dl.radxa.com/rock5/5b/docs/hw/radxa_rock_5b_v1450_schematic.pdf
[2] https://github.com/radxa/kernel

FUKAUMI Naoki (6):
  arm64: dts: rockchip: fix regulators for Radxa ROCK 5B
  arm64: dts: rockchip: add regulator for NPU for Radxa ROCK 5B
  arm64: dts: rockchip: fix pmic regulators for Radxa ROCK 5B
  arm64: dts: rockchip: convert leds node to "pwm-led" for Radxa ROCK 5B
  arm64: dts: rockchip: fix pwm-fan node for Radxa ROCK 5B
  arm64: dts: rockchip: fix rtc node for Radxa ROCK 5B

 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 247 ++++++++++--------
 1 file changed, 138 insertions(+), 109 deletions(-)

-- 
2.43.0


