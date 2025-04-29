Return-Path: <devicetree+bounces-172047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA4BAA10CD
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 17:45:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 78B311BA1669
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 15:45:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1732F22F773;
	Tue, 29 Apr 2025 15:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RL5tXUZe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FB022E3E2
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 15:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745941524; cv=none; b=a+xNY0B/b1VeHHiD3jaAesT1oSXC8R5LLA394Tmb3BAkTrFJg3dimST+sNCfISqLPKbI4TknWDyywUtzCp+b6qqdMZrBsb1WCtJurT4L4PuOclw/5rPxjxbuXeibMivxsf/4R8Rzc7TAimdXFEpmd5yvNiHVkf5slVAzMgUmQYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745941524; c=relaxed/simple;
	bh=NICjiPJUIs0TwUvIzdHa/agEllYI7LIs1dcUUmUkXOI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WAzXLZYYoSO221PQSTgc7m3MLelUAo+FTLvqBuGeguvpKFaOJDaGCX8Ofm4bBrIQfPgU5mpJ6N+OTqVgg1QHE4dc5pUJO5eZenEk6tGblr043+iAB+NHQkA8j2dDIPnUTEX7GYVCPHF/4m8QLaBttlgoCrL/ocQyKKinFRL8pCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RL5tXUZe; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3f8d2f8d890so4013533b6e.0
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 08:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745941521; x=1746546321; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZVI4uRenWtRE9k6AMZ5CKSYUXQJsbDv7xP2rtKsYSZ0=;
        b=RL5tXUZeGh9ES4n3fIB1O92769n0Kdaio0fevNW1BHL/2tKu2PqF/iGbkmLFCr/2Rd
         0y+R+pHj01oBlnFKY0SZmsgqwZgB9NlvZDuZ4wuqR+tZHDopB2UyLUzf9OkWZE477mwc
         OYgjVEl44V9jfMmU0LuD1WmMF6LemJ1wwe12pXmtED87hbhlOO/axf4o+XEfH+UwPZ+I
         J4VLzFrcjVjzgQaFRysWltb1vzm5rGtgFWK/y83hIbNUREAE2AWF8Xdy1NTYbV0wyhN7
         NYxjPaz+uCcYN6vo9owE91WK2bq9GWkYLRBJFaGx6uIRXvcvvgE+WPfg2acg/0Wh6F3q
         Bx4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745941521; x=1746546321;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZVI4uRenWtRE9k6AMZ5CKSYUXQJsbDv7xP2rtKsYSZ0=;
        b=Qt2LzLXqhkyb2ukjCvZjfkInmtur5SA2Wrs8eOx2lTFxQBLwwmDOxl8vkK/kfuIVCF
         UNJFy1uUaoycOx8UPYEzMXNi9M1UACZ+jJBuzRd25lBgqYjVF7Fe8vTSsE3PW7wHB11a
         IJLEnlPA8dF91Gke6zRfCMH64Lwk7ZlpObtSf3Ke4KNjsL2Q1FMEXx5ANNvCRJrypE1o
         sTqI1JdSoS9QyCQuUapLmmAWeaW9yyx5bGkpsf01VnUnpyl1cibxvJt14llgfgrhNWq1
         HujdJjzsL0mTMewiBjctMKL4LeBALNXJJJ7qMEiv40IwJANo3VbErwJdEuXF0vmNaJkj
         WCGA==
X-Forwarded-Encrypted: i=1; AJvYcCWHNPo6zAO+RgVIA96pXQzbMU8/9p/TVndv7EZzomE2en4Et7ZjHy/RYBDYBsOS/CB79uvsOqqu45og@vger.kernel.org
X-Gm-Message-State: AOJu0YxsHUuw3XVEdRN4/OH8R2G9Fzzm0snttv/Zrnbb4iGnxw24Ppdr
	gY7sWfsrGclzpgvUYr6FPEIeic75LdR7jnl4K2OOmMqyj9ZceZEKnL+tw+bcAio=
