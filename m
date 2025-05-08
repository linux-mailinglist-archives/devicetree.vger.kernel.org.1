Return-Path: <devicetree+bounces-175182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 962D7AB0089
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 18:35:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 614C3984150
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9B1D2836A7;
	Thu,  8 May 2025 16:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fKvAWwIO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F76D28315D
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 16:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746722128; cv=none; b=Ix8FqZOI26/YzGMs2xxNc63Y1Dyf78z/8RJ8RA2Juc6RJu3dUP6x4hu1v2nAfjG6pQ9tH3+awxyuRphfTnQyLfgXmOu43M3JrcKh8ci6OeBzrr2joZ0TWcK+3hpD4H++iVr+7ARhfxfqvJF7CHAf4DcvnCaZfEsPL29X6vwAZAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746722128; c=relaxed/simple;
	bh=98vXnldu3BmiisoGoWmdX4HwE8ZPCtGTXfUCtn6cp48=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=hMPUoG9Ph9MYZnep7z+Z2tWnLblSSz+F7g9jsOqFFrWSjB2wY6qRUeHk8Lo+pWArl0YxwcBOyBNHfthembn0gFJnxSKUUWLtWfjx+VWfpFCdc9GaLRAv8lnrQ9Kf/iQ7b4RDS+g/4B5JT/l5eLnPJXQxO0CXCdLGtGOxeU6+EMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fKvAWwIO; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-2db2f23f174so792296fac.2
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 09:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746722125; x=1747326925; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EJL2JF8HNdUlPHdXe0fsgW/lJ8QcVwXtjShT1s+tRu0=;
        b=fKvAWwIOZZXRVUYNSStzOi3BJw7A8E4OtUrMjA1D2/a6J+AvWACIt6t3gjQ+IxoPzA
         D82zXoyT6RpMz6hdqiA6YYMep2sbswh6ZfzVpGK6ZFBs4jdd1DCKEplDP0JhUevPdhEK
         nRVRlG10kCbnIZDAOjCYUynrO0D6RqbmOoiHXyVcApWzv+zUtzP15kC5zQOiFG9/ng/Z
         IMtmr18jvmI8WyuT3J+BYeDcn95ZIt11vKPoikVOrujIz3w4+BJDsNDRTO6E2+Ho39jg
         /1adCX+Z6CAklpNdGowy0crFodCpBtTh4FWz5AjgMuo7/NaDMnf4DXc3zlKc0Tnjerqf
         0Hvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746722125; x=1747326925;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EJL2JF8HNdUlPHdXe0fsgW/lJ8QcVwXtjShT1s+tRu0=;
        b=GY8h44jpRynQSQHAhfABh+jnh0Nun0ZQFSterlaM6UDRKnHzfwZZgVxWp1qX0zOZPq
         hpoE9WF8Qx7B+WWREEJhvzq1ShQTs+PuKHKNv8pSe7dW3OUktN85Lg7TrkSSLMuB4v79
         dmox9IgFf/nKNMtPpjuqDGU0/ipRs5dGrXgfB0SL98NN1FKj7FNBWNi8w+yijWYMpGSN
         diwEIbntHaPOGuMlw4ELBYuvZWFvxmyXD4kzVsVAjkagUkBdvheSL9LiW+PmJX6gtzk3
         WY2go4m4vQIrkLtF1OXxUZeNoCRq9DFiCYaVmmk8ELkZJs6Sj5MbIpIbtn91//BKVGKw
         oyKA==
X-Forwarded-Encrypted: i=1; AJvYcCXwzzl8SR3+yVCxRz62KR+JGhJ6U+ZYFJ7T7UOcI71U3F0A9tz3whC5+WDH4LzUX2oJXZikmimkHuUE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2jQrIJT7PFARwBwlPDmS6BdXMuqOnerfKrLC9mGKob07P0YM4
	bTDr/iiFtVdxcdgk0OlSe1lLHoR9FL6BpB3ra80s43fGhJ5j87NARP8CB3WfQuY=
