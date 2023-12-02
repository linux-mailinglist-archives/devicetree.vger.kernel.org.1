Return-Path: <devicetree+bounces-20964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B96E7801CE2
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 14:05:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EADB31C209E2
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 13:05:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0A1518051;
	Sat,  2 Dec 2023 13:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PsClP+U7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C93813A;
	Sat,  2 Dec 2023 05:05:21 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a1a0bc1e415so195317066b.0;
        Sat, 02 Dec 2023 05:05:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701522319; x=1702127119; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LlYAxixn2/bVhOT7Rvb2SZjbGsVONErr2mUXn3POHYo=;
        b=PsClP+U7gJAPLTPbErUnB+Z9Gi7ZgmU5splFXUdAkdr4h8Pn0Rkg4+8z1Gp7//zCDO
         hzMVaQ40i2fyWmMSBpFePOhYPXGL/KH+1fshzA/cobQNTxLn3kge/DRKQ2wqn8O3sx5U
         1KCrCUbIkXXwV3eboRvusbraFeTFeN8d11xAACXYJ3Axy4dFESltMpi4yqU02Ov7dtER
         aF4Xm3cquRUBnnD0srWl7Q6Xvnna2zxp29fsCqLssETY4PWASxqrshL/6bvmPY347G0p
         9xHOXF0aoN+1asKW+ctea9EWx/uJmTUR1v0My7R3xdOq/77bHXUr17d2wUnSDiAQxh6D
         ubIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701522319; x=1702127119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LlYAxixn2/bVhOT7Rvb2SZjbGsVONErr2mUXn3POHYo=;
        b=jIxjtpvE3tlGPw80tOlo5XhO5JTeLGo+0UdVncCUdKRWFHQJmLdIMnB9wKy8RneJlT
         oTpJ8IUF9pkOVNn2epFFajVtR11odD37hYhaBKqwjx0zqrPyaMisZ/HtH3zZ4VqARkGJ
         qVO6eaOA3ffyilG7Ba7f+OVutXlnOfyj0EL1zdySJO00hW9Fl/vghgc/G6tWkN26nG/5
         0nSA5Eq1ZIGK+njzVoOR0aQiwkbR1jmLjqR5oXM1vpc15sWSmF23Dv2Sd8/e7vDHQiZQ
         VPbwShrqGRvaYbaMd+W/+ji1for8Y/yPQkOxtA9qTV8KEAYj1HntjLU831+ZpZX8W9OQ
         VUlA==
X-Gm-Message-State: AOJu0Yygv3WaItVhuPHpz4tB4HP6Z/nhAV7JowCahtA6UnbuySH5ouUY
	u2/KHQW9qJQLB0nEpZiwqNOhg56f/A==
X-Google-Smtp-Source: AGHT+IEsK3ZmEBmQ1+32lw9/FPSyQI+Kuc9Fe6vbkulrwlm+Nrr0F16ntBuLvtXKiFW82/9kj74wXg==
X-Received: by 2002:a17:906:eb18:b0:a19:3c48:4f7 with SMTP id mb24-20020a170906eb1800b00a193c4804f7mr1764291ejb.60.1701522319446;
        Sat, 02 Dec 2023 05:05:19 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id bs5-20020a170906d1c500b00a0bf09c9483sm3045324ejb.35.2023.12.02.05.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 05:05:19 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] ARM: dts: rockchip: Move uart aliases to SoC dtsi for RK3128
Date: Sat,  2 Dec 2023 14:05:07 +0100
Message-ID: <20231202130506.66738-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231202130506.66738-2-knaerzche@gmail.com>
References: <20231202130506.66738-2-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

SoC TRM, SoC datasheet and board schematics always refer to the
same uart numbers - even if not all are used for a specific board.
In order to not have to re-define them for every board move the
aliases to SoC dtsi for RK3128 like it's being done for all other
Rockchip ARM SoCs.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts | 3 +--
 arch/arm/boot/dts/rockchip/rk3128.dtsi         | 3 +++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
index b448e2b96e08..6e46e839de39 100644
--- a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
+++ b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
@@ -13,7 +13,6 @@ / {
 	aliases {
 		mmc0 = &emmc;
 		mmc1 = &sdmmc;
-		serial0 = &uart1;
 	};
 
 	memory@60000000 {
@@ -22,7 +21,7 @@ memory@60000000 {
 	};
 
 	chosen {
-		stdout-path = "serial0:115200n8";
+		stdout-path = &uart1;
 	};
 
 	adc-keys {
diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index dc149d98cf9e..edf90ebd7ff9 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -24,6 +24,9 @@ aliases {
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
 		i2c3 = &i2c3;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
 	};
 
 	arm-pmu {
-- 
2.43.0


