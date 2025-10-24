Return-Path: <devicetree+bounces-230596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC095C04470
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 05:45:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 836143ADF03
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 03:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6580261B8F;
	Fri, 24 Oct 2025 03:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iCkUJcYF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F6723C4FA
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761277515; cv=none; b=TtuN0xeDnCApIJ1K0BbupKhgU2rXPaYaLAfWlPC0rku37jC0qcXucaYObymEnsTITXVUalKij46quR2e1i4dPpFdE7WRfUrV5aZODgflyBPj50U8XPOWfzAu/gb7ZQUHfIsSVzoa2ZUnMxPA93izlI7aBcFGgFGeT0K9jhilNPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761277515; c=relaxed/simple;
	bh=KxG6mgQFTZjAbOnGJ9IZZeJ7gYYse/SVs8O9bLX6Uys=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OXH6CJ1np27tNTOKae7tofoT34Z7U/1WSfSfXM2IRANXMvArvbp+Oeg3GGM3cECUBWV9HYNx73KbVLaN5GjaI7zAuYYtYG/9u3WrVTtdR4Q0mJ4sLRHVh0uv6fWhh1+ZI/e5+4AcSxTb+ExcGZ2FSUopaPHBkzXmJHDh85VZMrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iCkUJcYF; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-339d7c403b6so1739407a91.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 20:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761277512; x=1761882312; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=HiRwwiYIxph3y0nSVQ/xh58uObGDxvKUt3Iz5/AtRps=;
        b=iCkUJcYFy1k5nb3//9A01u2x2KfOi0SLg09HX7SE2xNboldZ6wI8vF5C+enmnR2YPu
         tx3NQ1Ms89GYNPq1Hd41JhL+bxNP5efHdyQEQl9I/Biy+lxsZvuFX2QJKmBMN1uJaBBn
         y24VyPhnbQw0/ar2NfbQHLukqjfRf20A+rgSjqzH4Kk/BuW+3/CudKJyQ7/N910vNri/
         b9gn+nkj5ahvavHiqlR8rc5xbIN7W0WA7pfBK3C+oSQuemXhNt6raatZ8cpExrT4OGXp
         NytY/GIyaDOOqF80wWis5knyHZTPG1ASzuYxUAisasRSuP3y/5dBNzfjE4Co/SbEMxTw
         +j/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761277512; x=1761882312;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HiRwwiYIxph3y0nSVQ/xh58uObGDxvKUt3Iz5/AtRps=;
        b=qE93jKKaZUoqi3NwgM9EzF2hi7D0kwJc54krMKtV3v7nXvTdx/aBrtDYsmQ2Dsk8Uh
         0IKu/11h/a0oyzpen7dmp/+CG318hQWdxrXvO29dDzWXs42kKcWEqBoV/749xF9a4GBi
         VGLOore6gjlpQjoZX44MMXKa7iL3W6LruMr/8pv+u5rXMNdfaV8OeeEPL5aHxufaDCSf
         98B2LGizhOLg0dz+qrLX4AjFpxW843OMOP+RXZzrujltN0tGiVTizHwjr1l4ru/aawxn
         VpM887E8/POtF5RpSEHQF521ILZysQtJOpO7x4KvULTEuXFu8KqvOzmu4HG5Qm/BMOE7
         /2vA==
X-Forwarded-Encrypted: i=1; AJvYcCVq9vZB10fcOuKEWn/KlQ1ujvV8Eoi/lQPov3ivxQZxo0VQJ54BWe1pgeCOhG1P0SpMuEzzNOaE7Esw@vger.kernel.org
X-Gm-Message-State: AOJu0YzRqVTAywQip9h1W2nweAJeyNXpHqtlfMAQc9BvhYKUPrh+b9nK
	FfWo9IDGliRqEi24VajSv/Fr1+LuA25MIPMg06/5/RPkWPpk7mEmKUKF
