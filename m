Return-Path: <devicetree+bounces-236987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AA5C4B800
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 06:10:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 127F21890935
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 05:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C1CE27B34E;
	Tue, 11 Nov 2025 05:10:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92FC226F443
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762837833; cv=none; b=ILsUtnOkXxidLf8u7zxGa8ShtT7Z0BAErPrM1OEmWojeDHE8AetEw+P8FD0FmR/lRTSTESIeFrHflF9aui5LmfBSmhRveYogMWWmz3aHxIqQkpAL80aJdzSy3TnCkp/4uezd71Fs/6ru0py8Beb1lJiq+qa2ggNwBoGp/YoGYlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762837833; c=relaxed/simple;
	bh=G8zqp2pmDPS64P4VDj+gFKkr/3wlh1g3VbdrWwO4WG4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iJR8hkdCyjpixB3Z8OcVfFCMjlzx41c4lpX22sSKbr2g1laVv6iulq4R9HefjwTsefYxhoh5tu5rNx4OaFvklZgmwxtXBJLU09EGh6LcEe7J559a3oNHuHWy3Jpo3bawVptxOXBG9Ij/7ZrhnYaQ1VpYFw4IhdxrppzqBkIuZFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AB59RuW021826;
	Tue, 11 Nov 2025 14:09:32 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com,
        sebastian.reichel@collabora.com, kylepzak@projectinitiative.io,
        alchark@gmail.com, dsimic@manjaro.org, amadeus@jmu.edu.cn,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 3C
Date: Tue, 11 Nov 2025 05:09:22 +0000
Message-ID: <20251111050924.54880-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251111050924.54880-1-naoki@radxa.com>
References: <20251111050924.54880-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The VCC supply for the BL24C16 EEPROM chip found on Radxa ROCK 3C is
vcca1v8_pmu.
Describe this supply.

Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
Link: https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf p.13
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
index 6224d72813e59..80ac40555e023 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
@@ -466,6 +466,7 @@ eeprom: eeprom@50 {
 		compatible = "belling,bl24c16a", "atmel,24c16";
 		reg = <0x50>;
 		pagesize = <16>;
+		vcc-supply = <&vcca1v8_pmu>;
 	};
 };
 
-- 
2.43.0


