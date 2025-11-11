Return-Path: <devicetree+bounces-236988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 341CDC4B803
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 06:10:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D51D834D8F7
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 05:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B32326F443;
	Tue, 11 Nov 2025 05:10:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD67926FA6C
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762837834; cv=none; b=ACBNHYSnCkLAv/DpQNUFSuOHBMFUoC+HqdsU0ee20njIE63MhMlozgVJ4CrUi2ccv+42BiA90YfjbIAgZ/80BbxbRWvIwWvzf06yo0kUqFhlUF3pfuxIkecGyMk6GiuvP+L6QWUzfaQLwdbtzA6BRMpgCY+cpOBtSORaTZyPDjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762837834; c=relaxed/simple;
	bh=1zkd8cCCqw24CwLLlmSQ5Jld6VLUw4joEGzkCmcPB3k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qqEFMmwvAFIaS5XHYfmqqXTBJqKMsi85VL/Z7uq+9PneARDk5ApmAqd3IMT8WLPRXmJZFav2lZO6V7QsAS9neEmiAd/rR3eztsQ5UWeErJ+pEzjwEpHvjN6RNfSCOUT6aLkL6bMEqbIchOHV6X4/QQsPNj5hd9LFT30iUSUblms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AB59RuT021826;
	Tue, 11 Nov 2025 14:09:28 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com,
        sebastian.reichel@collabora.com, kylepzak@projectinitiative.io,
        alchark@gmail.com, dsimic@manjaro.org, amadeus@jmu.edu.cn,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 0/4] arm64: dts: rockchip: Fix eeprom description for Radxa ROCK 3C/5A/5C
Date: Tue, 11 Nov 2025 05:09:19 +0000
Message-ID: <20251111050924.54880-1-naoki@radxa.com>
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
  arm64: dts: rockchip: Move eeprom correct bus for Radxa ROCK 5A
  arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 5A
  arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 3C
  arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C

 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts  |  2 ++
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 16 +++++++++-------
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts |  1 +
 3 files changed, 12 insertions(+), 7 deletions(-)

-- 
2.43.0


