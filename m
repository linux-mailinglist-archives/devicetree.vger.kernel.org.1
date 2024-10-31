Return-Path: <devicetree+bounces-117731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B539B776D
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 10:26:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E21B31C2252E
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 09:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3375D17E01B;
	Thu, 31 Oct 2024 09:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="q+uQKR6p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE8219408B
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 09:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730366792; cv=none; b=qsSTWbLZtEd5tW6N64X64WOKlGRio/5QQV48aRK5cZ4BtPPbP7CVwl+p/akohl/yu8d8062DV4V1t1EkBW/KAMUTPHiDgw1+HsvEdiXZFTcJYN+vBblAXMuQzJ19iNjN7Q/3odhuAR9kiXAWsZP/p3qLqTjDgJyhlKVEIyjoYXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730366792; c=relaxed/simple;
	bh=W+7WITvQz2ZgCwS9oNFaKkBroXYi4X6KRO4xqfT+YUQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e3gdaXNYcR225C23IqELhoH2l39ZCOiZRUbttkzAhedi1STIx3AO78FRjly0X3CHCRcssduojcTpDEkLwDsvT/5zzm6RyfMi2vVDrNmsiUka5AiRGVViqzcmgI/Yb9I4KIIqgeKGEMB7Sw5WTuP4xrowVvSm015sP5mmISXPZ/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=q+uQKR6p; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539f4d8ef84so902065e87.0
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 02:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730366786; x=1730971586; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WPySU9GG1bDdptaowyq3VjxeujL5zBs3sjWS8sIYgHw=;
        b=q+uQKR6pkACB75xQMn3++eVBRS7sJIf7dk+y3++vj9EYnyBUzJVi1HvR+OL9uJRzIf
         mqKetllPpd8T/2jYbu5bh2G/v1lkywjkCeZQiXD5DyDRpnww3Q14AfK5fmsjYpblaWnf
         o/sgTrFl3hfU6wLKcvBXlNdhrfCBbKX0BPV2fqlROpJGvXOJ3yOnBJpuxBevp94k5pvO
         wZI8K1LU9c/oooBTQyHVgVI7DH3FRRewgf2P5TCfvVTK7uNnuJ+Q/u8F0cV42/8NLZAX
         Q5WYtwok1dOGng+OTpqsZbSuhCBSyLI4NrUMurGqpLVU/IingGWFAPeFU7hiuKTayMn7
         5svw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730366786; x=1730971586;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WPySU9GG1bDdptaowyq3VjxeujL5zBs3sjWS8sIYgHw=;
        b=k1W+nct4T/bx2O54R8Wk6oCdyM8l4kpETG8oDxGPNUEGyNG02AqAOasXFgVn1W2EfT
         VtHnq3/W54STYV84TdPR/azE3y5foIlBRleyjW7LgMRxY+6kxWl94hVuZeiRM1USuywY
         +k8eN5G9d0oqZcQMVy77IexeD5nWzdArJ7R/dJFzVBIbAm/RiKvcMANi5R3b3z6F7KOK
         sTrfrbixdSkpbl0glOg29XCdN59dpRx1zFWW0mY936h6LQF7GlebiRFbx9W61vLMpNmM
         SnbvVu/ghPy546ebGu3SSI0ZrVTi0EIcdaRPy/gk9H5OUPsVOEB0AMpUrCMLpHaCN/7S
         IjbA==
X-Forwarded-Encrypted: i=1; AJvYcCV3qEkCUMVmilBr1a4Scz22jB5hpMDumpiyfPKoOyPfCN3l3r7/M1g4BZJdk+lV7iVfzIa3YganjZnr@vger.kernel.org
X-Gm-Message-State: AOJu0YzTmKKQTzSrMOtRgD+Qjl0+PTJ67yqhvhEF+r1LW2a7hCJZYLKd
	NFKxJX13aQlNBsubM+e5pZ4TFf6BDUtRZjbde7dmBQrio4BoSwVEirMrVedpFTs=
