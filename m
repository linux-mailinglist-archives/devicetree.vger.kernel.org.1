Return-Path: <devicetree+bounces-121723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6EE9C818B
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 04:46:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0DF61B21526
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 03:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D58BF14B06C;
	Thu, 14 Nov 2024 03:46:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D912AD21
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 03:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731555986; cv=none; b=c5mVOeP5n3cEUW+NvVri4Rmjqe7T4kawj+a6beSDjHsxcE7XCUY8OMC2eGAaMWNeUI4ps/ztHurAlSgF+Yi2quWRQEr4F+AY/oaY/aDbPLQm5Bs+0WOLmio3wylWhNVT8bp3QZBD+o0unZXfokn5zXUd92+ZDpmTsuqriQJQzu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731555986; c=relaxed/simple;
	bh=m0nkpefqaIIh3NiNrky4HZaYsATR5SyWKF19r3k+qdk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fKRGgc48ZpVxzRmsUU//FJZbUrg5dTexAnIVPlnAUOj2sNtYF4dwgWNEh2bmTM6j3rSskEQHpjtAJcrIIbNO+4wo2H8Zvw7FyAZx1jo6gMb0KIIslLi6EZ3g4NdaWZb1SwZKSGNmFKWXtutgla9Nce04zgFNRzDAfXbnvmhue3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AE3jqu1029588;
	Thu, 14 Nov 2024 12:45:53 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 0/3] arm64: dts: rockchip: use shared .dtsi and board-specific .dts for Radxa ROCK 5A and 5C
Date: Thu, 14 Nov 2024 03:45:42 +0000
Message-ID: <20241114034545.6440-1-naoki@radxa.com>
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

this patch series make small changes to .dts for ROCK 5C to make it
sharable, split it into a sharable .dtsi and a board-specific .dts,
and convert .dts for ROCK 5A to use the shared .dtsi.

(this patch series depends patch series for Radxa ROCK 5C[1])

[1] https://patchwork.kernel.org/project/linux-rockchip/patch/20241114023746.4867-1-naoki@radxa.com/

FUKAUMI Naoki (3):
  arm64: dts: rockchip: add "dcin" regulator for Radxa ROCK 5C
  arm64: dts: rockchip: split dts into sharable dtsi and board-specific
    dts for Radxa ROCK 5C
  arm64: dts: rockchip: convert to use shared .dtsi for Radxa ROCK 5A

 ...k3588s-rock-5c.dts => rk3588s-rock-5.dtsi} |  34 +-
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 879 +---------------
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 955 +-----------------
 3 files changed, 87 insertions(+), 1781 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3588s-rock-5c.dts => rk3588s-rock-5.dtsi} (95%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts (97%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts (94%)

-- 
2.43.0


