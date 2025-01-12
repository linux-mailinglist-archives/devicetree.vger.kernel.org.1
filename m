Return-Path: <devicetree+bounces-137816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7D1A0AB4C
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 18:40:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 283FC164B10
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 17:40:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15C971BEF9D;
	Sun, 12 Jan 2025 17:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UfQQTN1J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E493F1B415A
	for <devicetree@vger.kernel.org>; Sun, 12 Jan 2025 17:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736703600; cv=none; b=rSzX8UhYb6S2ImFbZHR8+I+DL34w/6CtWscmICDkQ31vRvcmsCBchd7tZyCkNh97j7tnUzeEWxA3pl27C1jlgozy5OiiCeiII/7wOKFBDumyCdrjx+IdnmBHoV+T04dy94w+x1CsTeL8VW8l7J4Mm7OUCTFLeEYbZABOykItCBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736703600; c=relaxed/simple;
	bh=Rrqq3QBfo3k3Aa5FLurl16fJUfPUp+yreDlshi7nQZQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Squy1oAf1BXk+bGSzRbgnPEMOyghxVtvYH7cEnZ7zz+OnDRB/54r0TRefcX6zdmEfIa75yNNlYlQrwWPQEiaJ7qEsOYXtsUpSMQmcHjASm9Qyml7IuKXHav0yrd5kNqV5QfxY8ipHwWTpep+VIuOkoX20dX6bH2F5Nr58l6jjMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UfQQTN1J; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-29fe83208a4so1794596fac.0
        for <devicetree@vger.kernel.org>; Sun, 12 Jan 2025 09:39:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736703597; x=1737308397; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CUxaPIzm10Ty8QDpWslvn+ARqSUiRdFPc6JlyyrM+1M=;
        b=UfQQTN1JmMDfNYtFjlhJIGoR7OPg3D8eWOJidEUjLCBBTiCDjjJVqKn2I5EfgVeY6m
         6w5VJIElqSbjPo0jbwJmNDGxMP7RSwW0+ZH8J+P4aBcqZQEysu7Htp1YfffL5KyK+x94
         Ty/yf1KA3uDWoLjUWbRICl5od/43xfmmvyPzDqSEMTtMeay647LcWlq6IlItRPtqfYsJ
         Py00aJKxpMAOFjnvHUdj23OCOQzfkCq1hHAfeKCk1Z8oGAG+WvL+B69d1PDzIqQp6J8I
         jCHR+8HHDMFwmvPgfBV9BjoFEVgo4NSSRJPh4fol0X6Il2KVquvjdd0gbEthhwFlb7B3
         ug0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736703597; x=1737308397;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CUxaPIzm10Ty8QDpWslvn+ARqSUiRdFPc6JlyyrM+1M=;
        b=urCyjpHYqFBTq7ZvAd9Ws3F0c/Lwa4fqBo0/dLDO8Q8IJ39AroNnhsl4XGtnOGK36t
         ErdgJFb0OqE/1fNUq3L3AyPxoBbAszo2YiAaFsZLlbKxJ+PbmHN0nOze00NPHBlCoSKU
         uVdE3cS3CROaFShQrxtJnUlUosispB5j+ztLuAT5aqrltyMmwDjii5r0TgKtyYVYbJ+A
         4u9uRuuh3U23tx+gVAff/OkgFK2A4JyPxbRxAsAQFdpMjwIdC0G7vEORxy9HYcdrkot5
         O2FwoSuE4J48ynczXBh/AOmPd+qpD6gwEtYEpcBiKh349Qxvb4rkt1C37PgQt4J12yrd
         2X7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVTyZfBvsiCqM7V2F/8NIh+XXilETCCFhxP3/KxPFvGJuod2/vJEa28xGwIN4p/NKIe4HqhquNSF9cR@vger.kernel.org
X-Gm-Message-State: AOJu0YzXcaDuv02qx+z72M3MGPEIzTkhaYh++WlGBLGWZQdRatEucnBu
	hX6LSiaQs6sTqg+i72ETCScdXi8sXTfxHSFdg1Yw3WlJr5z8bEN0/8V2knAlllA=
