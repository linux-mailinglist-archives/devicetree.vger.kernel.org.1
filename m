Return-Path: <devicetree+bounces-44174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF5F85D04B
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 07:15:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 69874B225F9
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 06:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8793A39FFF;
	Wed, 21 Feb 2024 06:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="BEUYEi2H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B954139FEF
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 06:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708496101; cv=none; b=ToO2iwUyoA752a+/CAjnekOQri3/XUzKd+mRMY+k0Zs8avSyR0sn5mnKYuBLqN/pJPAInUanXVAgvj1N2vdVZvH1GeHtgxr2AlF6xCABULetDeJhAQN953wKtVdcvCUKP3vKNzMb0KRpFL6XMjyCzIIMNWbnJeCsdLdyojypLOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708496101; c=relaxed/simple;
	bh=MmK4ilW9HQCrj0ekAd4lRBQ2BMR8Ib1Yk8fmOio2KAw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mrwh8E6Cfy0K5Roxx5tI41B4fEqOYCQTW5e1c/Yu+ISRqgfsKBYAgJe9wOEXMBg6P9mzrIuZ72ckb3nmlNJzdiavDQJang01ytkUPB/hEdcRH1CcMjNdsqTCDxRXkNEA8ZWIEht9qJnWDp0HLBlZGKxWR6uIbDNe87QYuoQc6kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=BEUYEi2H; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-55c2cf644f3so8461658a12.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 22:14:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708496098; x=1709100898; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TK3Wur+Ze9Z4Yt7si29B1E6PfnCzOWp0cMuA39AeGfw=;
        b=BEUYEi2H34s/sFc8JGQQmzGrhxjB4OSsuld23ik063I2h7FyfgL8F6sG6fTIA+fRvT
         XpviEeg9NIexbcKduu9ow2M8bil1gioLamOVk8jhIla1tj2YwxpPRHGU3KFSf2JmhvwN
         CORsByJoxEX5gj1NfsPAsfRn+n6fALXhpahyLcJQKfYWQgrmI13Bk7+gn0w9Vy78HtfQ
         wQSMuqBGAGh0le5DV6BRDL+2t2bxdK0jyBS/2R1kzpMaUB+rrtZU0ucvpi3WHncG2gVV
         1QQxSH8hdfXKZAh6cXmusbKO0DG5RxwB2uKQ2HilFpH1TlXfKirrIznXkKksSFvLWpvy
         z0IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708496098; x=1709100898;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TK3Wur+Ze9Z4Yt7si29B1E6PfnCzOWp0cMuA39AeGfw=;
        b=P8RioYRQ2533wITzqNOKHp3U+DtxPaCWMWgQHMvQxPif0+8rSKaMb3EefDMa/Dzyl5
         GHkWSgGuP03UYInYSMm4DjVCVxyUNtTrXnBNiOwRMn8Bcs6VjpKERJ/fHOCObH/eVKr8
         fZt0Qq68A9fmMyjNN7GGfWucdVjyLwEcBBcaZnlyRqanor9tHIQBOtpMTXps9z4yraJN
         Y4JLw4/6FEcK2w82mEJZt3MM/juGn5MVE2waerteexbJs9/EIq6W9j4uoKkkXHPZBASD
         UexXO//nWfvEvKVWzgwC8lnJVbXeLS4x3stwRh64VXaos50h0hh8Eti0BwEhcOgddaHD
         l+VA==
X-Forwarded-Encrypted: i=1; AJvYcCXV7dcDhU90h1I0X52+sic3zYa2uaweqrc2KnrQMr4yV9RYEL8jYxxUFCCXiD9qkftRiELfjH38JFRF2/O4lfToPo5vkQVUuonxkg==
X-Gm-Message-State: AOJu0YzfopeLwDCduXdVLLUGR2seh3E3JIE2/uFjQQsYhz2F9h8Wr/WB
	T6hRMLQ04d3A73RG4ezmIttDNlSJGh0nMKB22RinJmnwFlX7qw0n7hcpGzHHoE4=
X-Google-Smtp-Source: AGHT+IHJgCqkyCT0BdpiQsv+Wg7+W7Zmg9TNZj+V1thWG6ry+4L227ijh2oJSVuNrkH3E0x0tobFOw==
X-Received: by 2002:a05:6402:1502:b0:561:e4aa:ef2c with SMTP id f2-20020a056402150200b00561e4aaef2cmr12951195edw.32.1708496097796;
        Tue, 20 Feb 2024 22:14:57 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id h14-20020a056402094e00b005644221a3desm3389815edz.3.2024.02.20.22.14.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Feb 2024 22:14:57 -0800 (PST)
Message-ID: <046416da-58de-4fc4-ae01-d83f63c038f9@tuxon.dev>
Date: Wed, 21 Feb 2024 08:14:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/17] clk: renesas: rzg2l: Extend power domain support
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 magnus.damm@gmail.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, linux-renesas-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240208124300.2740313-1-claudiu.beznea.uj@bp.renesas.com>
 <20240208124300.2740313-8-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdU+WRJLLH4zUvAnsfNtgUxsNGe1bCKLu+98BC6K0d6Rgg@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdU+WRJLLH4zUvAnsfNtgUxsNGe1bCKLu+98BC6K0d6Rgg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 20.02.2024 21:32, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Thu, Feb 8, 2024 at 1:44 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
> 
>> +static struct generic_pm_domain *
>> +rzg2l_cpg_pm_domain_xlate(struct of_phandle_args *spec, void *data)
> 
> As of commit 4d0824608a636b64 ("pmdomain: core: constify of_phandle_args
> in xlate") in next-20240215 and later the first parameter needs to
> be const.

Indeed, I noticed that. Thank you for pointing it.


> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

