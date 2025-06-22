Return-Path: <devicetree+bounces-188155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A07D5AE2F61
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 12:28:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 318381893E55
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 10:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DD061D5141;
	Sun, 22 Jun 2025 10:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mTqIhPWD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8182157E6B
	for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 10:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750588089; cv=none; b=BINyTe2smn7f2Dkn5c4Mt18cXt4IQ6mWsP6LyU6JXPxoxQEniLg4oiUjMkW6WIi+3RJpw6UnSI+2welGN3gk9sfBbe8/EmtNF2dkPxl86Nal9lKzB5+apZHgLoyBQcTJyeGgyCLB1L8EUd/N5obJ4++DCjbNBGuPeHHhilrns+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750588089; c=relaxed/simple;
	bh=XHnY/XLYnsb/01LU3Hv34FFiB88j8ZZgI1yo9h2KkiM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lKmkiuMGpUVABhtDfvPJy8Kx8p7fS7+5f5cBVfUJ5eJgPq+T4SUqf61+YNFJNJg4+z96LoVKmVZfiiRybOQrs4GqmOjzVOwB+CgESP5qQIzzqPQcoKI5ApIwE2ANWjmvp6vi1bAQBtfOf9nre04zjTG2NJdquqggXuMUpmyATtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mTqIhPWD; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-453079c1e2eso3793705e9.3
        for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 03:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750588084; x=1751192884; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=q6EYLYLFpyiYDHg8AKXScLdaa7AF+5W/s+IRWYHsl/k=;
        b=mTqIhPWDh4if58f/HlvgeNXazmEdAEowvL7Zo3IZWJCXK+i3d8YweRgV468xfZyIuk
         G5YzkRj6hP9i7T7LLgNol4sOPV1hgWcmRkuheWYa5r3l5vuvy8oVJtDKe8hC+5SBm1l2
         mivEL7O7Qttqd850wUdJjaNNMqRvSRO/mYAyCrUL88B/XJmFh6BZqiiDB6rsXjPqCytC
         sZO6BI/TeSxgs5RiHp+E9GUmujP7lAZekYC2shV/KFfbeYC2G5AE7ZzqEY8jAKMMa+cA
         amldEZuGtJMzvo/ZFuqKYJ1ysRofLGQO5SLie5x8bRgV4WAE+hpC1oLUTN9JSpWtu6wV
         zX7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750588084; x=1751192884;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q6EYLYLFpyiYDHg8AKXScLdaa7AF+5W/s+IRWYHsl/k=;
        b=U9+lZ8uhk1N+KIX3X2+oysVXXTmFljEwCW91lNAybN6jzjU4uAe6z+2543/0WIA8pW
         iY4Nzhe8FmTPid8C/QwdGX8TgIL/FbtYFqIU7MOwayH40g8e2dkHD1nLyg+TLI57Gpf+
         FSgOn5DXy9jWur797lOHb2w4JEFGCjJ3alJmejAwo9vPEs5xp2ZhPWrH7zTqsLt1AKGA
         JHXpkPL85Oe4MR7sngcglpLDTLFANPjnrgaUwze1vmMYDbth45JjNeb5nMxcNYWYdfO+
         10UHGYX3HNoPZO6wMjLGEnHQVkWQQaiQILx5TERGJbKvpI3WxjHctjbLpR+4IA5NYe52
         G9hA==
X-Forwarded-Encrypted: i=1; AJvYcCWEphkz1EO3dnsT0/RLYUwP6xpa05PCHOYRc6sus6lQzJNoQafG0XawERFjFjVat+osqb91C26fw/Gh@vger.kernel.org
X-Gm-Message-State: AOJu0YwilcnpB6Rl5FtHc3s+nGu9+DbVX8GitDa+NKsnCs7wqJ/+CjSj
	mBQqg9ooeA1kMqwbhwAU4MFn1m4CPMd26Gvi1dA02KVH/EcpQvAP+ZbMJVZWToHItK0=
X-Gm-Gg: ASbGncuWEh2fCShCUJIL3hShVndFdplRxh8MrLWxsT8+Huyak+dcWVw7d1lo1UN86IT
	Px/Il3B0tdnCUabKCJo317ZqgzP6PYzEnDwJDQLSA4FLE1Gqs8uG/ylDtUas0H1upr7RkSH0Wf0
	3AOoYhE1nyUFVs5sLm893mZ/Ib/Y/cA5VBZ/RWtrIwZpww6H/jVrb/ZUV+oFmZLswmV6cznxuRK
	o6EAHt1ZceiWkCQ9X1VMGZ2DIQ6YS70OhWQ2bb5zpmeMfHlRuuMmep4kIWRlwFZlegmS1BNJx/4
	ucNbMDuhRSOIdzUunMivUIbcxv/iF+amTQNDZqBdWsAfd9v9EwCNCV42YxBAlwMepQf9F/Xy0LV
	CljaYZm8=