X-Google-Smtp-Source: AGHT+IFx8MLTqlbYOXV70FjxcgUiPu/8my35yVrkTf/0/c/FdNoy8F04GpO/K6glzhe+yo4QhhnwIg==
X-Received: by 2002:a05:6512:b94:b0:539:f7ab:e161 with SMTP id 2adb3069b0e04-53c79e8ec22mr1531829e87.45.1730366785959;
        Thu, 31 Oct 2024 02:26:25 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.190])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd917fefsm48372175e9.16.2024.10.31.02.26.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2024 02:26:25 -0700 (PDT)
Message-ID: <ee94a802-97ec-4a9b-9ca4-5c14e0eba116@tuxon.dev>
Date: Thu, 31 Oct 2024 11:26:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 03/10] clk: renesas: clk-vbattb: Add VBATTB clock
 driver
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, alexandre.belloni@bootlin.com,
 magnus.damm@gmail.com, p.zabel@pengutronix.de,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20241030110120.332802-1-claudiu.beznea.uj@bp.renesas.com>
 <20241030110120.332802-4-claudiu.beznea.uj@bp.renesas.com>
 <mg2ugyg65ke3tngzqyyixfkawf4iop4o373dc6fosy7bfydbe5@pm43dhkd7asu>
 <CAMuHMdUcw_UHAZRVGt=Tr0jv3NOPDibtPy1E-46Pq74YKFZxWg@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdUcw_UHAZRVGt=Tr0jv3NOPDibtPy1E-46Pq74YKFZxWg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert, Krzysztof,

On 31.10.2024 10:43, Geert Uytterhoeven wrote:
> Hi Krzysztof,
> 
> On Thu, Oct 31, 2024 at 8:48 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>> On Wed, Oct 30, 2024 at 01:01:13PM +0200, Claudiu wrote:
>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>
>>> The VBATTB IP of the Renesas RZ/G3S SoC controls the clock that is used
>>> by the RTC. The input to the VBATTB could be a 32KHz crystal
>>> or an external clock device.
>>>
>>> The HW block diagram for the clock generator is as follows:
>>>
>>>            +----------+ XC   `\
>>> RTXIN  --->|          |----->| \       +----+  VBATTCLK
>>>            | 32K clock|      |  |----->|gate|----------->
>>>            | osc      | XBYP |  |      +----+
>>> RTXOUT --->|          |----->| /
>>>            +----------+      ,
>>>
>>> After discussions w/ Stephen Boyd the clock tree associated with this
>>> hardware block was exported in Linux as:
>>>
>>> vbattb-xtal
>>>    xbyp
>>>    xc
>>>       mux
>>>          vbattbclk
>>>
>>> where:
>>> - input-xtal is the input clock (connected to RTXIN, RTXOUT pins)
>>> - xc, xbyp are mux inputs
>>> - mux is the internal mux
>>> - vbattclk is the gate clock that feeds in the end the RTC
>>>
>>> to allow selecting the input of the MUX though assigned-clock DT
>>> properties, using the already existing clock drivers and avoid adding
>>> other DT properties. If the crystal is connected on RTXIN,
>>> RTXOUT pins the XC will be selected as mux input. If an external clock
>>> device is connected on RTXIN, RTXOUT pins the XBYP will be selected as
>>> mux input.
>>>
>>> The load capacitance of the internal crystal can be configured
>>> with renesas,vbattb-load-nanofarads DT property.
>>>
>>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
>>> --- a/drivers/clk/renesas/Kconfig
>>> +++ b/drivers/clk/renesas/Kconfig
>>> @@ -237,6 +237,10 @@ config CLK_RZV2H
>>>       bool "RZ/V2H(P) family clock support" if COMPILE_TEST
>>>       select RESET_CONTROLLER
>>>
>>> +config CLK_RENESAS_VBATTB
>>> +     bool "Renesas VBATTB clock controller"
>>
>> tristate
> 
> Good point.
> However, does it work as a module, or would that break the RTC?

On RZ/G3S the RTC counter needs the clock provided by VBATTB.

I'll try with this as a module.

> 
> And this is missing
> 
>         depends on ARCH_RENESAS || COMPILE_TEST
> 
> which I can add while applying.

Thank you!

Claudiu

> 
>>
>>> +     select RESET_CONTROLLER
>>> +
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

