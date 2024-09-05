Return-Path: <devicetree+bounces-100520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E6796DF62
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 18:18:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1106FB2213D
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 16:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA1C81A00D7;
	Thu,  5 Sep 2024 16:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="H0KfeP3m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961F719F49E
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 16:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725553124; cv=none; b=F6xO6CmVzLW7VjqcSQlGxNjlztqwsxZlInwqEUBR2w+452yQWMyf1v/lgyz3Tp69nTRs42SqRwya7vWTkyKRKm1eV5wY9q2ZK+sqvapvyLW8sCTpzeabVMv3GlPipAlB5/5yBXu892pb5CYkw1B6W/tNckVSJKxW7ZCgPCn0hlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725553124; c=relaxed/simple;
	bh=0KZJ5QCgut0qXAf4CtRoBblHiHy87RUQ10uqP8m1WTI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DpS7mU4Pci/S2Jv8FQYmqbjx2E0uJ6IwwpANLVl1Ozyy+Womhed7k1U9houE0NnKCHssWzY+9iq/eSYVLueABpcFuxnIt7UCqOvINRWlJbhTmigc9bXN4xLwGVbkl0AZW5K7eWwgQw2AOnIs8F2Wh+jtRuUrLdzZfsnEP9kqPr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=H0KfeP3m; arc=none smtp.client-ip=209.85.166.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-39f49600297so3573475ab.1
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 09:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725553122; x=1726157922; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YCC51npM/9ttAM5Vwg9IW4X3HmAK9BDVmPhlPGQ+c5o=;
        b=H0KfeP3m+vzfkOadmlHkrI57gWMV29XMXDFjBZrt5M2c7ZZDYX1l9m6khvz2Lhwydb
         CrSq+pq6pAdbJUi2c0eyfrHuhG8OqJr+yptenR2swtodQgKNn0VelDesp4vO/ZPSTS/r
         hDYJHoOG71oINqTDJlDBYUt5RIA1jlGLe+IYJ7gZmeN6+IWNHZ6Sd9e48IkMsfn2bliS
         NKrmbqolRaYGirX8fQ5Og3yYyLsbjv6D+MDdCvScVQNbfS+bvorIwZ+ZbddUv3OyjBZU
         IIzFEQJ/HAsNKu8EwauG3tzGjo8vVfQZCKeHb7va4dd0mrHyzmbxgOyD0frYiwm41Nub
         e1IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725553122; x=1726157922;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YCC51npM/9ttAM5Vwg9IW4X3HmAK9BDVmPhlPGQ+c5o=;
        b=K+OZWszOkc29Bosnhkas0ZUjNd0F7/bzAb3Xx73Sg8lFHOGgpKJFojH1TYmeWtVN6Z
         buXOibAeEJ6DQbnHLK2idMzowsLxeyhmOMluiBu/IJ1A9SXlbGeuoiB79i03nhrlXYZL
         KV4vWHLsbrvdIl6kz2VX1aRujtpa0k7q7I7nK4CYPbxrcKglcZEnet6bC1iK9PAUwGHH
         AFNmVXZbE6CFWtKoP6RFlO3YF2YGoQZjEzjjnkg6bxK7dD3XKVH5Ibg5uP/wGD50f6R/
         guuZ3YIbhtpCutxp1kpVuxZ9D8C41wmuIdDf6NrMw88RE46ULHWFjqdsoCbYsTLw3cNW
         EWiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQHiFfL/CwRhrHvlRjKKMBlTi5ybJdaDLjnPzaHLhrMefS6Qbuhr+p+ZHssGb4DSl+p9DbshMETdfV@vger.kernel.org
X-Gm-Message-State: AOJu0YyiVGm56oO/32BcMYyDNrri2URvqZxoCzgeLGvC5pcKCN2Wo0EP
	QLqPwuctRZsBkBC/KZ189FSt9epIgJVYVOq6eHG28KHkYVV90lQkNsDGVrU8KZ4=
X-Google-Smtp-Source: AGHT+IHhPd/S0vkF4Ol3BNci9fQmLXAbOXM8hhWK6GTvykR7qWrFYPoXnNyiBlsPYluhsEE5PinLjw==
X-Received: by 2002:a05:6e02:1988:b0:39d:2e35:4d88 with SMTP id e9e14a558f8ab-39f379e6c36mr252106895ab.28.1725553121583;
        Thu, 05 Sep 2024 09:18:41 -0700 (PDT)
Received: from [192.168.40.12] (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3afaf930sm43021215ab.29.2024.09.05.09.18.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 09:18:41 -0700 (PDT)
Message-ID: <ce99d0a4-2a52-43f3-92ea-6e3ed9174956@baylibre.com>
Date: Thu, 5 Sep 2024 12:18:39 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] iio: adc: ad7625: add driver
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 David Lechner <dlechner@baylibre.com>,
 Uwe Kleine-Konig <u.kleine-koenig@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
