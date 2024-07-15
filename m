Return-Path: <devicetree+bounces-85816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 579E49317DB
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 17:49:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 766B11C2185F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 15:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA503EAD5;
	Mon, 15 Jul 2024 15:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u52xaHKN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6F0BA4D
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 15:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721058588; cv=none; b=cSs6VTwWEXS1u8m5MMtXW3DiEbMW4N0MrWOuYnmdoNWZRnkTGodyoqCN7peL14uMPTz923MdHtSPWqW2MlLQkjQWR43YxyfyG7xDh3CRTzNjrFBHO1hOPD2OSN5pW5enuLonz2oibZvzNJH6fBfoR9ioiDJ6WW0WIRmABHH9uC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721058588; c=relaxed/simple;
	bh=ZaFQZFttFDwrsd8OeBciR/rDxUgJCJNMqjiSCcqygvs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sk6X/boZSAsORtALWILICbfSSOizqqw3gmyB/An/qMWqUvUN3tUdk5IaRZKlhw1nHBdqgtK+BNsYKyIratTabLR0/8iSxNuRpBi0bK6qeC+jBVpTqYl8NXo8DVSx7Ivoadw7q627OKU4zXlxO3V1ybEUvpb9YJBJXfPYVSBSSO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u52xaHKN; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-367b0cc6c65so2782019f8f.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 08:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721058584; x=1721663384; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=jaApz169RURb1RxMR+re6wckrPfxu6OPfzUK9YZPizQ=;
        b=u52xaHKNQ60i2QwQbI+2367fNkErZZNQ4GI84u2X9d/WIsHOhfqLGqa71/ZZO++qXi
         WS+uz0hNjP0qHJWycoLG/yTubXwKpc9zPmDyAB4TBMDs+EllXNBMg197AVhWvrayPzm9
         65dsoxkd27iFBmj9vCiY2P2TDvpQBf5udvULFzD9MovymXXer88dvqYH0E8uimZqZJMs
         dpTjQhhVK77mS+KAPGOD6Ce6pkFVpL0jm/sHh2Dkclk60M+C2nORCO7vbyhHl1taWzxC
         /TL3tpVLK+4+UnLkvu/adOwdb0YS6GxOH3NgsbGQErIshcnoeR/CQ2y6/RSrRVdAVpqe
         KqiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721058584; x=1721663384;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jaApz169RURb1RxMR+re6wckrPfxu6OPfzUK9YZPizQ=;
        b=lXYmqq0SkcbmPZKZ5B9PAiiWpqAjdAaQMFtGGl/TK+FQn1M+VmQPJNbAU5dkNMi0A7
         AEopIckbY0Pzo5NmJlZkB17zjBdumKp1PfqnuSyJmiZD3U7ZwSZuJtRwnZSmJYRn6soS
         +vgr/2GZ/pTD2GYW9L8ArAaqD5De41gjP2kpuR4AJ5LchW1q1yD89y2f1CjshIzP26AF
         oIq2HsUdSJln6S7TO/rlcfrTC2DaFGy2lmyPbKMXPBL37DW/mfrw9LM09a6qq2pyD5m+
         bUBYBXoLZbuvmSXqCG+ENx31ZMjPmC0ohQZXq508ZWtRR2JDyA1usxOfX5LwE8ys5EoD
         emZg==
X-Forwarded-Encrypted: i=1; AJvYcCUZGk43qY6YT9fEcFihJNVn/HSHroAdtxoXoJQVSzPdWoUg6fTQflwhlgXXLtlD4Tjs23rG4cwJQnVItGzLv5xt9wJ77KOBn8mJTg==
X-Gm-Message-State: AOJu0Ywe1grUmpbcut6WILpdXYY4KG94vaoipL1ehqkgtfxQzbAVYZMC
	IN+dPIRQvfq1jP5+kHdYKw9mCtm5sNYOyLiC04+9oNuucrKzlkBj5gBExuSTdTk=
X-Google-Smtp-Source: AGHT+IFB0dPZFK6xvhuclL821zkqHmzN964Nu0dakLK4KZmb7UlPqH3RtFB5drMiVCh6GA7Y1d92jQ==
X-Received: by 2002:adf:9591:0:b0:367:9718:5792 with SMTP id ffacd0b85a97d-3682408d058mr110312f8f.18.1721058583887;
        Mon, 15 Jul 2024 08:49:43 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680dabf416sm6705296f8f.45.2024.07.15.08.49.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jul 2024 08:49:43 -0700 (PDT)
Message-ID: <06199dfd-cf3f-4035-838e-cda7f9064af6@linaro.org>
Date: Mon, 15 Jul 2024 17:49:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] dt-bindings: input: atmel,maxtouch: add
 poweroff-sleep property
To: Stefan Eichenberger <eichest@gmail.com>, nick@shmanahar.org,
 dmitry.torokhov@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, claudiu.beznea@tuxon.dev,
 linus.walleij@linaro.org, francesco.dolcini@toradex.com,
 joao.goncalves@toradex.com
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Stefan Eichenberger <stefan.eichenberger@toradex.com>
References: <20240715153330.91979-1-eichest@gmail.com>
 <20240715153330.91979-3-eichest@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240715153330.91979-3-eichest@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/07/2024 17:31, Stefan Eichenberger wrote:
> From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> 
> Add a new property to indicate that the device should power off rather
> than use deep sleep. Deep sleep is a feature of the controller that
> expects the controller to remain powered in suspend. However, if a
> display shares its regulator with the touch controller, we may want to
> do a power off so that the display and touch controller do not use any
> power.
> 
> Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Joao Paulo Goncalves <joao.goncalves@toradex.com>
> ---
>  Documentation/devicetree/bindings/input/atmel,maxtouch.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/input/atmel,maxtouch.yaml b/Documentation/devicetree/bindings/input/atmel,maxtouch.yaml
> index c40799355ed75..8de5f539b30e3 100644
> --- a/Documentation/devicetree/bindings/input/atmel,maxtouch.yaml
> +++ b/Documentation/devicetree/bindings/input/atmel,maxtouch.yaml
> @@ -87,6 +87,12 @@ properties:
>        - 2 # ATMEL_MXT_WAKEUP_GPIO
>      default: 0
>  
> +  atmel,poweroff-sleep:
> +    description: |

Since you keep sending new versions (fourth? fifth?):
Do not need '|' unless you need to preserve formatting.

Best regards,
Krzysztof


