Return-Path: <devicetree+bounces-143607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1024EA2A8DE
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 13:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E3423A4792
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 12:56:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99B0D22DF89;
	Thu,  6 Feb 2025 12:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="A4amCw3V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5D4225783
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 12:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738846595; cv=none; b=je6iUf9X3X8d9pfSEyR3itpb240sfbBlr5IUA4SI6jCvdaBu8nG0JK0O2q/m7Vxrla9iUjdRmDKnl1+9a6fv/fT7aD88RNIWUdEjufd1t90G7VMFtUwI+46XTXcfQBpLTA8KlEgwrmEKCCNS8oSAVTlN+09csTqj67VJyQTQWmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738846595; c=relaxed/simple;
	bh=3g/wINSloqxIGUCYfp0t6LFlzfc4hL1rcpwnzCDRZUA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WH/l0px1C9uyLYU4M1Anc9uC677BDQ6TV6REUy7vFw4TrLIDq6XJnBJjUQNVvjZbbVWNNOYuyk54+t//D/gxb5AvFrhiSojuL8Uj1iVFQt+Wr3b/l4NofiohzloNdxm+q4bBoXL6tQ0LDhoWylir3vhO9DASyTWu2GuE0Vf9Nt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=A4amCw3V; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-435f8f29f8aso5963245e9.2
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 04:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738846592; x=1739451392; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dSneZhQMz42NLjIZ9INmqk/5Ehqq2enW8mbh8jsOOB0=;
        b=A4amCw3VFFd0gqBO/UFM9gSXELeRlXBB9b4KhozlMibnc0gaeTU7yXBJHWx5Z1yOvk
         Cyq9Qvb/FQDfnCJPTCAJHZ/fq0+2oMknHkagt8Cz7RuajqbCbM1Mam9DfHm8MfQjsqi5
         4Ic3/X5ATY7okVNjiH3YK3U4mFJ3SyD26weUHTLB3MRjR8wzUrvEJC+qwXUpJVlWcHeE
         yR4ZN3te1+8kmQKsSkpVbDBcGCOj1k9KgyLJk41iBHTzP7/vuDKTxd+ayiLbHFyoPrD5
         I7Gp/AOJgCxquSVSzB2M3u/hBJ/OO8O5eyrVboAKEGsf6XYuoFEVYiVY9Z5wD8IpAfz9
         elVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738846592; x=1739451392;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dSneZhQMz42NLjIZ9INmqk/5Ehqq2enW8mbh8jsOOB0=;
        b=IlJ0PPdvGIft8UaxQTEA2yklpNnldoqlHKud50O+FaD3BfYbkJubFQs3ap9BOHbctG
         emXhxbB/nP+oeJjjcGuO/O2ztOCSmitoWNU4zdvXdOZvW5CkQ3jRFwYDA7VUIzd6Llc+
         dmc459DCwtXrgu3Qep5ScyEK0XRd/ocYhmiq6N15WxDjg/w5Etx4wa/3ymGFC3cDXPR9
         yNT/0YjBs0V88U/J+HjHbByq7hYfrrtKerbgLurwyfBuwzZDzZnR9DvwWtW+J1oo6rL+
         qERvjSODfwiT4e6GxCb30SjZcCJBaXY2/4k9lT1zcijJLG+lbeNEGG3Z/0imFRN2nP0J
         KPfw==
X-Forwarded-Encrypted: i=1; AJvYcCVVyePh/jh29EbgWvRlo29WnJsIgFnECzZSwB5BJ4pZ5xG47ZT79xLQ6aQ4nBe8cgBIyF9FZkBOBxLP@vger.kernel.org
X-Gm-Message-State: AOJu0YwE+uq3G4SJ0neiAF6+3CiMqE6YZKitQrR8DY64wUlA5f8PEgPj
	aD2lJrkrr0dmNtz18hIf8lirA6lfxQ3BULttHV/l1AXLC3KRpBNVXLxgunchYx8=
X-Gm-Gg: ASbGnctfEByrgIwjwCIW9S5wUpvz44axB95IjHZD8Wndp3yKn/Firpy2I2dXrlheKtv
	zfu9azUASGbR0FshImnG3deUwqlQkP0ZkjGsHZpjPw795EdDY785EdLoE6sD5HXT/YZ1yu4pg41
	IARa3Q46pjsZUqdwZiGaCR2LhP0/YQMC76s9MwkuifbSrbyUtgc9A+HekzrTdyHTfBGMzQWO1P0
	q3Ibdc5DbV8ClVGtfakKUkzhGj1aI34BcKU6epTjwGJ/XDrJrKPf5LxDmExvUAo/jeYy+gFmj3G
	TXoJYvzPXlHj0VchJZ8AnVSQnuIgo1EcYrwDyEZWeSflBad9TTxGjoDZyEYk
