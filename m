Return-Path: <devicetree+bounces-43233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 288918599A3
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 22:57:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0143281666
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 21:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57F9574297;
	Sun, 18 Feb 2024 21:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0fGCbgr6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281C773176
	for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 21:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708293434; cv=none; b=AcZHwMJST6JfKTPuNm9VKsRLpzSCnt8RrdbnwzghUI7OZVDyIONjthlUqw/4hnwNgJTazoKyvbbqtABexRyme46XfYwaZPm0PYgu0+8oTajem6zALSz0et9GU3Yf353do0iA0zGmKzFYnmMNLqujYXkKJBZXHXQGrvP2l8jOvl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708293434; c=relaxed/simple;
	bh=qFFnYcQKuHjjtVyuFyTWh18ZDZIzroX9DFS+VvYuBbE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XAmvEkxTqn5tCyaB4qsVAxguC8H/fZ7Jxm1KfYNQobAow9EQQLWqqt+l6KgQaQt1srCRGP0I8ldTKOc4LmYZg3ROlKRgrHUzI+qt33YHT4by0vqvWnsSfTXtR9luEzPOXxxf6WWUQz43dUMHm7KE5vur4FUf3BPhUe3OZLkUheM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0fGCbgr6; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3c0485fc8b8so3214679b6e.3
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 13:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708293431; x=1708898231; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7EJCFpj5Mq/l10cEhu/JuTwYp/22JDItkGAyCOUOiCA=;
        b=0fGCbgr6Hqu5b8i8aNauvc1zxXHTe6mQbcpLxzSzMHh7++tLtlnSlGqUuwv7uwaS6f
         l5hXUuZ7UfhVWF3t9AtbIl6gHEn8JY2kUqgZn5TNq9XZ7bi1d+bW4s2rFFdXBcqXxvCU
         SxTvHRry8EaGjjBuKGkMtHa6Dj221+0+qgSqD4d/FVxWUfL7GURC+80KtBDQlt4kdVuf
         1D3rBGB1LMAEoJg4zeQTJQJ41rGW3JGQZ7L0pNDUojguTL3iax/zfMINSmYmGbxMvVia
         O+U3HzJf1EwdJRXJ0O3ncgNMHtNeA517eqgs45xVdY62Ev3F2q0bObo6N2VBGagIP4Hw
         x+RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708293431; x=1708898231;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7EJCFpj5Mq/l10cEhu/JuTwYp/22JDItkGAyCOUOiCA=;
        b=VShLnpmU9qNuPvzNj8XTc30b2t4JylT9UVX+WxHbWjE0vFgalIEC8ZVRmnMy8oAX1k
         1A5v/PTexRfeypkzmXOgyPk1UJR8wxPRT2ZZp2Ub1vqgt0lSToM42uY9ejmivGRvOWAd
         Kpzoezu31G075v9IUTDgRrOagspJSsrfSYV75g1Agi+cLl21ftefzLtRf7whIvOXku/w
         iLCIZD8qcERxfm9DqMhzbsg+nUYR8xLB/8VXmq6vlz7Kms92yKz1gHhOJwelODIA8r9X
         Eswd9tm7d6BbQUgHhXrQDe0DQljn8znK/zRyhzFL+dfxX5Aj+ztuCHQHWQf2U5a+aVSp
         SPpA==
X-Forwarded-Encrypted: i=1; AJvYcCV3iQflw1GHzvjr4LD1/f7n/6JrOz+AsYsXExssJqR6/TjcEzgqA9Wu5jDoRvvyDUpS7Xv4yutojTPxWQPG4P/JkF552PXfR1sQ9A==
X-Gm-Message-State: AOJu0Yy6cZ1sdOzPv7yDze2zYvJSwjLX16ydPJ3+Xj4QdiooO597ZYWL
	fh/L6GLnLdHyKnHY440KyHaDbgNABr7CTqriM+gc57WQfBgUQMQ+HPleZHTK79E=
X-Google-Smtp-Source: AGHT+IGHAd+EyyInpg/WIK5cXqp7bRUhKcmUIeqJqAnPgoTw25mUzovlZAYpWU5B3BmWer+kFxWViw==
X-Received: by 2002:a05:6808:228e:b0:3c0:32c6:4e88 with SMTP id bo14-20020a056808228e00b003c032c64e88mr13167868oib.9.1708293431093;
        Sun, 18 Feb 2024 13:57:11 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id a22-20020aca1a16000000b003bff3512781sm657610oia.50.2024.02.18.13.57.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Feb 2024 13:57:10 -0800 (PST)
Message-ID: <10b08086-ddfe-449c-97a3-22875d00025f@baylibre.com>
Date: Sun, 18 Feb 2024 15:57:09 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] iio: adc: ad7380: new driver for AD7380 ADCs
Content-Language: en-US
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 linux-kernel@vger.kernel.org, Stefan Popa <stefan.popa@analog.com>,
 devicetree@vger.kernel.org, Julien Stephan <jstephan@baylibre.com>
References: <20240110-ad7380-mainline-v4-0-93a1d96b50fa@baylibre.com>
 <20240110-ad7380-mainline-v4-2-93a1d96b50fa@baylibre.com>
 <CAMknhBGg0hHXrd3K92tgHHTnfbk7dLAMvtTSZff1P-C3=9nFaw@mail.gmail.com>
 <20240217162014.17033d64@jic23-huawei>
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240217162014.17033d64@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2/17/24 10:20 AM, Jonathan Cameron wrote:
> On Fri, 16 Feb 2024 14:34:01 -0600
> David Lechner <dlechner@baylibre.com> wrote:
> 
>> On Wed, Jan 10, 2024 at 2:29 PM David Lechner <dlechner@baylibre.com> wrote:
>>>
>>> This adds a new driver for the AD7380 family ADCs.
>>>
>>> The driver currently implements basic support for the AD7380, AD7381,
>>> AD7383, and AD7384 2-channel differential ADCs. Support for additional
>>> single-ended and 4-channel chips that use the same register map as well
>>> as additional features of the chip will be added in future patches.
>>>  
>>
>> Hi Jonathan,
>>
>> We have some additional features to add to this driver we are working
>> on that look like they might affect userspace. Can we hold off on
>> sending this one to Greg for 6.9? That way we will have more time to
>> sort that out without having to worry about breaking userspace.
> 
> Ok. Hopefully rebasing my tree won't cause others too many downstream
> problems. Generally I only do this if there is an invalid tag or similar
> that must be fixed.  There is normally a window of a weekish
> between me picking it up and pushing out for linux-next to pick up and
> hopefully issues like this get spotted in that window.
> Ah well, sometimes things don't work out how we would like them to.
> 
> Dropped the 3 patches (original driver and a fix) from the togreg branch.
> 

Thanks. I will keep the the one week window in mind if we have similar cases in the future.


