Return-Path: <devicetree+bounces-236175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7989BC40D60
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 17:19:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00F6A188A490
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 16:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7732226E6E5;
	Fri,  7 Nov 2025 16:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DVgU43yO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BB3264634
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 16:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762532326; cv=none; b=GbS4iKphySmgNr5YLnw/ONY6UxvqnO8rlrt/30GDLkAEIwH3f5RQnTZJqxZo1D81vYUXXyHGdzhMznGi2aOV+2sLrxWPX7HwZ34KDpe66BPYfTHJPUwBlR9nsW2MlNg/6XkcBh58oKQ20PjCvY57j+EQSnHyuCkVcfGr5M0qkXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762532326; c=relaxed/simple;
	bh=MFFadW4AJeEGGVRTkSO2f2472oOyet6bJ32MOkismQA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y+qzkw6Aw1GomPNASQXjjGdyv6qFbSB+RUyd5I+2WHXmDxA0fPDSMyOHQF/hUc2Alo6EV8RbNz60ioQp5pVjpILVQI1ygMCt7p9Bi576ZWw0feVoM0Qsypg74SRg9U1S4o4yQgn1wwgbxUoUf5RxLrvTs0SwnyCD6Mim0vYoX84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DVgU43yO; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-65677b3aa4bso367611eaf.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 08:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762532323; x=1763137123; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pKxzSH4u8vYUIO96ehvgaJl4xECRM9a2L3UtEyYYLt0=;
        b=DVgU43yOEFrCihnj8pHxL1vfuce44aeZPsvS+cyySmIejZhiQvljERQgeblGp9IEoI
         VIxdCMpxE3Yp5kTx0WdrzCCurkLI86X+4fpNbXO2VvrvBDidTlkgtyCtfbKGm/yWysIA
         FQz9hCFzDkM1dhvdrhCC/wdmNmdSTk3vR7h+zIj74znkmuvc5IcJM1xczehVIW/F8tbn
         VqxMg8VRNPGisLyJeaA6oXg3bNGi8xCITQLQPXdyOP5GiP1pDQBs5jZo89MMrzkJ8oBG
         V57DM3L74T27D7JhDOjQLFeV/+ukhFaSYsObrB2f1DnfQGjUXi5zdyRpPKY1M9MpZKNk
         HH9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762532323; x=1763137123;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pKxzSH4u8vYUIO96ehvgaJl4xECRM9a2L3UtEyYYLt0=;
        b=ttvtZXyaB1PAfsc/7paSmLsqrT9S88e7ZOD+iQfBwNiUYxpVyOpKrjBsr6aZbXESL9
         gxx+PxOT63c2MlpRc7AzU5RO6IEMnf78EQ5sWFTVnSyH/047wn+Ve2OFKsvV7ebSioS0
         +2u1DLfH/ywExdo58PxodjNzxbDf7AxEg8IXeWgceTnVuHTTYBRuEAeJ9dBY88IhYeHI
         WRJRMovJok1H9C1H3R9Ilw5JYGuYq9myosXDP2KK+ZHHAQGzwqdLrsphcWjayKofUepS
         zgIjGbCWJM5ikNpbPBuYoac2iFF4ezsbqNII3XUG2VdTR9SaCpRLLfMay4Vd9UcLeRNS
         67bg==
X-Forwarded-Encrypted: i=1; AJvYcCXjB9QJP5hAyVU4tVC2nQMoPte+yekD8vtD66Qk4VlzzpIIwrUM3CSh4FugpE9HjdV2ys5lUP1vY+be@vger.kernel.org
X-Gm-Message-State: AOJu0Ywvcw5WHOgq+hthacSHbGMc2dAXepzCnQ7bDpfdpINp/Xtt6h+4
	6IWjAdYGrSPnpwhQhr0RrISWJ6o0Zs3FLMZxR9GiTD9KnIqw0teAkZduOjy8WsdvAoE=
X-Gm-Gg: ASbGncv6nA7hvjIaf/IEkbpFXRkSqRndEqvkr7cPpnYKwI2fw+ka2Qe206DXr9d2L0V
	xHK6pYNl7qVtEMTJ/TinmYDks0+VnZQHARIHRmYHaWOoECEP51O6qf7CVDnXJteLb5dLwPghymQ
	uI2dRE1feKcGyqQ7O8vvOIOQE79cTuGvUcdQl9O/QbmrgOKxlgpgcjZKslqWh06unfZIdQ5ViWa
	6z88P99Y15Vs7YI+vtnawhltr0B3VSIg8VGJUign1BsyKGyIll1J2weLcW9Yy4SFDis5jiCIOxN
	Y4qLjyuJ98bddxll3AKFYpwKVfP9rvXLkqXkZr5OGvYGUG0iV53pEeU3wxism2PBdiE+yTPaFXT
	b8GOPm5mryjLIncQAdSnj/sIr0ftHIJmGD/HsaoJPH9g4P7oA7QG5/+lfGORztvlMKPXbyd9KYs
	ncoT8Q5gHZsTANOrAgCWZUnzuaeu/qfYUpfKfl2nTj4b/2ExWt2Es+vcny9/QT
