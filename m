Return-Path: <devicetree+bounces-237393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7DFC5073C
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 04:52:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B22D51891CB0
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 03:53:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75ED12C15BE;
	Wed, 12 Nov 2025 03:52:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AD82C028A
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 03:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762919549; cv=none; b=DXfZoe57WMclbAnVaaWe3HphJ/JzY4oAUbm3mx7jY9e8xI0OIYUfdywlehgUOyapa/CcvOvZyEOX0jJQhaGBMh9/GgfOVGdtFqvyOLutgwNMqK5y8U8YCCzhTdIj4aDsfVSEXScCVeS3lpAVjsSxG9LAuYSfxAey6unHNCxn4ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762919549; c=relaxed/simple;
	bh=Icj1ubMljt2p36OMp2K8WNTR7MLeOLD1Qd/LJRuP9dc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IDB59wP/e5AtFqb1n56TnuhcF2+47NTJIS9jfqj2P0MZSgSkPQV3831LBnUJD3eSXnqC6lOersDosXXhr7fwRDE+8rByc3H054kEf+feMTkpHBaiEfn0DlTHs+UrrratMZdqdjxU90P6JDfuy49RRZoQqPCS5d7uIej74islLjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AC3pbM6026136;
	Wed, 12 Nov 2025 12:51:37 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        pbrobinson@gmail.com, kylepzak@projectinitiative.io,
        damon.ding@rock-chips.com, sebastian.reichel@collabora.com,
        dsimic@manjaro.org, alchark@gmail.com, amadeus@jmu.edu.cn,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 0/4] Fix and improve EEPROM chip descriptions for Radxa ROCK 3C, 5A and 5C
Date: Wed, 12 Nov 2025 03:51:28 +0000
Message-ID: <20251112035133.28753-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series fixes incorrect or missing entries related to the
eeprom on the Radxa ROCK 3C, 5A, and 5C.

FUKAUMI Naoki (4):
  arm64: dts: rockchip: Move the EEPROM to correct I2C bus on Radxa ROCK
    5A
  arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 5A
  arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 3C
  arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C

 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts  |  2 ++
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 16 +++++++++-------
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts |  1 +
 3 files changed, 12 insertions(+), 7 deletions(-)

-- 
2.43.0


