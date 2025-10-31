Return-Path: <devicetree+bounces-233580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A25EC23A5C
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 09:03:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B55AE34DA31
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 08:03:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5151F2E2663;
	Fri, 31 Oct 2025 08:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PrpmTPir"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AA017E4
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 08:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761897788; cv=none; b=nbb+CPKA77Dl2mjPSTsY+bcsaLxd04OAgWDHhYAaJpasYG7B6PJc8E0zaYMfJHZi9H98WvlBLvlr0uks5jMuBT6jwUfeoJtSfI06xm9sTSAKudwnWQ77FxWolS/LL8PsR60DXoudlOizdGrWcXNSTxF/hDwNRuFPjpElk5Zfh3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761897788; c=relaxed/simple;
	bh=rP/EAMI45WYJlvg0iRFxgh/OmWO0tg41yWxJgWgYAAo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U5Tkiop4eCw7mKDJpWkoy6mfO1SwPefQW9xZl6fwqGQNkE5JsJ7f48Fp5JvaNi1V9GDJ/7996QnP1a2YLD6ImcVPR5Fd/7F0g+d4WFNhpsCroplRnQlGH8UfbtUuClGS6NLmljCBp77aixyqEG7lpVOz3OE/zTw4DrYypCsHh1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PrpmTPir; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-475dd559b0bso25479415e9.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 01:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761897783; x=1762502583; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iuxiUkBLx8vKlnec9/5CywDzn8GdyQUbr0sVZo29GFE=;
        b=PrpmTPirpG7QvI3eiWvG2RVErrKFQJCllGhmqkOf4oIeeMGoi/eejISvRZO6cNHrnG
         j87SMro0V3O+zfgFdDaUXl3qqeyKIhAMX32ZQCF/gWwQdU5LO+d3Tg3gjLjblA4LldZ/
         FfDYx5DzE+XFX6Tuy4KDHp2W1JJF/wAOnBHBFAJR7ToPX8DQai0zILIe/I2Qmy9V7nTo
         gbMiceQOfxWZiKt3Pi74MSBEkfWrTcSYmpL1GDsSazZCpgKR7tOw6YyXYc+STRtydoQb
         DWOKytn/eVYM7Ur82NrKQ1ztIk4wcb2KywgUtMyxs9s3s8BiaXwqu3MhR06mc4Gme26d
         nH/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761897783; x=1762502583;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iuxiUkBLx8vKlnec9/5CywDzn8GdyQUbr0sVZo29GFE=;
        b=P8V7W02ilijzwMXUllcdQ3TSfWIhfVvR4pitRi75lTMeHeqIIkHhtK9fS9ilO6m3js
         mOM9A2fJukG7Sfvx3tlWzvK5LJgyw9xAVF5bmtFpsl4XQqemfN/xOcD2a7WT8hK9+8in
         9irelAJVVWHeewg6iK04zasP+jVLOSXMufg5yInkWtpYoB27cClTsMpBjIAoekTvvuv+
         DBL8rfNZUjYxq8FnQLKqQijlcsb2qW0tdy5gzitn2r6JtpKWq4MiJaTW1Fh8QfrqKYtR
         82cQoO3Zpd4GuT9Wfg9ZKMy57HuFUjJZm5LsOP8Y4DMkhipPweRiinsKp/Atwqx0s/cV
         TyhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqoAyjHHfT9G9V29G99Lf/+7NGqmXJ15xE1ZqSBoDkIYtzYJvDSdGfMDBuXLteQEfyK7A4PpcdNgxJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyDxSMgrA0OJ/UFcs+urHuGcWMb1WGdc71JLFM5RFCzv/pJgN6l
	KMv6RuK4dBRnGvKHjteXgpbWm2gM2x+W7+rISI9KhD0aFLlX4Ta1XfeCLHFuwlZlm+EEqvXEW4Y
	9T2286ZM=
