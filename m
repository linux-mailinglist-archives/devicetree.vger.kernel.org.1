Return-Path: <devicetree+bounces-240269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5775CC6F7E3
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:01:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6313E35DF0E
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:47:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5719B36402D;
	Wed, 19 Nov 2025 14:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QZmTleyI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACCC363C40
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763563451; cv=none; b=GjQH8BsPwAkq/1PfRtAIY8I2C9TRE4+sM7wkJwyXK6Swoyj12Esv1K/9ZYlHsqA3SUWCeu9mPducx7BUFtnMS2YM4gTjuSX2ly0v52dbPYQBrJOej8M28jblYMqMD19McGl9vhPTL3FVIY+0w1F+AJRkbU3Ua7hpfZtLg8q24wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763563451; c=relaxed/simple;
	bh=Xyem1T4TjWDXBAbPB2bVcsf7G/MOcjGjlN9bKzecXrY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H4IFBSir5D8AsNEcgoBv7q84/ZxzK02lNeR/PGqa50qXSUr/d8OghdGzrcqKWec1D1T7ovhyG1jKtfeZ4IBq7SNLuWPNhza6GzCf7e7jTYxIeY9a4goyUGDc2HEWL477JcaFt9eFn+y+McW+nizSGNzqlawGxfM5YKvIXxMcvsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QZmTleyI; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so45946715e9.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 06:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763563445; x=1764168245; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ngp1SC4MNCi9zjMSYXmnmBUUdQBlYP0J8WPlUtZvAg8=;
        b=QZmTleyI2Fdy33u6o9rTHiq4aOWqTkyRBBdwwPAoWyEhheIcL1KRQe4iDAKpC8WENY
         ZhwV4mEkSmzJlnGkjY0XIB9u1S7WN277bFn7/rXAoh+62LozqBHwIiNWIfHFsMlt76Sq
         DyaVE7hio+RSz+Zyi4xsmRrK5CkBuZwxqJLSsQIoeo73CQ7rw839QwmyonqguBUA0wQg
         ANtTgNLBo8wdbObDtlkQxsg6j4WJOePO3Hm7T+bHT8rk0ZBVjQJoM2I8IVVTpd5jc9OQ
         xgICztsCc1oZyJ8OXE7EU3phnGChVi+ggsfJMgDLESdvpRCxS/eeptENkP4YWxlo55TJ
         yTlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763563445; x=1764168245;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ngp1SC4MNCi9zjMSYXmnmBUUdQBlYP0J8WPlUtZvAg8=;
        b=uLhD8KzFPLmVLNcb+oRb8pRg3iJZSGfXxQya9cf/zJN++am3OOwResoKrQE4NgTF8T
         LQNLneAZoQanqZ4g2Ymn/ri6Ztdw491Wd5jPeNy/W2+TqudnF6Tyo+l6yxPkjSBVPJyo
         Mq4Jw7/jRRGuHBXxFxjUBxsLVZDq2X6aTRfu0P2I9bLV1dQgeaVimYuKSiTyuMcQNmfZ
         8dCSzK8F3hvdXROYd4EOAiCEcHziw+tZ/+ypuozXUCG8r5gSQq3WSQmEkOBsJfIqZeb9
         KTn5EdDsKuQ0IHYX8FRDYvqsIq+85SlC8KvRkIf3f1wNeml2X6JKH22gRSR+4KyJHQW8
         LfTA==
X-Forwarded-Encrypted: i=1; AJvYcCXjz3Nm194R+KIzutJuXcK4a84vncO3JEIZh+feNz3c5kBtpefh7ymJsAvLSDYrIBwh0jzmZs/kuQET@vger.kernel.org
X-Gm-Message-State: AOJu0YyvWBXaxeUlKDVvIKGxHwDTlNS671D9JmYgOiLXwX1tzY4J4yWR
	0Px+wT9wjbIKHAQxNsJe6otvBLOoJwGNyIWwygRZ2lkb5cyClv+a4Yd3ScnChJ2o4bQ=