X-Google-Smtp-Source: AGHT+IGExnyr33PA01GZxb+bF5kgM29BezDYfAl+iMhypV/l7Sou3GfjrHoyyQam3QcDSe2CP4RzQw==
X-Received: by 2002:adf:9ccb:0:b0:3a5:2554:71ff with SMTP id ffacd0b85a97d-3a6d1319e1emr2002220f8f.13.1750588084189;
        Sun, 22 Jun 2025 03:28:04 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453647084a5sm76513045e9.38.2025.06.22.03.28.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jun 2025 03:28:03 -0700 (PDT)
Message-ID: <af90121a-37e3-488f-aa28-fac0d1c69c09@linaro.org>
Date: Sun, 22 Jun 2025 12:28:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 1/2] media: dt-bindings: nxp,imx8-jpeg: Add
 compatible strings for IMX95 JPEG
To: Nicolas Dufresne <nicolas@ndufresne.ca>, Shawn Guo <shawnguo2@yeah.net>
Cc: Frank Li <Frank.Li@nxp.com>, mirela.rabulea@nxp.com, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, imx@lists.linux.dev, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, ming.qian@nxp.com
References: <20250521-95_jpeg-v1-0-392de5d29672@nxp.com>
 <20250521173444.310641-1-Frank.Li@nxp.com>
 <eef5ccd99d82dd33e3a4ecdb5d4a5b75ccb0b972.camel@ndufresne.ca>
 <aFORokzx/sImgDtA@dragon>
 <d46d73f84e78daf152962ffb5cce7dd3ae0920d1.camel@ndufresne.ca>
 <6898ce74-808d-4976-b04e-31737396a86c@linaro.org>
 <82d38c0dc93255da3195a919dc650ef8fc07e7f2.camel@ndufresne.ca>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <82d38c0dc93255da3195a919dc650ef8fc07e7f2.camel@ndufresne.ca>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 20/06/2025 17:06, Nicolas Dufresne wrote:
> Le vendredi 20 juin 2025 à 07:54 +0200, Krzysztof Kozlowski a écrit :
>> On 19/06/2025 19:16, Nicolas Dufresne wrote:
>>> Le jeudi 19 juin 2025 à 12:27 +0800, Shawn Guo a écrit :
>>>> On Fri, May 23, 2025 at 07:22:04PM -0400, Nicolas Dufresne wrote:
>>>>> Hi,
>>>>>
>>>>> Le mercredi 21 mai 2025 à 13:34 -0400, Frank Li a écrit :
>>>>>> Add compatible strings "nxp,imx95-jpgdec" and "nxp,imx95-jpgenc", which
>>>>>> are backward compatible with "nxp,imx8qxp-jpgdec" and
>>>>>> "nxp,imx8qxp-jpegenc". i.MX95 just need one power domain which combine
>>>>>> wrap and all slots together. Reduce minItems of power-domains to 1 for
>>>>>> i.MX95 and keep the same restriction for others.
>>>>>>
>>>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>>> Signed-off-by: Frank Li <Frank.Li@nxp.com>
>>>>>
>>>>> Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
>>>>>
>>>>> Krzysztof, will you take this one once the DTS part is ready ?
>>>>
>>>> dt-bindings is the prerequisite of DTS.  DTS patch looks good to me
>>>> and I'm waiting for dt-bindings part to be applied first.
>>>
>>> I was waiting for sign of life on the DTS part, we usually get some ack,
>>> which is good sign we can take the bindings.
>>
>> Such process never happens. DT bindings are the prerequisite here and
>> platform maintainers wait for bindings to be accepted before taking DTS
>> or even sometimes reviewing DTS. Why even bother to review DTS if it
>> follows entirely incorrect binding?
> 
> You are the one requesting DTS with DT bindings for review purpose. You've
> done so regularly this year.

Yes, I asked for DTS for before/while reviewing very questionable
bindings and drivers. Was this reviewed already? Yes, it was. Therefore
after my review, how is this relevant?

Best regards,
Krzysztof