X-Gm-Gg: ASbGncs3h8/jTc8a8HeUimfxKKGmB+dNzfCK79A2ROjL+mxtJRlmros81X72qG4cciu
	kmfH03qH88mQkurVuvJsOFm0HPtgk8wXymFp2VW3G8Zzi/Re+vD7bst99GbrAFkA9Gxn93hv8i9
	NoKx6rZjYsdBqIhLEGfeYTJJI9L/uCtQzZmycAVojJk33IytANoqjsKITYAmS3/BJ8h4wQI7bWm
	e1gritz3aLQdLZAyGpiVTMxkGQZs8wYaqqz7fIRma6Qjy06Tc8prlXWAGNhFXxay2RASEKgKRwF
	alDcqfHDziETCAz+HHyS9FGiOC7y/uTKBuQtfF6KyxbysOo539KuJvygvAm5+9xpDBt6An8ldyH
	ra3d46mRWwMHhd0u66n3V3JDvb/4rwDCJuiq3aTMKiDMP3cah2rp3OhBNo+W9tkUwpWagKSGWJo
	eiZYcYwBsCmeVeKEB9ucmGC5DoPbBD48h+uI3rtegsKFB5b4GENo38jRzKmyAN
X-Google-Smtp-Source: AGHT+IErZEMZ8RsUWbyCgbeb1Q5ZNzR29K+yKSMn2AYjlqALM0mnJriWuWEedLWtLw+5aAf7+4a+8A==
X-Received: by 2002:a05:600c:3149:b0:45d:e6b6:55fe with SMTP id 5b1f17b1804b1-477308e5d8amr25954095e9.34.1761897782651;
        Fri, 31 Oct 2025 01:03:02 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:2b:468c:c228:91bf? ([2a05:6e02:1041:c10:2b:468c:c228:91bf])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-429c114ca0csm2361827f8f.21.2025.10.31.01.03.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 01:03:02 -0700 (PDT)
Message-ID: <2316cd4e-737d-4596-b713-2f29928ab26c@linaro.org>
Date: Fri, 31 Oct 2025 09:03:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] iio: adc: Add the NXP SAR ADC support for the
 s32g2/3 platforms
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 linux-iio@vger.kernel.org, s32@nxp.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, chester62515@gmail.com, mbrugger@suse.com,
 ghennadi.procopciuc@oss.nxp.com
References: <20251017164238.1908585-1-daniel.lezcano@linaro.org>
 <20251017164238.1908585-3-daniel.lezcano@linaro.org>
 <aPP0uVZu1T7tTQGo@ashevche-desk.local>
 <050f96d5-e60c-4b33-b6d2-24fb3925e378@linaro.org>
 <aQMvqHGN7r6babgw@smile.fi.intel.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <aQMvqHGN7r6babgw@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/30/25 10:28, Andy Shevchenko wrote:
> On Thu, Oct 30, 2025 at 09:27:21AM +0100, Daniel Lezcano wrote:
>> On 10/18/25 22:12, Andy Shevchenko wrote:
>>> On Fri, Oct 17, 2025 at 06:42:38PM +0200, Daniel Lezcano wrote:
> 
> ...
> 
>>>> +#include <linux/circ_buf.h>
>>>
>>> Why not kfifo?
>>
>> I'm sorry but I don't get your comment.
>>
>> Do you mean why not use kfifo.h or use kfifo API and change all the code
>> using the circ_buf by the kfifo ?
> 
> Yes, I mean why use circ_buf API and not kfifo API.

Ok, thanks for the clarification.

At the first glance, the resulting code with the kfifo API would look 
nicer. However, on one side, the current code was largely tested and it 
is running on a production system, on the other side the IIO framework 
will evolve with the cyclic DMA support and this driver would be 
converted to it when ready.

I can convert to kfifo but if it is changed again for the new IIO cyclic 
DMA, I'm not sure it is worth the effort.


[ ... ]


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

