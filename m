Return-Path: <devicetree+bounces-150239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 68792A417E6
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 09:55:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 975163A7B04
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 08:55:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B5D12417C2;
	Mon, 24 Feb 2025 08:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="pnSnKdlj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC37724168A
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 08:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740387331; cv=none; b=NKcFlP6RF3o2cxUZZh6uiQMgTwa4Twx06r6G6o5MKZPbFvV8mlL9ltKxj0L1a8F2VQYJ/xnGfCdA9zITiVgVvLobVJmicsGRr9KX8wwauW+3tUrSGHVCX2C/a/jRyHq7Ue3bQFVQd8L5OqKMsY9tmko39HgsTaUjwijfYajk4yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740387331; c=relaxed/simple;
	bh=TkahDvOac86EKRRnfPHVD02IPLJ6bUzqSUYsvNKQQTM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hC8Y0pUpaBOMeS6YgdEMf1ntL6CNsaNnBJzyMhe4zLbzsuNoagecXqjJmHhJM87SZVkAGz4pU40zya7qsY+IQ5T1dMKLirEdIawp/DnDiqTga/CMAPJrlFYWXF7TP0gWJp9SurINgJsBqjE39kUblYc4Rc1nIuf5FXHyAC2lMCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=pnSnKdlj; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e058ca6806so7557055a12.3
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 00:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1740387327; x=1740992127; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4hSkW3tH+RDTSb9Fo6GDimpNp79/WhGzMXLMYukVH70=;
        b=pnSnKdljZPNIP+r3Stp5jTJ9clSV2/fM5yab0RFQLtfwH+tRW+PdmP2mY9bYTwI/ud
         sA0m7sj87WzI+1ww43LY4GsUVB6IwVmnVnFhBZ+VVX7L0eieMBUQZW2RfhM6mFW3Fg8m
         de6DSnKYAsuthrXJnVL34Pi9i9ir+9L72XgvymFszoD+WhXHbgSsP5lLzVDPMSdT5qzf
         HaN+4rgwsSB2lfJnPGDcdDpXl9EiXIIzzRlMTD/zL9AvFjLSRATt/AT/wKpdx8Lh6+it
         SAIdDM2rbTMu/2qAINRC8azrDpue9c3TB9yqSuQXRMdB5ovU567pe3DjAcYCVLzqAyo2
         8A5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740387327; x=1740992127;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4hSkW3tH+RDTSb9Fo6GDimpNp79/WhGzMXLMYukVH70=;
        b=bvJMa70R+umU8zA6ID9eFmHHihwAYudZLwlB8BnLCwKTcmfJSbs7J6x2coNbJh23xU
         ctOnCaIzkcPMrIuLgT2YhRWNPJ8qcaEB48jVQ94081oClTYriS9gJmE0838UVTloLfMh
         SKheOQyDNCAUxtMQ2Ae4NC0/KhNIc6PlTAEDiXJ9Cg74WvRXExmDyA5DtkOCReM19mmh
         vL6sCtB9vNVgJgFq3lrU2zn3B1FnbVYsuMyVe5YfMM/Q9ekNhLEsWRctpCICSBhk2PCT
         onQFFWXqLMHEM87DCIGPUW+i5o9C6D09CS4pvODf/2C1iGfwLFuAyfr+T5q4VhFodvSh
         3o1Q==
X-Forwarded-Encrypted: i=1; AJvYcCW+lyH8EnvQOD/O4U4DUG0Z7duw79nVDBQeWHCvbO709Eqiw+EOaIyCWxCzCZnejV5BdXc46NrH8EvZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwblXbJlvCujBwTHXt42Xcw/AtM4hEo2CINK0a/0+ZVUHwokHV9
	/5pi5JsuzWN6hRI4jquL4LVpHoXWOr3iOS/BBOmAJHZ/jlWytC1W1CA5YftClJM=
X-Gm-Gg: ASbGncs5yrmx0cvA1aH4B4yUd8RqXBm+QzPZnLa4CnQtxwyBvzPg/GZpGUJAT+pE6CQ
	e+hbm+KMHUWms7suddvMVYwre+XPfV5BF6WZS2L2j369QkoifyURHN1vrTVp2Nc7gRUlQLRtV0M
	p1TwRr1WyoLUHD7YDAbiCsRD3Fcx1zhXdZ9yO3+CaT2SU/Mm1df3mPoTqFp030z5jhtTLLbS5Ns
	85wa7pl+/j1/N8d5SKb33CSEHIt/qmU8uX3cwby2lMTXnSG4eAEa7HqMv67B2XIzzTcZsjv2FwV
	U8bakA7KM+xPPVzl7o5gyrIJWRk/SfvB9A==
X-Google-Smtp-Source: AGHT+IEs8x0IQjFrgjH3pilnXb/AGxeFhCSA//JhOToJBvieCqskdjOj0Fwy0VykJbl/XT4OZr9y7w==
X-Received: by 2002:a17:906:3282:b0:ab7:cb84:ecd6 with SMTP id a640c23a62f3a-abc0df5d6f5mr911751566b.56.1740387326903;
        Mon, 24 Feb 2025 00:55:26 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba532802a1sm2188079966b.76.2025.02.24.00.55.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 00:55:26 -0800 (PST)
