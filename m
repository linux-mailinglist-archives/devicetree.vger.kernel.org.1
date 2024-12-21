Return-Path: <devicetree+bounces-133238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6499FA02A
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2024 11:50:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE164188BB1C
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2024 10:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32ED71A3BD7;
	Sat, 21 Dec 2024 10:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="ZKGBDUz0"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.2])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B7225949B;
	Sat, 21 Dec 2024 10:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734778215; cv=none; b=SB77wG/wZciYoxTkZOJi5OZkToqMxuUycPODpdQ5r91kdR3LQfc1Y13CeBsGi89JyVMcSxfYk2JoNuu3zpb6t5jKCiDlmtKxGJTNcB4RELejlksqwkaxA9db2qtLPFqEtvv2PGA9kEhJ2fsyB9RxN8w8T8Yt/fnz6rvi73XIOiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734778215; c=relaxed/simple;
	bh=NQue6VBIPQgF5rsM102BpgkTKSEjtMmi74A0FkKQ/bo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RodQpbJaXHkJH23D3JireenS28xfbZPhpixkoi4JxpoUlOAJwD51ahmXktra45Ma9e+avS+cOd1+/ouFKYrHqcjm0Cgbpx/1ZQxITc5zQ2rmmMIomDc+eD+KlqGarr02rynYLLxLTnumjIelGr632sIdMrFG4XEx+tP4X+2vy5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=ZKGBDUz0; arc=none smtp.client-ip=117.135.210.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=PRPW0
	53mS4IaHw56KlN863LLiyhwoTVI+WYIIxpNhJA=; b=ZKGBDUz0hc9SdNtNqBNbe
	xnGgEAfJyW/euqeczXFKyavwmgzlDXvJChw9alAUG8QnnmTf9exd7t9urwPMF3iI
	Mm7WkVrbm1kwPYph8slnoyW7P2ciAXcPHVWMP0Cb9XATobHU0xg/nHWOyCDdxg1M
	mJHZGnhA/g1mIlAc0M0s/Q=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-1 (Coremail) with SMTP id _____wD3b68ynWZnEhWnAg--.2634S2;
	Sat, 21 Dec 2024 18:49:26 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: dsimic@manjaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	krzk+dt@kernel.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: aliase sdhci as mmc0 for rk3566 box demo
Date: Sat, 21 Dec 2024 18:49:07 +0800
Message-ID: <20241221104920.4193034-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3b68ynWZnEhWnAg--.2634S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZryDuFyxJry5AFyrCr1xKrg_yoW3uFc_Xa
	4xWrs5JFs3Cr90qw1kKayrG34ak3s3C34fJa4Fya1kJFWaqay8JFW5Jwn2y34Uur4FkrZ3
	Jay3ZFyxCF1YkjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0DUUUUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMwi8XmdmiMTT1wACsS

From: Andy Yan <andy.yan@rock-chips.com>

Follow most others rk356x based boards, and u-boot only use mmc0/1
as mmc boot targets, so aliase sdhci as mmc0.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
index 41b4cd5a4220..7d0eedf1bd0d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
@@ -19,9 +19,9 @@ / {
 
 	aliases {
 		ethernet0 = &gmac1;
-		mmc0 = &sdmmc0;
-		mmc1 = &sdmmc1;
-		mmc2 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
+		mmc2 = &sdmmc1;
 	};
 
 	chosen: chosen {
-- 
2.34.1