X-Google-Smtp-Source: AGHT+IE2+yDv7v36BhseMR5mBBfzrZuo9RFPzh74b5U7OD0iR5I9ldD4Wg4txKPbQueeWlJzRoQklQ==
X-Received: by 2002:a05:6808:2226:b0:450:d0c:50d9 with SMTP id 5614622812f47-45015ecf630mr1798144b6e.40.1762532322867;
        Fri, 07 Nov 2025 08:18:42 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:7bb8:950b:327d:4ba4? ([2600:8803:e7e4:500:7bb8:950b:327d:4ba4])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c57d63adsm2528160eaf.14.2025.11.07.08.18.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 08:18:42 -0800 (PST)
Message-ID: <de424e9d-95cd-4a42-8f1a-97ad04f5f9ef@baylibre.com>
Date: Fri, 7 Nov 2025 10:18:41 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 2/3] iio: adc: Add support for TI ADS1120
To: Ajith Anandhan <ajithanandhan0406@gmail.com>, linux-iio@vger.kernel.org
Cc: jic23@kernel.org, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251030163411.236672-1-ajithanandhan0406@gmail.com>
 <20251030163411.236672-3-ajithanandhan0406@gmail.com>
 <fd432bbf-f6c8-441a-882f-f8e52aaca0e9@baylibre.com>
 <a7532aa1-2acb-4064-b10c-b1f7022d589b@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <a7532aa1-2acb-4064-b10c-b1f7022d589b@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 11/7/25 9:50 AM, Ajith Anandhan wrote:
> On 10/31/25 2:43 AM, David Lechner wrote:
>> On 10/30/25 11:34 AM, Ajith Anandhan wrote:
>>> Add driver for the Texas Instruments ADS1120, a precision 16-bit
>>> analog-to-digital converter with an SPI interface.
>>>

One note about the review process. Any suggestions you agree with, you
don't need to reply to specifically. You can trim out those parts in
your reply. It saves time for those reading the replies.

>>> +struct ads1120_state {
>>> +    struct spi_device    *spi;
>>> +    struct mutex        lock;
>>> +    /*
>>> +     * Used to correctly align data.
>>> +     * Ensure natural alignment for potential future timestamp support.
>>> +     */
>>> +    u8 data[4] __aligned(IIO_DMA_MINALIGN);
>>> +
>>> +    u8 config[4];
>>> +    int current_channel;
>>> +    int gain;
>> Since inputs are multiplexed, we can make this gain a per-channel value, no?
> 
> Yes we can, However i want  to keep the initial version simple so would it be
> 
> fine to support per-channel gain configurationin upcoming patches?

Absolutely. I really appreciate splitting things up like that as it makes
it much easier to review.

> 
>>
>> It also sounds like that certain mux input have to have the PGA bypassed
>> which means they are limited to only 3 gain values. So these would have
>> a different scale_available attribute.
> 
>  Since, I'm gonna enable all the 15 channels. I believe we have to have all
> 
> gains(for differential channels). Correct me if i'm wrong.

Yes, that is how I understood the datasheet. Differential channels have all
gains. Single-ended channels and diagnostic channels only get the low gains
(1, 2, 4).


>>> +static int ads1120_write_reg(struct ads1120_state *st, u8 reg, u8 value)
>>> +{
>>> +    u8 buf[2];
>>> +
>>> +    if (reg > ADS1120_REG_CONFIG3)
>>> +        return -EINVAL;
>>> +
>>> +    buf[0] = ADS1120_CMD_WREG | (reg << 2);
>>> +    buf[1] = value;
>>> +
>>> +    return spi_write(st->spi, buf, 2);
>>> +}
>> Can we use the regmap framework instead of writing our own?
> 
> I’d like to keep the first version simple so i will add the regmap support in the
> 
> later patch since the single ended has less spi transaction to handle.

It would be less churn to implement the regmap right away. Typically
we try to avoid churn if we can help it. So this would be an exception
to the general suggestion that splitting things up is better.

