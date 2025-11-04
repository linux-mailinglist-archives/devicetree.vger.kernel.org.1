Return-Path: <devicetree+bounces-234870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 222D3C31B4F
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 16:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B33F24FD2E5
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 14:58:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC043314D9;
	Tue,  4 Nov 2025 14:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pj3CBwWq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0BD330D3B
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 14:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762268239; cv=none; b=nrqgSp15jc1OqZnKXy4v+piljzGf3mupRaH3MTv79Tl0QwGhpsUH6LpDiA+mEqEW6yNdv3NYn2Zi5K6XufTd/rBb2GoITvCtTLTYNLW4MSIqk0/tsnXADx23yBa/Vxe2XUcduuCMIKuWoCRWEzvvULIIycD6D6tZB8C5/FhSmo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762268239; c=relaxed/simple;
	bh=YM94J44mVWcHhHobHQ4Mu8GD2TcuHc2SnC7RSVcg7t0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IuJAXFgf+ka7sjK9076KMK1ypvkOVh29qRl7kZACzhdyv68prqQCEpluDkWdYYu+VnBYbGIf/GT9zn8xyS2OPzNcs/uQONQ0iJoeIlawAgG6wfEY4V1k8sXadIvqx44Ko2ZOjh1cUo8GPSCSaqPdhNhn/0P168z7lxiQ1+NFDWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pj3CBwWq; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b7200568b13so221390966b.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 06:57:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762268236; x=1762873036; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oyKbMiTwK9ssL83pTrppNaRv02OKweXOu6raB/LyaoI=;
        b=Pj3CBwWqdXm9CV7IUdAk32FimDANuwWamQGEUMadzodQbMrAWxrL7llx+CC6635hWl
         KKmxhFK336jgKFrL/yAt7fB+sRSE6eMekV6HvoCNiO42bZgiG6cYM5YUJUe8LPcS/Ah6
         SN1ENZSsXAjS7UVz3d8gMA7oofoBIqGsz3eQINJDedvs9cpxGspiCc9RFEMO8CZrr9ls
         b/o895/vRwcv4MRnSmlpFUaeAKIqhsAOa7/Peu2ENztVnCqiqkwddjfQ7DvD6+Y/l35L
         59RQfVC+Qx9p85SL0eldIvIfR8qPw83blN0Ao3+wPSadbb/UsTbq9NSCJDhim+WKjyYq
         X0OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762268236; x=1762873036;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oyKbMiTwK9ssL83pTrppNaRv02OKweXOu6raB/LyaoI=;
        b=lMjlwftGLr+e2hmM6lBkDJx1a0Y9fNM8WOpA5dywk8Pq+bab9gaDjWChAjEaAKGLn3
         mwJGFtAQd97zYAxYeT4QkCyGLXTcUYoER1WRw0ZYekCxnGLSK4K8UNtapqjbMZo0dK56
         eNNAmX7s1tsicYaxpqn8Dysr/vurMw7GgjyCZs1iqjL4KSXdwpXJxlFAuZX9RWiJTG6o
         7jytP9zp3lxDGprtB7pSfS1SJFYobPI9/erDtQ4STjcdQ9UsnXZwWh1x85x0pA7ZQSxc
         mbO7JLjtrsiHNHSP0yphA0F3gtY/9ZsvYoJ2f1x0KJbNOLfRhXehC+sUQNfL3uyAJ3PK
         Lrzw==
X-Forwarded-Encrypted: i=1; AJvYcCW2bhrOySXTpKcKLL3HNsxk1LYkIb8VZMKfKsC/M1T6i/i2ZiW2UX1HAP2Xr6ZCmFQx+nLVRIgI3lJc@vger.kernel.org
X-Gm-Message-State: AOJu0YyTYNQZPhCYIvGjEqBN5V+Jzpp/nyemfZq0MEff16/sa7Dd4QOh
	nWYuYUjBjA46jecWpyR2LZYlwbG4wtthTJ7jpQ6AXvTu8wOyebBJAzvH
