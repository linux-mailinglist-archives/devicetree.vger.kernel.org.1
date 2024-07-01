Return-Path: <devicetree+bounces-82003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 568D491E2FD
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 16:57:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DEBF28775C
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 14:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8A5416D315;
	Mon,  1 Jul 2024 14:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NpfmZ74g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08E216CD3C
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 14:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719845814; cv=none; b=BcWoIfSuxdGO4HKMnAgz6Sz5bsrXZ/R17jOSRCvUqDJXB91hjaE5QQ0oFjlWfnyIsZtnGaeiFBSveMi0XzGOgTxUBQ3t59R87YvQFQnQnSPHvx0Ft+OfppJ3MHoZWPHw3OMS3Yf3J3gm13xrxrZDyvPYz26i5AWBkB0cxFgFihk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719845814; c=relaxed/simple;
	bh=SrDosKmap1qHqwbZN81p8+TgKWBukS6DTItRBt59i+A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pqQG6SACaJp0CggrMzjuKM2tW1VOXgebAHCxUicnrlvnVTxZf0rVWCnCuB0bblxSh8ja6NxhaT6t/0sNutOs4U3a+JkdOQ2Xg4zaSQM3yaVP6OFS356uGykOljQ+4wdA4IKx47fTa0TPORRcm2NxJlcfyoflHHPoG8uv1VJ6RcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NpfmZ74g; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-424acfff613so28347835e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 07:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719845811; x=1720450611; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RsUHCrNvsKr1kdBukb0DCbmncyLmfrL3JXYTmXFdBlM=;
        b=NpfmZ74g5fCMFS3fJUxnzwGRMr2fBCDgQLNd1f+xKRGfNs2ZpS+KQFmE8Hqf45DDQR
         kAiiTTrjQl8uBDZ89WdKGJacxcBJYkLE+JC5oCRt/6mkhujbwCGMb/OOMffO6ozLEnKT
         y6ho1hT6KOV8wn3puZ6ABySplb1IHJ5egIAbNLOYSoWXJinAdvQCO6j9vGgTaSorxxzl
         Di7IUvHI+dIHJ4GMV7u+wDo7U0yu7Vc9IfGncIuytKdvxOTXVhlZfNlZuPLKTDKLrHRL
         wrHG0TKUnCWaiFEZ5EEO8WokopfHQDxi5Z8JZK2gZGSvathtXfJxeJc1yG4skg8guuXU
         /tSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719845811; x=1720450611;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RsUHCrNvsKr1kdBukb0DCbmncyLmfrL3JXYTmXFdBlM=;
        b=t+sUqU8rMBbH6yTikmGswbWCpKRQtaZxhYdi+nBX/N08UAXPW/84uF5n4/YL7LpKAo
         JmWE+JjUZRg5ndE0or/fV4ii7ec9YmArYJrhc1sCGYLtIygHGx2AFb5vwxsZ87a7FrAt
         b5vb40lvQeT6ZAlgG3sgscZsmoMDvrBW/WfDdDHqzWUa0e54ROje9KPuQTbBraQZRHv8
         1h1vJa7BJlI7Muo+vH7yqTcGQz8MumPkrwPOda609zsRfuzntCSqy/AmPWFfSj44t1Up
         nu9o65X71KiHH7Ad4hGgJmman5gOWqZUozlvuwGO2BQ+sV1q4U0TYeTkjn+ISa3eS1V6
         sVEA==
X-Forwarded-Encrypted: i=1; AJvYcCUR2wz7BBgWTdaSrni/E8MBe3kYzihHiVrR0zEUDh+YTn7JckGDRY57W9vxilE2PfPFmYPpydlIfGQ4ivi1x+nTx2GQ1+3vC5rTcg==
X-Gm-Message-State: AOJu0Yw+ziu9zbuzXQ1fjLWjYAaylV5YI/Tar8kgphKx/3bSdOmTlcCL
	83rqr1iSUvV7m+WcpkVcNM8M7XOtVbsXU3RgR447NbSjdDwH/qg5KC55AxMhvqI=
