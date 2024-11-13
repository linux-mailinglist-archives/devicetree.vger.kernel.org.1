Return-Path: <devicetree+bounces-121398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB2A9C6A5F
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:13:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 167A21F26B06
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 08:13:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA5B2189F43;
	Wed, 13 Nov 2024 08:13:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC6E189BAE
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731485613; cv=none; b=Ee8i96eLh+Qr198CqTP8cSR6+kSwVpo1+J/Q4lwu5z8g5OgOq4SxBNvoMPJNjN7KUePBBH1Q+eqO0FP5ibV3gMa+L1hf/+2qF8OuhVSSNrnMk74HrJpH8BJRUGfP/nqxs2xi6zHkNupYhDGa73BaeAtzrB4HFYlEQGpgkFu3EuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731485613; c=relaxed/simple;
	bh=ZE3Pusns1ILqZt7QAXBteJ8Ux4LnuYd4cwa8Fp2sX0o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ufuC4itkJcloPsLiXOdXp3wFPeHiGkQGiw/hYD/f5QreKYzA6OF5fMD2rIrVQ09cr53H6PSKcx0lpFkN9hC8DnS2/qFVZ0oDHkMlz1q7hfbvm6C+upIkCXD6iQPOzWuev1V+sZ+CHkPLpkPTiGQK3PfoGLPD/wZMsR/o2V/pxno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AD8D5p4026223;
	Wed, 13 Nov 2024 17:13:06 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        cristian.ciocaltea@collabora.com, jbx6244@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 3/8] arm64: dts: rockchip: fix sdmmc properties for Radxa ROCK 5A
Date: Wed, 13 Nov 2024 08:12:53 +0000
Message-ID: <20241113081258.2745-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241113081258.2745-1-naoki@radxa.com>
References: <20241113081258.2745-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

- remove max-frequency (use default 200MHz) to match with vendor
  kernel[1]
- fix vmmc-supply to match with schematic[2]

[1] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
[2] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 274dec748a1c..bb0b2897dac9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -423,11 +423,10 @@ &sdmmc {
 	cap-sd-highspeed;
 	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
-	max-frequency = <150000000>;
 	no-sdio;
 	no-mmc;
 	sd-uhs-sdr104;
-	vmmc-supply = <&vcc_3v3_s0>;
+	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vccio_sd_s0>;
 	status = "okay";
 };
-- 
2.43.0