X-Gm-Gg: ASbGncvFcRSvcqS9jniYmWVshoPnVBg9M4aq79/k4ZJ30b3cK2XaihiVq9+3awdqr5o
	sS091eCAMOGtZRPu5U42kisGsjfNwwAZEUB8jBcPGt+Mzw60SthGu3ht0T/45Dp601vbDplDAg4
	Un3hVj08K0vUcfJJ/aMOq1fFw5tZqciZnEcUIDXDJC2ntttqD6BhvezLEquQB1dpwK9cCg2GVnE
	hYeals+F9ZqGAOJ9ib0tk4yvdqQo7tDTpWCK4tveCqfxsRYcH5mazwB3avru2p57BlKiLK86QMF
	aJU44CoBKO+qcwqF3w==
X-Google-Smtp-Source: AGHT+IFMeG8ihenSEkSFDLmmwiIOVBfVxAkRBcOo7FttPT2UR+B4w4RwRP+NuZvAmsZFcQCrdCZwYw==
X-Received: by 2002:a05:6870:6e86:b0:297:281b:fb6d with SMTP id 586e51a60fabf-2ad8072db1dmr7361412fac.3.1736703597054;
        Sun, 12 Jan 2025 09:39:57 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2ad804b0643sm2972251fac.3.2025.01.12.09.39.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jan 2025 09:39:56 -0800 (PST)
Message-ID: <652a80dd-e951-4505-8e13-b5198c66c403@baylibre.com>
Date: Sun, 12 Jan 2025 11:39:54 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 02/15] Documentation: ABI: add wideband filter type to
 sysfs-bus-iio
To: 8601da92-1f08-40e3-9b39-f9b99dbc1507@baylibre.com
Cc: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com
References: <cover.1736201898.git.Jonathan.Santos@analog.com>
 <40707fa904ba7b1659554747ff7520139dd6f94e.1736201898.git.Jonathan.Santos@analog.com>
 <8601da92-1f08-40e3-9b39-f9b99dbc1507@baylibre.com>
 <Z4L1qrqHBUE5JGdX@JSANTO12-L01.ad.analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <Z4L1qrqHBUE5JGdX@JSANTO12-L01.ad.analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/11/25 4:50 PM, Jonathan Santos wrote:
> On 01/07, David Lechner wrote:
>> On 1/7/25 9:24 AM, Jonathan Santos wrote:
>>> The Wideband Low Ripple FIR filter is used for AD7768-1 Driver.
>>> Document wideband filter option into filter_type_avaialable
>>
>> s/avaialable/available/
>>
>>> attribute.
>>>
>>> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
>>> ---
>>>  Documentation/ABI/testing/sysfs-bus-iio | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
>>> index f83bd6829285..c4c21a7bfba1 100644
>>> --- a/Documentation/ABI/testing/sysfs-bus-iio
>>> +++ b/Documentation/ABI/testing/sysfs-bus-iio
>>> @@ -2291,6 +2291,8 @@ Description:
>>>  		* "sinc3+pf2" - Sinc3 + device specific Post Filter 2.
>>>  		* "sinc3+pf3" - Sinc3 + device specific Post Filter 3.
>>>  		* "sinc3+pf4" - Sinc3 + device specific Post Filter 4.
>>> +		* "wideband" - FIR filter with wideband low ripple passband
>>
>> I think "fir" would be a more specific filter type name than "wideband". (i.e.
>> there are wikipedia pages for sinc and FIR filters, but not one for "wideband"
>> filters)
>>
> 
> Isn't "fir" a bit too generic for this case? Since Wideband here is a class of a FIR filter.
> Maybe something like "wideband-fir" or "fir-wideband" would work better?

For this particular chip, no, there is only one FIR filter option on the chip,
so having additional qualifiers doesn't really make a difference.

If we can find a chip that has more than one FIR filter option, then we could
use that to figure out what additional classifiers are might make sense.
"fir-wideband" would only be useful if the same chip also had a "fir-narrowband"
option. But we might find that instead the chip is actually "fir-type1"
"fir-type2" or something like that.

(FWIW, my signal processing textbook describes Type I, II, III, IV FIR filters
but doesn't say anything about "wideband" FIR filters.)

> 
>>> +		  and sharp transition band.
>>>  
>>>  What:		/sys/.../events/in_proximity_thresh_either_runningperiod
>>>  KernelVersion:	6.6
>>


