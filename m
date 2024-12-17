Return-Path: <devicetree+bounces-131695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 652259F462E
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 09:38:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FB691886F9B
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 08:38:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC9E11DC759;
	Tue, 17 Dec 2024 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jnSWrHaQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5B2189521
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 08:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734424714; cv=none; b=MapQqqDHl1j9B3Kv2lw2w+NuMc8bIRsQfzCmlYy88qhSdgg+HXBfIZnO+0HfC8xKdDwP7IVgXoW4iP274USm/hlltJm807vW1n07Iw/5aSeuv0Jo/3TXCLRK2k3R8eKuYYL8QlxIlwpZbZAdRMDbnUwteCXJC9b1zfqgMqUv5zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734424714; c=relaxed/simple;
	bh=QsxB+FcvHkxYn5Z6wPrrZeML8ztRrKsQibnLZJ59yf8=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=PbvnKqr1RKY1p7kTJ02/U4Vk99UjwSsOoJBNNYupJsv27viydv2tmpE7UzmkvCNjDnmSJjLO2voy3k/FxMX1h5QhgP8GrFm2/35+WKhWCCD/qbTAZBhG70gIynz+TRb2ZXLqZajyq5eFoYGIBDvTH7Jiuo9Dot7PgXdSE5sbjJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jnSWrHaQ; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4361d5dcf5bso54602205e9.3
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 00:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734424711; x=1735029511; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LwKLcx3qWGZ0J4OB9gBZAl+ma98QJfj1A73XswW/D2s=;
        b=jnSWrHaQL+3QaWFglq3oInfvSme4/Ez8Qe9BWQ8Stmqxyr1s2dH5bjIr1rnWoNY3Wh
         ehYgxrLhFvhgJCGq9t/lg9s/MgbyRdOfW+4J6NghpFj2G3slbpaOCbbf20N6ODBqsB6d
         Fh1sYneNougEAX7EQMXY+1IoLP1hZjv3TzN6t2An9iy8C90eHBGEeHd0EAR0sQ3s0sLy
         102mR99+a4fFERFBneb2pkbF77T36Zl+wky00ON2rQ9zxfATIukXyZsTX+xUh16ESZoZ
         Ipt/eFuAm2e0xNbxnyCg2n6JLGaSuiQwqsBwHveujCneEgiT0A8S4p6z1NVkHihaExmb
         ZdJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734424711; x=1735029511;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LwKLcx3qWGZ0J4OB9gBZAl+ma98QJfj1A73XswW/D2s=;
        b=iWYkhZ+uD7kR36QlQDFsoVVs1CLcgb2m6p7+CV/5MHW8TkiZVGtj2BKgR7RJuccZg8
         OfatVi0E+YNw/9VwPeBk73HhRvi71o8UCCddcn048hKobxF+ltc4TrMODaeb9FG6Lyqp
         jhLRmgcKJ+ETryc5npCj+bEkj+M7TpC0mHgU+Ft+RBMKtjqdsAsKyPmZDEA4GejFsXFU
         Zwi/ROZ5GLmX4fGffB7wQn5piEXiNSjSewG21XFdLrJ8qQfqjFYj+OeHyIWu10KICGVA
         rCysggMKjcSZf1TAGA+GdGx0seI7qfhUI3acXzUxwE0CG4YP/p7YOIOn93jsceICPKPW
         Dmcg==
X-Forwarded-Encrypted: i=1; AJvYcCWQLuOyzkO2VIhwYNJAj+7qomgCu07nS91eDXFPE1JgEWwz/z+XRVhZEoF1js5tPT8hs+8TaI2Cx7ya@vger.kernel.org
X-Gm-Message-State: AOJu0YyOfRJELqOX3FLHbRUmof7AiHYe36xI3rBEBLdfGb31CTXZpoXm
	sjHgC+m8DiLY336KSUtHB+v+glFq9p4UZ0Sa7BN/1w5Wbt8886PZayzPu5IjKdw=
X-Gm-Gg: ASbGncuZ5ADgNHkJXwH7pr8mUN+D79NjndTh0KS4dSAQYNhpGHieeRnm1tBqVqUKJsU
	5irrFg7s/EFxivdjg4GTuFJvCcZt2Pp3+fWD6yEIKQLEx+1wJACEz6skdjjkYICmz+qAFj9/ElC
	02//fj3aSQuNHrbc++kOnGysvU63WUeItn0HvC8MhszaEG9YE6lYf1SQHEje+auRtIJ3UAYs3Gq
	KhmDqlOoR40IpLGj6OtiOOVPZ67PCzCLnmk4QW99npTA4Wx6xGXI922oZ6rvAGM
