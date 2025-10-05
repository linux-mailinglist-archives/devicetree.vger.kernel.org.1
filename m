Return-Path: <devicetree+bounces-223721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9944BBBCDD9
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 01:25:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12BA93A36B5
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 23:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD14F233722;
	Sun,  5 Oct 2025 23:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dDz10yre"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60622198A11
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 23:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759706722; cv=none; b=DkGxq7rBxowkXHdVsG8AB1DTpqF0rgp6Fs0fUUG8sYSpXjGKWhSXqoJkeGuUmGH7Be0PGANUuQYDdmOhlBIrpdjLXZiwg9Z2JiZK+X2cPuGv7OFgDlGH93aOamutzO+7Kikn4V8JEl99vCQV4LQXp0yyJKVk8yybL+Ff7+VNFws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759706722; c=relaxed/simple;
	bh=nq24OG00nbd2TINXwilaodUVdAgf+dAFMRkKWUpwtuw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HKmW7GYehgL59pn+wqcmTCb/IAO6dHLNTp+lfShJOX0DZUETwv/SzxX/D7+1lUHB3sgJ9en8EAky1J4JJizqlXXBjY2rw1LOE2ICL++JBalImlbkstyyZpxslx3JvNgZTOsEzxhyvPk8dOmGStK46e4sbCA5Pvkho2YkwpaNwrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dDz10yre; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b523fb676efso3698406a12.3
        for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 16:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759706721; x=1760311521; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yYv7vpVBKthNnff+UlSd90a9wZD1vAq0DYVBuSy3Ej4=;
        b=dDz10yreinvjfIWuZWLXoS8YW1dD6uMP3qcutBaqUp6zY/2bw9G++WugdlvyxqLIGz
         fKJNgNQKHJ22UYwCsguXL3ZZq24WYSBwMd0Zx2CHsCn7qZKilT8OImiW20/r02AOLHcG
         RhFe7mdAA20bo6fCL5vn/sqfgbptnplMUDaN9fe+FlXn2ZkpouICPEwYWCdn138p2Q9S
         jhoyxKWIABMbkrBOwYrYQ6AQONs/M0JrZ6dZqGIVqhMEMIF7Rcw78s+ENF4zSlJYDxjH
         OCjNdmtU7Cw1L6kn5D5FI+A32K/CE60NWm/y1KevfihWjR7hhO33W3S1CRYedgMXqRfY
         DExQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759706721; x=1760311521;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yYv7vpVBKthNnff+UlSd90a9wZD1vAq0DYVBuSy3Ej4=;
        b=wzhDCf08zLW+lB8A2ggHTaXCKDyDKpZF8YX7469kdmKIej3hmLm89gteb109YHltE4
         4DU+TwpH3PklPVmgAp/GERJPKd7dweMfl4QqACIEqW5YA8tnrIciR97MAjm5ZJkPhuy1
         m1aBh8f/mZLL3QMc0Xd8AxBbdkq7kUdHEsoHmMtzZyXp3iYvZ0119Kktw6cR0M4acudQ
         fC1jc6UU6TLIkC1AISfi0EXx/bQUg8/JLpIh7rurZAe4R0C9AiuknP6wcgvp/1GJQtK3
         +voLEOEJEbSrYdKE7Umw74fgC9LZoNWp7YRfe3wl7oCCE8V0DMQnM510VK4uagYr4roa
         NDbA==
X-Forwarded-Encrypted: i=1; AJvYcCWJGuzWGUNV7E8ZGzRjJE1NblGdbYyE2yQKV5vVAAccAa9gw3MoQ+VV4acuakxMFA2bP++IVlSRG8LB@vger.kernel.org
X-Gm-Message-State: AOJu0YycqaloiampDBjhvfrTnxK5BQIWZvRT9GosXjIun1oQbCsYZaam
	loufbUYqYNnQ536143oecUiIFg1c4ssHxni+4rifdtVlsB5uOYSpQLaTaby1oWY5
X-Gm-Gg: ASbGncv6+x/0KOTymZ40mUnnggUsx9mIXuq4/uVBMnsLtsCiEHltz/GNDU4QouFZlDa
	bgew0qqGg9YGx9fwDEcnNvaGvCREf4Y7YGiVdgrAn5qWtM4nG8EMZZaegn6qwJAMdTbGfO52Cxq
	NU+UWP68owzeQYRivpnvwEsb+4ZLzsazYXkJ3LJfkdo+DsKejSSbezrOW3byIURTQgxQwt5V2XM
	IW7QD0kMDFvp8WRIHIUdwH3fgHliE+y9apCwEE7FnuZB4nXbi0oTwapDzzs0wsm7Wt6e0XdL17O
	/cbPSlFzlU3iU5bk1Xnv4oiJFbjHEXUm4Y3fp2tVN0eFhNMUZPIcqYSafDnlM4H7+OHjzm/Q2z7
	Whw5efdsVTXvbE8US/HjoHsqW1OvCXK+nOe+roU035iJCc9HQfGXLv0874emIiTC7RGjcrN4vRY
	rZk5Uw1qSAiqSs74ELlOJfV6AtDQ==
