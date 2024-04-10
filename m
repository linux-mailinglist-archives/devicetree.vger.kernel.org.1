Return-Path: <devicetree+bounces-57851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF4289EFE0
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 12:32:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9D107B21672
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 10:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D52BE1591E1;
	Wed, 10 Apr 2024 10:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="aNDYDSLL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC700147C70
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 10:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712745156; cv=none; b=rHjlCZpTFKqGdEs/O5AA99vt1mEJIy75sh09FQapKjwtD5cvsw48PDq/kKyJjY7aNhYpkTfR6IDzleM+RL9E1ae+n9+YDcGowcZ0q3h7DywXYQ/bDIiT3XLjZ9dPajWkAvr1SyzwLfgye578CRGaDRkEngzhVfnTtXtPNIThd24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712745156; c=relaxed/simple;
	bh=m3Nofq8nnTcdPA9w3dqHCTAf3BKyCsncf1j3teeV6vI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QJKYYA/5JMt/Go8cAFrzqVdw+b5HSnmbYiadgysE97cjUsOJG259GL5qJQZ0epD0Bk2TuBSa2NQIORxO8md1T3rxsk5Tv8UIckBkWNGGt8NMHShD2YBpXGkSNlQXBwVyqPL1UJNYCgOcXmra9mc25APUaGFaaDl4sh4aNLjQ6lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=aNDYDSLL; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-56bdf81706aso8724176a12.2
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 03:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1712745153; x=1713349953; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6MEcCmEoW0htF0gEeNXuNZYs1zBV/uinaZ06hXC1M6g=;
        b=aNDYDSLLfCTAgvaHBy944SZdfJJ/oK5nG2BfGvAFYVx9e0rqoiF8y3q8A7/mPD/U7h
         4aZm29P6seTzqGwoptdyM4hqELLkAid61QvfauafhWwwR4Dn/cx2LFdk/69v+kndN6VX
         j0E6iGeLS3NOmRUrCuex+MTuwSmFEToV5/JLUipSm5cXhxNFI/NeViATN+7/U0vaoqvI
         1Lea5H2wXGAUcZHva8+R8tZ714Q/rv7u5TUjL1HAM0G4K8YILXaRIkMuZ8HsPoJE3rO7
         SPY3pdaiClgHdzGSmdGvoqBr/VCVbl+c7JgFSB8yt8oNY2b6MSHZ9M0liUSZIb3oO9ec
         NCBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712745153; x=1713349953;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6MEcCmEoW0htF0gEeNXuNZYs1zBV/uinaZ06hXC1M6g=;
        b=SIxLMJZFXvpUYb2pxwuqDRCD8GXN4C5y+IbS51p0me7hDX4QGAS+ocsdziUvGlgcPY
         In8zcrr3+9MfEsQWphvyKFvWasQyoDWLFFJHSI+vyl3L55XCWjwwfXbWhl/E62ofYNfv
         TbOVkk2I26+iHA5e0VhHzN7dCwlZa3Oa3nARmpdtuFCyK1KGN56xY3VMT42x/eR2GnXP
         tuJ9OEBKtzNn9jF/SbycRO5mTc2QNO7FqQoZbplUcYvXko+73SyF6VDpOFliw1bawYM5
         m4/wpzZJZqoe+NRfh1L6jK3/XF7nM54KTKR+VAoyQJF27G/bVLiypwN7Ll9Qfh8t0UKV
         BYIA==
X-Forwarded-Encrypted: i=1; AJvYcCVSUb/ixieRWRIyVhtM/eOej0RL6VaIsM+nqxKZzLSEztwv9Tm30s90B4DCND8S1QcHNbdZ94137fyIaC0kNrxN1wz7RSpzddQQEw==
X-Gm-Message-State: AOJu0YxvkUMDlTNJN2+q7tOQ24svqr3F8zFi/aCerqm4t8ARr7WOL/YJ
	j3p6GHHQ2IQwJYPBqkRDiNRi4B5ej8+osxx0e9KThg2ZjkeFaTB5L8LqZ5PZ0kk=
X-Google-Smtp-Source: AGHT+IEu+HLG7Hf7fv03wqRzissU4p/7W8RIcsudExySNDSbRbaHSDj+oW8GDZ5KlSNJJ8JMviQLRg==
X-Received: by 2002:a17:907:7e8e:b0:a46:3ce4:5acb with SMTP id qb14-20020a1709077e8e00b00a463ce45acbmr1479637ejc.75.1712745153037;
        Wed, 10 Apr 2024 03:32:33 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.8])
        by smtp.gmail.com with ESMTPSA id ml16-20020a170906cc1000b00a4e670414ffsm6811000ejb.109.2024.04.10.03.32.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 03:32:32 -0700 (PDT)
Message-ID: <58d90c1c-0c3c-4818-9d5c-d0c7661d0cf4@tuxon.dev>
Date: Wed, 10 Apr 2024 13:32:31 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/10] clk: renesas: r9a08g045: Add support for power
 domains
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 magnus.damm@gmail.com, linux-renesas-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240307140728.190184-1-claudiu.beznea.uj@bp.renesas.com>
 <20240307140728.190184-8-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdXQ=m2BJ3Tjt0m8Q_H6dLh62sXjd2EMBTc+kuAwtc5B7A@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdXQ=m2BJ3Tjt0m8Q_H6dLh62sXjd2EMBTc+kuAwtc5B7A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 14.03.2024 18:01, Geert Uytterhoeven wrote:
> On Thu, Mar 7, 2024 at 3:07 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Instantiate power domains for the currently enabled IPs of R9A08G045 SoC.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Change in v2:
>> - used DEF_REG_CONF() to describe register offests and bits
>> - updated MSTOP bitmask for ddr domain
>> - updated MSTOP config for oftde_ddr
>> - kept the same description for gic as the CPG_BUS_ACPU_MSTOP register
>>   documentation in the latest HW manual version is wrong and it will be
>>   fixed; proper description for GIC is located in "Registers for Module
>>   Standby Mode" table
>> - haven't added watchdog domain (was missing in v1, too, by mistake) as
>>   the watchdog restart handler will fail w/o patch [1]; with this pm domain
>>   support the watchdog will fail to probe; not sure what is the best
>>   option until [1] will be integrated
>>
>> [1] https://patchwork.kernel.org/project/linux-renesas-soc/patch/20240228083253.2640997-10-claudiu.beznea.uj@bp.renesas.com
> 
> I guess we'll have to wait until that dependency is integrated,

I opt for this option to not break the reset support currently integrated.
I don't have any feedback from maintainers yet on [1], though. I don't know
how long it will take.

Thank you,
Claudiu Beznea


> or use an immutable branch?
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

