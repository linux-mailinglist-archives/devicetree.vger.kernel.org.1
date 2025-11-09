Return-Path: <devicetree+bounces-236376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5528DC43A48
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 09:46:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7C1A3B1FC8
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 08:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EADD2253FC;
	Sun,  9 Nov 2025 08:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dG7ZNrc5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED54B13E41A
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 08:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762677966; cv=none; b=kVp2H6yUTuBB0CVoI3pIdmIb4l3mveVEdQeXCCzu34wPmxxBT7volfYt6cJ4CKkKYUl+oy7rQiKmbNhF8BPz3+P92f6+RF0Fr8kqT0MZuPZ4rMqQGbzobrvDTuY2VQFkJCFasRDt/3+L9uTUXJjS6lDHMTbUC65hOkg/GnZzg3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762677966; c=relaxed/simple;
	bh=54WQTc6lR8z81FA7ObDcQtg9c0u+LuwtW1fIgCF/2Ck=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M7xC4R+YzNKozUT1G+UxZ7XXk9O7VTegzZB9950yXDYhKvH3KdD5C4u2Oc8SbmcRj37EXvRmCZnf/QiHBeRRK5Zs4xY+k/ees96DX2YrGIJfg0ST6ekrd2IQSj6t/pB0QMHEHBVuDOHCxWE5Gu7UDuOddlx19jK0kHlDFoap09U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dG7ZNrc5; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2955623e6faso18098625ad.1
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 00:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762677964; x=1763282764; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o5T4uX1koGHDDgi89YiBEyrpTYE7hftNwgKTli6JfQw=;
        b=dG7ZNrc5JlyZsJYxDfh6vTwILgoFYwe+eCCigtN4BfBcNnt+8AZLiZDF8P2Jfi5t5v
         6JenJQBADTsYz4WqAwf9trVPrJkLit/iLXkOOrIdr90Nend3NG+tc3AGmutnXq6oTz1J
         DXd0OgXhjNQsklOMeEwCuePzkjg2c1MxW8T+HR/lw6VKSs+j8DQBOLuNW26k7K7MXDk6
         qfj3AY/oWratDMp/yQfUFHPKVEInXwHViJ1ztcH6//3DGrpH0jST5xg7vlE1tDUam4BP
         Y8MCkI2fdTgW5UyeGS4Eut45V3PvEn1i159X1wMZEAx8HT+QUuzKTerRvUHX6/kfPVxP
         ltOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762677964; x=1763282764;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o5T4uX1koGHDDgi89YiBEyrpTYE7hftNwgKTli6JfQw=;
        b=l01BV2Na/beWe8n+yUI9xpsGmPGERFwOtlwgG5nuAqc/TGoNfGJRVAqgKUcEgFJEUk
         8xCgDEJ4Y4tLSljCA3vtNKSgl7AoH5Mj791W0aJbby5Owrw2IO6nZtrKDRq3tJOkwSjc
         BA05p2ZqqcEUD88rSM+uvS3FWOamkYTwG1Apsf6MH9ZJ9UujNeq8aEQnR5xBqxhW3+T4
         /vJMiP8biskt0N3V50imNKt8FKg/cb9ZmHZdnqdKT9sCeWu+WmkWWTQIrWobl8/wEi4V
         Wz/d8ye7SdaPOhNpE4MW9+t7z6ZL9tTIngWQuTEE9VK23HQWzno6pxh1lIypIQ/+eckk
         Hm+g==
X-Forwarded-Encrypted: i=1; AJvYcCXue2OYaEWKUZWrm0isgubnbBEHTTKlGEYRLtjBG6Ig0WMoo8RdOoqE0saE95wL99fDJFaFmtSlBiNG@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg6o5rfN60m/0YPRw5Ou1RwTQwFZwK7WlPiffrJ5HVy6m/6mpj
	XAV73c3rfv5aZ4r/hGfNsZRqojOuDJzlJpYVvqSz2Ueu35yj5HuR0BAS
X-Gm-Gg: ASbGncsuvDM2IVZBs/o495lXyetqUUz3mGLJ0GsQ/r1vMr34n96wowOXmUGBnfVpvQX
	RHyN5rBqGM8WidjjyYHLhdEP0DZNm5ddebOhjUNnWhAiha05GuMQxL97LNVsycUJm6RHfdLfFQI
	Ybw2z+76XtXfnQaAywGDHeb8Zc85qNktTQdL84lw2EefZbyH36GCzqDbFrN0UOHltbhE3V3MaNq
	nevPUSNa6NWoVotjeT333goP81duJjoEXRpiY+b314TA1HktfhSoZ05D5UZ/XuR/VHeoozjRKWY
	uzwHojlcBEaaLMjz1mEKnIEDorLEKFcXV00Bo0MEg6OyOMJLsqe3uNFEybW1t3YAe75myiLd4vw
	wvFMnp8FFMzeqwAW0ruQgDBebwfI4VoXl551ix5XO/43/47f/p2G1Y4zBRt71rYbD0jM86gLSIY
	IdrycibyNXtaXVB3sLSEipM88trLsw/aUb0/qV5atpIgNaW1MLpSxpFSVEwkHqxZGDiIiNVRe5x
	+mZa13pFQqQ/IWd6V+m84QQDelVBcEjfhCaLF3RW/zjWLCOIHPR/r+0yGETsPyn2IMJBEE/IA==
