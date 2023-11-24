Return-Path: <devicetree+bounces-18459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F377F6D0A
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 08:43:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EAC9AB21128
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 07:43:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F4A963D5;
	Fri, 24 Nov 2023 07:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AzPHkjBE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A56CD1B2
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 23:43:13 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a02cc476581so212604466b.2
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 23:43:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700811792; x=1701416592; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cyUAYuQRX6aMv+61STKF6DNySvEa6Ul2fK+eQe9Bzg4=;
        b=AzPHkjBEeShulv8K4LG1wkczHy/A8/2BBb+G3x73Ct7DXxdxZCq+z9J8DeOAhTP5ga
         oyLKKhMVOUjara2VTKqxnfDjZHYeu01Q+i1dhvcsArhjRwqL2ZSp+PuFg057GkC2roTC
         a5dXiUHxPtjCANxRJ46DlQDppshETp42Xqj00xaPr6OfyEMEZiU7bk7lT5H8kft6agv6
         27MGK2wkKUHWam4sc8dMD8HvaQt1voOGWXAo5aSzctEHH3oPvXrVefxhgA6v4yWv6eIp
         AmuIcsGXsCUWi9s02VvqYRSmXpWyQHBQyvFIEvOvPZUkrTEcg4kHDQbIGPoQ1A8YuYwt
         LL4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700811792; x=1701416592;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cyUAYuQRX6aMv+61STKF6DNySvEa6Ul2fK+eQe9Bzg4=;
        b=YpES/9/HxNZbbzrwESjjgkU2yldtHijSi4M3iJgW7OvF1qptxuH5IseReTozQIDl9N
         aQbNpwtUpQ+kLAQ3MahSBkiUXoAVPB2EcDXV2oC9+m7H1lrg9/+kYrCtF+42GfG3N91u
         mtG+Wlj8mX0RBy/FXrv6lpOgxoaijktrYn4/DdGEXcdhvHtKX3sTv5EMJzKl1FlUzoj8
         p1+wMch7L5POyzhL8ax9MItOVWAoPffyyjtXs9h6evPeriaOdmgzbiBMGHtjHMxCK33A
         TaQZe6lsIP1FLKlNE+k2TPYSU6+9Gd03P1md3v8LULzo9XeoFw09CRYYW95KWvFvXgPA
         xdGw==
X-Gm-Message-State: AOJu0YxBf+lqu3kQRMiqqThcqKMBRuyoObrazTY524tdovckx32U0qZb
	X6lE7vFsmmY0salYyISC3RNMyw==
X-Google-Smtp-Source: AGHT+IGnXq0BeOtlIbT4kEQh7doVHdDRII4iYS9KqxdWl5+fcxpPtU+60o/O2lPRB2xTa/94ly1y0A==
X-Received: by 2002:a17:906:2707:b0:a04:c9c4:8fc with SMTP id z7-20020a170906270700b00a04c9c408fcmr1296326ejc.18.1700811792060;
        Thu, 23 Nov 2023 23:43:12 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id q13-20020a1709060e4d00b009fe16be6a65sm1739448eji.63.2023.11.23.23.43.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Nov 2023 23:43:11 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Tomasz Figa <tomasz.figa@gmail.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, semen.protsenko@linaro.org, 
 Jaewon Kim <jaewon02.kim@samsung.com>
In-Reply-To: <20231122200407.423264-2-krzysztof.kozlowski@linaro.org>
References: <20231122200407.423264-1-krzysztof.kozlowski@linaro.org>
 <20231122200407.423264-2-krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 2/3] arm64: dts: exynos850: use Exynos7
 fallbacks for pin wake-up controllers
Message-Id: <170081179070.5541.8769953964405999458.b4-ty@linaro.org>
Date: Fri, 24 Nov 2023 08:43:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Wed, 22 Nov 2023 21:04:06 +0100, Krzysztof Kozlowski wrote:
> Exynos850 pin controller capable of wake-ups is still compatible with
> Exynos7, however it does not mux interrupts. Add Exynos7 compatible
> fallback to annotate that compatibility and match the bindings.
> 
> 

Applied, thanks!

[2/3] arm64: dts: exynos850: use Exynos7 fallbacks for pin wake-up controllers
      https://git.kernel.org/krzk/linux/c/2d8f82dd322fbaafc9c1a70d70efb6efe42c973b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


