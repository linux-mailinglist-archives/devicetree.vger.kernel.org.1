Return-Path: <devicetree+bounces-133299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A4C9FA39E
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 04:05:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC9A2188A7CF
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 03:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D9A915E97;
	Sun, 22 Dec 2024 03:05:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADF817BCA
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 03:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734836737; cv=none; b=Z/h4I4qwgCJfg1t+k8jCY+IfM3gff36kM4dnONfutCXzDmnMgWAAHFb/VPPLu1VtzcToAOikOoWnkblvrj2zNnkd/nzXYK4oNMG2N0jmNDTXKlnsejw5/gFeSkrXfwYAVgvVKyKBemOdkzSGAHelJ/VeMKCHp7416XmEr8OCtIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734836737; c=relaxed/simple;
	bh=Mvyhr1wOHFqZpXgYBlf+36spVw0BlKpBMbL94UHAmS4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DnSmuh2fVTpFtE6sAQSuh6c9vjewo6imlMC+g9AY5eipYCd0L5nUnxq8+TzBcgNfastCZJsueX5IbOSJZm6cYjk/c+b4WFz+57ryHDRb/GGTP6fNj9zp5fAFZEezRpan/Qr2AeGX2WAVVvHDM6Iwqj91KdDwHfeOrK2SNBWaKCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BM342BR020894;
	Sun, 22 Dec 2024 12:04:03 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, maz@kernel.org,
        tglx@linutronix.de, jonas@kwiboo.se, macromorgan@hotmail.com,
        andyshrk@163.com, liujianfeng1994@gmail.com, dmt.yashin@gmail.com,
        dsimic@manjaro.org, tim@feathertop.org, marcin.juszkiewicz@linaro.org,
        michael.riesch@wolfvision.net, alchark@gmail.com,
        sebastian.reichel@collabora.com, jbx6244@gmail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 0/3] rockchip: Add support for RK3582
Date: Sun, 22 Dec 2024 03:03:52 +0000
Message-ID: <20241222030355.2246-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rockchip RK3582 is a scaled down version of Rockchip RK3588(S).

- Dual Cortex-A76 and quad Cortex-A55 CPU
- No GPU
- 5TOPS NPU
- H.264/H.265 video encoder up to 4K@60fps

This patch series adds RK3582 support to the GIC and the Radxa E52C
compact network computer.

FUKAUMI Naoki (3):
  irqchip/gic-v3: Enable Rockchip 3588001 erratum workaround for RK3582
  dt-bindings: arm: rockchip: Add Radxa E52C
  arm64: dts: rockchip: Add Radxa E52C

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 729 ++++++++++++++++++
 drivers/irqchip/irq-gic-v3-its.c              |   3 +-
 4 files changed, 737 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts

-- 
2.43.0


