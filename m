Return-Path: <devicetree+bounces-133845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A743F9FBE8F
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 14:28:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E5BE168293
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 13:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 227821C548C;
	Tue, 24 Dec 2024 13:14:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 867031B4138
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 13:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735046081; cv=none; b=trV+OtnGIWyX4cXR9a+GvN4qmfLnfYGX7OQzjl8+tjS9coKUGP8d9+YHJS/8viQ/6/2vjaXkbihqUaQ+NUYZr9H/Ke3b66c6tnu2+jdI3oSm8iXKhc3tA5iiI8AmZRLjdU3Kz0xe0OCbspcbOYDgNzELwszHUr9K/iYIYN05c6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735046081; c=relaxed/simple;
	bh=Mj9+IHs3TU72VGZ6Gt6ZuP8PNJnbkDHIicJIC8qXdrE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=t9zHE12Edf0C654gZsJowBMhWiCOjl4oTat4zQ18CxNv552kuUR8E1DpnusOur8/0Pkf9bBzSrb7SYyoHkliQdKXSTNfzQf2eL7CwDZWgMCpEAw2ysWjJllBHRr3r/yX0coxvEhnu0dkJzTeGS0xpzdsc2bVcV68V0d5M8wzeJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BODDVP1030176;
	Tue, 24 Dec 2024 22:13:31 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, cfsworks@gmail.com,
        cristian.ciocaltea@collabora.com, sebastian.reichel@collabora.com,
        jing@jing.rocks, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 0/2] arm64: dts: rockchip: Use shared .dtsi and board-specific .dts for Radxa ROCK 5A and 5C
Date: Tue, 24 Dec 2024 13:13:25 +0000
Message-ID: <20241224131327.4822-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa ROCK 5C is a slightly updated version of Radxa ROCK 5A, which
can share almost all parts of the dts.

This patch series splits ROCK 5C .dts into shareable .dtsi and
board-specific .dts, and converts ROCK 5A .dts to use the shared .dtsi.

(This patch series depends on the Radxa ROCK 5C patch series[1])

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241223013926.1134-1-naoki@radxa.com/

FUKAUMI Naoki (2):
  arm64: dts: rockchip: Splits Radxa ROCK 5C dts into shareable .dtsi
    and board-specific .dts
  arm64: dts: rockchip: Convert Radxa ROCK 5A to use shared .dtsi

 ...k3588s-rock-5c.dts => rk3588s-rock-5.dtsi} |  22 -
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 864 +---------------
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 934 +-----------------
 3 files changed, 56 insertions(+), 1764 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3588s-rock-5c.dts => rk3588s-rock-5.dtsi} (96%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts (98%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts (95%)

-- 
2.43.0


