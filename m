Return-Path: <devicetree+bounces-117062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A857C9B4E02
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 16:30:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 686DC2822B2
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 15:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7B53192D9C;
	Tue, 29 Oct 2024 15:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="z6cIzhPE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C2A176FB0
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 15:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730215852; cv=none; b=kKbfodhuVSjMkhD1D+Whgo1IDu686Xu26QJ9o4qV8W1ArhmOf5t5j3G8qGI3oUiZvURASmBkA+fDB4SvpiF+rc+tnPPe6zADJg9/7VYQosijiMTLCT9MwkaQvDPo9ONl1YrRPVNlq+FmWUjEiwcyshbgxKB10x0dp2LDEVXEU8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730215852; c=relaxed/simple;
	bh=C2Bf/CpiazCRHi+JMjkoraHCMogNvMrpX8KWNoU7cSs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E7uFnKia/ehbAtHEtIYSMn+lVNyuJb16pM3VfajQd1bpPGV1ub8ViU8FppFCIOgrHw5B7HoF6N7a8nP2F9t8JdVqjrTdvrYSZ0KTrIB/YndWooYx4evcg/TuDDPoE0k3ICMAo1MdAhgmUHSdfewkwjZpWQSi9Nn8UuvguyXBxNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=z6cIzhPE; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-28c7f207806so2519920fac.3
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 08:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730215849; x=1730820649; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n6oLt4cwqIvtLgDoKzl4RIUjXVN/+Dx6j96wTlFjHfs=;
        b=z6cIzhPEa1IGJh40CFi+FEMWamYrZIx08dC+vmYjtQCDOxvW364Gclqd78i3pcDygY
         XrJGjkkYmldK/lyBICRa0H8sSFN2kihL8XYLFJm7qte+ktQQldASeI39x93WHJ55EP2z
         0InmLEndWN6PjlmGFTImRaDr9PYRIsP9doGC/gQY6uqschjpZl6m652tdNgvG5q67Zjc
         pqNXnCvtIEwibGgpAPtu44nHhaigJfiUMO7pp8OKTfhSrw2fEztFj+hLsfnai6gnZvz8
         VTqqsN94QhMtfsTDfiDemVi8Ot1L8XFgpwhg4ro7rOdfdrk64tWThk79aEBxDe8cb703
         24kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730215849; x=1730820649;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n6oLt4cwqIvtLgDoKzl4RIUjXVN/+Dx6j96wTlFjHfs=;
        b=jTn5JY5sZa8y2iueq2MuHmH/gYQ1vlyu56uNc/j9hdol0kQwLy0wI4W7L9CMTlL2Ns
         hVjRIyLV3fis1fuzeBerrdN1I39LRlncc+bheAqUwo62AH+QdBNnQsynrP9q6ftkjAwG
         R6vF1f7LvtMFItw9JslsyGCmBH9zRXTFR9Ts4ZfdzkHo4t0asBQUJUWSD/kT0y7wdoVB
         M7eef5QcDYSGID24/xkZnWAzmx3rGaED2Et8wXjIJu6BtzrxAuWUeSahAdQTKh7dVMtm
         dZ/biGTS/8J81kfCTCPWy+03USfuGCV4WZMSPpzQ5WbnXEVwdmlFyrCznt9oQxyb+Iem
         ME/w==
X-Forwarded-Encrypted: i=1; AJvYcCWtn6yKzSR1TzQQOpTJ9QIAME3Eaw/Iue7x2sfvnqn041ooZxF6jFprP8yHnw6Be3Xygg6ldey7y2ZB@vger.kernel.org
X-Gm-Message-State: AOJu0YzQQiVNonxnylRRNlGvuEHPFvoffyZyLNFjcb1OZRptnAB6CbzH
	k7MawY4aAs5Si0c8AAnwzwzV8EZEu1xYr+U3dfDtO5xG+x/3eYRINl8ytktmoHI=
X-Google-Smtp-Source: AGHT+IE2SkDygBFnyOcXc/xSl2iBsuYxGCBH6q3GOhnV+kWltCIyrT3d5jLZv9ddzix44MMFYznHAA==
X-Received: by 2002:a05:6871:69f:b0:288:34aa:20a3 with SMTP id 586e51a60fabf-294649be62amr49618fac.45.1730215847206;
        Tue, 29 Oct 2024 08:30:47 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-290360f4540sm2856004fac.31.2024.10.29.08.30.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2024 08:30:45 -0700 (PDT)
