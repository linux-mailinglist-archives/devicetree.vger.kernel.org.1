Return-Path: <devicetree+bounces-14126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A567E2101
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:11:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E39C528117C
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D8051EB48;
	Mon,  6 Nov 2023 12:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kV4p4gsq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380BA1EB36
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 12:11:01 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C30AA1738;
	Mon,  6 Nov 2023 04:10:52 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5079f9ec8d9so4721643e87.0;
        Mon, 06 Nov 2023 04:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699272651; x=1699877451; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MMxegShV/D6NDyDRrRXdx2NxWkZkXKbvNLRDr7qvSs4=;
        b=kV4p4gsqymTKaD6AUPjx2GVku+CpIOGRGNyQjp6jKsmnqTvGGspuUyEAh05ZhCoj5s
         oVOlFAxXDx9aipY+40arstYT6aFbfjmpZe6FjhUaacYmIqX3nx68WLpAh+FjVUj4LtLR
         JTC7V2c457EMUBDfb1eDO0qmp5rORWt7l5zrD+ks1I1v3tB9Ah2KBPtecMjD6GymUGpF
         LFCLeeyjubA4XX4RAoZiJnC2QM98kls3rSrph0ZNcwxGRHTC2FsY471AUCKrwwcDLGCv
         mM7iD41VtjWWS1PSEtLTaSetRHBH19uhrrtjZT01KcDJJCYKXtRtvZE6C3tsrF8aIJRO
         M1GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699272651; x=1699877451;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MMxegShV/D6NDyDRrRXdx2NxWkZkXKbvNLRDr7qvSs4=;
        b=Qt74JdD7QWtmavdWhLxfOHs+DhbuxSynqbxDdM7Ci5Q5zXHWTVE32zK0PGlwTlPUE7
         lV6mz/ffEtuyLB9bud2xx8PvvYMEUoTxbqnB+ihigv+7JpDOYEEgfCVUvpPmcvas5sJU
         LdU5eEW29afIcQH7zYYlIdMFGslIkX7WBTvx8Nxeo8nomVcwqv4BBHb8X+GIqhRQA5rU
         x4oggtKBxzgsrLNnyXXqJNL97uSSC2jG7mjf3McGyzky2SYcyVKL5fS8UaNWUdXLHQrH
         5Yaz/yRe32evFB435hYCpi2jRkpeD1b0RtKZ9RqoJPgMhylbISc19JjTSkGVHBEfNgxA
         fkTg==
X-Gm-Message-State: AOJu0YyCZosvCySKJdpSHPKaIIvDLrGERfyqZ9hJNZdEvCVpZlwajpvQ
	CFjBHahn1ZU+Tp3iaAKQWfGvQB7Drm+rvg==
X-Google-Smtp-Source: AGHT+IGNanNmPB4DrHOGumNqmVz/FngXrrvprQBfKmGteF6jUdxivzS47dDhcdO9kE9MW4pY0/HctA==
X-Received: by 2002:a19:ca07:0:b0:4ff:839b:5355 with SMTP id a7-20020a19ca07000000b004ff839b5355mr3729383lfg.18.1699272650459;
        Mon, 06 Nov 2023 04:10:50 -0800 (PST)
Received: from ?IPV6:2001:14ba:16f8:1500::1? (dc78bmyyyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:16f8:1500::1])
        by smtp.gmail.com with ESMTPSA id x1-20020a056512130100b00507a7f55a92sm1129131lfu.61.2023.11.06.04.10.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Nov 2023 04:10:49 -0800 (PST)
Message-ID: <e995ee76-7dc3-4a4a-80a3-fca1ac7c5a9f@gmail.com>
Date: Mon, 6 Nov 2023 14:10:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] iio: light: Add support for APDS9306 Light Sensor
Content-Language: en-US, en-GB
To: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
 Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Paul Gazzillo <paul@pgazz.com>, Matt Ranostay <matt@ranostay.sg>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231027074545.6055-1-subhajit.ghosh@tweaklogic.com>
 <20231027074545.6055-3-subhajit.ghosh@tweaklogic.com>
 <20231028162025.4259f1cc@jic23-huawei>
 <2974aa13-796c-49ef-bef7-fd7f3f9b7f49@tweaklogic.com>
 <20231106111355.2f8dfaa1@jic23-huawei>
 <307f93f9-2a41-4704-ac4f-8d1e427e5060@tweaklogic.com>
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <307f93f9-2a41-4704-ac4f-8d1e427e5060@tweaklogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/6/23 14:04, Subhajit Ghosh wrote:
> On 6/11/23 21:43, Jonathan Cameron wrote:
>> On Tue, 31 Oct 2023 19:08:08 +1030
>> Subhajit Ghosh <subhajit.ghosh@tweaklogic.com> wrote:
>>
>>>> Scale on the intensity channel is interesting...  What are the units?
>>>> There tend not to be any well defined units for intensity (as opposed
>>>> to illuminance).  There may be gain on the signal, but it won't be 
>>>> in untils
>>>> that map directly to a scale userspace should apply.  This is one of 
>>>> the
>>>> rare reasons for using the HARDWARE_GAIN element of the ABI.
>>>>
>>>> A tricky corner however as relationship between raw value and 
>>>> hardwaregain
>>>> is not tightly defined (as it can be really weird!)
>>> Hi Jonathan,
>>>
>>> Thank you for taking time for reviewing and clearing all my tiny 
>>> doubts and
>>> queries especially for the dt and versioning part. Much appreciated.
>>>
>>> In the above case, should I not expose scale for the "clear" channel? 
>>> Rather,
>>> how should I expose the "clear" channel to userspace?
>> What is the scale?  What units to you get after applying it?
> The scale is in Lux. The output after applying is Lux.

Hi Subhajit,

I am by no means an expert here but maybe you could check if the channel 
should be of type 'illuminance'? (To me 'Lux' sounds like an unit of 
illuminance rather than intensity).

Yours,
	-- Matti

-- 
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~


