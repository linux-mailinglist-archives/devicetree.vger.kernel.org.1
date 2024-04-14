Return-Path: <devicetree+bounces-59170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 317A68A4510
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 22:24:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 518561C20C98
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 20:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E57A13699C;
	Sun, 14 Apr 2024 20:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ajuK0QBy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A0A38F83
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 20:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713126270; cv=none; b=inF+KpGlmXRvG7kkX3Nqn/9X3BN37wuQpO7gW0ulFaMvUMNNWyycG0gRqmAVWQM3G38Rnzh1Mlb6HlSz9+Q5j851D83JsfMyrS9bdVgeiE8eX58bWTg8yX72SqqI19jYSpgVodHMZx+s3Zy8J+/my+bIONcd+FdDZHZJQZUfFK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713126270; c=relaxed/simple;
	bh=hpG76AXQMNJSTW6q8p9oAbDZCw5GU7vZBrY397xUNAM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P+qQf1KEobNIvrJn6DpvhWksQZzu718gvHUPW02NmV35+v3iN+0NGwtO61ZyjNVC+9R7lWWOlSQW8nLV36yRJPisRh/9YOvaSdgmcd7QxS6q5S5DPa19hZRLnBhSe6F0+R6CfXwIf3gD/GcuK1FOuWjBs+5UuetSynL9BDYybLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ajuK0QBy; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-229661f57cbso1537673fac.1
        for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 13:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713126267; x=1713731067; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wdgK/xtc7abW4FhKh59TEUuplN1RfRrEnq28gtTaSyU=;
        b=ajuK0QBylswuYiriDpobjmId/LzKT6rY/synfzLq6uRCru3qPlPPxVYD5uTBGLEBp8
         TcZm4zc0ZjXl0k8lUSS+m85oBI6yAZAcwRKe0GWTZ7RhIyiU+Peegp2LzPKCwWXVuzTV
         KbwpiK2shx0bwq1Nw6nowYW86UtNLBW2RO4+PJQhgU/xkjSiKnA6HHID033xfJQwLdJZ
         jvjpZmYyEiNL5nh506ym6Ac4e71SdOVNrb2KOHfLiM0CY8p2dyYkYDcWvEFn/lqIwaIG
         B0VbZMr9FW9v+u990AkjjLqa2wtX16ZGxGn9PssSCfLb7mipwYahfD1YfN5B1fTbexg7
         wLPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713126267; x=1713731067;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wdgK/xtc7abW4FhKh59TEUuplN1RfRrEnq28gtTaSyU=;
        b=d+TBIAUC9rCyyCul1ScZteQaKI2KUf6bfUNcpJTfoQze3S3QLKTMqP3j/venTE4eMI
         qudreL4YuIOi8YZJKt9Cq6mowJahN0tW1hmjq0a39QoM4sOVDNm5sVtm+VezRVOHN76Z
         HPBEL1z1SVbg7SjMwmReZWuYulVhhQ2XIJlUKCxlpBLXQfgxmaDUxoN4fSsEbOx42fGn
         5cqSzK+C9c8WNx5Hy+n8/f0pNQRqL9oL3zHU80QrtrJPD+ypNAnZLqHzRrb+995Du1aj
         6T6LbcXRI9/IExun410SdJKhJdkL12uOpD5RIzPS1/xJq6qehWVMIxk7vQINsSnSCzSD
         NqGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXidj+Ul/xYTs7oPuvw4Gl8hPBf8TozgwuQQTVMVSrjgKWnTBiqhNKucNo5NQ0s3ojgox+Gq+XBejoLJFpNm8bWhjeYs6Qj4gAERQ==
X-Gm-Message-State: AOJu0Yyi6PMQn58UXKT82iUI0Sa+2dZbQRhhOwcgmQiQMtcLYQbW6VNK
	RVLiOAZISjAcn1CmRHWcPVGxVERftdpzEttgonUf493RStE/E9OcLKsO960uJJk=
X-Google-Smtp-Source: AGHT+IGSQ9n8Spb2DdgblHtgvUMvEgGhpKI45I0vDjzH7W8brusklAhPJt2w/vyyYYOPEKFb42bkUg==
X-Received: by 2002:a05:6870:ac1f:b0:22e:be3e:b32 with SMTP id kw31-20020a056870ac1f00b0022ebe3e0b32mr10150823oab.37.1713126266900;
        Sun, 14 Apr 2024 13:24:26 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id wz2-20020a0568707ec200b0022e9ffdb5a5sm1924841oab.24.2024.04.14.13.24.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Apr 2024 13:24:26 -0700 (PDT)