X-Google-Smtp-Source: AGHT+IFzFKXXmzM6dN5RZJw7Ftapo+Zr47psegQMmyZHZB026uVazIjrxM7ymwGOI3B4kPadLZCnrQ==
X-Received: by 2002:a17:903:1210:b0:266:64b7:6e38 with SMTP id d9443c01a7336-28e9a6dc994mr115732895ad.46.1759706720577;
        Sun, 05 Oct 2025 16:25:20 -0700 (PDT)
Received: from ?IPV6:2804:7f5:b08b:8d8b:4efe:bacf:243c:8ba8? ([2804:7f5:b08b:8d8b:4efe:bacf:243c:8ba8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1d95a0sm113075095ad.115.2025.10.05.16.25.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Oct 2025 16:25:20 -0700 (PDT)
Message-ID: <9ee20209-efba-44b1-9902-5885bacfb290@gmail.com>
Date: Sun, 5 Oct 2025 20:25:12 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 2/3] iio: adc: max14001: New driver
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Kim Seer Paller <kimseer.paller@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
 Marcelo Schmitt <Marcelo.Schmitt@analog.com>,
 Ceclan Dumitru <dumitru.ceclan@analog.com>,
 Jonathan Santos <Jonathan.Santos@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>
References: <961e5351afa408e69541b60ec75852fbbd1ddd24.1759121938.git.marilene.agarcia@gmail.com>
 <476b75cff0c3e5ff23ba7c642924511f3ba09a3f.1759121938.git.marilene.agarcia@gmail.com>
 <CAMknhBHt9JVkaf1Kq76BKFM-Ff38-7ws6gaq+5fwy=pAih-fww@mail.gmail.com>
Content-Language: en-US
From: Marilene Andrade Garcia <marilene.agarcia@gmail.com>
In-Reply-To: <CAMknhBHt9JVkaf1Kq76BKFM-Ff38-7ws6gaq+5fwy=pAih-fww@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 01/10/2025 11:03, David Lechner wrote:
> On Mon, Sep 29, 2025 at 7:59 AM Marilene Andrade Garcia
> <marilene.agarcia@gmail.com> wrote:
>>
> 
...
>> +static int max14001_read_raw(struct iio_dev *indio_dev,
>> +                            struct iio_chan_spec const *chan,
>> +                            int *val, int *val2, long mask)
>> +{
>> +       struct max14001_state *st = iio_priv(indio_dev);
>> +       int ret;
>> +
>> +       switch (mask) {
>> +       case IIO_CHAN_INFO_RAW:
>> +               ret = regmap_read(st->regmap, MAX14001_REG_ADC, val);
>> +               if (ret)
>> +                       return ret;
>> +
>> +               return IIO_VAL_INT;
>> +       case IIO_CHAN_INFO_AVERAGE_RAW:
>> +               ret = regmap_read(st->regmap, MAX14001_REG_FADC, val);
> 
> I don't remember... did you give a reason why this should not be a
> separate channel? Or just use REG_FADC as the raw value and forget
> about REG_ADC? In any case we would want another attribute to control
> the filter window size.
...

Hello David,

Thank you for the review and suggestions.
Sorry for not adding any comments about that in v12. From what I 
understood from our previous conversation, for now the code could have 
one channel to keep things simple, since we’re not sure if anyone will 
actually need to read both the filtered and unfiltered data at the same 
time.

I was thinking of sending a separate set of commits to address that 
after this one gets merged, as it will involve new code changes related 
to adding a function to configure how many ADC readings are included in 
the mean calculation, and adding a new attribute to sysfs.

Since both IIO_CHAN_INFO_RAW and IIO_CHAN_INFO_AVERAGE_RAW are currently 
returning the same value, I could drop IIO_CHAN_INFO_AVERAGE_RAW in v13 
and add it back in the next series of commits to implement the related 
feature.

I would like to know your thoughts about it, because if you prefer, I 
could change my plans and implement it in v13.

Best Regards,
Marilene