X-Google-Smtp-Source: AGHT+IG1ScKF9S6YLpA0VEyZm9yVfmIx7vyc5/iav7Ktgk6AaGAJ4fl38EJ0MOFcy/fDQp5fgbPrhQ==
X-Received: by 2002:a5d:6c63:0:b0:385:ee59:4510 with SMTP id ffacd0b85a97d-38880ac1cc1mr14557623f8f.9.1734424711437;
        Tue, 17 Dec 2024 00:38:31 -0800 (PST)
Received: from [192.168.0.14] ([188.26.61.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c8060592sm10298741f8f.98.2024.12.17.00.38.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2024 00:38:30 -0800 (PST)
Message-ID: <4e8936e0-ac69-49e8-919f-b2776dd88779@linaro.org>
Date: Tue, 17 Dec 2024 08:38:29 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: exynos: gs101: add ACPM protocol node
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: William McVicker <willmcvicker@google.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 andre.draszik@linaro.org, kernel-team@android.com,
 daniel.lezcano@linaro.org, vincent.guittot@linaro.org,
 ulf.hansson@linaro.org, arnd@arndb.de
References: <20241212-b4-acpm-v4-upstream-dts-v2-0-91b7a6f6d0b0@linaro.org>
 <20241212-b4-acpm-v4-upstream-dts-v2-3-91b7a6f6d0b0@linaro.org>
 <Z2B3V78k2ibIdLYh@google.com>
 <45a54924-226e-4a94-b1ae-b0f1f703f854@linaro.org>
Content-Language: en-US
In-Reply-To: <45a54924-226e-4a94-b1ae-b0f1f703f854@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/17/24 7:20 AM, Tudor Ambarus wrote:
> 
> 
> On 12/16/24 6:54 PM, William McVicker wrote:
>> Hi Tudor,
> 
> Hi, William!
> 
>>
>> On 12/12/2024, Tudor Ambarus wrote:
>>> Add the ACPM protocol node. ACPM protocol provides interface for all
>>> the client drivers making use of the features offered by the
>>> Active Power Management (APM) module.
>>>
>>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>>> ---
>>>  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 22 ++++++++++++++++++++++
>>>  1 file changed, 22 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>>> index 04561e15b96c..8c3f07371912 100644
>>> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>>> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>>> @@ -277,6 +277,28 @@ apm_sram: sram@2039000 {
>>>  		ranges = <0x0 0x0 0x2039000 0x40000>;
>>>  	};
>>>  
>>> +	firmware {
>>> +		acpm_ipc: power-management {
>>> +			compatible = "google,gs101-acpm-ipc";
>>> +			mboxes = <&ap2apm_mailbox 0 0
>>> +				  &ap2apm_mailbox 0 1
>>> +				  &ap2apm_mailbox 0 2
>>> +				  &ap2apm_mailbox 0 3
>>> +				  &ap2apm_mailbox 0 4
>>> +				  &ap2apm_mailbox 0 5
>>> +				  &ap2apm_mailbox 0 6
>>> +				  &ap2apm_mailbox 0 7
>>> +				  &ap2apm_mailbox 0 8
>>> +				  &ap2apm_mailbox 0 9
>>> +				  &ap2apm_mailbox 0 10
>>> +				  &ap2apm_mailbox 0 11
>>> +				  &ap2apm_mailbox 0 12
>>> +				  &ap2apm_mailbox 0 13
>>> +				  &ap2apm_mailbox 0 14>;
>>> +			shmem = <&apm_sram>;
>>> +		};
>>> +	};
>>
>> You mentioned in the previous patch that "GS101 has 14 mailbox controllers",
> 
> Right, I got the number from the GS101 memory map.
> 
>> but here you have 15 mailboxes. I looked at the downstream driver and see the
> 
> Here we have a single mailbox controller, ap2apm_mailbox, with 15 channels.
> 
>> number of mailboxes is defined by the ACPM framework (firmware) which is read
> 
> s/mailboxes/mailbox channels that ACPM uses/
> 
>> from SRAM initdata. Dumping that, I see there are 15 ACPM channels. Have you
> 
> Correct.
> 
>> looked into into extracting the data from the initdata SRAM address?
>>
> 
> Yes, that's the reason why I defined the 15 channels from above for the
> ap2apm_mailbox controller.
> 

Haven't explicitly mentioned in the commit message: the ACPM protocol is
a mailbox client for the ap2apm_mailbox controller. The ACPM protocol
uses 15 mailbox channels of a total of 16 channels that ap2apm_mailbox
controller provides.

Let me know if you think I shall update the commit message.
Thanks,
ta

