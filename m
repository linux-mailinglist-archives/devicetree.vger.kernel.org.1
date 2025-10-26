Return-Path: <devicetree+bounces-231172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E53AC0B178
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 20:58:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDAB33B481C
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 19:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82998279DCC;
	Sun, 26 Oct 2025 19:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SB1s9PDB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6EAA2417C6
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 19:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761508693; cv=none; b=JU6M+4OpxywFAMK46+wy6E1s/iKjHLPNMak9bYn+XSN/FmJyr283gRbaepcOK9B9Nv8mzsy2rznzk7IlO5qqxMNRsqSzzjrmAdxsq2bUpQSwTcM6AFM74XTH2UD8pQHojBcPSgOntqVIvDw0iouJumIrtFaA/oIIbWAHY62JcHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761508693; c=relaxed/simple;
	bh=yOE0P7FWFoGaMhy1Bhi1naXUs1jG5gQoZnDqGoQWcSM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QAvoKOt6iYs608teV87ENN+XHraADrNxii5dg3sIKmSnSyu6NEtU2X8CsmY2zXxnleQn2gpHEhYHgGhHpmqKmQwuumg40HpZskmGBzlSOR/eG2QwT9v8JzUTz/PmwEs7fxtEYZ0o7VVsdFlui5TsPhRusJp3TTfG7zHlD3omHPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SB1s9PDB; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7a28c7e3577so1558013b3a.1
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 12:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761508691; x=1762113491; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=rz+iPjrso650B0W3/FsE0e28IvCi/qUg0X/JHlyUrwk=;
        b=SB1s9PDBgJsQNM0MCxExgvljtAOM4F5hVfe7POB/MscBlVJDV2an679nt0/Mcn4yTx
         VEX0LLdOPzyNyj3lBCANxOHywE+Xw+1rcxSc90gzXE6mo2Cdx39BjAv+UEQwKwcz78z6
         Ag6XSeY0wIytk0JaN08QdLQbrCHZDajAWTtnAZIE3AF+H2IQlffoLftR6AqkNbO9mJ4W
         rT3UDWO9C2Wsf8ASmfxuoaxRikcGitB8ATsKSzytLJbm7XmkUpziSpFW9DlBeN+AUQsZ
         jqOvCvCDJtBmPW4c7O/VUS7bJjlkBZowEGX0KZgIZI39KtL4oyuTGD2dajLo79XE5JkI
         9UJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761508691; x=1762113491;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rz+iPjrso650B0W3/FsE0e28IvCi/qUg0X/JHlyUrwk=;
        b=itwD9ai1HLeoSHfVMPoMyaKd9+SYnMGMmRNpbT9cuwXxrhD/ZF5THnlSw9XuSk05mw
         njyGSE+9h0u0YVDhtcQo7eJMeuWUmdkVM+4cNKf4Y2DzBEc92T6eiMyql3N6wqTO95Sl
         2Gf6pRD6FFOh0uWsu2fRejbygaHCDDnoUGEeLBhrHVJER7q/eiLbSZ1E4R2mJ4TK+Mvu
         pUoLIDbJ9Nhss5xTumhrD0VnfQaBrVZHCCvhchfNpeLa9JQ3EEWCrfOipRFVcMVruQuz
         eH3nxkHShK++Za1DvdckqG8LUwlErUEgZ2tSzCw3fu1bGPgSOcLnCKDKNJwDoP9btyb5
         VtnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSap9UKVG7Fduo1NLLcBnHKmZhBxV+Sgzojnbra3wSqeX+2Oqx4YTEOMs1Q7XExNDC49CYfdJJH+hW@vger.kernel.org
X-Gm-Message-State: AOJu0YwhTWJqZRz5xvQeFTraXGe7+hGBB3IkOddt4ePLaMJQrkhbMXVV
	B2UPlQbO6ywfM43TjS9IelnkCNs+fmijKhEqstCovRMhIKnOeewepsFx
