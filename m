Return-Path: <devicetree+bounces-23417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1CC80B3BB
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 11:44:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 260BB1C2098F
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 10:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63911134CC;
	Sat,  9 Dec 2023 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cagHxjVd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F898BC
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 02:44:20 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-54c846da5e9so2664715a12.3
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 02:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702118659; x=1702723459; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2BCoGI7s/gCFS6PWgnQhz780oAr1iVhq6zVeEGwbfs8=;
        b=cagHxjVd/RLttyqjkwzTlB0EUOuqFfwhesZlYAG2AgnVEnQFgJ3w3WvHWNe04jxQm2
         DYnnOUw+U+mVNaolSxd4fCnlkc5XymraNp6rBEKrnuJ6dosBOeyYVIWBc5ZBNPPJKhrc
         4a3TzEy8vlH+ss45QWUKO4+WqR0krcQpT4k98ALzK18YOSR+DaaohkM397aSHgcsoolu
         Kx7577t3ox5x2gUHeRcGLFin9tlvM6EjEslP8NnymANBni6OrOaiHJeqTzrwtNekTZV4
         ZyqukSI6jmr767ch2FTnayf1+FkBAqX+6p4B2/7enhigLB1nROnkZch6JpvuerK9Nt7G
         +2cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702118659; x=1702723459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2BCoGI7s/gCFS6PWgnQhz780oAr1iVhq6zVeEGwbfs8=;
        b=VUfR8joVKFAhHryR6XZIlya2z/yaSs9O00c5p3FERdWY7yS9RJospcp707r4kdZyhB
         7b1OtMzJ8AvzdbnHP6PUjfzphGN6BdOIUP3XeRzJyDIl9zDFuPtQCkYqL9298bVDKUrl
         48YDqTXUOFU/6RzZBVIUcB0KkZHzTvEeIxxDdy8A8Pomjk46o7DEMAa9T8c6ePWhu3hg
         1m9I2bxiCFGP/2fBNIGNe3qaHyCtzb9OTMd8NRbk6wiB3HnyYEKboIsjWYxqt+5vR129
         XN86k5nhWCaDu7HB4O1yefIeGXjDWFfriRU3xERxYUncQ8GIHfT+H60O+3yjrs8ZFjCS
         N9HA==
X-Gm-Message-State: AOJu0YzS5wBLRmrB+41YyszLnoCSGjRAMKgnF+NHwXqJbd7DTCauulKl
	1IfzUjTJPBr3L9moZw94JcoGSw==
X-Google-Smtp-Source: AGHT+IHKXydt6szGsD9Uw4tFNlKvRW/prO21WATDg6wz6AXTumqPVhK40FOV2/2+4YdghH02q1yM9g==
X-Received: by 2002:a50:8d12:0:b0:54b:2894:d198 with SMTP id s18-20020a508d12000000b0054b2894d198mr1011540eds.4.1702118659237;
        Sat, 09 Dec 2023 02:44:19 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id eh12-20020a0564020f8c00b00550e21a4f76sm349604edb.8.2023.12.09.02.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 02:44:18 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] ARM: dts: aspeed: yosemite4: correct Mellanox multi-host property
Date: Sat,  9 Dec 2023 11:44:11 +0100
Message-Id: <20231209104412.12916-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231209104412.12916-1-krzysztof.kozlowski@linaro.org>
References: <20231209104412.12916-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"mlx,multi-host" is using incorrect vendor prefix and is not documented.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
index 64075cc41d92..1bd555a6c3ba 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
@@ -88,7 +88,7 @@ &mac2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_rmii3_default>;
 	use-ncsi;
-	mlx,multi-host;
+	mellanox,multi-host;
 };
 
 &mac3 {
@@ -96,7 +96,7 @@ &mac3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_rmii4_default>;
 	use-ncsi;
-	mlx,multi-host;
+	mellanox,multi-host;
 };
 
 &fmc {
-- 
2.34.1


