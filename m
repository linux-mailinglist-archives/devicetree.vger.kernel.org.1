Return-Path: <devicetree+bounces-128712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1179E94DB
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:52:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C63D31881EDB
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6726A228CA7;
	Mon,  9 Dec 2024 12:52:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5496B226EFB
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 12:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733748748; cv=none; b=YG6tTtX8RiabP3Oquu9/ml+3H+Hym07kBR1LzIkrkTDke78K6k/9LGHpZS/Fu2kRZnTNib8QW2GbLXxfA7LrdOoUJ91Wix+2hdcTbuMYuXpFBFM4ggbFUi1Ma4kGgr15s0GxJyNreext38Lf1ITYaWgRe2TjOeqOvjFOXWeSJLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733748748; c=relaxed/simple;
	bh=VtoPRzSKWA+cmSTUm0mV56VnaYj7NmfFElHKGBCgLmE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=O7vfsFMtlwT8+iuX7FTvLqMe/11qmnv5ViEOYeEu1py8CIlDeRMnM5KyFEFTMm7uCBfWyVzQ5jwe/ujDXZOdCRZKALLiI6qcLPRB9IdIDAVEWXFAF7i9qbfMJUaU1vfqMpnM6MkWRbR1Hk4ev3Z9jo86U/Fa7y0euI5ybe92soY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B9CpdQ0031943;
	Mon, 9 Dec 2024 21:51:39 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v4 00/12] arm64: dts: rockchip: refine dts for Radxa ROCK 5C
Date: Mon,  9 Dec 2024 12:51:19 +0000
Message-ID: <20241209125131.4101-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

this patch series includes fixes for difference from schematic and
vendor kernel, minor improvements, cosmetic changes, etc.

FUKAUMI Naoki (12):
  arm64: dts: rockchip: change function name for blue LED for Radxa ROCK
    5C
  arm64: dts: rockchip: change node name for pwm-fan for Radxa ROCK 5C
  arm64: dts: rockchip: fix property for pwm-fan for Radxa ROCK 5C
  arm64: dts: rockchip: rename regulator for pcie2x1l2 for Radxa ROCK 5C
  arm64: dts: rockchip: add properties for pcie2x1l2 for Radxa ROCK 5C
  arm64: dts: rockchip: remove RTC and related node for Radxa ROCK 5C
  arm64: dts: rockchip: separate pinctrl for vcc_5v0 for Radxa ROCK 5C
  arm64: dts: rockchip: add cd-gpios for sdmmc for Radxa ROCK 5C
  arm64: dts: rockchip: fix pmic dcdc-reg7 regulator-name for Radxa ROCK
    5C
  arm64: dts: rockchip: fix pmic dcdc-reg10 label for Radxa ROCK 5C
  arm64: dts: rockchip: fix proparties for pmic regulators for Radxa
    ROCK 5C
  arm64: dts: rockchip: sort nodes for Radxa ROCK 5C

 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 62 +++++++------------
 1 file changed, 22 insertions(+), 40 deletions(-)

-- 
2.43.0