X-Gm-Gg: ASbGncvM2xaI7N2yU6TMiZzjqjY45YuFjMtD1OrqZlvM8m+4GHafPm5xue9KOlwkPgq
	kcAblkyQfbKd+ulnvkn6AmqcbLfkOZgg5/ssEc4thkFjpuWGD1K6r4yck8BN7HXVpi48WBe5U/i
	dVhm2bLsRS3rKG/Khoavkb1XisyIIhGcBwtnFHJ/zkUZMl2K5KHWaAQPzjSPnDdmw/5C/N/ok/h
	TQz+vYXwk8yvB5dHMcEfLWYnyKAVUG+7xzN825dgOSbKQMsp/dosHX+h1GQNYzDP2qa8HJREyi/
	PRsFMOEmwEn57QLZTHy+1EAmcnivP4/xToTI9e6+BpGKBxL1Le8J+KwxiRLdcaAsse+vMBa3qDk
	SqVMUj4kw9kVVKAbCtp6C4bbBYVwgUfNAsAfZLIX7Mhd6lkeNuyL4CZoD4UcIz/8DhoRSMaVdep
	EX/VMFE1YopkXlsFyDSpvHE1BHZvyWWRAl+EH+TV4a3vrwD4xlP1WHxojzxkk=
X-Google-Smtp-Source: AGHT+IHgxSHpOe7uFxBKNhzcrTuSEIHcTnYzhOUyJ6pcWKCFvMZJgvU04s6f6H/EDLJjMSUEjPtNeQ==
X-Received: by 2002:a17:90b:5688:b0:339:a323:30fe with SMTP id 98e67ed59e1d1-33fd65fe286mr1049116a91.14.1761277512531;
        Thu, 23 Oct 2025 20:45:12 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fb0172476sm4156381a91.13.2025.10.23.20.45.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 20:45:11 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <673f8cfa-e541-4f17-bc1f-dc0c429d72b7@roeck-us.net>
Date: Thu, 23 Oct 2025 20:45:10 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] of: Skip devicetree kunit tests when RISCV+ACPI doesn't
 populate root node
To: Rob Herring <robh@kernel.org>, Paul Walmsley <pjw@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 Han Gao <rabenda.cn@gmail.com>
References: <20251023160415.705294-1-linux@roeck-us.net>
 <2bef32d0-2c35-c93d-08a8-71966c1212f2@kernel.org>
 <CAL_JsqJjiB3h+hzstXSbnyFy+U39GgtT=rcb4r+QDv=uL54H8g@mail.gmail.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <CAL_JsqJjiB3h+hzstXSbnyFy+U39GgtT=rcb4r+QDv=uL54H8g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/23/25 18:00, Rob Herring wrote:
> On Thu, Oct 23, 2025 at 11:48 AM Paul Walmsley <pjw@kernel.org> wrote:
>>
>> On Thu, 23 Oct 2025, Guenter Roeck wrote:
>>
>>> Starting with commit 69a8b62a7aa1 ("riscv: acpi: avoid errors caused by
>>> probing DT devices when ACPI is used"), riscv images no longer populate
>>> devicetree if ACPI is enabled. This causes unit tests to fail which require
>>> the root node to be set.
>>>
>>>    # Subtest: of_dtb
>>>    # module: of_test
>>>    1..2
>>>    # of_dtb_root_node_found_by_path: EXPECTATION FAILED at drivers/of/of_test.c:21
>>>    Expected np is not null, but is
>>>    # of_dtb_root_node_found_by_path: pass:0 fail:1 skip:0 total:1
>>>    not ok 1 of_dtb_root_node_found_by_path
>>>    # of_dtb_root_node_populates_of_root: EXPECTATION FAILED at drivers/of/of_test.c:31
>>>    Expected of_root is not null, but is
>>>    # of_dtb_root_node_populates_of_root: pass:0 fail:1 skip:0 total:1
>>>    not ok 2 of_dtb_root_node_populates_of_root
>>>
>>> Skip those tests for RISCV if the root node is not populated.
>>>
>>> Fixes: 69a8b62a7aa1 ("riscv: acpi: avoid errors caused by probing DT devices when ACPI is used")
>>> Cc: Han Gao <rabenda.cn@gmail.com>
>>> Cc: Paul Walmsley <pjw@kernel.org>
>>> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
>>
>> Reviewed-by: Paul Walmsley <pjw@kernel.org>  # arch/riscv
> 
> FWIW, the fixed commit will also prevent enabling features like this
> series[1] enables. Arm64 is still disabled ATM because of disagreement
> with the arm64 maintainers, so that can was kicked down the road. It
> would be better to not disable this and address the issues as they
> happen rather than breaking people down the road.
> 

I guess that means that I'll have to disable devicetree unit tests for
riscv targets. NP; thanks for letting me know.

Guenter


