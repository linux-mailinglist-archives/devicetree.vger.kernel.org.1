Return-Path: <devicetree+bounces-133890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C85879FC282
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 22:10:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B021188371A
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 21:10:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8106212D67;
	Tue, 24 Dec 2024 21:10:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B483EA76
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 21:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735074611; cv=none; b=oVtyQ3XaNieGHXv5CGQYDVVMpYMTuR6/IrsYCP1dae82epgonkvyydw0UhGc00bVVBbAeo3vnefETQximtRN6O0ynW1sJ7cN4AscaP3EzXIgbD/NrhMp0IxeU1Az8M1ivROUZtEcxsI+owTMyPlsFhclPUXjv4OICxlZrs2p0Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735074611; c=relaxed/simple;
	bh=4/b6tE3wC/ylFVxf2Xdq9gGp7xWfhLvV1Sgws64KNgg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VMEG474ebSUZrouDlVYwOzmBcvu/IeYXe4GAb76ZO411rCd2AtWDOVxU8EUyDyh7iiJj7DjK+cLJr2gloTqdwSXGhN33bZSRkABtsxqfeFuwmqFX7vJhAJStpnIY0OcVIXXYG6QPbh/kO23Jqj3tA1MlRUeOLGXubPijx2/ky9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BOL9KQB031471;
	Wed, 25 Dec 2024 06:09:21 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com,
        liujianfeng1994@gmail.com, dmt.yashin@gmail.com, tim@feathertop.org,
        marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net,
        sebastian.reichel@collabora.com, alchark@gmail.com, inindev@gmail.com,
        kever.yang@rock-chips.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 0/3] arm64: dts: rockchip: Add Radxa ROCK 5B+ and rebase Radxa ROCK 5B
Date: Tue, 24 Dec 2024 21:09:09 +0000
Message-ID: <20241224210912.2121-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Radxa ROCK 5B+ is an upgraded version of the Radxa ROCK 5B.

This patch series introduces a shared .dtsi that can be used on the
new Radxa ROCK 5B+, the existing Radxa ROCK 5B, and the upcoming Radxa
ROCK 5T.

This patch series includes "arm64: dts: rockchip: Add USB-C support to
ROCK 5B" by Sebastian Reichel[1].

[1] https://patchwork.kernel.org/project/linux-rockchip/patch/20241210163615.120594-1-sebastian.reichel@collabora.com/

FUKAUMI Naoki (3):
  dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
  arm64: dts: rockchip: Add Radxa ROCK 5B+
  arm64: dts: rockchip: Convert Radxa ROCK 5B to use shared .dtsi

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 ...{rk3588-rock-5b.dts => rk3588-rock-5.dtsi} |  555 +++++----
 .../boot/dts/rockchip/rk3588-rock-5b-plus.dts |   97 ++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 1026 ++---------------
 5 files changed, 549 insertions(+), 1135 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3588-rock-5b.dts => rk3588-rock-5.dtsi} (71%)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
 rewrite arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts (93%)

-- 
2.43.0


