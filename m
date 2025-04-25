Return-Path: <devicetree+bounces-170966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43313A9CCC5
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:23:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 53DE89A60BF
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 15:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1465828F515;
	Fri, 25 Apr 2025 15:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="lchmvhlw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA61228CF45
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 15:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745594334; cv=none; b=m7fQtk5zRoG1Zx3Bjs+r88f5RR7vfpN4F43k+qw4T0RemlzWlhiLgDlu6WRsNitJnTfij/llTOpzCXbgEn2pR1aYzwX4apm3vaMeAZ2iNMBJaUC0PwtWIVV0QHyVSWFFoz4cvoBqqilRrRLtuTCLfSSt8U1BHVN+zw1QPRgFXBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745594334; c=relaxed/simple;
	bh=+ce7+BTY4yeMzFbT6Akdy3KIL7k7OJDthEDgS6+rbEo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=owBiGQ4iLYI56FZ9cz8bsmMAt8xMYYxaL6ALhzXerRosMj3E+Smu6W88/ps1ZJs2YBcxt0TNv/d8rAV1JLbHo4oeqOG7jbKt9crmpfLq3qzArwq3QmYp7ldfdWXPy+43Kov5aRRV2FR3yRTMerAo5uvP27IGlO8eTrLoFzA0IQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=lchmvhlw; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac2a81e41e3so422675066b.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 08:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1745594331; x=1746199131; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/OY31xp7Dll9vOIEOmAuyrG07iLGmNS/7kqtV/vhc5Y=;
        b=lchmvhlwO7bwGEgJBEgpZN/k4rav9vWLKDzd+soZMVH+Yz3KfIo4voaxR25W32u43K
         rWQ5Qs02bGwHRiGaSDpgKypd3HAQD3SVE4p+2ldw+nzx7CuWKxNvH+egV3h1Qyfd9+7Z
         Zvc32z+V3CaWVZ+9PMmgvZpzrFGeeHEuQqd6/IS7aN3cUyrxw/x0v3VH9urYRffqjTpX
         aZNTBP37pm2zShOoqvvJqbLMfKMGTrxMw6p1sYWqv21lmAdA3EIkRgXP5U3OFHDcmPbx
         L6q8YAwwSWf1JO05tPiiYeWQH+uLQVXfnpnHdYkbT6OSY+sFBUk6Cf2dSLhaXVuHCAvb
         4hmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745594331; x=1746199131;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/OY31xp7Dll9vOIEOmAuyrG07iLGmNS/7kqtV/vhc5Y=;
        b=J83H6bkSsGaCtjWahHE9aKhHodsyEeNMG2RMBBe7Z/rpc4nlejCAuVXcE0zOjvz/no
         Cmydpnu80xaICDlXY3dNwEJY4sFcd2W5iVD34ITOVWqAJOa5JOB5HYzotEbI6mnVOs7O
         46xu3WHhEjdz5EqZu6uuubC/Sy7DdMpEqPqpQoWpMt8tI488ZXsFj8SGXFET0uWpxGex
         nyxc9n6a0HX5GoFra22YEGS9m61s4n73YcWVaseDtsw7YEH6hhSWUm9oYU1WY5DMLDEW
         OYypRFfBgLrxs+J6IOX1Te/v3QbSKhcsYOjsx4BZl5yJt/dkHPnZrS641qdPggH9Hjdk
         Te0g==
X-Forwarded-Encrypted: i=1; AJvYcCU1O7m7X998bi9qSH0V3gXWAPsfuFibvoUnA/xpfbZnxwUaohIqvOIf7a9l00yo5S4jMz2nQjhTOpEh@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4mBfFI/mmHrF9/5VDqVUiObOR4igdW7u/sAH3a2MU2g65Vjzf
	gNNlUer+EBhzDsHvPC6GfIv/iNYNQMKbUCrYujiP2V1/EwwxJdYAyIzj7K4k8jI=
X-Gm-Gg: ASbGncsPwPYi7I105tFASJWBp/+meXpfCpUBtDp5/faocSBIK/mOktNSOJtk3BeSbsC
	mfwNbTdW4WotgS0Sq26UnrWeKb2ffNrCHcY0vjZFDopwoAWUz/3DzgF87qi3gqYEH7dRk8Lvc4I
	d9o7Jx89M7cYzXr4lWTpj4iDw2CnrEskoh2yzZFyFC7knSyzlOmE2fzu8OEMU9PiFqWt8CJCvvr
	nYPuZ3VGFUVGbNZXn2nciyjYRD7Dw44OtsD1E6CZnFqGTWr9+vh+Znesd7a00aLlyBoRq60EsTg
	Uwbn51PgjYJDSaHzvFvh0tpUHIc8M4fowUq7eNccOql798bjEU6DDIefwA==
X-Google-Smtp-Source: AGHT+IF/D7KC9l8++rWqiUEiNq3eyx2s0Qq/rmeB9HU9Sb4W5K3CdWLHL8yd44YFf3+hogCSyIirhg==
X-Received: by 2002:a17:907:2dab:b0:acb:bbc4:3344 with SMTP id a640c23a62f3a-ace71098d8dmr246518666b.22.1745594330687;
        Fri, 25 Apr 2025 08:18:50 -0700 (PDT)
Received: from [127.0.1.1] ([185.164.142.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e59649fsm151099766b.85.2025.04.25.08.18.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 08:18:50 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Fri, 25 Apr 2025 17:18:10 +0200
Subject: [PATCH v2 5/5] arm64: dts: rockchip: disable unrouted USB
 controllers and PHY on RK3399 Puma with Haikou
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-onboard_usb_dev-v2-5-4a76a474a010@thaumatec.com>
References: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
In-Reply-To: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2

From: Quentin Schulz <quentin.schulz@cherry.de>

The u2phy0_host port is the part of the USB PHY0 (namely the
HOST0_DP/DM lanes) which routes directly to the USB2.0 HOST
controller[1]. The other lanes of the PHY are routed to the USB3.0 OTG
controller (dwc3), which we do use.

The HOST0_DP/DM lanes aren't routed on RK3399 Puma so let's simply
disable the USB2.0 controllers.

USB3 OTG has been known to be unstable on RK3399 Puma Haikou for a
while, one of the recurring issues being that only USB2 is detected and
not USB3 in host mode. Reading the justification above and seeing that
we are keeping u2phy0_host in the Haikou carrierboard DTS probably may
have bothered you since it should be changed to u2phy0_otg. The issue is
that if it's switched to that, USB OTG on Haikou is entirely broken. I
have checked the routing in the Gerber file, the lanes are going to the
expected ball pins (that is, NOT HOST0_DP/DM).
u2phy0_host is for sure the wrong part of the PHY to use, but it's the
only one that works at the moment for that board so keep it until we
figure out what exactly is broken.

No intended functional change.

[1] https://rockchip.fr/Rockchip%20RK3399%20TRM%20V1.3%20Part2.pdf
    Chapter 2 USB2.0 PHY
Fixes: 2c66fc34e945 ("arm64: dts: rockchip: add RK3399-Q7 (Puma) SoM")
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 947bbd62a6b09ce55320d0889ee8cf50ca59dfd4..93cefacc7a01ec8f9716de828077b3395a5e7696 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -292,14 +292,6 @@ &uart2 {
 	status = "okay";
 };
 
-&usb_host0_ehci {
-	status = "okay";
-};
-
-&usb_host0_ohci {
-	status = "okay";
-};
-
 &vopb {
 	status = "okay";
 };

-- 
2.43.0


