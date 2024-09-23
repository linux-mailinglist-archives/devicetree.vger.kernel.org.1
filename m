Return-Path: <devicetree+bounces-104575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 610DD97ECFA
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 16:19:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6BD61F220DA
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 14:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D553019E99A;
	Mon, 23 Sep 2024 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iFAqfX6B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1A719CCFA
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 14:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727101114; cv=none; b=YA2hPfd8LPylKbmWxBjUyRUr8w2SlV241tWOqLufoz+15a3snNrUFA3NYnrSlPttyKzMUNWnIPP44yp+DvvgPHKuNAnXsBe/kWKt3VaBFjkP9pJn3fCx1a21s1F7Gs5hUUrIIqmgJJQvkZezknbDSDao/CIlwT1P3QSiEdxOoRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727101114; c=relaxed/simple;
	bh=1Qs8KIfeuNaLmgbTKm2V3IEjeAlEd5cuw0uTooePTfM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JA+OLEZUbBY5XWm6939P9Jkz5jPOO79NWSFAJKIeBGI2Y9t1/Kp19zdbE3QIiMVUM6I2t9bKD4px5leagKncAUk1lJPmuFc5w5PPAsR1wApL05rEv4xCy+k136kJnIHYXPMkCmwf+hrWpU8l/EE69cKIs4k5sSUSVU9OvtUcz60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iFAqfX6B; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42e82f7f36aso16880105e9.0
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 07:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727101111; x=1727705911; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2FmzoM+gq+uFwXHs1nemPf5IMWJAS6uXYL8yL81x6Ws=;
        b=iFAqfX6BuN8HVqQoQkSWeSxWqHDgR+p9YNhtiNR1HjIkjHEPRKAwJCUYLWQ4VsuSWX
         SSe5xcI4Ns7khoVPQvxleAnyUjaj6Qjbk43G3gFkMLhEfxAtIx7RsUgsqCp4KGpKWYFh
         RW77F8n9mHx83JmLv/9Off6UNNGLlLUpHU+AGpQDfptupMOS/pDqnSx1EsWpCNURxl+d
         3Rp4T+JG8mOjFHsDg/0hLyM1SJt9QICWyeaxPibSMyElkkOYwkfDWM8ix4Uelzg8MXwQ
         Ggq53dgKkVQtJi/6+xU0gDtNHN5Osq6kD3s3apuaxfSGSMb9ssaF8gLd0/ZMuhsyd3Eu
         ghhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727101111; x=1727705911;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2FmzoM+gq+uFwXHs1nemPf5IMWJAS6uXYL8yL81x6Ws=;
        b=OtFpFk1d1/Ncvdd9yFu3oNt0iEvEAvhKl1GVRLvTnddwyi0mlJBgHje1IKmypMmB3q
         VERFr13RGVnyviPcmy844Wco1mElleaP3N4XEM6djc6G68yWZjER+8+m5YTBD7UzJAQS
         UH5RdCP5PjV9tf+W/2b4+cInPSCgm92YNcJ368Mhaw7ZP5Ff2u6zClaRFBaT0mMcx5lV
         Ejo4ydFS8S4bjt97qPgxWOJ9ItTlZ+ODZixWrmhwUtQtd/6timc93BRqhUn9+y96b95v
         K3/9o5v1huUlYtjrNMmsljXcsAKk+s7ao2pmJsd8XmrtAxcYmDbAed+4feKD0CynLESy
         X4vA==
X-Forwarded-Encrypted: i=1; AJvYcCWKKSpok6c8IgCH/cFbF3YlIiVO2ssOF6E4IuJMu+N51vnOKDA7cBeMiWxPMkpiMX8Bsj3xRFNwr8Zo@vger.kernel.org
X-Gm-Message-State: AOJu0YzEKrYkpKvshm07TmKqnTDcBVJ51F9n6vtqZORKxXOeqgzTFrBE
	4hSCokknWTbyNJ3DPUo5rW0yH4+dkY+kceNyHzlWK8O8/H82nhj8tIr56WjomDQ=
X-Google-Smtp-Source: AGHT+IGu1hopE+dTd8xiVA++86nDFbQKYhbmtS+//vHskxqqCkbXQd4a1pod9/FsUJlEipv+9gjXmQ==
X-Received: by 2002:a05:600c:34c2:b0:42c:ba0d:c766 with SMTP id 5b1f17b1804b1-42e7abe22ccmr76427165e9.6.1727101110926;
        Mon, 23 Sep 2024 07:18:30 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.20])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e754ce37bsm128270445e9.48.2024.09.23.07.18.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2024 07:18:30 -0700 (PDT)
Message-ID: <688d3e68-c339-4a44-b6b5-366dd5f12965@linaro.org>
Date: Mon, 23 Sep 2024 15:18:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] mtd: spi-nor: core: add manufacturer flags
To: Erez <erezgeva2@gmail.com>
Cc: Erez Geva <erezgeva@nwtime.org>, linux-mtd@lists.infradead.org,
 Pratyush Yadav <pratyush@kernel.org>, Michael Walle <mwalle@kernel.org>,
 linux-kernel@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Esben Haabendal <esben@geanix.com>