Message-ID: <82edfbb9-5e65-4292-b15b-d5cde7b53e42@baylibre.com>
Date: Tue, 29 Oct 2024 10:30:43 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 01/15] pwm: core: export pwm_get_state_hw()
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Guillaume Stols <gstols@baylibre.com>
Cc: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>,
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20241023-dlech-mainline-spi-engine-offload-2-v4-0-f8125b99f5a1@baylibre.com>
 <20241023-dlech-mainline-spi-engine-offload-2-v4-1-f8125b99f5a1@baylibre.com>
 <mavlxxjza7ud7ylgoewz6fz3chtuwljvcjjf6o3kcv555iolwa@wdnrsiow5u5w>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <mavlxxjza7ud7ylgoewz6fz3chtuwljvcjjf6o3kcv555iolwa@wdnrsiow5u5w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/29/24 3:05 AM, Uwe Kleine-König wrote:
> Hello David,
> 
> On Wed, Oct 23, 2024 at 03:59:08PM -0500, David Lechner wrote:
>> Export the pwm_get_state_hw() function. This is useful in cases where
>> we want to know what the hardware is actually doing, rather than what
>> what we requested it should do.
>>
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>> ---
>>
>> v4 changes: new patch in v4
>>
>> And FYI for Uwe and Jonathan, there are a couple of other series
>> introducing PWM conversion triggers that could make use of this
>> so that the sampling_frequency attribute can return the actual rate
>> rather than the requested rate.
>>
>> Already applied:
>> https://lore.kernel.org/linux-iio/20241015-ad7606_add_iio_backend_support-v5-4-654faf1ae08c@baylibre.com/
>>
>> Under review:
>> https://lore.kernel.org/linux-iio/aea7f92b-3d12-4ced-b1c8-90bcf1d992d3@baylibre.com/T/#m1377d5acd7e996acd1f59038bdd09f0742d3ac35
>> ---
>>  drivers/pwm/core.c  | 55 +++++++++++++++++++++++++++++++++++++----------------
>>  include/linux/pwm.h |  1 +
>>  2 files changed, 40 insertions(+), 16 deletions(-)
>>
>> diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
>> index 634be56e204b..a214d0165d09 100644
>> --- a/drivers/pwm/core.c
>> +++ b/drivers/pwm/core.c
>> @@ -718,7 +718,7 @@ int pwm_apply_atomic(struct pwm_device *pwm, const struct pwm_state *state)
>>  }
>>  EXPORT_SYMBOL_GPL(pwm_apply_atomic);
>>  
>> -static int pwm_get_state_hw(struct pwm_device *pwm, struct pwm_state *state)
>> +static int __pwm_get_state_hw(struct pwm_device *pwm, struct pwm_state *state)
>>  {
>>  	struct pwm_chip *chip = pwm->chip;
>>  	const struct pwm_ops *ops = chip->ops;
>> @@ -730,29 +730,50 @@ static int pwm_get_state_hw(struct pwm_device *pwm, struct pwm_state *state)
>>  
>>  		BUG_ON(WFHWSIZE < ops->sizeof_wfhw);
>>  
>> -		scoped_guard(pwmchip, chip) {
>> -
>> -			ret = __pwm_read_waveform(chip, pwm, &wfhw);
>> -			if (ret)
>> -				return ret;
>> +		ret = __pwm_read_waveform(chip, pwm, &wfhw);
>> +		if (ret)
>> +			return ret;
>>  
>> -			ret = __pwm_round_waveform_fromhw(chip, pwm, &wfhw, &wf);
>> -			if (ret)
>> -				return ret;
>> -		}
>> +		ret = __pwm_round_waveform_fromhw(chip, pwm, &wfhw, &wf);
>> +		if (ret)
>> +			return ret;
>>  
>>  		pwm_wf2state(&wf, state);
>>  
>>  	} else if (ops->get_state) {
>> -		scoped_guard(pwmchip, chip)
>> -			ret = ops->get_state(chip, pwm, state);
>> -
>> +		ret = ops->get_state(chip, pwm, state);
>>  		trace_pwm_get(pwm, state, ret);
>>  	}
>>  
>>  	return ret;
>>  }
> 
> I don't understand why you introduce __pwm_get_state_hw() (a variant of
> pwm_get_state_hw() that expects the caller to hold the chip lock) when the
> single caller (apart from plain pwm_get_state_hw()) could just continue
> to use pwm_get_state_hw().

Hmm... it seems like I thought there was a good reason for it at the
time, but looking at it again, I agree with your assessment.

> 
> In principle I'm open to such a patch and wonder if there is already a
> merge plan for this series. If you send a simpler patch soon with the
> same objective, I'll make sure it goes into v6.13-rc1 in the assumption
> that it's to late for the whole series to go in then. Or do you still
> target 6.13-rc1 for the spi bits? Then it would probably better to let
> this patch go in with the rest via the spi tree.

The SPI offload stuff is not likely to be merged soon. But there is
ad7606 + AXI ADC support from Guillaume that was just merged that
could make use of this. So I can send this as a stand-alone patch
so that it can be made available for that too.


