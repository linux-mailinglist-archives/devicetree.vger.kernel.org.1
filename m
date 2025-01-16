Return-Path: <devicetree+bounces-139049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 056C7A13C38
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:27:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B0D15188DE84
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:27:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A054F22ACE7;
	Thu, 16 Jan 2025 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MYDJSxVQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B716C22A81C
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 14:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737037653; cv=none; b=MKQ3xpQz8Qs6IbsUfkLaOGLtq1fh/hlzbI4dFqiWrn2OKcHrc+YSYxdoYf5h0d9vvcOHxb/CZ3etq6TmWfOarY7ClOdo3bp42aI0BSWd0P8pGGk7m8PI3Fl+/JayiMX3OJRIRTZM0VRSW8vG1OeMMkkAgy2eEFVFARcHN6VgFc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737037653; c=relaxed/simple;
	bh=Ah+/DUFQe5Xkcom383bPdqItllxAG6kACstQnzDkqDo=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=LL0rdPdm5kDL689C4i1D7xSoFhdlkZbin+cppFZAHH6ekjwClFPR59zpHtioEiSr4ALCCwYWz5ssOZGkZL3+SQaPoU7VRf4OFkp3tUNbeFOVlrL374jfa6QYMoNSE9j1nyG4E0zJ7TouzO99VkiQf9X5+9zho676CDJOgwg+0V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MYDJSxVQ; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4361f09be37so1257075e9.1
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 06:27:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737037650; x=1737642450; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WGGHQt362qFxLIPdjCsZ5vAbXoXVOt84VTc31ozsZVY=;
        b=MYDJSxVQGiGnV3kz0EUQLe0mvN1+DNIxm8Ow4b0KlhLKS4CymAT7KV6078keg3PZu3
         VbgeFZjcpBoCE59smKgZHjbWLNj+G2mKGUYYWtSXnnueU2N7KTBPoIJK6KW0pvvzicOq
         KZb+0DaTKzBbUM4CBuLsvss4rsV3nGsv93N2hWIFx9GaKwZwhyn5b80MIGwJ9XT5hRPd
         nqPLB7UGqctcdOKw2KrbkzsJJCIZLWczQ7G3oSPX0s72ZCxWRQwROpC9RaHKiJfNd7aL
         o51zGD0lKfHpDTqQS2ENLqf/dNKI9o1xwDSoKX+1pP+/sM5Qb0zNNDVd+POdZWvK6E8Z
         Dmbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737037650; x=1737642450;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WGGHQt362qFxLIPdjCsZ5vAbXoXVOt84VTc31ozsZVY=;
        b=dAPPykmAaO8kQhCaF127wD4osLEbKie1uASJV1h8dQPNq8TgfBcz+IQvNJSPZfnsNt
         NuawK2v7B6Y6xOzChr3jJbkR+2qy7PTLBlucECoqSFdQa+Ly0zxbC4yAxg0mrwXNEz7q
         i0pr9y6qI4DDK8hWX/dVDZTy8vqGeUnHohZsUs1o2cP6I8wRQ68fBX0mHvVg/h/n+yKh
         9L2qN84qi2FLfvddtKTXABfOcBIym2RbBLzufCTjF2VMiFeGojZHudg2O5DUa9n1FKJr
         AhNVGxNYcFCJQkolfc1/YAXJ7Pn+4vHfhRBOLEpMmY6Z3Vd++rSQtpK6L70o/zSlo9xP
         9hKg==
X-Forwarded-Encrypted: i=1; AJvYcCV7N6qGfY3dWTX5rNJaYj7/nx9w6a3xmUlXqFtj9HnAUV4AdKB7PKd9Ua8CcQ6vhnyIJjnyY9rgqJdL@vger.kernel.org
X-Gm-Message-State: AOJu0YwCHkJBz0+IDIp4+SvQtXqEq3o6yiEMRdZoKwmitQvQzextOfRx
	UWwSVYizlkhBGMnX5tuAyfYPtjZSlbKzppAphXQHwMT0w5vI6TDJ5cCbbzVdbzg=