References: <20240904-ad7625_r1-v4-0-78bc7dfb2b35@baylibre.com>
 <20240904-ad7625_r1-v4-2-78bc7dfb2b35@baylibre.com>
 <23c81d6735075c0b9d98833641606a661fab7194.camel@gmail.com>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <23c81d6735075c0b9d98833641606a661fab7194.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2024-09-05 3:58 a.m., Nuno Sá wrote:
> On Wed, 2024-09-04 at 15:14 -0400, Trevor Gamblin wrote:
>> Add a driver for the AD762x and AD796x family of ADCs. These are
>> pin-compatible devices using an LVDS interface for data transfer,
>> capable of sampling at rates of 6 (AD7625), 10 (AD7626), and 5
>> (AD7960/AD7961) MSPS, respectively. They also feature multiple voltage
>> reference options based on the configuration of the EN1/EN0 pins, which
>> can be set in the devicetree.
>>
>> Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
>> ---
> Hi Trevor,
>
> It LGTM, just some minor stuff from me...
>
> With that,
>
> Reviewed-by: Nuno Sa <nuno.sa@analog.com>
>
>>   MAINTAINERS              |   1 +
>>   drivers/iio/adc/Kconfig  |  16 ++
>>   drivers/iio/adc/Makefile |   1 +
>>   drivers/iio/adc/ad7625.c | 684
>> +++++++++++++++++++++++++++++++++++++++++++++++
>>
> ...
>
>> +
>> +static int ad7625_set_sampling_freq(struct ad7625_state *st, int freq)
>> +{
>> +	u64 target;
>> +	struct pwm_waveform clk_gate_wf = { }, cnv_wf = { };
>> +	int ret;
>> +
>> +	target = DIV_ROUND_UP_ULL(NSEC_PER_SEC, freq);
> Not seeing any reason why it can't be DIV_ROUND_UP()?
Uwe rightly pointed out (internally) that freq probably shouldn't be 
signed, so I'll adjust that instead and resubmit.
>
>> +	cnv_wf.period_length_ns = clamp(target, 100, 10 * KILO);
>> +
>> +	/*
>> +	 * Use the maximum conversion time t_CNVH from the datasheet as
>> +	 * the duty_cycle for ref_clk, cnv, and clk_gate
>> +	 */
>> +	cnv_wf.duty_length_ns = st->info->timing_spec->conv_high_ns;
>> +
>> +	ret = pwm_round_waveform_might_sleep(st->cnv_pwm, &cnv_wf);
>> +	if (ret)
>> +		return ret;
>> +
>> +	/*
>> +	 * Set up the burst signal for transferring data. period and
>> +	 * offset should mirror the CNV signal
>> +	 */
>> +	clk_gate_wf.period_length_ns = cnv_wf.period_length_ns;
>> +
>> +	clk_gate_wf.duty_length_ns = DIV_ROUND_UP_ULL((u64)NSEC_PER_SEC *
>> +		st->info->chan_spec.scan_type.realbits,
>> +		st->ref_clk_rate_hz);
>> +
>> +	/* max t_MSB from datasheet */
>> +	clk_gate_wf.duty_offset_ns = st->info->timing_spec->conv_msb_ns;
>> +
>> +	ret = pwm_round_waveform_might_sleep(st->clk_gate_pwm, &clk_gate_wf);
>> +	if (ret)
>> +		return ret;
>> +
>> +	st->cnv_wf = cnv_wf;
>> +	st->clk_gate_wf = clk_gate_wf;
>> +
>> +	/* TODO: Add a rounding API for PWMs that can simplify this */
>> +	target = DIV_ROUND_CLOSEST_ULL(st->ref_clk_rate_hz, freq);
> ditto...
>
>> +	st->sampling_freq_hz = DIV_ROUND_CLOSEST_ULL(st->ref_clk_rate_hz,
>> +						     target);
>> +
>> +	return 0;
>> +}
>> +
>>
> ...
>
>> +
>> +static int ad7625_buffer_preenable(struct iio_dev *indio_dev)
>> +{
>> +	struct ad7625_state *st = iio_priv(indio_dev);
>> +	int ret;
>> +
>> +	ret = pwm_set_waveform_might_sleep(st->cnv_pwm, &st->cnv_wf, false);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = pwm_set_waveform_might_sleep(st->clk_gate_pwm,
>> +					   &st->clk_gate_wf, false);
>> +	if (ret) {
>> +		/* Disable cnv PWM if clk_gate setup failed */
>> +		pwm_disable(st->cnv_pwm);
>> +		return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int ad7625_buffer_postdisable(struct iio_dev *indio_dev)
>> +{
>> +	struct ad7625_state *st = iio_priv(indio_dev);
>> +
>> +	pwm_disable(st->cnv_pwm);
>> +	pwm_disable(st->clk_gate_pwm);
>> +
>> +	return 0;
>> +}
>> +
> Might not matter but it is a good practise to disable things in the reverse
> order.

Good point, I'll change that too.

Thanks!

>
> - Nuno Sá
>
>

