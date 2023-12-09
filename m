Return-Path: <devicetree+bounces-23416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A502480B3B9
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 11:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CFFC11C20B25
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 10:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 129C4134C6;
	Sat,  9 Dec 2023 10:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BEpQoM0r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4902E10E0
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 02:44:19 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-54cfb03f1a8so3837072a12.2
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 02:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702118658; x=1702723458; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x4Hqs9/ZrITwFhPupOGW4Vaim70WWGNp01DNqeiJxRM=;
        b=BEpQoM0rZBzJA0wIlph58J4PbcQHGuwByVDWgaA9l+XxXjuBArPhx3zsgSXr8caxUi
         wpv1aHqM9suMlLw7+jEWXZUlRVNgXHeU2iot7Avf5ksKhnRhnS7hW7rtwoIlJdQqChas
         7vyaFaZB5KI/DnkjNMv9qOHTljGF0e1BFfimc2fdWnRXFODvK3XftyM2jFnfE7/V6PQK
         WH1mmMQkpQs0EsGVd13j5jkLWI/f722FXCPEmPOjK1wDMNslyReS8co5ytlXrqwrNpt/
         Fz7vn9ZQg9AvtPy03ejzeDDO0YPT+s2fcm158yHHax6mtiuXcIxOhYcGX9w/wQyvI1PZ
         IpfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702118658; x=1702723458;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x4Hqs9/ZrITwFhPupOGW4Vaim70WWGNp01DNqeiJxRM=;
        b=cEAyQ890RpAV1xeyKpqCxClcrwcvJZO/IM/VhiCiH42kBoWGQszo5TNa3erh7H7/4v
         TfG15x/j/qEvjF9tAERA2IppDKgwHQOlXFz6H16gVQSr+DA7MyGDltU2qT+zTGe6+F5H
         LICFUS8hheok9XFeDn7+Xwd4fLcBYlKUc7yRAvrX9tcwdrKvzOMMDQoqeKP+O40yvBSC
         SquXqRjlT/u+6tgrn9NnTPiU/HtkvaXWJ4WFtGRoG43v9TQajA3Im5Ney+PC9A0uIwgj
         dBfufqiFvE82wExCBkc+T1lREqfwzIrwikE13eI+P6mXiKQAbkLDYj99Ou62QwZAHyBM
         39xA==
X-Gm-Message-State: AOJu0YwTWgxU0Nvgz3k//Kqxr+4Hmlt8QskmM114M18c+QnqNmPocmOs
	bQD4jqrDL3hY9DTFvKksqBXyqQ==
X-Google-Smtp-Source: AGHT+IEkzNG9N1bAbnaeGgMfxxB2TwMSICgsr4j3JwI3MWSMFxSNj17nraBpbbXjUP70L03CqcJXNA==
X-Received: by 2002:a50:8a99:0:b0:54b:28e9:b283 with SMTP id j25-20020a508a99000000b0054b28e9b283mr717390edj.14.1702118657731;
        Sat, 09 Dec 2023 02:44:17 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id eh12-20020a0564020f8c00b00550e21a4f76sm349604edb.8.2023.12.09.02.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 02:44:17 -0800 (PST)
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
Subject: [PATCH 2/4] ARM: dts: aspeed: minerva-cmc: correct Mellanox multi-host property
Date: Sat,  9 Dec 2023 11:44:10 +0100
Message-Id: <20231209104412.12916-2-krzysztof.kozlowski@linaro.org>
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
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva-cmc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva-cmc.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva-cmc.dts
index f04ef9063520..29f042a47e96 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva-cmc.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva-cmc.dts
@@ -51,7 +51,7 @@ &mac3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_rmii4_default>;
 	use-ncsi;
-	mlx,multi-host;
+	mellanox,multi-host;
 };
 
 &fmc {
-- 
2.34.1


