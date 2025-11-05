Return-Path: <devicetree+bounces-235245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E0EC361A8
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 15:40:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D154F56120C
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 14:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9E432E149;
	Wed,  5 Nov 2025 14:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nX2gNDxm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F40832D7F0
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 14:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762353449; cv=none; b=NFV/mhZz/n4YJKRBhvASLz+A3OoNaaoheUukOzp7vHD69NXRCDXvAQDdsQTsnBAcxheADd+lr3+HFw6/P28t7AOBjJZUgfXoXxJ38ZdZmyR3fu0u50rpWovFz8t8xmnjYvXPtj9J3ITjZW4jKGKVzWzWLI/1p5DUm1EiBRzs8C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762353449; c=relaxed/simple;
	bh=edQwmjnwDAbHXoEMvzYqiycGeKsl8E5DajV13S7XI7M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cm/gg32vVCjOFtij7918GMHvMQRC1u3RH5ckGzvEu6OROO+KqEAUoPo7nn0udtSxc6H+NE/dDh1WgwRexg1qOE3IpE7rmbSKD9iz9jwOJ57RvQQfegxjStQPyuvOBiyuO0D0oTYYQz6OIol+DAdCfRVo312TFWRXIVa9vmQTLRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nX2gNDxm; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-471b80b994bso85169255e9.3
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 06:37:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762353446; x=1762958246; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hKd/GpoH2ztdg5nSuoSnCvB2pN5mPOmTjSyftlWEb74=;
        b=nX2gNDxmYkXQAcjVQMPV8s6h3DVmWUswNVm++dZRNAhvcRGuKB41yiMaXHGVjxzbI+
         DEDmsM9Y6pBITa1s91TXwkUHVI6x7gHILAiAdMjDO9sS3+9ptEJf0bk6RKBH3csPAdIq
         fxmS62V+w8mSk9nDEvN1DV1g2qkDCCNA9FZ1ozNavDbFAjXW7o0rgtaCH+hCk2bT7Dgs
         3+aIvUWZ45JZ86P1lmRs0bWetFCsRuGo5bkDJl1En7wwpEx4yIzf8Q8nkGKXffBoGYCY
         Qi5k4hXibpaZSOUDvEGgfl22e+pQaavMNNKIQnCrA8g9SD/W0+9QZi0G1xDXBwp5d/sb
         TyYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762353446; x=1762958246;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hKd/GpoH2ztdg5nSuoSnCvB2pN5mPOmTjSyftlWEb74=;
        b=wk4DaXtNe5Fn+/DE/TivyH2XS8ShbER/Evq1jYJKi/TwZWaj9OkdklVIq8rTpGp/Rb
         XZPz1Nc3K7PhH6vtudMEt7hVLOfIPt5LcY08SMEkJeUTP9BJmKLDsxBHxQGvGGXpjNND
         0+Kn9SSS3yc6VdC/I8SiDdXv7uMv7qHtbEr9f3h5EjdjK8JPETb5OKb82RJD6gpqSl6c
         0uLkP26zrTOQ1UMUND4JtmAhbdOwj8PGHkeB+45Hd6lzV9uixrftJ9upITWnZYoD2gFk
         2YUf1qxmxoCjUz1rLB/K2+o47gOndS+2SC6UFv4znqjTNOP7XAkiyKiNeG5MvctvzGsX
         DFEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcEMs34xBu4SB8rUsP6BxA6s63yQXMCiatYXEg5wbkudlHGzzFy9Gd9UpAOvyEwyzoSqS8dZXWKYkW@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp5WYlcdynzTIPbcmPwIOI4pyCNqV5wmSAz5Gpzfi4GRs6SnGS
	aJUNaSIFWf6nlJ9HnA7aQ4ABE79GLnyll0vepK6F3fMD2aa9lgEuaMZC