X-Gm-Gg: ASbGnctDo8RW+9tEniTbTn3M3cQ+J4R7XXcejDxVhbbshfW0XstDRylU5J8wxcL5HjS
	K9Y/GMJbyIoQQtunHPJBaQhfw7YmqLP5msgmN8rDEfgK6dx2k9/TgMgszu9EAyTHarP0GRnY+F+
	BCH1NfyFVBJhMd2f98WuChMY8EnrxRQKrCwPhjFsIxJV8Cy0nwNbe7JOpZviKWlx5BzZB4dLAwx
	qskOuV9faMEDvd0eONIKzkEC6iCNzxr1fo1dm6+XRwOInoYV3HgUWo4rGq7k6wDfU9HIfQNK/l+
	MmMHjUtl5ywEcZ0kBnlRro5DWuY2Y3QQp6vQmr9N0vj4Z69fWsFjFchA0zphbnW6wt7szHq+MQY
	qIRdLRb0YG4petpV6k7n2H1N59kEUWhyEqRJChBawJ/rbmBi+0tArtOPzuDRUz+RaKPRwABLn4/
	j1NLxbtke7wd/7g2pCsBaa10QoAQ7IjRL3CEWmLcR6Iq7icwKiLhO0WYLMHq5PEqvxVEm9trBbj
	6Y=
X-Google-Smtp-Source: AGHT+IF8nsL2Azg7aLrnmFrqf3kuPfRfWtRwF10OY8p++CIvPXZPVi67htZBs2fu0OkHWY7YqQjy0Q==
X-Received: by 2002:a17:907:9618:b0:b71:1164:6a8b with SMTP id a640c23a62f3a-b7111648675mr762408166b.7.1762268236193;
        Tue, 04 Nov 2025 06:57:16 -0800 (PST)
Received: from ?IPV6:2001:9e8:f13f:9101:4d8b:ecf0:8996:ebbe? ([2001:9e8:f13f:9101:4d8b:ecf0:8996:ebbe])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723d3a3f96sm229430866b.13.2025.11.04.06.57.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 06:57:15 -0800 (PST)
Message-ID: <59b5eac8-3380-4fb4-a13d-9e4b32b403c4@gmail.com>
Date: Tue, 4 Nov 2025 15:57:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] gpio: add gpio-line-mux driver
Content-Language: en-US
To: Thomas Richard <thomas.richard@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251026231754.2368904-1-jelonek.jonas@gmail.com>
 <20251026231754.2368904-3-jelonek.jonas@gmail.com>
 <50646b88-5746-4665-8085-09e394aa291f@bootlin.com>
From: Jonas Jelonek <jelonek.jonas@gmail.com>
In-Reply-To: <50646b88-5746-4665-8085-09e394aa291f@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Thomas,


On 28.10.25 10:45, Thomas Richard wrote:
> On 10/27/25 12:17 AM, Jonas Jelonek wrote:
>> +
>> +	struct mutex lock;
>> +
>> +	struct gpio_desc *shared_gpio;
>> +	/* dynamically sized, must be last */
>> +	unsigned int gpio_mux_states[];
>> +};
>> +
>> +DEFINE_GUARD(gpio_lmux, struct gpio_lmux *, mutex_lock(&_T->lock), mutex_unlock(&_T->lock))
>> +
>> +static int gpio_lmux_gpio_get(struct gpio_chip *gc, unsigned int offset)
>> +{
>> +	struct gpio_lmux *glm = (struct gpio_lmux *)gpiochip_get_data(gc);
>> +	int ret;
>> +
>> +	if (offset > gc->ngpio)
>> +		return -EINVAL;
>> +
>> +	guard(gpio_lmux)(glm);
>> +
>> +	ret = mux_control_select(glm->mux, glm->gpio_mux_states[offset]);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	ret = gpiod_get_raw_value_cansleep(glm->shared_gpio);
> Why ignoring ACTIVE_LOW status ?

I think this would be rather error-prone and doesn't make sense to me. The
consumer of this driver should decide about whether it uses ACTIVE_HIGH or
ACTIVE_LOW for each one of the virtual GPIOs separately. This should then be
applied as if this was a real GPIO. Following the ACTIVE_* that is given in
the 'shared-gpio' property then would interfere again.

> [...]
>

Thanks for all the suggested simplifications, I'll incorporate them.

> The advantage of the forwarder is that it handles if the shared GPIO is
> sleeping or not.
> But I think the forwarder shall have ngpio, not 1. You will have to add
> ngpio times the same GPIO desc. Also unsupported operations shall be unset.
> So I don't really know if it shall be used in this case.

I agree. As Peter mentioned, I need to use "can_sleep" anyway because of the mux.
So there's not really an argument left to use the forwarder.

> Best Regards,
>
> Thomas

Best regards,
Jonas

