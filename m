Return-Path: <devicetree+bounces-43296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 070F9859E27
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:25:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A2B21C21EEC
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 08:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBFF021379;
	Mon, 19 Feb 2024 08:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="bLey5K03"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF2D21342
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 08:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708331098; cv=none; b=lrFqmS16pC6jJKrygfaWTmBFkHwdjnACXFqjnCU9inkkYYEc+IEUVUfQKYJ5hLRgmKtRmQ00dRrebS1UiHzoKsC5XHXEkjO3v7ASpPe0m0yQZACHnrDJD2GDMqmHpqBzKu9Xp8bzFKRIhO1w9w3t7UT/UrLAs/+A7UDGySAgknM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708331098; c=relaxed/simple;
	bh=659sHazKJDGIU3TCrq04J7pb9U5DvtNTIS/Kzt2U1i0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hx0xwW+1pZbd47TyP8YFNNdGDPh2lHjYuFUe+Ap4rHnPqYuYesClj6ZYl6cQ+soIhKIx1NaltfhOaWZGKLQTlyk3QGG227z9GTEFPftuGsoD3GHTX5GNbLo7qsDZycT/CY+rQZiR/f/+szQqCJdAqwE9aQh6Mdi0d5n8NPcQwNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=bLey5K03; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d241ff062cso2084421fa.3
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 00:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708331095; x=1708935895; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mw9W65gwqi39i5bv0F25pCikrMp5P7KP+8M6mh4FXG8=;
        b=bLey5K03C+XzYAIMjN1puWARhMDQAGcsLX68io9epzhm917jNttQD5JR0pWyUeSTft
         grez4ze31+pftbbWYs2/owcbBqqFbFKDtiz8Kp6xa5Gvo0YGuOU8GjZZFcjvyoPzdwuS
         juu4enLwiVskLjLjCDY1paEx0lm/xo+NlhAXUEVuZlAwdTFjQ91jm1CItwhVJjG7DIJr
         scdRfxWgQhrBd6q5d8bbbnnAtelsIOO77atteSla4ZsTyMSMdEYE1coGnEmWP7ZeB0VU
         FFPtcOwgFvJxycAf3ZWjkmfNZr9scsFst+e1n+3y0Mc3rk7d7NYPjmOgtnwnZcmmag/g
         zPhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708331095; x=1708935895;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mw9W65gwqi39i5bv0F25pCikrMp5P7KP+8M6mh4FXG8=;
        b=dXUAYBqBrabe1NnDN7SBrnzvLqjIzHxwezOJOgsNLMKAWf89fsp8oDUwAZdVWfhWxz
         rdOZ3clB1vSgCA23qLVREEcwHSATiOpSRt639Vogofk+B06831Cu7Mct/hTCKEjMQN1R
         ZIX6qBxFE7QulIIw69eIX4jneV2ikRqgIkxmsE8vBWZmOfIBWymoms4deUQtPJp3Jw3v
         ki0DlJF20cezKyI3ze5GUk/wnaCtbW5m4gnZcgWoNcmCigM3eKDdw6uhdj0N5qCpB6q8
         gnW4DKtENxxy3a5CX8Ev6ELaYgZnMbr7WqbwxHJ9SRM6NFEgj9Le48tMfl6qTaq3e0Ks
         5LMA==
X-Forwarded-Encrypted: i=1; AJvYcCULOi0G2tQsVdiqabtsCGzUCqMvdEwAsH/BrWKf6nNSsQhmqbWv5NT7iJDpEG0zI2+M7ruEQ1CE9Ksc3+y1ii50CL+y9l21hWaTtA==
X-Gm-Message-State: AOJu0Yy6l0FdEdr1ETYSS3NyOJryBR/mKtk8aWijJ8r+x5oRLv91MWSN
	kQfo5d7QdQqZ+N2b6mwRZvG7spm8/0zC69yL+afxLSADgwm0qPam1yNR3utYsQQ=
