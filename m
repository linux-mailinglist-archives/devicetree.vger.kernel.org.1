Return-Path: <devicetree+bounces-134002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C01F9FC7B7
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 03:47:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 200701629A1
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 02:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AF821DDEA;
	Thu, 26 Dec 2024 02:47:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D1717993
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 02:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735181255; cv=none; b=FP2SjLmT9FNLXKxu34kqR/HG0GddQUGetsg/G3SICg9HXenglRpPMV7O/KcHIF+8QX50N+7OYrSUmOg0wzpvaAKgrdfrc8+9PDnEhwObRgoUfY1DqEEuufe1vMzbIDRXkibDUFJ7EbkUtyn+a8f19UyCe/odeHC3o93i1KscNtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735181255; c=relaxed/simple;
	bh=xiFfepdiUV0OKg8e7ZcCGllh4AIFz1kyeOjT0blVPzM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nLS6TVSzLIUdEKYqF5TSrp9TtbHXPfNf0EQsBKq/d2w+XoCVJuOKjxezI7vEqUbcmhiBIX2vwFtGrbXxgorc0KcYJR8CMfovxFLDwdr9C7x8HrPm5LgfdlzH0Fr9htMe7ZuFvxgxJncLtnxm+GGOJFn27V5+5UhpY2FRAGQs4n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BQ2kbEK004300;
	Thu, 26 Dec 2024 11:46:37 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        macromorgan@hotmail.com, dmt.yashin@gmail.com,
        liujianfeng1994@gmail.com, dsimic@manjaro.org, tim@feathertop.org,
        marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net,
        cfsworks@gmail.com, cristian.ciocaltea@collabora.com, jing@jing.rocks,
        jbx6244@gmail.com, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 0/2] rockchip: Add support for RK3582
Date: Thu, 26 Dec 2024 02:46:28 +0000
Message-ID: <20241226024630.13702-1-naoki@radxa.com>
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

This patch series adds support for the Radxa E52C compact network
computer based on the RK3582.

FUKAUMI Naoki (2):
  dt-bindings: arm: rockchip: Add Radxa E52C
  arm64: dts: rockchip: Add Radxa E52C

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 743 ++++++++++++++++++
 3 files changed, 750 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts

-- 
2.43.0


