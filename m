Return-Path: <devicetree+bounces-90368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D2F945183
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 19:30:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 42580B22140
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 17:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CCA91B9B40;
	Thu,  1 Aug 2024 17:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="UH8cbPIT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1491B3F26
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 17:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722533428; cv=none; b=eUfj6t2B+joeoXHsN5zFXahVWx8KZnViwubSq4fNkFMAUFZPwqdbcnklPpfbMsUpXRvSgBesod8dslZuhYIUxfXq1CuvIEQXmVgbx9Y0v4sI9xCMTBME6Vn+3CPXdsCLm7qxZZQVTqI9079FP4H+zHCQVgf2aHXeCguFAW7gfo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722533428; c=relaxed/simple;
	bh=/fUgmK9Gu4vJ7gtf9Uwd95qIKPDXf8jzzp6n2YLhY1g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AfJFiS05AqWQp3MuqwyAll3ARXq5udv7u6SEVceeedWDZtUSoGbc/GXa4VoCFhMS1/kEgGw7Tfa7BE+UwRuBwm2gTR48ftBxt6vxzamr1XU32KnbrIuxxCBY14x5D9b3w4cry5/DSMdYJpErAsq2r/3vi1aK3whveNGUtg4ZKlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=UH8cbPIT; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-428e3129851so6601975e9.3
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 10:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1722533424; x=1723138224; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c1S/NlVwEFkZswb6EjZlJWrnVb2z/0QNSVhH+7F6wi4=;
        b=UH8cbPITQAJcH+25OYzB3QPkJVO5LcU8lJxWpD42Nd+THfyBF8l3l0wrg8YFg2qpHz
         eMB5bjocbDdQLJEqJ6nTRufuNsebaShpPXqdM7xtC8s434V+C1BbjierqO4N9imBANoT
         Ja3TNvua5bape0ZbRv8yk9HLRpmTOpXioMRHQzT8iqsQ07lV3k39j90r/FRFEK+KjQsr
         gespgsj6YLqA9os4JXzSXXMKSnrw1I+3AQiegThIqNryJ5FeXCzoxLbzhOMmJAWZROXL
         qau7l+f8rLdwFfhdu4VON+AtoSuS8z2KrIZH1qRfGkx1H862UVh8uNFjZR7ZxraEdPjV
         FGvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722533424; x=1723138224;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c1S/NlVwEFkZswb6EjZlJWrnVb2z/0QNSVhH+7F6wi4=;
        b=P4daWnR0A4gH7ceWt5STJpU5JrGtd3io9PyScPgUXbZUqG/0Ja2Rv2byLF8PH0E+5h
         4BI3BioQagpEglxHWeHpLUXiQSgl2Pk4GpQpSu9pHudBB98AZRPWvRJ2r2xbl4Y57fCb
         TyjaKc7zjfwULSFymUqOkUc48AL6LCYnQd2KF+EFDCGjTIYShMx0GQVkZN8KKBi1Ht8G
         MnyVQoVAg78mcdNLKed1bgU85rCOcUhYC4YK/3Yg7qx6dVMTPyeWbWnnvcGHJEU4L7F/
         Wse09syCdA+FkmOqxd0QsWIjHbj9ufTJT9MqyhCpqSmZblnx78KYSrJSDrMMeEQnPH0N
         k+Mg==
X-Forwarded-Encrypted: i=1; AJvYcCUHUNuzhFkp6cyWoVoROL1Zc+nql0eF8t2njQlkKHpQmdT1Y3nbAXvdoJiXKvFtSH1Z56/h037aQ4xahOxQ8kdPhKhQwVM31xL3TA==
X-Gm-Message-State: AOJu0YyycQkg7+R1K2TXQ+mJsDLXm2CdIXnuavtjxm/5gTrtD+hWrkQH
	PHSXkYVKyumdlSev+5H5H2GSccBy8yG0ycP9+b8/6JzWFu1benpDjI+tNsjo2d0=
X-Google-Smtp-Source: AGHT+IG94ZE4tjZfrkwC8a7+TJTJGffEWVrCsNnStDS6gDpPa28xGx43QNeVDk0gNocTArRCz6CJ5g==
X-Received: by 2002:a05:600c:524f:b0:428:17b6:bcf1 with SMTP id 5b1f17b1804b1-428e6b0a2bcmr4750555e9.22.1722533423582;
        Thu, 01 Aug 2024 10:30:23 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4282bb6405csm65736205e9.34.2024.08.01.10.30.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Aug 2024 10:30:23 -0700 (PDT)
Message-ID: <1145bd6f-fee4-4c3a-bd71-543127f89fc8@tuxon.dev>
Date: Thu, 1 Aug 2024 20:30:21 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: renesas: r9a08g045: Add DMAC node
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, magnus.damm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, biju.das.jz@bp.renesas.com, dmaengine@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240711123405.2966302-1-claudiu.beznea.uj@bp.renesas.com>
 <20240711123405.2966302-4-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdXjTw1NFaZhNiskiA+BQV68B61H=iwZbeV1qpVdKCjTjw@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdXjTw1NFaZhNiskiA+BQV68B61H=iwZbeV1qpVdKCjTjw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 01.08.2024 19:29, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Thu, Jul 11, 2024 at 2:34 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Add DMAC node.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> i.e. will queue in renesas-devel for v6.12.
> 
>> --- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
>> +++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
>> @@ -363,6 +363,44 @@ irqc: interrupt-controller@11050000 {
>>                         resets = <&cpg R9A08G045_IA55_RESETN>;
>>                 };
>>
>> +               dmac: dma-controller@11820000 {
> 
>> +                       power-domains = <&cpg>;
> 
> Updating to " <&cpg R9A08G045_PD_DMAC>" while applying.

FTR: please don't as the watchdog fixes are still under discussion. Only
RZ/G3S watchdog support was merged.

Thank you,
Claudiu Beznea

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

