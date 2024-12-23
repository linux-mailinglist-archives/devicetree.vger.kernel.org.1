Return-Path: <devicetree+bounces-133435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BBE9FA907
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 02:40:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB942165677
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 01:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB1E3D528;
	Mon, 23 Dec 2024 01:39:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF19ED531
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 01:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734917999; cv=none; b=gKJMKcnRKMBM7ahrmW58CFUPeJeVYpEjQj2JxW+rtyQlphPWBeX7Njm5wpXNNyEh/pu2VRUHRXsAp/eQY/e/yoTe1AMNBYfVd8l/G34ztSdm8/Uwy/W6TdLmvJBuscF5Ok6D0eJhBrZfcZbZGmDAPj0Mxos+gOi/gTUFvyavTiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734917999; c=relaxed/simple;
	bh=ZV6MHifzpJpTGhKZJ+iDMjv77GOKYmoqhKYdgEFl1Ig=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=G2qPbfnIPNpnPSM1C2obeoZHAQ7+E0SvKiJ3y9DuOJgPCqmneLVjYBKT4f7Y98bMoLc5wjE4TEQX1SHNmUYoUt0z4AAOY1gyNiQqKRX3UAFSki6By5iYNDLesSPaHIXzdd86cXSLfIrA0pFJ78+G42Q3z1fhpZKwuxOQupOKI1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BN1dW6x024519;
	Mon, 23 Dec 2024 10:39:32 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 0/7] arm64: dts: rockchip: Refine dts for Radxa ROCK 5C
Date: Mon, 23 Dec 2024 01:39:19 +0000
Message-ID: <20241223013926.1134-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series includes fixes for improvements, trivial changes,
etc for Radxa ROCK 5C.

FUKAUMI Naoki (7):
  arm64: dts: rockchip: Change the function of the blue LED for Radxa
    ROCK 5C
  arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa
    ROCK 5C
  arm64: dts: rockchip: Remove the RTC and related nodes for Radxa ROCK
    5C
  arm64: dts: rockchip: Add cd-gpios for sdmmc for Radxa ROCK 5C
  arm64: dts: rockchip: Fix the properties of the PMIC regulators for
    Radxa ROCK 5C
  arm64: dts: rockchip: Trivial changes for Radxa ROCK 5C
  arm64: dts: rockchip: Sort nodes for Radxa ROCK 5C

 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 239 ++++++++----------
 1 file changed, 107 insertions(+), 132 deletions(-)

-- 
2.43.0