Message-ID: <2c6b6383-dbf5-4b80-ae97-79a1725b2cb5@baylibre.com>
Date: Sun, 14 Apr 2024 15:24:25 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/5] iio: adc: ad7192: Add AD7194 support
To: Alisa-Dariana Roman <alisadariana@gmail.com>
Cc: michael.hennerich@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 alexandru.tachici@analog.com, lars@metafoo.de, jic23@kernel.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 lgirdwood@gmail.com, broonie@kernel.org, andy@kernel.org,
 nuno.sa@analog.com, marcelo.schmitt@analog.com, bigunclemax@gmail.com,
 okan.sahin@analog.com, fr0st61te@gmail.com, alisa.roman@analog.com,
 marcus.folkesson@gmail.com, schnelle@linux.ibm.com, liambeguin@gmail.com
References: <20240413151152.165682-1-alisa.roman@analog.com>
 <20240413151152.165682-6-alisa.roman@analog.com>
 <CAMknhBFzUeW5+rs_GgCZCiit=eW04VHyCnt-__jXLnO3Z29ksA@mail.gmail.com>
 <dfa86da4-7d2d-4d7e-ac50-86d3713f44d9@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <dfa86da4-7d2d-4d7e-ac50-86d3713f44d9@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 4/14/24 3:14 PM, Alisa-Dariana Roman wrote:
> On 13.04.2024 23:05, David Lechner wrote:
>> On Sat, Apr 13, 2024 at 10:13 AM Alisa-Dariana Roman
>> <alisadariana@gmail.com> wrote:
>>>
>>> Unlike the other AD719Xs, AD7194 has configurable differential
>>> channels. The user can dynamically configure them in the devicetree.
>>>
>>> Also modify config AD7192 description for better scaling.
>>>
>>> Moved ad7192_chip_info struct definition to allow use of callback
>>> function parse_channels().
>>
>> It looks like this no longer needs to be moved in this revision.
>>
>>>
>>> Signed-off-by: Alisa-Dariana Roman <alisa.roman@analog.com>
>>> ---
>>>   drivers/iio/adc/Kconfig  |  11 ++-
>>>   drivers/iio/adc/ad7192.c | 140 ++++++++++++++++++++++++++++++++++++---
>>>   2 files changed, 138 insertions(+), 13 deletions(-)
> 
> ...
> 
>>
>>> +       if (!ad7194_channels)
>>> +               return -ENOMEM;
>>> +
>>> +       indio_dev->channels = ad7194_channels;
>>> +       indio_dev->num_channels = num_channels;
>>> +
>>> +       device_for_each_child_node(dev, child) {
>>> +               *ad7194_channels = ad7194_chan_diff;
>>> +               ad7194_channels->scan_index = index++;
>>> +               ret = ad7192_parse_channel(child, ad7194_channels);
>>> +               if (ret) {
>>> +                       fwnode_handle_put(child);
>>> +                       return ret;
>>> +               }
>>> +               ad7194_channels++;
>>> +       }
>>> +
>>> +       *ad7194_channels = ad7194_chan_temp;
>>> +       ad7194_channels->scan_index = index++;
>>> +       ad7194_channels->address = AD7194_CH_TEMP;
>>> +       ad7194_channels++;
>>
>> nit: It would seem more natural to have all voltage channels
>> altogether rather than having the temperature channel in between.
> 
> I wrote the channels like this to match the other chips:
> 
> static const struct iio_chan_spec ad7193_channels[] = {
>     AD7193_DIFF_CHANNEL(0, 1, 2, AD7193_CH_AIN1P_AIN2M),
>     AD7193_DIFF_CHANNEL(1, 3, 4, AD7193_CH_AIN3P_AIN4M),
>     AD7193_DIFF_CHANNEL(2, 5, 6, AD7193_CH_AIN5P_AIN6M),
>     AD7193_DIFF_CHANNEL(3, 7, 8, AD7193_CH_AIN7P_AIN8M),
>     AD719x_TEMP_CHANNEL(4, AD7193_CH_TEMP),
>     AD7193_DIFF_CHANNEL(5, 2, 2, AD7193_CH_AIN2P_AIN2M),
>     AD7193_CHANNEL(6, 1, AD7193_CH_AIN1),
>     AD7193_CHANNEL(7, 2, AD7193_CH_AIN2),
>     AD7193_CHANNEL(8, 3, AD7193_CH_AIN3),
>     AD7193_CHANNEL(9, 4, AD7193_CH_AIN4),
>     AD7193_CHANNEL(10, 5, AD7193_CH_AIN5),
>     AD7193_CHANNEL(11, 6, AD7193_CH_AIN6),
>     AD7193_CHANNEL(12, 7, AD7193_CH_AIN7),
>     AD7193_CHANNEL(13, 8, AD7193_CH_AIN8),
>     IIO_CHAN_SOFT_TIMESTAMP(14),
> };
> 
> Kind regards,
> Alisa-Dariana Roman
> 

Consistency is good too. ;-)