X-Gm-Gg: ASbGncvuS1HYXWSsJ+ndNuHYDLj1zuPXwGXnHQDTXvJ0Y4KWbPMLDgQMBx/PdxGaBrr
	p7x18/qQsxscUqggKl7Dji/UqLytPXdj8CBk4dSY5VV1pl4cFF1feqfmvyiHFklvkDphv4iKzEP
	l5Xfaa2AS/HSG8/7AKGyOMuU1hIogOgocYQ0d9RZThQmfVRGpAdUy/ROmJUcTBgJiaFBrhbq4Ay
	w8AQjd1n0dv/cCuBz8YgslMQzYIJU2CkshpmuLlrj/rldDIGm+XAz7aFQeXGWNVmubakPu5NaHp
	43rA/hgqMZ6tjMxQS4ok/SWpKZ6kF+31EDOtf48i9B5ZaznEICzewuZNX2DJglk2jFqzxIYmaQq
	8yOrbq95onQ1Y/vxPCsmDK/SgzEgz6ZZX2oIiGhTNdx8RzxjAY8yh5VXeJSFTnJMsG2AiLiLpWl
	LbqPoStC8GnoI59T93lxvp6cFyiUID18SkS4RJu3xwXSgORTeXx5xrpNojWI7ZDunaeA==
X-Google-Smtp-Source: AGHT+IE5vmKNsD7QZkjolnBUwUjbuodqqG/JGzfTWUDx3VC09KvuyQis/7fD2WgXAV/CXB4n72a8XA==
X-Received: by 2002:a5d:64c3:0:b0:42b:36f4:cd23 with SMTP id ffacd0b85a97d-42cb1f3878bmr2925850f8f.19.1763563445382;
        Wed, 19 Nov 2025 06:44:05 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:37e6:ed62:3c8b:2621? ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42b53e7ae47sm37011553f8f.4.2025.11.19.06.44.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 06:44:04 -0800 (PST)
Message-ID: <ac85d16d-7d9d-41eb-9b1c-08df9a61f672@linaro.org>
Date: Wed, 19 Nov 2025 15:44:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] iio: adc: Add the NXP SAR ADC support for the
 s32g2/3 platforms
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 linux-iio@vger.kernel.org, s32@nxp.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, chester62515@gmail.com, mbrugger@suse.com,
 ghennadi.procopciuc@oss.nxp.com, vkoul@kernel.org
References: <20251118203305.3834987-1-daniel.lezcano@linaro.org>
 <20251118203305.3834987-3-daniel.lezcano@linaro.org>
 <CAHp75Ve=CU8ecXk5sgkHPJbYA_K+sa+Lyys+cdpCm=QHOw2ytg@mail.gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CAHp75Ve=CU8ecXk5sgkHPJbYA_K+sa+Lyys+cdpCm=QHOw2ytg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Andy,

thanks for the review

On 11/19/25 10:27, Andy Shevchenko wrote:
> On Tue, Nov 18, 2025 at 10:34 PM Daniel Lezcano
> <daniel.lezcano@linaro.org> wrote:

[ ... ]

>> As the IIO is implementing the cyclic DMA support API, it is not worth
>> to do more spins to the current routine as it will go away when the
>> new API will be available.
> 
> ...
> 
>> +#define NXP_SAR_ADC_EOC_CH(c)          BIT((c) % 32)
> 
> Do you expect "c" to be bigger than 31? In which circumstances?

No, it should be always lesser than 32. We can drop the modulo.

[ ... ]

>> +       /*
>> +        * Ensure there are at least three cycles between the
>> +        * configuration of NCMR and the setting of NSTART.
>> +        */
>> +       if (enable)
>> +               ndelay(div64_u64(NSEC_PER_SEC, clk_get_rate(info->clk) * 3));
> 
> I'm wondering how low the clock rate can be? With low enough clock
> rates this becomes a 100% CPU busyloop and in atomic context (is this
> the case?) without even the possibility to schedule.

I believe this question was already addressed in v1:

https://lore.kernel.org/all/a34efc36-0100-4a7f-b131-566413ab88ae@linaro.org/

