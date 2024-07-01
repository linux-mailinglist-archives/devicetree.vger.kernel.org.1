Return-Path: <devicetree+bounces-82004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F19CF91E301
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 16:58:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 207141C216D1
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 14:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53BB516D9C6;
	Mon,  1 Jul 2024 14:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YrdZAIC/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A6616D4D8
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 14:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719845816; cv=none; b=j5ZcWja0exwE643Nby1sDa7hP4y+bc9XY4LaXJOcZrvSP6J5UAxGJOMgni5aTsc1SXzsiPyT6xFvMHuIfVyOs941fW6mj6h6cRLV3Abk0U4oX4hATyJoGhRwyL4C5bu4V9be6+zGBMtbvxdiwY2uOnhGE9pqf0pBG50uYprZp58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719845816; c=relaxed/simple;
	bh=lulhEHbDI9HXkLTpJhxhZ2CGZpInoFABmokVqba+H/o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eY4IsfJ7mYUYn+4Ya5THsOetvAmjfuY8jlTYvGJgaiwE/4M3PYlrvUnjzcPLGL6YZaM9jyA2XuJ/WjcYawooIWr2srN5+QE+aiYrv+6Yz8pK/qH1buWLvPMJvuq3aG57r9HccUHFmtgCuxKs2EEflsN+3FK7bXY7g453ZQbbXjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YrdZAIC/; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4256aee6e4dso23279135e9.1
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 07:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719845812; x=1720450612; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NQf5Ish3Av0gD9Da5lEuRdMWHvRT8TUq9V7uM/AJGRM=;
        b=YrdZAIC/39f/WsQE9wNHbV+G5up555StfYHX9H9xxA7dCDWFLbyg+kOOuq74hefn1d
         cLxAq3wHee0WFMB7G6bN7Kf6DocH1S9f2CYoSEt4tZjNr5G8HfjhqPVKKsmeqs7plPOI
         8oN+QXe7Q6iDdM+eXxgdF6kYFTPHSeQGNUDVw8w9XrBT5W5hF5Q8jvsnphhlX3VDrME5
         Wo/2FX4LlFfqSwjEUWtfOLJb7pJBwhB8TBWtnia8Mv82yco0+jb2ZUXHvGGcs0tHjuTi
         ZwtiK5sm9d5kpLKwhQoXZbBylVrYNZa7PdGVurTpsT24tDzMsLypvMrMQ4qCTOtc+o1f
         oAeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719845812; x=1720450612;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NQf5Ish3Av0gD9Da5lEuRdMWHvRT8TUq9V7uM/AJGRM=;
        b=IW2XgWGKamTNxcSDfiIxQRvOke3sT2yFf0kyd6NJlyafSUE6oWM2/f6uJHE26t6FHX
         bP30lyQAlXbWlav73MlS18W4qGza8Rp/4oOn910P4957sKrzM8EqBFDG+isw9If8TGm9
         2395n7p2RpYE10cpYxjbAbPfX8ZcmD3Rh8uXTgwcGpPhLgnIZM/tDevoZUZjGS/kONwg
         aKGQnkiLtc+ATxGhUYws+tv27XCwiaAEKIF9JW1klM+wXqnLh7V60WBPQfkfPxqHrhlt
         NrCHWU8iTSk8cQSfyuhrZxg1ZN0Ji5iEwn8PO9vwuUTdwUGz1yNOQ4QsILHoeV7npC/U
         8NnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpxxZCIlV5phzKpJqm5Ae/uEaPZ75oGBW7B09rXqEV3K8Ns5rCfVblcKdzOW9naW53n11dFCMUtoVT+qhYBWD9dqe/HLVpZbmzxQ==
X-Gm-Message-State: AOJu0YwEYmxzBD20GMUfQRfx2NyLPiXmE10Xqbiqhubz2QvrrKyGXMew
	ZF4bzfAtsDzpliTK23T2khmq1hSpz39OpLUfadqU6DxJsvgTapnXVMLLCclgUsU=
X-Google-Smtp-Source: AGHT+IFuoYQlLRqQ9dWAaFITgP1ycNsICaOHlaVoLz1A7a/V/dTh0+2D6q5hqGRXA8gtFdGZaYA6dA==
X-Received: by 2002:a05:600c:1c88:b0:424:ab90:ecf0 with SMTP id 5b1f17b1804b1-4257a020ecdmr40982085e9.31.1719845812723;
        Mon, 01 Jul 2024 07:56:52 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256b0c0f99sm160062915e9.41.2024.07.01.07.56.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 07:56:52 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 01 Jul 2024 16:56:40 +0200
Subject: [PATCH 7/7] ARM: dts: marvell: orion: align LED node name with
 bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240701-dts-marvell-cleanup-v1-7-4773bd20691a@linaro.org>
