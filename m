Return-Path: <devicetree+bounces-251180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 050AACEFCBA
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 09:33:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E182A3003513
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 08:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68ECD2DC332;
	Sat,  3 Jan 2026 08:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AFOxU7nW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF22B2C0277
	for <devicetree@vger.kernel.org>; Sat,  3 Jan 2026 08:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767429185; cv=none; b=qH/Ti4ltCfZ0sDymAem2ws75cK8OXs9nvhTRg/sVqQbvqPZo7ySJK5rJ0+MU3x/tmNg74GLzSbv33NhundqfbTrVg+mgQyiGQDUhh3TaZTX/3ogIkCtpbrW1LvoF3RgVluAn77BDArQCe7HSA0lVl6ENUzLM/V0tEzNijqTsgsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767429185; c=relaxed/simple;
	bh=TE3kngwJ0Q/M8PG4jM5YkANzvwJ2ZBoXO6QH83Kep4E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rs/4U+WUofi1Nu2oGJfQr2GuUnBOCj9XFt8ncAlhNu77pB8lyTO7u4oAeWBbN+hYbAX7+KFpR5Ia93Cnv7x/bTKSKvS4qoYO9gTkMh95m0ym+PZzQuXvDBvH0cTs7T59eqAxsrSKYUDv3fUBLuLAeKOBH+M7ain5HU6SJ0nycPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AFOxU7nW; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a0c09bb78cso3296315ad.0
        for <devicetree@vger.kernel.org>; Sat, 03 Jan 2026 00:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767429183; x=1768033983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mtp/dZW9ya4TxwOta3UUFMIrN/FXohK03+kMMLH28dY=;
        b=AFOxU7nWtCWWzSNkNkmJETzPS85qZfZP3Njn4VUqNOOErbFLC72SwO+B1JojwTXJqr
         EBwYx3xmyRzrMfY5k8olfkP7pYCVT+GVW1iKmyGT0onFEfP/J3XEpeJMa5399vmn59FC
         JajQE9t9vuL3/nObQcTSh5QRvujZtmR7rJpAEd1rhjv9sNsP1G8+Ngd9K8Y2tbz4gpKu
         C/kkwFYU7pLpZSH2jsjEPn3PiDG+1fJO4RXzayFQEskdxzk2mlQ5xaStWAh/8Ib6Zwr+
         se0LuvC+Wh1SuJNOh8aSRna1I5P1JFtlNsIJstxKjuwspJiapfr//XoVPtFrSrEWpMAV
         8j8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767429183; x=1768033983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mtp/dZW9ya4TxwOta3UUFMIrN/FXohK03+kMMLH28dY=;
        b=pUi18bOLH6P1e8SGzVVt8P2v/NWXFyJmOylNciuGTJzWEb+94w1FEiSIrQO4m5PxCW
         kKGmcCo/UNWQYiF5Qjsi8Q5u+ruxTN/Ns/b4D/5KpDZSxUWMNttTk+zBIoO/6LYCaMtf
         w4JPd9ij7tv2pacKJMWYaXS209EamUUjnsnOhKXa2kdJfx6Udh/C5lDf6YLI5hH6pTpI
         VyzpLUZcZafvywoVcGU8j2G4RakOXv/NgZN5WggUZu1ULnG2ZVWddJ+iRkMWxemr3eyt
         EmWUW0V9WIJKOcXraq063gC8KNNOKkqItz9rOFDsi21sikrAcfilzGgb2T1+oJHSOVxa
         BqNA==
X-Forwarded-Encrypted: i=1; AJvYcCWjouOlsUjEY00F0kVv5teZRVOxPfXP6mVUsbE7VIf5SG7PPGVIrWUVz9UHnEdOvIAeSRqWfBlJq+7R@vger.kernel.org
X-Gm-Message-State: AOJu0YwRwUp7+qEcnDmy8uag0gFKrFcsmm0QEyGoiWogfp0Dbjl2/Xby
	4ip6/CDcF8qDS5vuZWKvE7Qgmp+j1Uc0lxu5r7DJRIR+gZcv9D1F1yoK
X-Gm-Gg: AY/fxX4klfhw4zbzXMHRKWCW4lFKrpkMTc5A5rEV7GYzh/jpqqtnNarkHU1kDtYBz4E
	xQFWglCJL765TrCTn1IPxp2UEk+8tdMMz1xWIZ+L8btaAQ3W17nhExTu/y+HP6O49tRKE8byyJf
	BfKn9hfKuwt9c6kjq9LaYb3hHZaqeYjzTaSjG+hVjE/t+oN+uvUns68ISIdF0i4MNZpuC2/kp7r
	FKdgiTrQenPwL30kTf6pprskFPp9+wquTW1FMvV+ok6j9ZZ/7mBUCjX3sM74Xfds+hTNEVftJ84
	y1CHlufpoOYMiBRl2lM4YdyYhsIt6svpVxXLDaQeiDdna8AhHUzmmt+eKu6LyAFEfMKcl9sZz3E
	mPl31pmrjh1gWIjZpt21B/opwg7XZoMejDGrjfJqtmq/S5L3AHQQT+YmCdCmwnQztAm7RKtV6hr
	hsj1H3+Q==
X-Google-Smtp-Source: AGHT+IF4+KGquo7ddnKSZYTeA5YRjfMxJO2/EkJueXQkQkzBA1/AjlzM6p5PsyRepGJBGL2j9Swfbw==
X-Received: by 2002:a17:903:2442:b0:29f:1b1f:784 with SMTP id d9443c01a7336-2a3c0940a8bmr16854045ad.4.1767429183029;
        Sat, 03 Jan 2026 00:33:03 -0800 (PST)
Received: from rockpi-5b ([45.112.0.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c666d5sm391700365ad.21.2026.01.03.00.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jan 2026 00:33:02 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Yongbo Zhang <giraffesnn123@gmail.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list),
	linux-usb@vger.kernel.org (open list:USB TYPEC CLASS)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v1 1/3] arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Correct Type-C pin bias settings
Date: Sat,  3 Jan 2026 14:01:17 +0530
Message-ID: <20260103083232.9510-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260103083232.9510-1-linux.amoon@gmail.com>
References: <20260103083232.9510-1-linux.amoon@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As pre FUSB302 datasheet interrupt line (INT_N) is an open-drain,
active-low signal. It requires a pull-up resistor to maintain a stable
high state when deasserted. Similarly, the TYPEC5V_PWREN_H enable signal
requires a pull-down resistor to ensure it defaults to a low state,
preventing unintended power delivery during the boot sequence.

Update the pinctrl entries to use pcfg_pull_up for usbc0_int and
pcfg_pull_down for vbus5v0_typec_en to align with the hardware's
electrical requirements.

Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
Fixes: 67b2c15d8fb3 ("arm64: dts: rockchip: add USB-C support for ROCK 5B/5B+/5T")
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v1: As per the shematics CC_INT_L interrupt pin is GPIO3_B4_u
    As per the shematics TYPEC5V_PWREN_H pin is GPIO2_B6_d
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index b3e76ad2d869..0cd8ac7bf538 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
@@ -537,11 +537,11 @@ pcie3_vcc3v3_en: pcie3-vcc3v3-en {
 
 	usb {
 		usbc0_int: usbc0-int {
-			rockchip,pins = <3 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <3 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
 		vbus5v0_typec_en: vbus5v0-typec-en {
-			rockchip,pins = <2 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <2 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
 };
-- 
2.50.1