X-Gm-Gg: ASbGncvzT6klWYFJauKAjs9hwdQe6m52a0Db7UtjVOyc50j0ag9mzpUlBNf8anVIv7G
	lpz55CzwXnlaLQtwtaTmHtBCvO1bJhC4VGSsAFYZufNHuE8cFzfZEL4ZBRoVzq++WG8sUbIK0qn
	6J2OMAydIEGb9sLKLgtvIVIMq1wpqFQjAKazvkj4pHxkQM5GkrGnF0dxZ6eSnG9fbAFBpwRrs0z
	EdX/146mLIKgfV64GY/j0USV6HZXyW1NCzYTCsk4AYw79YyAR+FkHgOLsa/cI7w3KaI3xEYbQ05
	E73Ri7Iys+UqWMRXhIk24bQSytrWH+BsORhDkzq/wGjo0C7ax83KxtBcSuJ2xcNTGfqH5AMN/Qu
	LgfPonKc0EEGbfaDEeK8QfwAJbx5o
X-Google-Smtp-Source: AGHT+IGXSHw2bSB9WA8P9Abnr/+5jrvPGzvFtKJFd69HO6Pyrm2MursqlV+n9MiODBPVv86NHerUoA==
X-Received: by 2002:a05:6808:10f:b0:3f9:43dd:a054 with SMTP id 5614622812f47-401fd8159d1mr6756006b6e.34.1745941521257;
        Tue, 29 Apr 2025 08:45:21 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:dc17:157d:e8b2:3ad6? ([2600:8803:e7e4:1d00:dc17:157d:e8b2:3ad6])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60687013faesm276388eaf.39.2025.04.29.08.45.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 08:45:20 -0700 (PDT)
Message-ID: <1b0e9003-7322-46fa-b2ba-518a142616dc@baylibre.com>
Date: Tue, 29 Apr 2025 10:45:20 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] dt-bindings: iio: adc: Add adi,ad4052
To: Jorge Marques <gastmaier@gmail.com>
Cc: Jorge Marques <jorge.marques@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20250422-iio-driver-ad4052-v2-0-638af47e9eb3@analog.com>
 <20250422-iio-driver-ad4052-v2-3-638af47e9eb3@analog.com>
 <88a326e7-3910-4e02-b4ba-7afe06402871@baylibre.com>
 <hvexchm2ozsto5s2o6n5j2z3odrkbcamgmg67umd4aehwzmgie@dvtx6anioasq>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <hvexchm2ozsto5s2o6n5j2z3odrkbcamgmg67umd4aehwzmgie@dvtx6anioasq>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/29/25 8:48 AM, Jorge Marques wrote:
> Hi David, 
> 
> I didn't went through your's and Jonathan's ad4052.c review yet,
> but for the trigger-source-cells I need to dig deeper and make
> considerable changes to the driver, as well as hardware tests.
> My idea was to have a less customizable driver, but I get that it is
> more interesting to make it user-definable.

We don't need to make the driver support all possibilities, but the devicetree
needs to be as complete as possible since it can't be as easily changed in the
future.

...

>>
>> Assuming the diagram at [1] is correct, for SPI offload use, we are missing:
>>
>>   #trigger-source-cells:
>>     const: 2
>>     description: |
>>       Output pins used as trigger source.
>>
>>       Cell 0 defines which pin:
>>       * 0 = GP0
>>       * 1 = GP1
>>
>>       Cell 1 defines the event:
>>       * 0 = Data ready
>>       * 1 = Min threshold
>>       * 2 = Max threshold
>>       * 3 = Either threshold
>>       * 4 = Device ready
>>       * 5 = Device enable
>>       * 6 = Chop control
>>
>> Bonus points for adding a header with macros for the arbitrary event values.
> 
> In the sense of describing the device and not what the driver does, I
> believe the proper mapping would be:
> 
>   Cell 1 defines the event:
>   * 0 = Disabled
>   * 1 = Data ready
>   * 2 = Min threshold
>   * 3 = Max threshold
>   * 4 = Either threshold
>   * 5 = CHOP control
>   * 6 = Device enable
>   * 7 = Device ready (only GP1)
> 
> I will investigate further this.
> 
>>

0 = Disabled doesn't make sense to me. One would just not wire up a
trigger-source in that case.