X-Google-Smtp-Source: AGHT+IHo0rAwCXLXwfKWz6RSqfUjc9Bk6Vt9OF485t+NIZ62i+CSdactAKssxCygX1CrtVfPW8ntaQ==
X-Received: by 2002:a05:600c:3b0f:b0:434:a529:3b87 with SMTP id 5b1f17b1804b1-4390d434065mr56547865e9.10.1738846591542;
        Thu, 06 Feb 2025 04:56:31 -0800 (PST)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391dfd8000sm18420605e9.37.2025.02.06.04.56.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2025 04:56:31 -0800 (PST)
Message-ID: <00485221-2343-4d5c-93ca-3a28a59427d2@rivosinc.com>
Date: Thu, 6 Feb 2025 13:56:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] RISC-V: add vector crypto extension validation
 checks
To: Conor Dooley <conor@kernel.org>
Cc: linux-riscv@lists.infradead.org, Conor Dooley
 <conor.dooley@microchip.com>, Eric Biggers <ebiggers@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Andy Chiu <andybnac@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250205-cobbler-unpadded-5580c1f5d946@spud>
 <20250205-quench-entrench-09bed8c8c823@spud>
 <00dc2fb7-da9b-42c3-9c3b-47d917df7cf6@rivosinc.com>
 <20250206-overcook-legibly-0350a9af8a2a@spud>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20250206-overcook-legibly-0350a9af8a2a@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 06/02/2025 12:24, Conor Dooley wrote:
> On Thu, Feb 06, 2025 at 11:20:35AM +0100, Clément Léger wrote:
>> On 05/02/2025 17:05, Conor Dooley wrote:
>>> From: Conor Dooley <conor.dooley@microchip.com>
>>>
>>> Using Clement's new validation callbacks, support checking that
>>> dependencies have been satisfied for the vector crpyto extensions.
>>> Currently riscv_isa_extension_available(<vector crypto>) will return
>>> true on systems that support the extensions but vector itself has been
>>> disabled by the kernel, adding validation callbacks will prevent such a
>>> scenario from occuring and make the behaviour of the extension detection
>>> functions more consistent with user expectations - it's not expected to
>>> have to check for vector AND the specific crypto extension.
>>>
>>> The 1.0.0 Vector crypto spec states:
>>> 	The Zvknhb and Zvbc Vector Crypto Extensions --and accordingly
>>> 	the composite extensions Zvkn and Zvks-- require a Zve64x base,
>>> 	or application ("V") base Vector Extension. All of the other
>>> 	Vector Crypto Extensions can be built on any embedded (Zve*) or
>>> 	application ("V") base Vector Extension.
>>> and this could be used as the basis for checking that the correct base
>>> for individual crypto extensions, but that's not really the kernel's job
>>> in my opinion and it is sufficient to leave that sort of precision to
>>> the dt-bindings. The kernel only needs to make sure that vector, in some
>>> form, is available.
>>>
>>> Since vector will now be disabled proactively, there's no need to clear
>>> the bit in elf_hwcap in riscv_fill_hwcap() any longer.
>>
>> To which part of the commit does this refer to ?
> 
> Copy-paste mistake when splitting in two, whoops.
> 
>>> @@ -397,8 +414,8 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>>>  	__RISCV_ISA_EXT_DATA(zksed, RISCV_ISA_EXT_ZKSED),
>>>  	__RISCV_ISA_EXT_DATA(zksh, RISCV_ISA_EXT_ZKSH),
>>>  	__RISCV_ISA_EXT_DATA(ztso, RISCV_ISA_EXT_ZTSO),
>>> -	__RISCV_ISA_EXT_SUPERSET(zvbb, RISCV_ISA_EXT_ZVBB, riscv_zvbb_exts),
>>> -	__RISCV_ISA_EXT_DATA(zvbc, RISCV_ISA_EXT_ZVBC),
>>> +	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zvbb, RISCV_ISA_EXT_ZVBB, riscv_zvbb_exts, riscv_ext_vector_x_validate),
>>> +	__RISCV_ISA_EXT_DATA_VALIDATE(zvbc, RISCV_ISA_EXT_ZVBC, riscv_ext_vector_crypto_validate),
> 
>>
>> I'm not sure if I already made that comment, so here we go again.
>> Shouldn't Zvbb use riscv_ext_vector_crypto_validate() as well ?  The
>> spec states that Zvbb is a superset of Zvkb and Zvkb uses the
>> riscv_ext_vector_crypto_validate() validation callback. I guess Zvbc
>> should also use it based on your spec excerpt in the commmit log.
> 
> Zvbc does use it, no? I'll amend the Zvbb one, there should only be two
> users of the "x" variant.

Oh yes Zvbc is already ok, forget that then.

Clément