X-Google-Smtp-Source: AGHT+IHp83tWIjNK5FNi6CEck1d35qT0TYDsGv+tNEtQ7sbMzMhE3TNULS0H1XJs/RZ++sX4dieCUA==
X-Received: by 2002:a05:651c:220c:b0:2d2:3451:52de with SMTP id y12-20020a05651c220c00b002d2345152demr2509803ljq.12.1708331095172;
        Mon, 19 Feb 2024 00:24:55 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id l14-20020a7bc44e000000b00411d1ce4f9dsm10468796wmi.34.2024.02.19.00.24.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 00:24:54 -0800 (PST)
Message-ID: <4098873b-a7e7-4c88-9af2-01f3c76424ab@tuxon.dev>
Date: Mon, 19 Feb 2024 10:24:53 +0200
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
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 magnus.damm@gmail.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, linux-renesas-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240208124300.2740313-1-claudiu.beznea.uj@bp.renesas.com>
 <20240208124300.2740313-8-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdWdJ9jN9-cko2zSoqSS0acbwYB77aBWvenJHMrFTXhdWg@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdWdJ9jN9-cko2zSoqSS0acbwYB77aBWvenJHMrFTXhdWg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 16.02.2024 16:08, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Thu, Feb 8, 2024 at 1:44 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> RZ/{G2L, V2L, G3S}-based CPG versions have support for saving extra
>> power when clocks are disabled by activating module standby. This is done
>> through MSTOP-specific registers that are part of CPG. Each individual
>> module has one or more bits associated with one MSTOP register (see table
>> "Registers for Module Standby Mode" from HW manuals). Hardware manual
>> associates modules' clocks with one or more MSTOP bits. There are 3 mappings
>> available (identified by researching RZ/G2L, RZ/G3S, RZ/V2L HW manuals):
>>
>> case 1: N clocks mapped to N MSTOP bits (with N={0, ..., X})
>> case 2: N clocks mapped to 1 MSTOP bit  (with N={0, ..., X})
>> case 3: N clocks mapped to M MSTOP bits (with N={0, ..., X}, M={0, ..., Y})
>>
>> Case 3 has been currently identified on RZ/V2L for the VCPL4 module.
>>
>> To cover all three cases, the individual platform drivers will provide to
>> clock driver MSTOP register offset and associated bits in this register
>> as a bitmask and the clock driver will apply this bitmask to proper
>> MSTOP register.
>>
>> Apart from MSTOP support, RZ/G3S can save more power by powering down the
>> individual IPs (after MSTOP has been set) if proper bits in
>> CPG_PWRDN_IP{1,2} registers are set.
>>
>> The MSTOP and IP power down support were implemented through power
>> domains. Platform-specific clock drivers will register an array of
>> type struct rzg2l_cpg_pm_domain_init_data, which will be used to
>> instantiate properly the power domains.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
>> @@ -1559,9 +1556,34 @@ static bool rzg2l_cpg_is_pm_clk(struct rzg2l_cpg_priv *priv,
>>         return true;
>>  }
[ ... ]

> 
>> @@ -234,6 +246,54 @@ struct rzg2l_reset {
>>  #define DEF_RST(_id, _off, _bit)       \
>>         DEF_RST_MON(_id, _off, _bit, -1)
>>
>> +/**
>> + * struct rzg2l_cpg_pm_domain_conf - PM domain configuration data structure
>> + * @mstop: MSTOP configuration (MSB = register offset, LSB = bitmask)
>> + * @pwrdn: PWRDN configuration (MSB = register offset, LSB = register bit)
>> + */
>> +struct rzg2l_cpg_pm_domain_conf {
>> +       u32 mstop;
>> +       u32 pwrdn;
> 
> Why not
> 
>     u16 mstop_off;
>     u16 mstop_mask;
>     u16 pwrdn_off;
>     u16 pwrdn_mask;
> 
> so you can drop the MSTOP*() and PWRDN*() macros below?

I did it like this to align with the already existing approach for this
kind of things available in this driver. I can do it as you proposed.

For the rest of your comments on this patch: I agree and will adjust the
patch in the next version.

Thank you,
Claudiu Beznea

