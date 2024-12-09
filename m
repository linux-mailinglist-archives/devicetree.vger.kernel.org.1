Return-Path: <devicetree+bounces-128778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7AC9E969B
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 14:25:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 223B5281FEF
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77B12233144;
	Mon,  9 Dec 2024 13:24:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA92233145
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 13:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733750691; cv=none; b=CkWRFQqM+Qpcmq+bxU6wirX099NB0aElPbF+APgWgScS3UudjHMmBiMDCzhMt6nhF4Yg0sAB4Nu/8dJ7I7Nuq0KYkTmkUlI9OhD9GlZgPJpfBzoQtMDZifq67m6uTBsI+Kz861UEh0IxREE/wnm6yPr79dX0RxH8gQ6H6D1uVEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733750691; c=relaxed/simple;
	bh=1bkimn8bqdSClixB8ts2O7EOTa7LDO01BrTdrZ00o4M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kaw8w/Wee99ni7W1Nvr5cBChoHRqEw3YtrGwz8RHdQJiGqOdtjkcsxYhKw4K64Smd8G221DjV7tKblhy9BIdtBhb8GJbGEmO3yTxdictchsOYOH3qk5FqsQRjB1kdfe6GYuuXvfFMm5Mk6ukUYK5EBGs5FduJZiULIZ9PpmPFj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B9DOFwT032059;
	Mon, 9 Dec 2024 22:24:15 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, jbx6244@gmail.com,
        kever.yang@rock-chips.com, alchark@gmail.com,
        cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v4 0/2] arm64: dts: rockchip: use shared .dtsi and board-specific .dts for Radxa ROCK 5A and 5C
Date: Mon,  9 Dec 2024 13:24:04 +0000
Message-ID: <20241209132406.4232-1-naoki@radxa.com>
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

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241209125131.4101-1-naoki@radxa.com/

FUKAUMI Naoki (2):
  arm64: dts: rockchip: split dts into sharable dtsi and board-specific
    dts for Radxa ROCK 5C
  arm64: dts: rockchip: convert to use shared .dtsi for Radxa ROCK 5A

 ...k3588s-rock-5c.dts => rk3588s-rock-5.dtsi} |  40 +-
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 869 +---------------
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 946 +-----------------
 3 files changed, 74 insertions(+), 1781 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3588s-rock-5c.dts => rk3588s-rock-5.dtsi} (96%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts (98%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts (95%)

-- 
2.43.0


