Return-Path: <devicetree+bounces-18457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D9A7F6CFE
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 08:41:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CDF1281B42
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 07:41:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88AB8524E;
	Fri, 24 Nov 2023 07:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EFeVVzca"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F31831A8
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 23:41:17 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9ff26d7c0a6so223053866b.2
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 23:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700811676; x=1701416476; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fe7LFiAVDzLRSxjoOCH/kO6LIkOeWYMi0jJKMHO+M30=;
        b=EFeVVzcaKgPj8Wuw/qGbs778MDt/hrO/YETUFBa4H5Fk+0XzKiVNaYrsiUTqEW+02n
         DqcBSZzHjwjhDnHdf7sNM4nStGbvzhX/3WVW1EM1CL3WzdT8pQTB81Bq9VEpRx0SaqTa
         reDp4PArRiYAdTyIMLdpzeDIbm+9fFviTRRBjMc43OrR3RndiW5ZtoNbNMiLNhO4Z9Mo
         hgSXxeNO84eImfHF5sSRZsDz76uw9y8E6CuXBcyAEjlym/psA+pkpmofkiIRqozgWcyf
         FkJYFkTorbEwXjXuGRLhN+0ArWxMkJaSVf3j3eSJtnuxXiZz3PrOOvojK8A0werprcyn
         Pb/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700811676; x=1701416476;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fe7LFiAVDzLRSxjoOCH/kO6LIkOeWYMi0jJKMHO+M30=;
        b=nRpTN52f6AnhDlpGftdxv2lVX6EIVz7hFbNTVUkZ1favqXw0u2R/fUttcNLirje611
         1WiaI1e08iyeLhWGzAtf6Psg+uUqKk5CpPO/U9Joq4JU8fDwki67Cf5+aBM70xNArbLs
         NYBG+wMJfqIuUdwJHrfB7QrdbdDcZU/WOTlmXfoLpTgDlAm4/IDqCYTmDe+WJi8c/KoK
         XXVmXb9AyJd/bxldPEHGbsBFFB/jHGxiFIYyfC8LUIqRKHZiYI4yIpBWORy9jy2O0YAB
         AsKCGECkpcSdWPxO7Hib+8txUQrMMQZLpPa5SpMFXalbVd9R5IKIBhgh1J54iE7Po4S3
         kzSA==
X-Gm-Message-State: AOJu0Yy2UNB0aesB5TSAvtB8oBBBV6/gWPQsJOPoE7Qbewt+H2L61+o6
	MO5dIK2l2j7j0nqtmLj95OgbLA==
X-Google-Smtp-Source: AGHT+IHDrv06ivxtPgRXd+8inYekMaQKkAUnYCK1Xa+l7J5VfhociYD92/EJid18MCVCbwbs/iMh6Q==
X-Received: by 2002:a17:907:740a:b0:9e5:d618:d6c1 with SMTP id gj10-20020a170907740a00b009e5d618d6c1mr1110958ejc.19.1700811676466;
        Thu, 23 Nov 2023 23:41:16 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id hk15-20020a170906c9cf00b009fef7d22c98sm1736585ejb.35.2023.11.23.23.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Nov 2023 23:41:15 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Tomasz Figa <tomasz.figa@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>,
	semen.protsenko@linaro.org,
	Jaewon Kim <jaewon02.kim@samsung.com>
Subject: Re: (subset) [PATCH 1/3] dt-bindings: pinctrl: samsung: use Exynos7 fallbacks for newer wake-up controllers
Date: Fri, 24 Nov 2023 08:41:13 +0100
Message-Id: <170081167113.4921.3456428823798140178.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231122200407.423264-1-krzysztof.kozlowski@linaro.org>
References: <20231122200407.423264-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 22 Nov 2023 21:04:05 +0100, Krzysztof Kozlowski wrote:
> Older ARM8 SoCs like Exynos5433, Exynos7 and Exynos7885 have the pin
> controller with wake-up interrupts muxed, thus the wake-up interrupt
> controller device node has interrupts property, while its pin banks
> might not (because they are muxed by the wake-up controller).
> 
> Newer SoCs like Exynos850 and ExynosAutov9 do not used muxed wake-up
> interrupts:
> 1. Wake-up interrupt controller device node has no interrupts,
> 2. Its pin banks have interrupts (since there is no muxing).
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: pinctrl: samsung: use Exynos7 fallbacks for newer wake-up controllers
      https://git.kernel.org/pinctrl/samsung/c/904140fa45533f6d05071e24492013da16c46b7f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

