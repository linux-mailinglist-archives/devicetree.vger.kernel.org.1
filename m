Return-Path: <devicetree+bounces-219784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF8CB8E390
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 20:58:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8F033BFB87
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 18:58:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23A182727F8;
	Sun, 21 Sep 2025 18:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="oG8dLISu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D671EEA8
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758481135; cv=none; b=KRI2uI7dlk4hpsDhSKpaGBlIqBgyRsV3YUbmk/NW0PQjz+IFYwAIV09wU0pBp3nFhR2lcNVFcwL+zxj+2JooozzmPLQe79Mb3UuMAzYytPUjIsnXEPXYvbBsxXQuZM+bPsaub+rBIxioPg6Z3gkH1al+HDwmbK20kO7YfYyWq18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758481135; c=relaxed/simple;
	bh=w8WpeZPhF8DveCAu9nZH5IdpjTp7dXBeqPT5tY/beCM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rf/pLVyeWOBfSMlXfrzvqfgJF87484uMIUMKgK6/qxLaF4XpkH+o0B+ijejtiZxzRSOWGQMDfaezuGDTS/gqPQi5b2hP6hW4uj2jwkcPbsJD4+BukkLdGytH4Mcy+xQC6j1c8CcuybCiQ/uh75VP/3n9QxKGfSSxqzIUdW7YNtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=oG8dLISu; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-4256ef4eeebso10148935ab.2
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 11:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1758481132; x=1759085932; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t3yODI1opb0jOanIEDnISA0XED16oP9HRbOj2aYoSYs=;
        b=oG8dLISupdvSAsUh2Q6qT9JrEzRd4z2cy1p3YURvLlM5oZ2343UEh9lXw56LfCATke
         4g/DkrrcqWH3siH578qnZwIEZty6IXiDJvAAaVNEDNfh3cgD5UahFuvspUbXMnUmcQLw
         bsyJUlvIW6oGRXTsxfjdd6GikjNmFPyMt/u89L+4f4kgydhhGdiNEVIGgRwLpXAZNBFx
         TYKaiJY/czVmNdxjrWXNlh8YhJcwZaGO72Q+3AtZjbnE/X92tC/xZZsdlM9eMqlX9F5W
         2oVh2aclkyk5o93puTK3A5PasaXxFc8ekEBQ0wn4zovTDmJAMb/OiHreaeF1YXBFi3Cw
         WhJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758481132; x=1759085932;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t3yODI1opb0jOanIEDnISA0XED16oP9HRbOj2aYoSYs=;
        b=UAJ062wEDaORKn1YcD6Mq8X4TSE7wIS3laclsrMk6c9iiBkAPAvgcBi44hgXg1vs/H
         kmgpvnLMXRz/tOOBDZHKt/N2ZA9PagaDt0BPxEYGh5GL2CjWRhzlgiVy3Wc0l3uD0Y1A
         2GC3HeR/rp7fSnmH5ovg+9vAA65MEHR9nzcRZX72AnEjMw6tbf4FQrdvE9cB8QXWONho
         jvpb+VBmBC8930AI3Bhv712OgUxYUn4CJRKhLdRxNLXefihJVf7OQMVXj1BWkPXc/+/u
         H4xcNkTJl2ruZTh5xC85/r4MU8Pco57pcBxsRe/Yt5SLmB6Y55LQU9zzbbRmZ657oFq7
         bpCA==
X-Forwarded-Encrypted: i=1; AJvYcCWEAUXvKOO4PSXycCZnFiFowNrhulbzZnR5xjS593Z9Z/FabUL+mrcpPD1kdQBXBgAHCxKPbNGTyaj7@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmm883jrF6JVUHPwx9T5OcCaPpYdPTz/2uQgjkhFud3smzQk3S
	aaqckm4IRnwVtFPiiTzrpFV6u2kyozxweqe28vnb2aP+VleAZ2ojjcjOFV98VQ8pDFo=
X-Gm-Gg: ASbGncsUr1KEcPMs0SDSFW+BgojXkiu8UUScohzE5oRMOBrKfSzPV5VPfDtAUkB2ihi
	6yVgyyG5ezMGv3TfWzowjzNOO0/FbyXl/tAFU/2sBpGmbu6IRo3hPIFI8FpQ/ZJwTEJVHD+Q+iP
	BxbzEjMN3rb0/20RI9wd1W02scmQgNz296A8vVBUraZNgfluyexTnTphnkT/K7QybxwgnUHA9Cf
	ft+7mkxlh4Mj2h3wZOMNfFExW02i3izNZAxGC0gPZs8AcRnibbJF+M8Q77mwVLwtRBAIKTCeOZ3
	RH89Wpf3Spltdw9qTn+hR9xnxciLTu5rSdp0KTmrHg6rd14432RQVoFVog7PRcSW7a51FGZvvOA
	eVDZxqMIFyAq0DvXxrYtW3I6XxbffBPxF1OJnfgyvFnJcbvX0rb9+nIAWtqQ+SVcjUSJdlNI=
