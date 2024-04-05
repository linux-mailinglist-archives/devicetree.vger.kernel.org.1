Return-Path: <devicetree+bounces-56457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E96738995C8
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 08:46:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4A14285A12
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 06:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 933522C688;
	Fri,  5 Apr 2024 06:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ck7ggViB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE842577D
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 06:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712299596; cv=none; b=Bfu2DdoYvzbsYO3XNY+yRIUswI9SyJYh/OWfxTW01kZYC0+Z88em/5vj1okh8k7vYnV//oqOsYJDLDw7XBKfGw7Ws7icvBGaWU1ujhqBZJfPtAk9aRwsAReOKG5yJ59h3EBuw4zv/8neCNSgj+dzZbrToVMWnNYNFVHvLt/hi/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712299596; c=relaxed/simple;
	bh=hpEkFx9qDzDs3gn2vXmzx5ZwmTcZ/C0FV+uDlcwNdiE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BcpMD4NtES5HTaPoepkINiEr8D6dzekupepybGSFO3fHxJDrZdttHB/zxYuKEiCs46Psr//Z9z+V+OIQi2CCC9itVFGbcOlVdKXiOS4oeoEmGvcR2WBCRTIQyQeBghnOy/P8B3XoWCH4jeFpmf8KRpOVyGtCxpVB5J9t6rt9cYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ck7ggViB; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-56e2e09fc27so663991a12.0
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 23:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712299593; x=1712904393; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L03qktEe5BqKc8+hjupnXevOErFDWhALUB7ZlYJD1vo=;
        b=Ck7ggViBBCUfc0rz3OmGb5Wj1hHE2jSSB1KBEiVQ4nCnDi90/siNWSNSeyFAWEeHtT
         IBuWu7TWOZSWbqWh2Z/oeQKHXUmsvlkSIWpiO90aALQzRW/P27Dj+Htmv72Bhc6mPrX+
         ND6eN1/rKaJ0lu4i+ZFIlwBK6Vd3j8Wzj8//D6Qg7Qo/VMG3AGJmI6PeILb2CcudTfBJ
         Zf+wCjocyX1vYv5YxlUNEGwG0OmXL4Ghjw7WWkVAY3yYAM/JYEi8b771viXOYD11tFpD
         Vl1Vv3+o/YSKUVBu+UxDZMR2BDi4Gzw9DII6GafH/08ejqsrd/7D2uKvAiSzKHqho9o6
         IOGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712299593; x=1712904393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L03qktEe5BqKc8+hjupnXevOErFDWhALUB7ZlYJD1vo=;
        b=fGZSgzfYe8KkYswVrAFz/JDkxrZXYOnAWeJdKFaHPh2nTKrnQAdk8flGrxpdYQ0Q1w
         X/4IWCqHe7LxIlYgDNG+JixEEtd/FbOuLth8Gzyy3/cDdwWdmzzVLMR7J+aeKTLjdGwQ
         zgtfvB9q21HmSavScKLoNV6HM0CQqeExfhx1oiemeFUZ0m/88mWfxU3JMdgTdyvhB3n9
         WV7RclwLhv7R+MMoaqs8URkxtPDMv1filJMuDy+Da9LW6QDD2ouNqUvZM0QaLeLGN0YQ
         a4ZoeaCoGkS/lTwnyikmYYYfOhs4GGzvVA+uWTmF3EfkwajIcJ4P3V8UOpkBnnGsfq4Y
         gfhg==
X-Forwarded-Encrypted: i=1; AJvYcCUgxlz+kC3rT1wSugRe95o9BjwXfLUk0kYSfN/NmeD43lS48zVyO33kX0UtksF+/K6hI/8JVXJl//xclWZdvBJsGdb2+zouvFNKPw==
X-Gm-Message-State: AOJu0Yyf0RC0xphzX6itNTNwtC44hYbZcOsGrq7Pc0WFBXFyWidcohsp
	GmTn2gmiJJFj12vyVbu0VJTEXMJtLChgYHnXmgfrLIZjK9bJTWiLU0NQOVuxMow=
X-Google-Smtp-Source: AGHT+IHjmGROnu9Y1ix4apCPz2PhAt2PPjFja55HBstpjpgqzxLJBVjFWv5eRYdGN8y9f2GLmM9gRQ==
X-Received: by 2002:a50:cd9e:0:b0:56d:fc50:ec50 with SMTP id p30-20020a50cd9e000000b0056dfc50ec50mr759789edi.13.1712299593304;
        Thu, 04 Apr 2024 23:46:33 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id en16-20020a056402529000b0056e310e6655sm278888edb.68.2024.04.04.23.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 23:46:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 4/5] ARM: dts: aspeed: harma: correct Mellanox multi-host property
Date: Fri,  5 Apr 2024 08:46:23 +0200
Message-Id: <20240405064624.18997-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405064624.18997-1-krzysztof.kozlowski@linaro.org>
References: <20240405064624.18997-1-krzysztof.kozlowski@linaro.org>
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

Changes in v2:
1. New patch
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
index bbbab8023cd6..b2834399f3d1 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
@@ -137,7 +137,7 @@ &mac3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_rmii4_default>;
 	use-ncsi;
-	mlx,multi-host;
+	mellanox,multi-host;
 };
 
 &rtc {
-- 
2.34.1


