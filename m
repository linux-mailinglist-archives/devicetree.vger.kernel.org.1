Return-Path: <devicetree+bounces-56455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0598995C0
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 08:46:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F0C221F21CA4
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 06:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22B0C24A08;
	Fri,  5 Apr 2024 06:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pbC/ugPw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5436022331
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 06:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712299594; cv=none; b=qCcOYEXkMDjTF/JUMCfrdjmor21FPAiAK1mB3EI4bHxbXqJj9CHscfOJ7p4gLzDU6YOKhbpgs2LS38uxwpVIVIVV+nyjWC1vaPIDf1juQhdPdwrLrvXA5dOxkR3CL5lRqFn3GDSVXypIv/Xs5AInVp4fIiZ3TBvqN0maTj++jyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712299594; c=relaxed/simple;
	bh=LoXd4uXAUC4MYCvOWelMgffMqJLLlUcM6jBei3hAM50=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=L6zRFykw+ABfCvI3Q7dojOrBP6NakLdaOWZ6weJ57zfCEc3YUPAM94zOwkiwf2COh1yRbJ4htYe9V5Ry2DNv7cV0ns7PgNctDAYL2RDN2kEAZLE0BMAnPN0yA44/exMH9gZ6n+4BPduU1PR3gU/Q4glMsGKXQyNUCeyFHI5aGgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pbC/ugPw; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-56e2119cffeso1602769a12.3
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 23:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712299591; x=1712904391; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J+UqM3H8PVtmZJzWNwLXI8j0aa2hbrCpkSPJmFMLYHA=;
        b=pbC/ugPwUpGYPpiHdmRjEWtLQLfJuk+lU8lxmQ/vtYiAK2AQvWQnydqtAoMyHaGFAu
         D5VqPubONn8zaYzPit646tSgK+o8lSx6Av1Rx2uwOEV+mjGB83TKKkS9jgt6b1O4anIy
         um1cbdTOI0kQz3jC9k5rnTcEsvUpNrf93rAwN5gZxBTFBny8za58qY0bg8prmdxytKw/
         Ay46SnoBihdGqS5HzVtOOKNefvcRa0Mx7xQzBPMQYwB2R682xO+0SIXFC7aOeKI5omRh
         B0VnzlD2hcH36tL+GFYgsZWZNUo3QJORiT/j5kDpgvYVZb4ZlEsz9TUZgfuqsS8x2Izs
         1Qvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712299591; x=1712904391;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J+UqM3H8PVtmZJzWNwLXI8j0aa2hbrCpkSPJmFMLYHA=;
        b=DF/8p2AMgJCjw4rcFkJy+ULu0m4npuk2v1Im8Ugq4pSwaIX8zTR/rN5c4fYhHMaYsN
         ubIOdegCW24pr8nO67Kvf+yurTbeYn3DcmNiT+5P76ZjdssMXXJuGsmahWFScFyfAFPX
         FOdOpHmx0AsWJUH8URKwCNjKvJeCt0xT3MYi9ZyhqW9P8HQWbCMQIctXTi2x7M58kGtf
         zQKXGa2ZmlSfnbj7j8GXVPQSpT8P1vgHHgPAn4cwhh/GCI7t7e5Rmb9YDbTnXfp/CdjJ
         QFLq1jMaNy1RuhpKh6Qc3NJmIVkZekEs+2mPNASTEbzVKrod+Zb2tT2PU3r3etHBX4Zh
         sucA==
X-Forwarded-Encrypted: i=1; AJvYcCXFjYCaJfowbDbDQFcOp6pfPmsclef8NkqnqIF5cyqBnMr1VL30yfQCfC+7aVXUJMlUiPePtV5kCnU1tEoQwMbs0QXYG1NAyC5ZnQ==
X-Gm-Message-State: AOJu0YzEaMr5SXLIuOMagS7NInnGS1+UNHnpXAVAIyGJSsZ2q7gqWN68
	zTFwTztMgb3/odVKKiNVdE5D7m4xyw8/egyLgZy5W70wKP4y9p3krZ3Slw+u+jI=
X-Google-Smtp-Source: AGHT+IGeVQQOsWD3RRp2nLjnTGbweeoIgbKqDmAqFoGst9o8fm+FI9kAswgJa9x35D6KWQQvPQfc3Q==
X-Received: by 2002:a50:a69d:0:b0:56e:2b0b:58 with SMTP id e29-20020a50a69d000000b0056e2b0b0058mr326730edc.10.1712299590730;
        Thu, 04 Apr 2024 23:46:30 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id en16-20020a056402529000b0056e310e6655sm278888edb.68.2024.04.04.23.46.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 23:46:30 -0700 (PDT)
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
Subject: [PATCH v2 2/5] ARM: dts: aspeed: yosemite4: correct Mellanox multi-host property
Date: Fri,  5 Apr 2024 08:46:21 +0200
Message-Id: <20240405064624.18997-2-krzysztof.kozlowski@linaro.org>
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
1. None
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


