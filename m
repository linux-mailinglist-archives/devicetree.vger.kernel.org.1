Return-Path: <devicetree+bounces-125290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0940F9DB774
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 13:20:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB18716101A
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 12:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FFF51993B1;
	Thu, 28 Nov 2024 12:20:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7301195385
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 12:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732796415; cv=none; b=AcfVdgTmsOxXRXlIKZjM4DsoMEdE5JnfmhOK1p58LaAWG60Gsuopy9dWk3bUsUECURU5++zlc9+nNzAedH5aBc0LjAmRtiGeeY8bKEEjfBUoQV5C6CU2Lz7mcBd1bZ9NRa5X1f7qy8Hktpr0nWOgO5Bnh2JROs3IcbE1/34geRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732796415; c=relaxed/simple;
	bh=nhbPhvJqnIH9N3BoFNT3CWUfDz0TWfu4rjksgtoeaZo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kJXrpEOgdu/bCoTBW1mO/qglevj2PhPXaqAetJn3wYvpAOyj0z6Xnz5jxurFA7j2Nby8KeYN3s5stF74iShWQw/5ZR0pv312KVV/7ramDj/3SY3BDIeBRC03xdvOMeq3yVtjCuMjq4/z6hGMRHN+Jb1wnHcxB0emM+c4JHDRe0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4ASCJZDj018630;
	Thu, 28 Nov 2024 21:19:36 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        cfsworks@gmail.com, jing@jing.rocks, alchark@gmail.com,
        cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 0/2] arm64: dts: rockchip: use shared .dtsi and board-specific .dts for Radxa ROCK 5A and 5C
Date: Thu, 28 Nov 2024 12:19:27 +0000
Message-ID: <20241128121929.62646-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

since Radxa ROCK 5C is slightly updated version of Radxa ROCK 5A,
almost every part of dts can be shared.

this patch series split .dts for ROCK 5C into a sharable .dtsi and a
board-specific .dts, then convert .dts for ROCK 5A to use the shared
.dtsi.

(this patch series depends on patch series for Radxa ROCK 5C[1])

[1] https://patchwork.kernel.org/project/linux-rockchip/patch/20241119095113.78151-1-naoki@radxa.com/

FUKAUMI Naoki (2):
  arm64: dts: rockchip: split dts into sharable dtsi and board-specific
    dts for Radxa ROCK 5C
  arm64: dts: rockchip: convert to use shared .dtsi for Radxa ROCK 5A

 ...k3588s-rock-5c.dts => rk3588s-rock-5.dtsi} |  41 +-
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 875 +---------------
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 953 +-----------------
 3 files changed, 86 insertions(+), 1783 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3588s-rock-5c.dts => rk3588s-rock-5.dtsi} (95%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts (98%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts (95%)

-- 
2.43.0