X-Google-Smtp-Source: AGHT+IEmqNIzKh8Lu6RZ6/4U5CX2P1NYzyEdM/Eu1XeQVHEX0sMUaOg1okVoBqrKIIsHkxzsu3DaIg==
X-Received: by 2002:a05:600c:181b:b0:424:c837:f54b with SMTP id 5b1f17b1804b1-4257a0270f4mr45205645e9.38.1719845811435;
        Mon, 01 Jul 2024 07:56:51 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256b0c0f99sm160062915e9.41.2024.07.01.07.56.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 07:56:50 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 01 Jul 2024 16:56:39 +0200
Subject: [PATCH 6/7] ARM: dts: marvell: orion5x-lswsgl: use 'gpios'
 property for LEDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240701-dts-marvell-cleanup-v1-6-4773bd20691a@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1266;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=SrDosKmap1qHqwbZN81p8+TgKWBukS6DTItRBt59i+A=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmgsOo52DMHYvFkxcBePY3Llxu+r5mkmHz3B2jW
 gUj7B2onLiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZoLDqAAKCRDBN2bmhouD
 12xdD/sHkxSwaK3wAj9bJIFQd3SxEZXMuhG3VHlejfhkDTDqCGJ/tDwTn3Kb6/i7OvydZs5xVD8
 Jqz1uAb7w9U1PAKN1tpNLdLH5yJZYa/N7daMCP/T1K9b82GUE1Ok1kzhlamuzu+G9j4GiZQ/1/K
 SYWvJrnoZk/0WRIZ27P/UAqVoQ7l3K1OHBngBCAx/zbOcaDWhSeXh5wMgBSxP1b/2kSaIIUh5g+
 EHnaTSyJ9+XW/iJDr3N1EEx8PlGRz860TXJIobzaBTY+K+EYciNz4+2xXMhGd3YxVH1VUg3WzWv
 XXsxWl0L1hbJwEEFEoyE+OnTgrMv57MQKcC5Y8Ww5w4mVsS/nQubbhDi9T+gMpxkgtVKa2KXJFv
 kDb9h6gdIPfzqUvDbU3LhLuDHpOG9JWtVtDEJf+4PfaycfNCjyiw2oRKHcGlSJSKOA+KIJky/8J
 fPFSySO4nk+KujrpPQn1EV5rNsmrMHm6s7zuhx1ZB6tePzDsfo1xISx92V0ug/ieWTvB1BWSiCO
 omLydkmrFmTBfNcNNyxuBelJuKobwj6VPj/GxdccsaT+4Cfdm7/Ri1FSiU9t/V4vgbApBdW9Qwh
 4v3ECsVbkQOaAF4JKshTTbfMVQzpmFcDcL2AzBr5Dlcdfa9lqqEjEW0vPRQu3rQB24poyEgAp5E
 8E3FyOAFyk4dCLQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The 'gpio' property in GPIO LEDs is deprecated, as reported by
dtbs_check:

  orion5x-lswsgl.dtb: gpio-leds: led-alarm: Unevaluated properties are not allowed ('gpio' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/marvell/orion5x-lswsgl.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts b/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts
index 35dffb24b8b5..802cd6ff6169 100644
--- a/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts
+++ b/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts
@@ -104,22 +104,22 @@ gpio-leds {
 
 		alarm {
 			label = "lswsgl:alarm:red";
-			gpio = <&gpio0 2 GPIO_ACTIVE_LOW>;
+			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
 		};
 
 		info {
 			label = "lswsgl:info:amber";
-			gpio = <&gpio0 3 GPIO_ACTIVE_LOW>;
+			gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
 		};
 
 		func {
 			label = "lswsgl:func:blue:top";
-			gpio = <&gpio0 9 GPIO_ACTIVE_LOW>;
+			gpios = <&gpio0 9 GPIO_ACTIVE_LOW>;
 		};
 
 		power {
 			label = "lswsgl:power:blue:bottom";
-			gpio = <&gpio0 14 GPIO_ACTIVE_LOW>;
+			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
 			default-state = "on";
 		};
 	};

-- 
2.43.0