X-Gm-Gg: ASbGncunbbsK3y2W1L7d3EWomUfNsMSewq6MXkbusidyA3eFNLgD/fa8s0YgpZLwGBi
	kE7xcakixSs9tqmEwTnVQqnUWL8EOP6SMfm96ypZMXXSdbv2dkpqMPfZkjlKQxBNndrj5pMM7h7
	6MIHXpFMx2x4+NqbBhBFdtMGeltSNSWw7X/fswT57oJGiBM30Gl7G6qAInQ85GWcmVLf5zN41ic
	VOjqIkep4ES3fsz9vbMOlwT8jVyr6w92Sm1tF2MsigyDmZ2nW4T7JYpvS0tmvG2Fve7wwvR+PP0
	5RE5ZJZAWCBTbGXxb7vu3ofepIMEMQeyk/BBykcdw02VTDhQbTgTFv84AYTDLqFnHB60klHztId
	6P7REDauXu/uLn/GL7w==
X-Google-Smtp-Source: AGHT+IHIJ0BuysYAybBvMTuPTyGsG2tzFb1OdQsBPE+ejZhEIUsRr/4qjoRxA88gOpIuEzDtbtwoxA==
X-Received: by 2002:a05:6871:648:b0:2c1:ae41:6b5e with SMTP id 586e51a60fabf-2dba42aff39mr110953fac.16.1746722125260;
        Thu, 08 May 2025 09:35:25 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:1120:d1cf:c64a:ac7e? ([2600:8803:e7e4:1d00:1120:d1cf:c64a:ac7e])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2dba07912fbsm129204fac.25.2025.05.08.09.35.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 09:35:23 -0700 (PDT)
Message-ID: <d2cdf491-d6d2-49d6-8ab1-34118023f279@baylibre.com>
Date: Thu, 8 May 2025 11:35:23 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] iio: adc: ad7606: add gain calibration support
From: David Lechner <dlechner@baylibre.com>
To: Angelo Dureghello <adureghello@baylibre.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250506-wip-bl-ad7606-calibration-v3-0-6eb7b6e72307@baylibre.com>
 <20250506-wip-bl-ad7606-calibration-v3-5-6eb7b6e72307@baylibre.com>
 <c999800bb5f6c1f2687ff9b257079dcf719dd084.camel@gmail.com>
 <qaiqdak4pieewavl2ff4mpr2ywhw2bvnoob55buiinkisacar5@q6jhlb5klcf6>
 <7f5f75c1-7750-4966-9362-2a46c5e5ba3e@baylibre.com>
 <720e300f-f6e0-4c47-8e72-b3ab0a50fbed@baylibre.com>
Content-Language: en-US
In-Reply-To: <720e300f-f6e0-4c47-8e72-b3ab0a50fbed@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 5/8/25 11:27 AM, David Lechner wrote:
> On 5/8/25 8:50 AM, David Lechner wrote:
>> On 5/8/25 4:16 AM, Angelo Dureghello wrote:
>>> Hi all,
>>> On 07.05.2025 07:14, Nuno Sá wrote:
>>>> On Tue, 2025-05-06 at 23:03 +0200, Angelo Dureghello wrote:
>>>>> From: Angelo Dureghello <adureghello@baylibre.com>
>>>>>
> 
> ...
> 
>>>>> +		ret = fwnode_property_read_u32(child, "reg", &reg);
>>>>> +		if (ret)
>>>>> +			return ret;
>>>>> +
>>>>> +		/* channel number (here) is from 1 to num_channels */
>>>>> +		if (reg < 1 || reg > num_channels) {
>>>>> +			dev_warn(dev, "wrong ch number (ignoring): %d\n", reg);
>>>>> +			continue;
>>>>> +		}
>>>>> +
>>>>
>>>> Sorry Angelo, just realized this now. Any reason for not treating the above as a real
>>>> invalid argument? It's minor and not a big deal but odd enough...
>>>>
> Ah, I see what you fixed now in v4. All is OK.
> 


Oops, trimmed too much, that was in reply to my own comment not Nuno's.

>> Why is this not correct? Each input could have an amplifier with different
>> series resistor value so this seems correct to me.