References: <20240701-dts-marvell-cleanup-v1-0-4773bd20691a@linaro.org>
In-Reply-To: <20240701-dts-marvell-cleanup-v1-0-4773bd20691a@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3014;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=lulhEHbDI9HXkLTpJhxhZ2CGZpInoFABmokVqba+H/o=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmgsOpTixCygCACa26/Ig9SNDnBxhrjatBdht+K
 3quMnNm3yKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZoLDqQAKCRDBN2bmhouD
 19McD/9JoJH1/47Ibse8yXq5ZQrHqBFbdg/aRfFIFNiriij2A6v4YY2hWO50iWr4K6f8gRaKhIC
 nasnu5umdaYkTDXGzQL1kEAVnJ4t3VwyZga9PUsrm9eUfV7cIvTz2lj+OYIoQU1kY1Ei6IgRA3H
 4o1zaQ5tdtxmAyNGOf6j3Jw3Ie+9yHdvJ96/GZ+JknCWi6VV5WBea78i/0+YU//r+f8Bvp7kjYN
 dsOCP8duMYZ0U0NZb1MgSX4lFc0vN8GZsQ3PmY3Pnfp0ALC/8IOdqahgvS0e67YXjBrnKG5ozRg
 uCfLlNGVJ5r6X67Ftj9lMGJ5wqOqE+tKcgstllUqCaJ2X1Jy3sIC/54jpw0LY7P2XDTpim9V/ZU
 MHgq2LFfQEdY5FkLkVbyrFvOQhtidDk17t+HZBE9vJkH/V3a9PVEKIF5CqdsjnVdLcvNOzGFXFz
 WTTUKCScF9zNDqhqVwCMgRgfpWO6iiVM85fLgYW21paImgl99ZOJrzJ0Z8ClWDTkYXPdsqdA5RR
 LNhM8efXnN94m7Ijoh3G/I08uLEK3uiMHbnN3Bkhw3DrwyQGpEdbRV8ib8wP5fNTxysdZZreUZ8
 oL+F9ROB2CEcKBe2PAkAZNH24gM9ZmzyoVtRxT7/P5+RnhTDw5HeoeGA7/Xa99sUTFCw5jtXxe8
 XJ+DIrZg1rzUJIA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Bindings expect the LED node names to follow certain pattern, see
dtbs_check warnings:

  orion5x-lswsgl.dtb: gpio-leds: led-alarm: Unevaluated properties are not allowed ('gpio' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/marvell/orion5x-lacie-ethernet-disk-mini-v2.dts | 2 +-
 arch/arm/boot/dts/marvell/orion5x-linkstation-lschl.dts           | 2 +-
 arch/arm/boot/dts/marvell/orion5x-lswsgl.dts                      | 8 ++++----
 arch/arm/boot/dts/marvell/orion5x-rd88f5182-nas.dts               | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/orion5x-lacie-ethernet-disk-mini-v2.dts b/arch/arm/boot/dts/marvell/orion5x-lacie-ethernet-disk-mini-v2.dts
index a7586370b1d5..f81acb9b7223 100644
--- a/arch/arm/boot/dts/marvell/orion5x-lacie-ethernet-disk-mini-v2.dts
+++ b/arch/arm/boot/dts/marvell/orion5x-lacie-ethernet-disk-mini-v2.dts
@@ -52,7 +52,7 @@ gpio-leds {
 		pinctrl-0 = <&pmx_power_led>;
 		pinctrl-names = "default";
 
-		led@1 {
+		led-1 {
 			label = "power:blue";
 			gpios = <&gpio0 16 GPIO_ACTIVE_LOW>;
 		};
diff --git a/arch/arm/boot/dts/marvell/orion5x-linkstation-lschl.dts b/arch/arm/boot/dts/marvell/orion5x-linkstation-lschl.dts
index 624b737a8be4..79fee048c900 100644
--- a/arch/arm/boot/dts/marvell/orion5x-linkstation-lschl.dts
+++ b/arch/arm/boot/dts/marvell/orion5x-linkstation-lschl.dts
@@ -90,7 +90,7 @@ amber-info-led {
 			gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
 		};
 
-		func {
+		func-led {
 			label = "lschl:func:blue:top";
 			gpios = <&gpio0 17 GPIO_ACTIVE_LOW>;
 		};
diff --git a/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts b/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts
index 802cd6ff6169..e0da406c430f 100644
--- a/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts
+++ b/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts
@@ -102,22 +102,22 @@ gpio-leds {
 			     &pmx_led_power>;
 		pinctrl-names = "default";
 
-		alarm {
+		led-alarm {
 			label = "lswsgl:alarm:red";
 			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
 		};
 
-		info {
+		led-info {
 			label = "lswsgl:info:amber";
 			gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
 		};
 
-		func {
+		led-func {
 			label = "lswsgl:func:blue:top";
 			gpios = <&gpio0 9 GPIO_ACTIVE_LOW>;
 		};
 
-		power {
+		led-power {
 			label = "lswsgl:power:blue:bottom";
 			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
 			default-state = "on";
diff --git a/arch/arm/boot/dts/marvell/orion5x-rd88f5182-nas.dts b/arch/arm/boot/dts/marvell/orion5x-rd88f5182-nas.dts
index fd78aa02a3c5..75ab913b21e5 100644
--- a/arch/arm/boot/dts/marvell/orion5x-rd88f5182-nas.dts
+++ b/arch/arm/boot/dts/marvell/orion5x-rd88f5182-nas.dts
@@ -32,7 +32,7 @@ gpio-leds {
 		pinctrl-0 = <&pmx_debug_led>;
 		pinctrl-names = "default";
 
-		led@0 {
+		led-0 {
 			label = "rd88f5182:cpu";
 			linux,default-trigger = "heartbeat";
 			gpios = <&gpio0 0 GPIO_ACTIVE_HIGH>;

-- 
2.43.0


