Return-Path: <devicetree+bounces-122748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FDB9D22D0
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 10:52:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DF72281AB1
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 09:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6D061B654E;
	Tue, 19 Nov 2024 09:52:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBF01C2325
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 09:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732009925; cv=none; b=ECIwP+TNPB8soDmWHyFuj4oQZQA80dsPTiItkBK+UM+ZJ8KaIZ+mLkivWT1GQxj+ocqwjzpQb/Mnnpvz/Vn6wqD6uRJINHQIIoqlbmkf719dyOuYHXUz7DLiPXr3L7ncMN/yAPEKBWzTjaDPVxdawlNv4r36F3LWaK/glr65o34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732009925; c=relaxed/simple;
	bh=P3Fv543mZHWbKc4NYlPnMiUk7lx02Bu9n5O9V+xJ0Sg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rEkNHsg322838Uw6NhHqJtOZphdtDeLA6m2dhv9oI84VJr9A9VQPWrWE2r/z+fHFHInryLkT25iI8l6m4cvWFjO8Ji51Pk7GCW4tK8jBv7vPfOi4LpqmhlN6iNp1PIEhlPLJuFZX5rhiso6OQYuMir51wRc8sz9k6IeKm60P848=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AJ9pHSL016079;
	Tue, 19 Nov 2024 18:51:19 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 06/11] arm64: dts: rockchip: fix property for pwm-fan for Radxa ROCK 5C
Date: Tue, 19 Nov 2024 09:51:07 +0000
Message-ID: <20241119095113.78151-6-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241119095113.78151-1-naoki@radxa.com>
References: <20241119095113.78151-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

fix pwm period to match with vendor kernel[1].

[1] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v3:
- none
Changes in v2:
- reword commit message
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 0389f9e3ba65..24e33f98865a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -73,7 +73,7 @@ fan {
 		#cooling-cells = <2>;
 		cooling-levels = <0 64 128 192 255>;
 		fan-supply = <&vcc_5v0>;
-		pwms = <&pwm3 0 10000 0>;
+		pwms = <&pwm3 0 60000 0>;
 	};
 
 	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
-- 
2.43.0