X-Google-Smtp-Source: AGHT+IEFYJsSo8XIdBpCssdirvu4z8vm7oDZUP42OyCCbdIOLRYBgINTidn4zPRPHizJvfN5lbHIOQ==
X-Received: by 2002:a92:ca09:0:b0:424:ed48:9acd with SMTP id e9e14a558f8ab-424ed489bb8mr86349525ab.27.1758481132441;
        Sun, 21 Sep 2025 11:58:52 -0700 (PDT)
Received: from [10.211.55.5] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-4244a36aa66sm49663255ab.8.2025.09.21.11.58.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Sep 2025 11:58:52 -0700 (PDT)
Message-ID: <84c77e62-93f7-4a3e-8a86-7f653076bdcd@riscstar.com>
Date: Sun, 21 Sep 2025 13:58:50 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] spi: spacemit: introduce SpacemiT K1 SPI
 controller driver
To: Vivian Wang <wangruikang@iscas.ac.cn>, broonie@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: dlan@gentoo.org, ziyao@disroot.org, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, p.zabel@pengutronix.de,
 spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250919155914.935608-1-elder@riscstar.com>
 <20250919155914.935608-3-elder@riscstar.com>
 <a7070f3f-8857-4834-9e9e-02068637075c@iscas.ac.cn>
 <3c9aaa62-f685-47f7-a21c-00f51550f185@riscstar.com>
 <411ade91-3fb5-40a3-baca-e6b03c5783ae@iscas.ac.cn>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <411ade91-3fb5-40a3-baca-e6b03c5783ae@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 9/21/25 1:51 PM, Vivian Wang wrote:
> 
> On 9/20/25 23:59, Alex Elder wrote:
>> On 9/19/25 10:52 PM, Vivian Wang wrote:
>>>
>>> [...]
>>>
>>> +static void k1_spi_read_word(struct k1_spi_driver_data *drv_data)
>>> +{
>>> +    struct k1_spi_io *rx = &drv_data->rx;
>>> +    u32 bytes = drv_data->bytes;
>>> +    u32 val;
>>> +
>>> +    val = readl(drv_data->base + SSP_DATAR);
>>> +    rx->resid -= bytes;
>>> +
>>> +    if (!rx->buf)
>>> +        return;    /* Null reader: discard the data */
>>> +
>>> +    if (bytes == 1)
>>> +        *(u8 *)rx->buf = val;
>>> +    else if (bytes == 1)
>>>
>>> Typo? else if (bytes == 2)
>>
>> Wow.  Yes that is an error that I'll correct.
>>
>>>> +        *(u16 *)rx->buf = val;
>>>> +    else
>>>> +        *(u32 *)rx->buf = val;
>>>
>>> Maybe
>>>
>>>      else if (bytes == 4)
>>>          *(u32 *)rx->buf = val;
>>>      else
>>>          WARN_ON_ONCE(1);
>>
>> The value of bytes will be 1, 2, or 4, which we can tell
>> by inspection.  At one time I had a switch statement with
>> a default, but I decided to leave out the default, which
>> won't happen.
>>
>>> Just to make the pattern consistent? Same for k1_spi_write_word.
>>
>> Consistent with what?
>>
> I was just thinking it would be clearer if the code states clearly:
> 
>      1 -> u8
>      2 -> u16
>      4 -> u32
>      anything else -> shouldn't happen
> 
> As is, it wasn't obvious to me that we're just handling 4 as u32. Maybe
> we're just capping it at u32, and 8 is also handled.
> 
> Well, maybe I'm just not familiar with SPI stuff, and word size above 4
> doesn't make sense anyway.

Understood.  I only know it because I checked.  And I do want my
code to me understandable, so I'll add a comment as you suggest
below.

Thank you.

					-Alex

> 
> It could also be a comment
> 
>      else /* 4 */
> 
> Just a suggestion, no strong preference from me.
> 
> Vivian "dramforever" Wang
> 