X-Gm-Gg: ASbGnctNDqxuGF/WWKTkAd/+/70GVgZ57AxBdwqD9gD3bUFUMNzGR3xyu6xXaiRTn1w
	y0+oPnMBIi/aMN4M6Pzw2KJ8tdBLs44P2BSEC5gZTPZH1ZKOJUyPKSkYGd5+x6cfQnLVHeP/Iio
	KkkfWGSPcEV+Wm8VlKmDlJNDesPLhLa2J2syu038h1vNmvgICvEKe4ud/B4BrbMfSFznbUlFKFu
	OMi+12Ppu2jx+m7I4TggR6dVHCPq912E+Zi4LP5aZaDsiOfHgi9js9MWX6kmj4IHyFe6gtzxACd
X-Google-Smtp-Source: AGHT+IGI+9xN5JoVEowoewOfn71ULXmevSitFHnb9tteb6cVjNRGhpgrOwqSBnKP+yMsG2Bh+cLzQQ==
X-Received: by 2002:a05:600c:3554:b0:430:52ec:1e2a with SMTP id 5b1f17b1804b1-436e26ffdecmr131841165e9.7.1737037649894;
        Thu, 16 Jan 2025 06:27:29 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c0f03984sm64114495e9.0.2025.01.16.06.27.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2025 06:27:29 -0800 (PST)
Message-ID: <8129b52c-f41f-4149-a3e8-8b739db9b991@linaro.org>
Date: Thu, 16 Jan 2025 15:27:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: aspeed: Align GPIO hog name with bindings
To: Ninad Palsule <ninad@linux.ibm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
References: <20250116090009.87338-1-krzysztof.kozlowski@linaro.org>
 <cba3c5e0-624b-40a2-8b52-8d07604676a1@linux.ibm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <cba3c5e0-624b-40a2-8b52-8d07604676a1@linux.ibm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/01/2025 15:18, Ninad Palsule wrote:
> 
> On 1/16/25 03:00, Krzysztof Kozlowski wrote:
>> Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
>> to fix dtbs_check warnings like:
>>
>>    aspeed-bmc-lenovo-hr630.dtb: pin_gpio_b5: $nodename:0: 'pin_gpio_b5' does not match '^.+-hog(-[0-9]+)?$'
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>   .../dts/aspeed/aspeed-bmc-ampere-mtjade.dts   |  2 +-
>>   .../aspeed-bmc-arm-stardragon4800-rep2.dts    |  4 +-
>>   .../aspeed/aspeed-bmc-asrock-e3c246d4i.dts    |  2 +-
>>   .../dts/aspeed/aspeed-bmc-bytedance-g220a.dts |  4 +-
>>   .../dts/aspeed/aspeed-bmc-delta-ahe50dc.dts   |  2 +-
>>   .../dts/aspeed/aspeed-bmc-ibm-bonnell.dts     |  2 +-
>>   .../dts/aspeed/aspeed-bmc-ibm-everest.dts     |  2 +-
>>   .../dts/aspeed/aspeed-bmc-ibm-rainier.dts     |  4 +-
>>   .../dts/aspeed/aspeed-bmc-lenovo-hr630.dts    | 46 ++++++-------
>>   .../dts/aspeed/aspeed-bmc-lenovo-hr855xg2.dts | 68 +++++++++----------
>>   .../dts/aspeed/aspeed-bmc-opp-lanyang.dts     | 14 ++--
>>   .../boot/dts/aspeed/aspeed-bmc-opp-nicole.dts | 10 +--
>>   .../dts/aspeed/aspeed-bmc-opp-palmetto.dts    | 40 +++++------
>>   .../dts/aspeed/aspeed-bmc-opp-romulus.dts     |  6 +-
>>   .../boot/dts/aspeed/aspeed-bmc-opp-zaius.dts  |  8 +--
>>   15 files changed, 107 insertions(+), 107 deletions(-)

Please kindly trim the replies from unnecessary context. It makes it
much easier to find new content.

I was scrolling and scrolling and did not find any comment, but I
stopped in the middle, so if there is something to fix, please send
again with trimmed context.

Best regards,
Krzysztof