Message-ID: <edb77ae7-d837-4e30-99ec-9ecb8b0647e9@tuxon.dev>
Date: Mon, 24 Feb 2025 10:55:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/15] ARM: at91: pm: Enable ULP0 for SAMA7D65
To: Ryan.Wanner@microchip.com, lee@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 p.zabel@pengutronix.de
Cc: linux@armlinux.org.uk, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
References: <cover.1739221064.git.Ryan.Wanner@microchip.com>
 <a00b193df9e0cb95d144a249b12f1b13188d1ab7.1739221064.git.Ryan.Wanner@microchip.com>
 <32ad3a1a-c6b6-4db1-8e80-8b5f951055a8@tuxon.dev>
 <5c6910ce-b0e4-47e6-9c9b-f0093d34f4a6@microchip.com>
 <b3de47a4-614c-4650-a866-5718b2e2b50a@tuxon.dev>
 <b03c0871-a846-43a1-a4e2-d8d9ee8ef078@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <b03c0871-a846-43a1-a4e2-d8d9ee8ef078@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 19.02.2025 17:24, Ryan.Wanner@microchip.com wrote:
> On 2/17/25 00:18, Claudiu Beznea wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> Hi, Ryan,
>>
>> On 14.02.2025 20:09, Ryan.Wanner@microchip.com wrote:
>>> On 2/13/25 01:20, Claudiu Beznea wrote:
>>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>>>
>>>> Hi, Ryan,
>>>>
>>>>
>>>> On 10.02.2025 23:13, Ryan.Wanner@microchip.com wrote:
>>>>> From: Ryan Wanner <Ryan.Wanner@microchip.com>
>>>>>
>>>>> New clocks are saved to enable ULP0 for SAMA7D65 because this SoC has a
>>>>> total of 10 main clocks that need to be saved for ULP0 mode.
>>>>
>>>> Isn't 9 the total number of MCKs that are handled in the last/first phase
>>>> of suspend/resume?
>>> Yes I was including 10 to match the indexing in the mck_count variable.
>>> Since bgt instruction was suggested I will correct this to reflect the
>>> true behavior of the change.
>>>>
>>>> Also, the state of MCKs are saved/restored for ULP0 and ULP1 as well.
>>>>
>>>>>
>>>>> Add mck_count member to at91_pm_data, this will be used to determine
>>>>> how many mcks need to be saved. In the mck_count member will also make
>>>>> sure that no unnecessary clock settings are written during
>>>>> mck_ps_restore.
>>>>>
>>>>> Add SHDWC to ULP0 mapping to clear the SHDWC status after exiting low
>>>>> power modes.
>>>>
>>>> Can you explain why this clear need to be done? The commit message should
>>>> answer to the "what?" and "why?" questions.
>>>>
>>>>>
>>>>> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
>>>>> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
>>>>> ---
>>>>>  arch/arm/mach-at91/pm.c              | 19 +++++-
>>>>>  arch/arm/mach-at91/pm.h              |  1 +
>>>>>  arch/arm/mach-at91/pm_data-offsets.c |  2 +
>>>>>  arch/arm/mach-at91/pm_suspend.S      | 97 ++++++++++++++++++++++++++--
>>>>>  4 files changed, 110 insertions(+), 9 deletions(-)
>>>>>
>>>>> diff --git a/arch/arm/mach-at91/pm.c b/arch/arm/mach-at91/pm.c
>>>>> index 55cab31ce1ecb..50bada544eede 100644
>>>>> --- a/arch/arm/mach-at91/pm.c
>>>>> +++ b/arch/arm/mach-at91/pm.c
>>>>> @@ -1337,6 +1337,7 @@ struct pmc_info {
>>>>>       unsigned long uhp_udp_mask;
>>>>>       unsigned long mckr;
>>>>>       unsigned long version;
>>>>> +     unsigned long mck_count;>  };
>>>>>
>>>>>  static const struct pmc_info pmc_infos[] __initconst = {
>>>>> @@ -1344,30 +1345,42 @@ static const struct pmc_info pmc_infos[] __initconst = {
>>>>>               .uhp_udp_mask = AT91RM9200_PMC_UHP | AT91RM9200_PMC_UDP,
>>>>>               .mckr = 0x30,
>>>>>               .version = AT91_PMC_V1,
>>>>> +             .mck_count = 1,
>>>>
>>>> As this member is used only for SAMA7 SoCs I would drop it here and above
>>>> (where initialized with 1).
>>>>
>>>>>       },
>>>>>
>>>>>       {
>>>>>               .uhp_udp_mask = AT91SAM926x_PMC_UHP | AT91SAM926x_PMC_UDP,
>>>>>               .mckr = 0x30,
>>>>>               .version = AT91_PMC_V1,
>>>>> +             .mck_count = 1,
>>>>>       },
>>>>>       {
>>>>>               .uhp_udp_mask = AT91SAM926x_PMC_UHP,
>>>>>               .mckr = 0x30,
>>>>>               .version = AT91_PMC_V1,
>>>>> +             .mck_count = 1,
>>>>>       },
>>>>>       {       .uhp_udp_mask = 0,
>>>>>               .mckr = 0x30,
>>>>>               .version = AT91_PMC_V1,
>>>>> +             .mck_count = 1,
>>>>>       },
>>>>>       {
>>>>>               .uhp_udp_mask = AT91SAM926x_PMC_UHP | AT91SAM926x_PMC_UDP,
>>>>>               .mckr = 0x28,
>>>>>               .version = AT91_PMC_V2,
>>>>> +             .mck_count = 1,
>>>>>       },
>>>>>       {
>>>>>               .mckr = 0x28,
>>>>>               .version = AT91_PMC_V2,
>>>>> +             .mck_count = 5,
>>>>
>>>> I'm not sure mck_count is a good name when used like proposed in this
>>>> patch. We know that only 4 MCKs need to be handled for SAMA7G5 and 9 for
>>>> SAMA7D65.
>>>>
>>>> Maybe, better change it here to 4 (.mck_count = 4) and to 9 above
>>>> (.mck_count = 9) and adjust properly the assembly macros (see below)? What
>>>> do you think?
>>>
>>> Yes I think this is better and cleaner to read. Should this mck_count
>>> match the pmc_mck_count variable name? Or should this be more
>>> descriptive or would mcks be sufficient.
>>
>> mck_count/mcks should be enough. These will be anyway in the context of
>> pmc_info.
>>
>>>>
>>>>> +     },
>>>>> +     {
>>>>> +             .uhp_udp_mask = AT91SAM926x_PMC_UHP,
>>>>> +             .mckr = 0x28,
>>>>> +             .version = AT91_PMC_V2,
>>>>> +             .mck_count = 10,
>>>>>       },
>>>>>
>>>>>  };
>>>>> @@ -1386,7 +1399,7 @@ static const struct of_device_id atmel_pmc_ids[] __initconst = {
>>>>>       { .compatible = "atmel,sama5d2-pmc", .data = &pmc_infos[1] },
>>>>>       { .compatible = "microchip,sam9x60-pmc", .data = &pmc_infos[4] },
>>>>>       { .compatible = "microchip,sam9x7-pmc", .data = &pmc_infos[4] },
>>>>> -     { .compatible = "microchip,sama7d65-pmc", .data = &pmc_infos[4] },
>>>>> +     { .compatible = "microchip,sama7d65-pmc", .data = &pmc_infos[6] },
>>>>>       { .compatible = "microchip,sama7g5-pmc", .data = &pmc_infos[5] },
>>>>>       { /* sentinel */ },
>>>>>  };
>>>>> @@ -1457,6 +1470,7 @@ static void __init at91_pm_init(void (*pm_idle)(void))
>>>>>       soc_pm.data.uhp_udp_mask = pmc->uhp_udp_mask;
>>>>>       soc_pm.data.pmc_mckr_offset = pmc->mckr;
>>>>>       soc_pm.data.pmc_version = pmc->version;
>>>>> +     soc_pm.data.pmc_mck_count = pmc->mck_count;
>>>>>
>>>>>       if (pm_idle)
>>>>>               arm_pm_idle = pm_idle;
>>>>> @@ -1659,7 +1673,8 @@ void __init sama7_pm_init(void)
>>>>>               AT91_PM_STANDBY, AT91_PM_ULP0, AT91_PM_ULP1, AT91_PM_BACKUP,
>>>>>       };
>>>>>       static const u32 iomaps[] __initconst = {
>>>>> -             [AT91_PM_ULP0]          = AT91_PM_IOMAP(SFRBU),
>>>>> +             [AT91_PM_ULP0]          = AT91_PM_IOMAP(SFRBU) |
>>>>> +                                       AT91_PM_IOMAP(SHDWC),
>>>>
>>>> In theory, as the wakeup sources can also resumes the system from standby
>>>> (WFI), the shdwc should be mapped for standby, too. Unless I'm wrong and
>>>> the wakeup sources covered by the SHDWC_SR register don't apply to standby
>>>> (WFI).
>>> The device can wake up from an RTT or RTC alarm event on both the
>>> standby power mode and the ULP0 power mode, since the RTT/RTC are
>>> included in the SHDWC_SR I think it is safe to have this.
>>> If I understand what you are asking correctly.
>>
>> I was asking if the SHDWC should also be mapped for standby like:
> Ok I see. I have a better understanding now of wake up sources table
> like you showed below. I think for readability of code I should not have
> SHDWC set as ULP0 and STANDBY source because in at91_pm_config_ws()
> SHDWC is only configured as a wake up source in ULP1 power mode.
> 
> So removing SHDWC from the ULP0 wake up source would reflect more
> accurately what is configured as a wake up source in the code. What do
> you think?

Sounds good.

Thank you,
Claudiu