X-Google-Smtp-Source: AGHT+IFueiKLss2jbu9z7chio2oOhPrap0SY0ZUYTS417JmnaSAbbgJIMLKb0fJ0kOcrnR3sMzx+DQ==
X-Received: by 2002:a17:902:f601:b0:295:3584:1bbd with SMTP id d9443c01a7336-297e56ca193mr62556205ad.41.1762677964110;
        Sun, 09 Nov 2025 00:46:04 -0800 (PST)
Received: from ?IPV6:2402:e280:21d3:2:239e:6867:ce87:9df7? ([2402:e280:21d3:2:239e:6867:ce87:9df7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-297e8d3f9easm39482385ad.106.2025.11.09.00.45.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Nov 2025 00:46:03 -0800 (PST)
Message-ID: <59ef14bb-0576-4660-8de1-be9cdd1a400d@gmail.com>
Date: Sun, 9 Nov 2025 14:15:57 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 2/3] iio: adc: Add support for TI ADS1120
To: David Lechner <dlechner@baylibre.com>, linux-iio@vger.kernel.org
Cc: jic23@kernel.org, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251030163411.236672-1-ajithanandhan0406@gmail.com>
 <20251030163411.236672-3-ajithanandhan0406@gmail.com>
 <fd432bbf-f6c8-441a-882f-f8e52aaca0e9@baylibre.com>
 <a7532aa1-2acb-4064-b10c-b1f7022d589b@gmail.com>
 <de424e9d-95cd-4a42-8f1a-97ad04f5f9ef@baylibre.com>
Content-Language: en-US
From: Ajith Anandhan <ajithanandhan0406@gmail.com>
In-Reply-To: <de424e9d-95cd-4a42-8f1a-97ad04f5f9ef@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/7/25 9:48 PM, David Lechner wrote:
> On 11/7/25 9:50 AM, Ajith Anandhan wrote:
>> On 10/31/25 2:43 AM, David Lechner wrote:
>>> On 10/30/25 11:34 AM, Ajith Anandhan wrote:
>>>> Add driver for the Texas Instruments ADS1120, a precision 16-bit
>>>> analog-to-digital converter with an SPI interface.
>>>>
> One note about the review process. Any suggestions you agree with, you
> don't need to reply to specifically. You can trim out those parts in
> your reply. It saves time for those reading the replies.
>
>>>> +struct ads1120_state {
>>>> +    struct spi_device    *spi;
>>>> +    struct mutex        lock;
>>>> +    /*
>>>> +     * Used to correctly align data.
>>>> +     * Ensure natural alignment for potential future timestamp support.
>>>> +     */
>>>> +    u8 data[4] __aligned(IIO_DMA_MINALIGN);
>>>> +
>>>> +    u8 config[4];
>>>> +    int current_channel;
>>>> +    int gain;
>>> Since inputs are multiplexed, we can make this gain a per-channel value, no?
>> Yes we can, However i want  to keep the initial version simple so would it be
>>
>> fine to support per-channel gain configurationin upcoming patches?
> Absolutely. I really appreciate splitting things up like that as it makes
> it much easier to review.
>
>>> It also sounds like that certain mux input have to have the PGA bypassed
>>> which means they are limited to only 3 gain values. So these would have
>>> a different scale_available attribute.
>>   Since, I'm gonna enable all the 15 channels. I believe we have to have all
>>
>> gains(for differential channels). Correct me if i'm wrong.
> Yes, that is how I understood the datasheet. Differential channels have all
> gains. Single-ended channels and diagnostic channels only get the low gains
> (1, 2, 4).
>
>
>>>> +static int ads1120_write_reg(struct ads1120_state *st, u8 reg, u8 value)
>>>> +{
>>>> +    u8 buf[2];
>>>> +
>>>> +    if (reg > ADS1120_REG_CONFIG3)
>>>> +        return -EINVAL;
>>>> +
>>>> +    buf[0] = ADS1120_CMD_WREG | (reg << 2);
>>>> +    buf[1] = value;
>>>> +
>>>> +    return spi_write(st->spi, buf, 2);
>>>> +}
>>> Can we use the regmap framework instead of writing our own?
>> I’d like to keep the first version simple so i will add the regmap support in the
>>
>> later patch since the single ended has less spi transaction to handle.
> It would be less churn to implement the regmap right away. Typically
> we try to avoid churn if we can help it. So this would be an exception
> to the general suggestion that splitting things up is better.


Got it, I’ll add regmap support and address all review comments in the v2
patch series.

BR,

Ajith.