X-Gm-Gg: ASbGncvULAE4WB5wrKX+8tS9N93+R9KIAOHN5/Yz9kS3piIQ0baJVb4ZtuV3hmTWEAE
	t1Xk08Fcd2XWqaOEdW20vfbmQN5bwG6XsV5ZwJALwZW61N2SEgkoz1rEbGn2qss48dgZO+dQXOQ
	2S8yvHNxzboV7gTdrZy4BH0k4FpDvpq6XNven5nGYD7RHOOwR89EOdM/aLs+hbwzHK9+Y80ynjw
	qvJ43KzJhfQEQahJ84umw7JNP7NXhza6pslj6PNhhWqNm5aqdVF/JQZGobvLPeBOzV4LaMhAbDg
	3+hAcbT5uRPjd6QhuCfATRgUewX1vzVjKbrJxBCJoCX7B4eQs7uovYtNPVvvTeTqchVL6+5zsGL
	/ZYTNtVHPE12Duulrx7ECq8UyC+/1PltIPlJc7FaPOKFd8FLr4uJ6OAOeZxPVlLgeYTXtO3v45w
	wRQ8AKjcV7MQ4WaVI9/DM3j0ORE4vaDpd8fb0VWi/5BdkVEJjvxFP0C84ecmZXffFVOB7j2IdFv
	h8=
X-Google-Smtp-Source: AGHT+IERQRPbVp/mia5i+e0J+ZNVV5LC5fqpuJ8bxJhknA+ckaj424HY5uFm671+QXbrmv37Ylw0ng==
X-Received: by 2002:a05:600c:4509:b0:477:55be:f615 with SMTP id 5b1f17b1804b1-4775cdad679mr25746975e9.5.1762353445550;
        Wed, 05 Nov 2025 06:37:25 -0800 (PST)
Received: from ?IPV6:2001:9e8:f106:5b01:5cbf:5078:e623:8643? ([2001:9e8:f106:5b01:5cbf:5078:e623:8643])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4775cdc2cfasm52394155e9.2.2025.11.05.06.37.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 06:37:25 -0800 (PST)
Message-ID: <f589ef1b-4347-4771-802f-992dd0928bc3@gmail.com>
Date: Wed, 5 Nov 2025 15:37:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] gpio: add gpio-line-mux driver
Content-Language: en-US
To: Peter Rosin <peda@axentia.se>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Richard <thomas.richard@bootlin.com>
References: <20251105103607.393353-1-jelonek.jonas@gmail.com>
 <20251105103607.393353-3-jelonek.jonas@gmail.com>
 <CAMRc=MdQLN5s+MpkLUF2Ggc4vYo30zOXrA=8qkGmXvu7N3JjeA@mail.gmail.com>
 <12efb5b2-058e-4a9c-a45d-4b1b0ee350e7@gmail.com>
 <CAMRc=MehBmd+-z5PRQ04UTWVFYzn7U4=32kyvDCf4ZQ4iTqXhw@mail.gmail.com>
 <74603667-c77a-e791-d692-34d0201e5968@axentia.se>
From: Jonas Jelonek <jelonek.jonas@gmail.com>
In-Reply-To: <74603667-c77a-e791-d692-34d0201e5968@axentia.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 05.11.25 15:19, Peter Rosin wrote:
> Hi!
>
> 2025-11-05 at 14:24, Bartosz Golaszewski wrote:
>> Yes, "muxed-gpio" is good. I can change it myself when applying.
>>
>> Bartosz
> Isn't that the name in the device tree?
>
> Is
>
> 	muxed-gpio-gpios = <&gpio0 2 GPIO_ACTIVE_HIGH>;

This would be quite odd and not what I had in mind when I suggested this.
But I probably didn't express myself good enough.

> really satisfactory? Can you really make that change as you apply
> w/o a re-review of the binding?
>
> Or, are we talking about
>
> 	glm->shared_gpio = devm_gpiod_get(dev, "muxed", GPIOD_ASIS);
>
> and
>
> 	muxed-gpios = <&gpio0 2 GPIO_ACTIVE_HIGH>;
>
> ?

I'd be fine with this, but as you mentioned, it needs a re-review of the bindings.
If it's just about the label being used upon GPIO request, I might switch to
devm_fwnode_gpiod_get_index to explicitly set a different label and keep
"shared" in the bindings and device tree property?

>
> Cheers,
> Peter

Best,
Jonas

