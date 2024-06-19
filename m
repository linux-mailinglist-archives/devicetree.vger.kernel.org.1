Return-Path: <devicetree+bounces-77306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E84E290E284
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 07:02:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 705D928235F
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 05:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56BB64D8A0;
	Wed, 19 Jun 2024 05:02:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8312594
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 05:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718773328; cv=none; b=B2STmF1LsqxxzP6JjUyZrIZW/f7V+Z/Nxp9788qBczfBQ1YmfTCv5aqaPsbDB0m3rIVMlVuKpdEg0MzI55BZMOCp8dyOyLg7C9kDRwE6UteIMmYO95c4ZyABBkZWONBlNfgjbJJKfRdJwUOKzuNvvgZonq2YlkylyhFpTPFgYXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718773328; c=relaxed/simple;
	bh=AYP8PZRZ32XqzcFEx7frixcUBCAOeYBlPs6mJZzAQEA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WoQbgeK/Kxzru/AQHHhlm5C+gtkm7Xs9a6XKb7pPLhGQKaerLyl5KTPdDFLrjUqiPIsARBnnrWWcVRM+0h6HOfwEN37aiRrtc8B3OxRzKtqJlV1UX03Gnblb1StXYvXrDjmgCPXG+7reX7AJE+nTMQrcqtPp/VQUmYj3ctScS+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45J50qs8023651;
	Wed, 19 Jun 2024 14:00:56 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: reorder mmc aliases for ROCK Pi E
Date: Wed, 19 Jun 2024 14:00:47 +0900
Message-ID: <20240619050047.1217-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240619050047.1217-1-naoki@radxa.com>
References: <20240619050047.1217-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

align with other Radxa products.

- mmc0 is eMMC
- mmc1 is microSD

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index a608a219543e..1f2cf8574a9d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -23,8 +23,8 @@ / {
 	aliases {
 		ethernet0 = &gmac2io;
 		ethernet1 = &gmac2phy;
-		mmc0 = &sdmmc;
-		mmc1 = &emmc;
+		mmc0 = &emmc;
+		mmc1 = &sdmmc;
 	};
 
 	chosen {
-- 
2.43.0


