Return-Path: <devicetree+bounces-92151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A75994C117
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 17:26:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB97F1C20D89
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 15:26:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C68019048A;
	Thu,  8 Aug 2024 15:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v6GxOwDo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2A5190482
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 15:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723130694; cv=none; b=SWVHuB/fLRrQKLkIt3NlMzDbdI36dbtfWR6Eao3m6yYMpl5rOzA3EqVox5HmCzLCqSmpUxY56qkSpGV/GGyx4SLzn2o6tUwejeHpu3+RStREWDU+neBXNuOiADDuUSGcHlNU7lYGiCd5srqmggDLfcplS1kKj80wAe8aPtToqTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723130694; c=relaxed/simple;
	bh=Wo1uVubrLXVDbQNlkmqIS7KChMVuXDCKLsDKDR3SK28=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=KreGafgy1pdkDgNHK7ZPbNpzPrPYI96xk/igdKr+C8CSHCufefwmW9krmH1bQWkn3F8pW8G94ZnM1pY7AKOmpYjgwIwlQXtF0SyfXtq2V9Ub9oHBBCN9wKunvGRH80O+UplO8lHs3EZBUHO/65Fgwq+IWh7gG54kCMpYRYwbBI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v6GxOwDo; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-428141be2ddso8004945e9.2
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 08:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723130691; x=1723735491; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GNgkQMLQE8+c7qKYIRFHCA2sX7wd7anUiiLQP8dhzas=;
        b=v6GxOwDoaGtKyTk/U4cdybFg68EfRabkOP29cnF9XmTo/4KtyoveUCH8McfxIeBFAP
         HDVHIIWmLTuEoqs83X8iyrt5Q+7A7Oh1Nqz8cI2Q8T/rwmc67deW3gldS3QradKvy5iQ
         g+faJ2bLHBHiaqiabeMT+RO/QG8K7lb1soPDsSpA0I5aXgXtPUu5Jy8G8k5h/0DePWvm
         tf12qbQ4SuSmvWtU536yTIsbIx+TCnb+d8n1g7L8yKa4nWW9MbGJn0QPjcklmiTfi/s3
         VS9VSHKBWTG/ioDUAdYR5/40JvMHmkyFIUgV8qa3CuCivJqezs+P/Y/oTcuqPWQ57KCt
         uhIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723130691; x=1723735491;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GNgkQMLQE8+c7qKYIRFHCA2sX7wd7anUiiLQP8dhzas=;
        b=ECiBtKCcWYn4Hj+tVC9fkURl1MO+MvwIyeQRfmdhmawRzvNJAfFuOT8eLJlHskVkew
         6iTvLcZJiHOhIxBbNmg+FjCAWvJjVvYOVKod5NV9llLl6Vn0+tCXSaYkWKdU2RvPcpp7
         E9VTf7oyXbWM5w/ref8pJ/FpU6SR92P0ANodjyHdi0wvJyxFP3tk84avytWSc05IRyEm
         dnAMbnai7Fxa/dT2tHPXfY+xglzS5jcVHaLxerWJ+BR6zL361HSFY4PFdJDbI+PlFy0O
         k0AqwkvR6FhZBGlGAIXU7Dw/o27FvIS0D3l01a2YsyMJB7gVm8lagVU5JmkB5khnpr7v
         mZ7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUCR4MGlcpgTum8MjNC1uZpO5/OsVT4CJfJpOVvZR41DVISUGWlYMA6oWEnCK3VaqQ8jJbktpmM+C34Sy2MnbFXZ04EN+98UrVrzQ==
X-Gm-Message-State: AOJu0YwhrDUbUHKcYiVyOYLAETT5eUhnJAKvgVwpyJxzgnqrvFJMDMxr
	tV2Hqmc5ggcgirFBrq9Q7VNTxz5NlfmNM9RP5Hu4MKz7diPM9lPb7cIEN0+trJpIoLqKFpoFzxS
	W
X-Google-Smtp-Source: AGHT+IFwSuy9rZTyxbgXUFU394ThU+wzuDkXaMzgjP0+WXBqGd+fnnfs7F2pAnVzZN0s6G6X1+wgJA==
X-Received: by 2002:a05:600c:5248:b0:428:3b5:816b with SMTP id 5b1f17b1804b1-4290aee09afmr16572575e9.3.1723130690475;
        Thu, 08 Aug 2024 08:24:50 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4290c72d5fesm27692005e9.3.2024.08.08.08.24.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 08:24:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240807225959.3343093-1-robh@kernel.org>
References: <20240807225959.3343093-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: memory-controllers: fsl,imx-weim: Fix
 "fsl,weim-cs-timing" schema
Message-Id: <172313068922.39973.8291623622192662969.b4-ty@linaro.org>
Date: Thu, 08 Aug 2024 17:24:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1


On Wed, 07 Aug 2024 16:59:58 -0600, Rob Herring (Arm) wrote:
> The "fsl,weim-cs-timing" property is an array, but the constraints in
> the if/then schema are for a matrix. That worked fine when all
> properties were decoded into a matrix, but now dtschema decodes
> properties into scalars and arrays based on their type.
> 
> 

Applied, thanks!

[1/1] dt-bindings: memory-controllers: fsl,imx-weim: Fix "fsl,weim-cs-timing" schema
      https://git.kernel.org/krzk/linux-mem-ctrl/c/e3e4e77140b4a240865309cc543141a593be4a21

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