X-Gm-Gg: ASbGnctMFI8sSrp5ohI2DzV1ThAS2OG3tX7uUf1d9M9Hwgg1rGDAtcWDsnyiDhGse4V
	Xkd2Fsdfzyp1jiXyv0NBYGcHXxZgRRm5CYCJhvKrFnzNv51nohZbyLKRD6ozGW5rDEHOX4Di9Vm
	PaHkFc3QWAAXueHf+zsUj73Jzg6vExgyEBuzChx5czydd8hCAIPnwg4SCGM/HIFZmGt1ParUW8u
	8+xwDbd/zPXPfqry6NiNQ6VnEUuWLc92pJjQ7zQ9aTDXwTItXigUTz7b2VIEZ81B+mIB2C/gtmf
	g3+auyD6L5WyRj5TqDZOjw9Mka+R6Zh10cGXJ96DJ2xqT/2RRrKBXo9UDdeIIjclTnD1KM78TvF
	DXi/zrzPGfB2GXQs9DzvIOZk1RFfPGGyUsHuIKRlA+yTthWbd4zbxvUzu69aGtnUh48NxpJB/31
	ExAIhNPw66iXajR95vYIKfweogxDsx9Q9vRSDfb3C8379t6oBs
X-Google-Smtp-Source: AGHT+IFoB+ruOh+nGUiptuYoaCYIh4e90e4xNspCvcjO4DwFEFbyG34XpfKFjr+dDPN56lOiGboX8w==
X-Received: by 2002:a05:6a00:813:b0:7a4:2294:92ff with SMTP id d2e1a72fcca58-7a4229495a8mr3384862b3a.27.1761508691177;
        Sun, 26 Oct 2025 12:58:11 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414082e10sm5525818b3a.55.2025.10.26.12.58.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Oct 2025 12:58:10 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <e51c3dfa-406b-4dfa-bbb5-c31d1a2e0007@roeck-us.net>
Date: Sun, 26 Oct 2025 12:58:08 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: hwmon: Add support for ST TSC1641
 power monitor
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Igor Reznichenko <igor@reznichenko.net>
Cc: conor+dt@kernel.org, corbet@lwn.net, david.hunter.linux@gmail.com,
 devicetree@vger.kernel.org, krzk+dt@kernel.org, linux-doc@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, robh@kernel.org,
 skhan@linuxfoundation.org
