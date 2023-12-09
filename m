Return-Path: <devicetree+bounces-23418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1302680B3BD
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 11:44:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4361F1C20C06
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 10:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A2CB13AC7;
	Sat,  9 Dec 2023 10:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="htQiFI9K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 298D210E6
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 02:44:22 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-54bf9a54fe3so4088599a12.3
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 02:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702118660; x=1702723460; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WlRF5ESN+8f4udkYKhzr8luKmrU8RaKXvO/JYQMW7WI=;
        b=htQiFI9KLIDsHOIf3JDDs+FtkRo0zu92tBbg32lYmqLawWLKFPT8WDrmw+D1a25t0+
         R5swhrjJCynSy6iFu9QIlEHBt5gyavn+vW56jNlHc+WROjzr2Tr1E8edDlsdwElYgAaZ
         Qwedfuvb/gItCYwxHFnJlpeU1ZpIoXBz1OryHHqcieY5gz272xJUwcx49BbrW63k7z3n
         WJBLY09wQ1SM24weDsj9w/50qJ/ax1ijjD3L0al3OAnxaSOMX8IY6Z+KVFvzcEkVOme/
         CXgN2VohTJ8A4fWXJrtlUWb4+pOYTU6ntVocNLAtXSmwgAt3fViFxjrWmzCrNbGKzRy3
         Bgag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702118660; x=1702723460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WlRF5ESN+8f4udkYKhzr8luKmrU8RaKXvO/JYQMW7WI=;
        b=cWKh/rqqi5BgDAmkL/O5HV5qcohX8RWIXCa1H8GETHhUGdHh5tLmEVutu69qCAyWN7
         YC6wdpnM6TECCekfgwk2Z9TzJiTYanyEB4jqBGnHG/2eCP/cts67ndqhV0g+rRLFfBpb
         r70ivoSYL185nUUdTkWLbqqToJpxyWQfwieZlcWUwddyffEahFwyH1ntpvKGwJDx0xEc
         3YSG5Zzn+4sKqgDM7I9OcGgKaLq9376d8G7k/SSHtRH0eMBlbnqiVKHihD1w7jZm2X1S
         T8AXAOHfiQ2PiUu7g/Ay8KjrYTcEJNLsZwBKTK2vv1KeSQxAhKLpzdWiG4+JXFB+BCv3
         3LOg==
X-Gm-Message-State: AOJu0YwDXOlXUKss+aZ1lSNyihlV9qwI9iRcwu1YTmLuOZ9X2dlWMled
	drppJtuOMfBV5EEdXs09YUjl7w==
X-Google-Smtp-Source: AGHT+IHda76JkbbrEN5rBMhtlIG3Ox0CJOlh8Z2lE6T50ouOps31F6tLOfl570vTj7LIB2OLM+9I/A==
X-Received: by 2002:a05:6402:2152:b0:54d:412:c8f4 with SMTP id bq18-20020a056402215200b0054d0412c8f4mr705393edb.84.1702118660737;
        Sat, 09 Dec 2023 02:44:20 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id eh12-20020a0564020f8c00b00550e21a4f76sm349604edb.8.2023.12.09.02.44.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 02:44:20 -0800 (PST)
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
Subject: [PATCH 4/4] ARM: dts: aspeed: yosemitev2: correct Mellanox multi-host property
Date: Sat,  9 Dec 2023 11:44:12 +0100
Message-Id: <20231209104412.12916-4-krzysztof.kozlowski@linaro.org>
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
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts
index 6bf2ff85a40e..5143f85fbd70 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts
@@ -95,7 +95,7 @@ &mac0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_rmii1_default>;
 	use-ncsi;
-	mlx,multi-host;
+	mellanox,multi-host;
 };
 
 &adc {
-- 
2.34.1