right ?

[ ... ]

>> +static int nxp_sar_adc_read_data(struct nxp_sar_adc *info, unsigned int chan)
>> +{
>> +       u32 ceocfr, cdr;
>> +
>> +       ceocfr = readl(NXP_SAR_ADC_CEOCFR0(info->regs));
> 
>> +       /* FIELD_GET() can not be used here because EOC_CH is not constant */
>> +       if (!(NXP_SAR_ADC_EOC_CH(chan) & ceocfr))
>> +               return -EIO;
> 
> [nxp_sar_adc_]field_get() may be defined and used. There is a series
> pending to bring field_get() to bitfield.h next release.

TBH I don't have an infinite bandwidth to write temporary helpers. So if 
it is ok, I would prefer to keep it as is

> ...
> 
>> +static irqreturn_t nxp_sar_adc_isr(int irq, void *dev_id)
>> +{
>> +       struct iio_dev *indio_dev = (struct iio_dev *)dev_id;
> 
> Unneeded explicit casting.

Right I will fix it.
[ ... ]


>> +static int nxp_sar_adc_start_conversion(struct nxp_sar_adc *info, bool raw)
>> +{
>> +       u32 mcr;
>> +
>> +       mcr = readl(NXP_SAR_ADC_MCR(info->regs));
>> +
>> +       FIELD_MODIFY(NXP_SAR_ADC_MCR_NSTART, &mcr, 0x1);
>> +       FIELD_MODIFY(NXP_SAR_ADC_MCR_MODE, &mcr, !raw);
> 
> raw ? 0 : 1
> 
> is better to understand (it will be optimised by the compiler anyway,
> no branches will be added).

Ok, will do the change

>> +
>> +       writel(mcr, NXP_SAR_ADC_MCR(info->regs));
>> +
>> +       return 0;
>> +}
>> +
>> +static int nxp_sar_adc_read_channel(struct nxp_sar_adc *info, int channel)
>> +{
>> +       int ret;
>> +
>> +       info->current_channel = channel;
>> +       nxp_sar_adc_channels_enable(info, BIT(channel));
>> +       nxp_sar_adc_irq_cfg(info, true);
>> +       nxp_sar_adc_enable(info);
>> +
>> +       reinit_completion(&info->completion);
>> +       ret = nxp_sar_adc_start_conversion(info, true);
>> +       if (ret < 0)
>> +               goto out_disable;
> 
>> +       ret = wait_for_completion_interruptible_timeout(&info->completion,
>> +                                                       NXP_SAR_ADC_CONV_TIMEOUT_JF);
>> +       if (ret == 0)
>> +               ret = -ETIMEDOUT;
>> +       if (ret > 0)
>> +               ret = 0;
> 
> Since semantically it's not the same ret, I would write above as
> 
>    if (!wait_for_completion...(...))
>      ret = -ETIMEDOUT;
> 
> And note, no "else" branch is needed in this case.

Sure, I'll change that
>> +       nxp_sar_adc_channels_disable(info, *indio_dev->active_scan_mask);
> 
> Wondering why this can't take a pointer to a mask.
nxp_sar_adc_channels_disable() is also called with BIT(x) parameter in 
other places. So in the function is much easier to do val |= mask;

>> +       ret = devm_request_irq(dev, irq, nxp_sar_adc_isr, 0,
>> +                              dev_name(dev), indio_dev);
>> +       if (ret < 0)
>> +               return dev_err_probe(dev, ret, "failed requesting irq, irq = %d\n", irq);
> 
> No error code duplication in the message, please.

Given devm_request will print the "request_irq(%u) %ps %ps %s\n" error 
message. Would you suggest to just return ret here ?

>> +       spin_lock_init(&info->lock);
> 
> Shouldn't this be _before_ IRQ registration? Theoretically the  IRQ
> may fire already just after the registration (yeah, it might be
> spurious, but handler and code should be ready for this).

Well it does not hurt moving it before anyway

[ ... ]

Thanks

   -- Daniel



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