References: <408c1698-a8ad-4e16-8def-352c2c265f5a@kernel.org>
 <20251026184641.631641-1-igor@reznichenko.net>
 <a45ad6b8-b4d5-4e0c-8f1a-3641dddb240d@kernel.org>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 xsFNBE6H1WcBEACu6jIcw5kZ5dGeJ7E7B2uweQR/4FGxH10/H1O1+ApmcQ9i87XdZQiB9cpN
 RYHA7RCEK2dh6dDccykQk3bC90xXMPg+O3R+C/SkwcnUak1UZaeK/SwQbq/t0tkMzYDRxfJ7
 nyFiKxUehbNF3r9qlJgPqONwX5vJy4/GvDHdddSCxV41P/ejsZ8PykxyJs98UWhF54tGRWFl
 7i1xvaDB9lN5WTLRKSO7wICuLiSz5WZHXMkyF4d+/O5ll7yz/o/JxK5vO/sduYDIlFTvBZDh
 gzaEtNf5tQjsjG4io8E0Yq0ViobLkS2RTNZT8ICq/Jmvl0SpbHRvYwa2DhNsK0YjHFQBB0FX
 IdhdUEzNefcNcYvqigJpdICoP2e4yJSyflHFO4dr0OrdnGLe1Zi/8Xo/2+M1dSSEt196rXaC
 kwu2KgIgmkRBb3cp2vIBBIIowU8W3qC1+w+RdMUrZxKGWJ3juwcgveJlzMpMZNyM1jobSXZ0
 VHGMNJ3MwXlrEFPXaYJgibcg6brM6wGfX/LBvc/haWw4yO24lT5eitm4UBdIy9pKkKmHHh7s
 jfZJkB5fWKVdoCv/omy6UyH6ykLOPFugl+hVL2Prf8xrXuZe1CMS7ID9Lc8FaL1ROIN/W8Vk
 BIsJMaWOhks//7d92Uf3EArDlDShwR2+D+AMon8NULuLBHiEUQARAQABzTJHdWVudGVyIFJv
 ZWNrIChMaW51eCBhY2NvdW50KSA8bGludXhAcm9lY2stdXMubmV0PsLBgQQTAQIAKwIbAwYL
 CQgHAwIGFQgCCQoLBBYCAwECHgECF4ACGQEFAmgrMyQFCSbODQkACgkQyx8mb86fmYGcWRAA
 oRwrk7V8fULqnGGpBIjp7pvR187Yzx+lhMGUHuM5H56TFEqeVwCMLWB2x1YRolYbY4MEFlQg
 VUFcfeW0OknSr1s6wtrtQm0gdkolM8OcCL9ptTHOg1mmXa4YpW8QJiL0AVtbpE9BroeWGl9v
 2TGILPm9mVp+GmMQgkNeCS7Jonq5f5pDUGumAMguWzMFEg+Imt9wr2YA7aGen7KPSqJeQPpj
 onPKhu7O/KJKkuC50ylxizHzmGx+IUSmOZxN950pZUFvVZH9CwhAAl+NYUtcF5ry/uSYG2U7
 DCvpzqOryJRemKN63qt1bjF6cltsXwxjKOw6CvdjJYA3n6xCWLuJ6yk6CAy1Ukh545NhgBAs
 rGGVkl6TUBi0ixL3EF3RWLa9IMDcHN32r7OBhw6vbul8HqyTFZWY2ksTvlTl+qG3zV6AJuzT
 WdXmbcKN+TdhO5XlxVlbZoCm7ViBj1+PvIFQZCnLAhqSd/DJlhaq8fFXx1dCUPgQDcD+wo65
 qulV/NijfU8bzFfEPgYP/3LP+BSAyFs33y/mdP8kbMxSCjnLEhimQMrSSo/To1Gxp5C97fw5
 3m1CaMILGKCmfI1B8iA8zd8ib7t1Rg0qCwcAnvsM36SkrID32GfFbv873bNskJCHAISK3Xkz
 qo7IYZmjk/IJGbsiGzxUhvicwkgKE9r7a1rOwU0ETofVZwEQALlLbQeBDTDbwQYrj0gbx3bq
 7kpKABxN2MqeuqGr02DpS9883d/t7ontxasXoEz2GTioevvRmllJlPQERVxM8gQoNg22twF7
 pB/zsrIjxkE9heE4wYfN1AyzT+AxgYN6f8hVQ7Nrc9XgZZe+8IkuW/Nf64KzNJXnSH4u6nJM
 J2+Dt274YoFcXR1nG76Q259mKwzbCukKbd6piL+VsT/qBrLhZe9Ivbjq5WMdkQKnP7gYKCAi
 pNVJC4enWfivZsYupMd9qn7Uv/oCZDYoBTdMSBUblaLMwlcjnPpOYK5rfHvC4opxl+P/Vzyz
 6WC2TLkPtKvYvXmdsI6rnEI4Uucg0Au/Ulg7aqqKhzGPIbVaL+U0Wk82nz6hz+WP2ggTrY1w
 ZlPlRt8WM9w6WfLf2j+PuGklj37m+KvaOEfLsF1v464dSpy1tQVHhhp8LFTxh/6RWkRIR2uF
 I4v3Xu/k5D0LhaZHpQ4C+xKsQxpTGuYh2tnRaRL14YMW1dlI3HfeB2gj7Yc8XdHh9vkpPyuT
 nY/ZsFbnvBtiw7GchKKri2gDhRb2QNNDyBnQn5mRFw7CyuFclAksOdV/sdpQnYlYcRQWOUGY
 HhQ5eqTRZjm9z+qQe/T0HQpmiPTqQcIaG/edgKVTUjITfA7AJMKLQHgp04Vylb+G6jocnQQX
 JqvvP09whbqrABEBAAHCwWUEGAECAA8CGwwFAmgrMyQFCSbODQkACgkQyx8mb86fmYHlgg/9
 H5JeDmB4jsreE9Bn621wZk7NMzxy9STxiVKSh8Mq4pb+IDu1RU2iLyetCY1TiJlcxnE362kj
 njrfAdqyPteHM+LU59NtEbGwrfcXdQoh4XdMuPA5ADetPLma3YiRa3VsVkLwpnR7ilgwQw6u
 dycEaOxQ7LUXCs0JaGVVP25Z2hMkHBwx6BlW6EZLNgzGI2rswSZ7SKcsBd1IRHVf0miwIFYy
 j/UEfAFNW+tbtKPNn3xZTLs3quQN7GdYLh+J0XxITpBZaFOpwEKV+VS36pSLnNl0T5wm0E/y
 scPJ0OVY7ly5Vm1nnoH4licaU5Y1nSkFR/j2douI5P7Cj687WuNMC6CcFd6j72kRfxklOqXw
 zvy+2NEcXyziiLXp84130yxAKXfluax9sZhhrhKT6VrD45S6N3HxJpXQ/RY/EX35neH2/F7B
 RgSloce2+zWfpELyS1qRkCUTt1tlGV2p+y2BPfXzrHn2vxvbhEn1QpQ6t+85FKN8YEhJEygJ
 F0WaMvQMNrk9UAUziVcUkLU52NS9SXqpVg8vgrO0JKx97IXFPcNh0DWsSj/0Y8HO/RDkGXYn
 FDMj7fZSPKyPQPmEHg+W/KzxSSfdgWIHF2QaQ0b2q1wOSec4Rti52ohmNSY+KNIW/zODhugJ
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <a45ad6b8-b4d5-4e0c-8f1a-3641dddb240d@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/26/25 12:41, Krzysztof Kozlowski wrote:
> On 26/10/2025 19:46, Igor Reznichenko wrote:
>>> Subject: I asked to drop "binding" and not add "support for". "Support
>>> for" makes little sense in terms of binding. How binding can support
>>> anything? This is the "ST TSC1641 power monitor" not support.
>>
>> Krzysztof,
>>
>> Thanks for feedback, will fix this and will create following patch versions
>> in new threads.
>>
>>>> +
>>>> +  reg:
>>>> +    maxItems: 1
>>>> +
>>>> +  shunt-resistor-micro-ohms:
>>>> +    description: Shunt resistor value in micro-ohms. Since device has internal
>>>> +      16-bit RSHUNT register with 10 uOhm LSB, the maximum value is capped at
>>>> +      655.35 mOhm.
>>>> +    minimum: 100
>>>> +    default: 1000
>>>> +    maximum: 655350
>>>> +
>>>> +  st,alert-polarity-active-high:
>>>
>>> Isn't this just interrupt? You need proper interrupts property and then
>>> its flag define the type of interrupt.
>>
>> This controls a bit written into device register.
>> I omitted interrupt property after looking at existing power monitor bindings,
>> especially hwmon/ti,ina2xx.yaml. INA226 has very similar bit controlling alert
>> pin polarity and binding doesn't define alert pin as interrupt. Overall, I didn't
>> find many power monitor bindings defining alert pins as interrupts.
> 
> 
> On INA2xx that's SMBUS Alert. Is this the case here as well?
> 

It could be wired to SMBus alert, or it could be wired to a CPU interrupt pin.

Guenter


