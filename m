Return-Path: <devicetree+bounces-23714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2265580C230
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 08:42:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1FD1280D88
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 07:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0B06208C4;
	Mon, 11 Dec 2023 07:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AIIOCg7c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 715E3100
	for <devicetree@vger.kernel.org>; Sun, 10 Dec 2023 23:42:14 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2ca0d14976aso54333701fa.2
        for <devicetree@vger.kernel.org>; Sun, 10 Dec 2023 23:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702280532; x=1702885332; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=isEx4Px7vt9AwtBEcan27JIxTrceu09splFCoGA5dbc=;
        b=AIIOCg7c3P6CsvlcFKXsEk2jwnecOok/KWxmL9Fp4SPTJCHuhjU7aSoomh2jNWjyB8
         IOrMVnzyXUIOO2I6ABbWjsuzh4wn+/9EvFMxDO/op8AIzqSqcygWLyhbtVHxBrLo8yOn
         da3V5dNjZ8fkckTGDAf1+W/fkaIRK40tefKd9nMc7BLvJbsQ+4afAkoPXzqgTHyIfYmI
         33xc/YyimIpOgQ/vQtDcFAwTvVP6UurB1fYN9jXB0xvliYL+xtbN9yqC930jMkjJt2HD
         pGX0vEW6gOIFTM3U4rX8CTh6tyL26Q1arqvvLzFXBMK/aJ83FzEhYypUSWoOWxmQBc0T
         +hYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702280532; x=1702885332;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=isEx4Px7vt9AwtBEcan27JIxTrceu09splFCoGA5dbc=;
        b=Q2KqloE3i90UwJTILVmSxOvWE3By/B6LTLBcbdM6+I3OhgUL785mWnpe6iWFxLrXZT
         ilveYpNpL+uUOWrTtEln8fylZ7h7tHIR1TJe+/gnegMzq6UeoRICs9ku+goFLHuEE8O+
         EZj1pxITzcLLAEWp7DvGrMrb4Qilpu32BSsc9WhWuPw+d/G3Y0Gzs95lCr/a0GWR0tPa
         xrOYfLHNnDXzwbnnFv1CWir1sZxxOxKwm03gXP5/cyKQ3dIF3e/U1mnfMwpD/RL0CvI7
         v62Uy3MZLOACHIwVww8pAauBvWZ0xOpOrPCO0YzmUA1VJPnh8+PK0IQlkvu7T3wddTcA
         Q0+w==
X-Gm-Message-State: AOJu0YySET5wVrAzbONIKnoZVUKR5ADi6vXYeEp19As+0DRuufvynBMQ
	rfb0lDI+YFfd4Nb4iQ7UA38d/Q==
X-Google-Smtp-Source: AGHT+IFNI74+YNQA3KSvGpKhUuTNU4PHfmLowVWnfUrcsdiQP4p/loRDXs+lYzLROz+4aagaMI7FQQ==
X-Received: by 2002:a2e:be21:0:b0:2cb:2b42:6d68 with SMTP id z33-20020a2ebe21000000b002cb2b426d68mr1342157ljq.4.1702280532766;
        Sun, 10 Dec 2023 23:42:12 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id s30-20020a05651c201e00b002ca0217f327sm1116269ljo.65.2023.12.10.23.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Dec 2023 23:42:12 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Uwe Kleine-K?nig <u.kleine-koenig@pengutronix.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Jaewon Kim <jaewon02.kim@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org, 
 linux-serial@vger.kernel.org
In-Reply-To: <20231208074527.50840-3-jaewon02.kim@samsung.com>
References: <20231208074527.50840-1-jaewon02.kim@samsung.com>
 <CGME20231208075020epcas2p30e46ea65e921664930b337510461892f@epcas2p3.samsung.com>
 <20231208074527.50840-3-jaewon02.kim@samsung.com>
Subject: Re: (subset) [PATCH v3 2/4] arm64: dts: exynos: add minimal
 support for exynosautov920 sadk board
Message-Id: <170228053058.12030.17311728279876504581.b4-ty@linaro.org>
Date: Mon, 11 Dec 2023 08:42:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Fri, 08 Dec 2023 16:45:25 +0900, Jaewon Kim wrote:
> ExynosAutov920 SADK is ExynosAutov920 SoC based SADK(Samsung Automotive
> Development Kit) board. It has 16GB(8GB + 8GB) LPDDR5 RAM and 256GB
> (128GB + 128GB) UFS.
> 
> This is minimal support board device-tree.
>  * Serial console
>  * GPIO Key
>  * PWM FAN
> 
> [...]

Applied, thanks!

[2/4] arm64: dts: exynos: add minimal support for exynosautov920 sadk board
      https://git.kernel.org/krzk/linux/c/57de428eaca2b9af1a35df96c7adcad4b5ea79f9

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


