Return-Path: <devicetree+bounces-133987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 891E39FC71A
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 02:00:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C9D118826EF
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 01:00:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AE3C2F5B;
	Thu, 26 Dec 2024 01:00:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFC9360
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 01:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735174814; cv=none; b=Y6zh635GRF6Fji3dycGtbgz2N+HVAQhZQV0u2bIJwudfvTHcc5sn7Wm1yOTEKAFnAsocvMcArT5tsZvnKeO9WBHiMjdKeaqRAq/sz3geWsHmFcBE7wfiBm+YE6PjzO7ivDBqqZVpt0l1ZxxjpLump5g2Fep57UfMdQdpKfIFqV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735174814; c=relaxed/simple;
	bh=TaSoOk7QI81BzH1Enj11F1HKH0Q6PAtTmX8E8ea57P0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Bcfm3B/IskD0nfQ74tLCQNUeKq3ZAtZQOpZaU+8DCff3KEw8mAMvASYf2yoKnH0eCZYljdy0N4A7l/3+IHpk1wjuLYQcRiKDo+Sxdn8gK/9BSsbVHinIp9wKqMYIoOuAbfE8/2DACeL38MNn+8qazHngbTno/PXmL6oUwXau7Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BQ0x56F003966;
	Thu, 26 Dec 2024 09:59:05 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com,
        liujianfeng1994@gmail.com, dmt.yashin@gmail.com, tim@feathertop.org,
        marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net,
        sebastian.reichel@collabora.com, alchark@gmail.com, inindev@gmail.com,
        jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Add Radxa ROCK 5B+
Date: Thu, 26 Dec 2024 00:58:42 +0000
Message-ID: <20241226005845.46473-1-naoki@radxa.com>
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

FUKAUMI Naoki (2):
  dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
  arm64: dts: rockchip: Add Radxa ROCK 5B+

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3588-rock-5.dtsi      | 1042 +++++++++++++++++
 .../boot/dts/rockchip/rk3588-rock-5b-plus.dts |   87 ++
 4 files changed, 1135 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts

-- 
2.43.0