References: <20240920181231.20542-1-erezgeva@nwtime.org>
 <20240920181231.20542-2-erezgeva@nwtime.org>
 <4e0cf43c-4843-451c-ac6f-86775dbccb2b@linaro.org>
 <CANeKEMOmhAPM1j1_ihzcC2wL6jKsWXPCGfZs+euS8mRvtqgE5A@mail.gmail.com>
 <2c87568d-3caa-4162-91de-094684f1b268@linaro.org>
 <CANeKEMO4ckeJZHKEOKHVeamPzR045jpwkXWfJS9S6rBiMTayuQ@mail.gmail.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CANeKEMO4ckeJZHKEOKHVeamPzR045jpwkXWfJS9S6rBiMTayuQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/23/24 2:01 PM, Erez wrote:

cut

>>>
>>> mx25l12805d has two OTP regions of 128 KiB and 384 KiB (yes asymmetric).
>>> While mx25l12833f has two OTP regions of 512 KiB.
>>
>> Ok, so you want to add support for mx25l12833f which shares the same ID
>> as mx25l12805d and has different OTP settings. Is that correct?
> 
> My patch purpose was initially adding Mactronix OTP.

support needs to be added per flash, not per manufacturer.

> After reading a lot of Mactronix datasheets, I suggest also reading
> all SFDP to all  Mactronix chips.

Why? It seems too invasive. Generally it is not recommended to issue
unsupported commands to flashes. Change just the flash that you use and
can test.

cut

>> Which flash do you have at hand, both, none, just one of them?
> 
> When I started working on the OTP code, I used MX25L12833F.
> But later I left the company.
> So I use my beaglebone black and connect it to a MX25L3233F.

I understand mx25l12805d and mx25l12833f share the same ID. How is
mx25l3233f related, does it share the same ID as the previous two?

> 
>>>
>>> How do we handle it?
>>> I would gladly remove the obsolete mx25l12805d.
>>> And skp compatibles all together."
>>
>> I need to understand first what you're trying to do. Don't assume that I
>> remember what we discussed one month ago. Describe the why in the commit
>> message.
> 
> "Add support for SPI-NOR Macronix OTP."
> I wrote in the cover letter.
> No, I do not expect you to remember everything.
> I did write my intention in the cover letter.
> 

I already read your cover letter and it didn't explain the challenges
that you're facing.

cut

>>>
>>> You keep sending me contradictory messages.
>>
>> when? Please accept my apologies if that's the case, it's not in my
>> intention. Provide better commit message, help me help you.
> 
> I tried adding a new compatibility.
> You say you do not want new compatibility.

I said new compatibility will be introduced as a last resort only if we
can't differentiate the flashes at run-time. You haven't proved me yet
that this is the case.

> You ask if it is possible to deduce it from JEDEC ID and SFDP,
> I answer that this is not possible, at least in some cases..

I'm interested just about your case, not all the possible cases.

> I try to add OTP parameters in DT. You do not like it, fair enough.
> What am I to do?
> Seems like a dead end.
> 

You can better explain what are the challenges you have and answer the
questions that we're asking ...
> Erez
> 
> 
>>
>>>
>>> I told you we can not "guess" OTP settings based on JEDEC ID and SFDP existence.
>>
>> When? And more importantly, why?
> 
> I send you example of 3/4 chips that using JEDEC ID and SFDP existence
> is not enough.

Why? Do they have the exact SFDP tables? Prove me, drop them all.
Any bit that differs in the SFDP tables is enough to differentiate the
flavors of flashes. Vendor tables included ;)
> 
>>
>>> It may be partial and Macronix may add new chips in the future.
>>
>> I don't understand what you mean by partial, please elaborate.
> 
> I think Kernel like using bullet proof methods.
> methods that will produce a working results.
> If I find one example we can not probe the OTP parameters this way, it
> means this method is NOT bullet proof.
> 
>>
>> And we don't add support for what we assume new chips will look like.
> 
> This is not what I ask for.
> Just trying to guess OTP parameters in current chips will break with new chips.
> 

Again, I'm interested just in the flashes that you use and can test. I'm
not interested in addressing theoretical problems.
> 
>>
>>> They reuse JEDEC ID only retaining flash size and blocks.
>>
>> Yes, I know macronix shares flash IDs among flavors of flashes or new
>> chips altogether.
> 
> I am glad you know.

I sense some rage and I find this inappropriate. I'm just trying to help.

cut

>>
>> And I think I already said that you can differentiate between the two
>> based on SFDP presence. mx25l12833f has SFDP, thus when SFDP present use
>> the mx25l12833f-OTP configuration. When SFDP is not presence one may add
>> support for the mx25l12805d-OTP configuration.
> 
> No, we have 3 chips.
> 2 are using the same JEDEC ID and both using SFDP, yet they use a different OTP.

Which ones are these?

I guess mx25l12805d is non-SFDP. Then mx25l12833f and mx25l3233f define
some SFDP tables. Do mx25l12833f and mx25l3233f have the same OTP
organization?

> So, the problem is here, and probably be bigger in the future, despite
> you "do not care".
> 

I hear about your problem just here, after 3 emails exchanged and at
least one hour wasted of my time.

I want to address problems one step at a time. We can address the bigger
theoretical problems in the future, if they'll ever become real.
> 
>>
>> Is there any case that I miss?
> 
> According to your reply, I would say pretty much most.

This is again inappropriate ... I will read your next email as well, but
I'm not going to tolerate such replies anymore.

