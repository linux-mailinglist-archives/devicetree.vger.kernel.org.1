Return-Path: <devicetree+bounces-53084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBD588AD9D
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 19:19:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C60E61F3B1B7
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 18:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 322CF19470;
	Mon, 25 Mar 2024 17:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LbgRvZk5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1423A1D69B
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 17:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711389109; cv=none; b=mlDrhKC5hlP0a+g6apxQCtOE22xndL6ui/yatxgFuc/psS41DlXe2N1BtWqbHS3foZEVCwWAd9+Qy57IurPeCWUGx2YTJ04f6M8JsY1XNCn+1IBnxQJ5lRUQgkMw+kAMqhYOrOsWvGFIIgEaST0Q16XuS91zFFeApj+r3yjF1Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711389109; c=relaxed/simple;
	bh=oyF9+e1mdLONj+eVQZ0nIOMKeT66Xbc4NbMPyNF/RNw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=alKVqroPg4RNysYliDloZXyb5cosjgtkTTOHtKKLolGGCzS6Oop9HUmC7PTBLcf3hniezxXjjr3nP2xud1+gGc3DKUgieJ+rVA+ZtBVeJRWf34P6XkYU6C+pTbxvOqeo9UAVrXG8zLjfmxgQHEtoynQAXtOSzA5vMN4v1qkgya8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LbgRvZk5; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3c3d3710018so421013b6e.0
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711389103; x=1711993903; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2CVUJ1eR+Wrr/hS2Oz4kKjT97suaSK1CX1f46zATA1o=;
        b=LbgRvZk5YTi8qvFRMTQAhY/pbpEI/ACWVE16HbGGRDmqThADLnxweOKziaosg7DwyQ
         HwnP2aBDKrKdBy91kFuHKfWlVkjPyv2cImjf4KlthPgdzkNL6brxK0xRdmHFmuLq8Teo
         95CcUbA9W4ME4POLtXa1QDiVA4+kFg0MeJcWtgGCO69c8cmayzkKthtH+05Ryfiwu3Yb
         7eyIQVar0S82LdW2Oe9H+DoKM3HT/CkWKnx3jlcHT2rvYtDfiNcZF+SPxN9G1l+cr+N0
         iZ7EiyY4gR0A7YzQrQHwkVGnw6UyGZlMQOaS7Alu5t8jwbCyQM+C/HJLIl6TRI+b/x4Y
         aZAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711389103; x=1711993903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2CVUJ1eR+Wrr/hS2Oz4kKjT97suaSK1CX1f46zATA1o=;
        b=Voe/DsFrHC70QbB8jf6vzn/DObJETxztPaV0eX3s9J3zj42sXBhYCNJi6hg1i0fTz5
         RjI3CTPaQlqsSdtOqKX9UGEBxOHQu0vBygpFpyT9nsORafnuE598aexubVz5fU5LeyPk
         1oYh0XEP3NkT3IA5HJHe1AOXiScopoWw63mKg8pz9h1ymwS0uH/LV7eMewaRwxvJMvqc
         dac/kCKPaPt7X6WqQQwbEfFId0uyLyulVRxPM9epwGiZC8mVx+0kzbqWN5iadmugNnWE
         lIdcTZkbELubrLqNs5F/Lop/zyM81jRkNmp2id08prkAcL5CLVqpYRXrLIHDohypaB/r
         t4DA==
X-Gm-Message-State: AOJu0YwGXZnrFxMvAy0Ocpp6qmvWjNK4Au4JqZ8jTNvt2yOyzFG3PH8l
	HlJWEYHLuZQt//K1jYr/4R5cili+j0TSwlCUY0KtMhP0wFvAd2HS
X-Google-Smtp-Source: AGHT+IGL/HY+56f7I1xwlw3H8E89U0Z4fKEqkRonTw5a+Msj146EQCCsObH7ewvc9VnSXPtz1l8fOA==
X-Received: by 2002:a05:6808:de7:b0:3c3:b84a:ca75 with SMTP id g39-20020a0568080de700b003c3b84aca75mr7693488oic.26.1711389103003;
        Mon, 25 Mar 2024 10:51:43 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u17-20020a056808151100b003c3d3fc607csm212505oiw.26.2024.03.25.10.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 10:51:42 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: Correct model name for Powkiddy RK3566 Devices
Date: Mon, 25 Mar 2024 12:51:32 -0500
Message-Id: <20240325175133.19393-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325175133.19393-1-macroalpha82@gmail.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Some Powkiddy model names begin with the company "Powkiddy" and others
simply list the model number. Make this consistent across the device
lineup by including the manufacturer in the model name.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
index f0f5ee595938..e359465eebe9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
@@ -8,7 +8,7 @@
 #include "rk3566-powkiddy-rk2023.dtsi"
 
 / {
-	model = "RGB30";
+	model = "Powkiddy RGB30";
 	compatible = "powkiddy,rgb30", "rockchip,rk3566";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
index 661abceaba9c..b83116c56584 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
@@ -8,7 +8,7 @@
 #include "rk3566-powkiddy-rk2023.dtsi"
 
 / {
-	model = "RK2023";
+	model = "Powkiddy RK2023";
 	compatible = "powkiddy,rk2023", "rockchip,rk3566";
 };
 
-- 
2.34.1


