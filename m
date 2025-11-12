Return-Path: <devicetree+bounces-237389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9104FC50730
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 04:52:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 759D3188CF94
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 03:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56C4829B77E;
	Wed, 12 Nov 2025 03:52:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E122701DC
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 03:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762919547; cv=none; b=ZHMAcB/8qnqnnG3o76+sXU5HECp4j0jmlleCO7NjOaFEkBMw5siaWjerilKQTAo709PocvZRE2kAYkDhYRhbgWBFp7/GdapeJEDAdm7Zp9/KKdAJgwah/d4zcoKh0NTa8mv6bHk19KKSFT//M20PhNiPxfItmFw2NatXymbk8UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762919547; c=relaxed/simple;
	bh=CXcG3K7cdv1sC5HxPL4d4+e90R9bJ1JmEEa1Q8QkhJU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DYrF3gOtT0Y81S6e4IA5103rFZiLhOqKJXhhRBUsTdiLfivXDPSDKAiIEE5nl3NgBwsSfTpZVvtVjZ+ma3hBcrRmtMMbtb9IcXnyIZ8uSUh6vEkS8i331i/v2oEuPgzjTDhMpOexJsV0zJtnOr82b+ONDO+2bpv8tE5ab5fgbAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AC3pbM9026136;
	Wed, 12 Nov 2025 12:51:42 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        pbrobinson@gmail.com, kylepzak@projectinitiative.io,
        damon.ding@rock-chips.com, sebastian.reichel@collabora.com,
        dsimic@manjaro.org, alchark@gmail.com, amadeus@jmu.edu.cn,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 3C
Date: Wed, 12 Nov 2025 03:51:31 +0000
Message-ID: <20251112035133.28753-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251112035133.28753-1-naoki@radxa.com>
References: <20251112035133.28753-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The VCC supply for the BL24C16 EEPROM chip found on Radxa ROCK 3C is
vcca1v8_pmu. [1] Describe this supply.

[1] https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf p.13

Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- Reword commit message (Dragan Simic)
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


