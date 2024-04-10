Return-Path: <devicetree+bounces-57943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C574B89FAA2
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 16:55:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B3B9289277
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14DED179656;
	Wed, 10 Apr 2024 14:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OdQmOSAg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1AD316131C
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 14:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712760546; cv=none; b=nEfumPjy8z46eHK/YikZjVjatun9+q9Tmuakhh2fjHpcza3XVH0ualGn0bdtWMqVSopOBxbcBU0fat25xVfEXl3A4HA+64H0jq+uKs/tPqmr5FKgeBm1yCgKIMbSM23QpPhSmHYLyQ6UNRzWn6qv8/aF23S2zsd5qj7rjLG9PY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712760546; c=relaxed/simple;
	bh=ODR3LlzVReeWBKkDmMUqGx9vghB+8GICNyVhGYLOz48=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=quvcpDLx8bpxux39v4qALO+Q734WaRLeudTDtcoRnzCtKEnDZB6bJ//x7+BBKGShW8JFbbKhthoYkXF2icEQWhEox5qhBODeP/S6GTd9pcsGrcPsR24hgKyH/kb9Eseu65ppn0+k48V7+4oMjd3n8g+ep13Qb2TmTMQj7uuBndg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=OdQmOSAg; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-416a0878ad9so13687385e9.3
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 07:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1712760542; x=1713365342; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rDljF5UwAL8ogaU09DcFaFSLwYX8gx0ICHk+/9AMJfI=;
        b=OdQmOSAgr+KEC/qXsr82JmllZ8L4qn+Oc/AHCKTEVHFMBVtljKeomy1bpH4ai48qno
         bICNpq8v9s8PKeaUOSSODV5vU1FEPiuikzYnxTLkOdyyK3UcxXK+MHqWUxsYAu7s8cIY
         FtyALpEweDQS5J2v0zNUNVu988g/pT0L0IkESTkARIe/TBflVeYgODInciSsIz8IRr7M
         sptE9EUY5impjA4WCE8R0VbkIxrdDzIiPe96F9Wzy5HRYXcpUFkiLIAfdtsCiOKLz8vT
         LPFISeRlBCRLfRM3+ji5VwCv/HcatpKumh2IPcy+4pv0FgCg0dVYWKkOmxd9Mupw0RZl
         BgqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712760542; x=1713365342;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rDljF5UwAL8ogaU09DcFaFSLwYX8gx0ICHk+/9AMJfI=;
        b=egDQ6Gqdqcy1OGfuetyJKX+Vl/O+hvMW4jSGLrAKJhwrfnOVGenESsQifbf6wATlUX
         lX5ZYm8xpIdy557hsodPgr84rtZiNBDAAbRMEYKBp5EAPvALPa7vb6pn8PEJAaz0NClS
         C4OMUQBvT1GObY+MjJ3nHE3t18sac/SS66lhVKyVXbaEMXu0e0TmMzP2hcuDkw+r+Lhn
         Gem4RCAI6hnJXiD35TCytN8TN8ui8Aby3z3ub0F7VCcRmNcn1MhVm0MIXqc1qfkJBJDp
         3uyvm1PMu/uJs47c+xzHnWkyhJRk7oidVa9RU8D2T7A0JOrhR5xmkgCLKhNDiFrftR0b
         Suqw==
X-Forwarded-Encrypted: i=1; AJvYcCUkaoftqz+P2L2JN+x/t3REhlYfMDQByZ0l/yDAh6X1YoVTdDsH1Mg2yIWhy5qEyqFRqGh7eI+JlUyhiEPAqpe9EvNGe8HwUeqCZQ==
X-Gm-Message-State: AOJu0YwEGsJjo80RrnS1pWjlYn5g/kDFFOInoyp8CgZWIdxj3Tqa72ee
	XaSw/ZUPhaVxKJk8P5cG7DtPwZH3JqepcEcsOLEnKsTIl9HsUcKxza4Od/aLoa0=
X-Google-Smtp-Source: AGHT+IFbbDrSg/5Tn46+VRiEUOQDm+9mlOutcLa7TRfXpUWkzTFUcpxFRvhX55oWsIsH5vOq7KMmnA==
X-Received: by 2002:a05:600c:4f47:b0:416:32b8:8f3b with SMTP id m7-20020a05600c4f4700b0041632b88f3bmr2107910wmq.17.1712760542159;
        Wed, 10 Apr 2024 07:49:02 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.8])
        by smtp.gmail.com with ESMTPSA id he8-20020a05600c540800b00416a08788a5sm2480442wmb.27.2024.04.10.07.49.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 07:49:01 -0700 (PDT)
Message-ID: <4bbddd59-0bb4-4084-9968-139b88dc2c86@tuxon.dev>
Date: Wed, 10 Apr 2024 17:48:59 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v8 03/10] watchdog: rzg2l_wdt: Use
 pm_runtime_resume_and_get()
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>, "robh@kernel.org"
 <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>
Cc: "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240410134044.2138310-1-claudiu.beznea.uj@bp.renesas.com>
 <20240410134044.2138310-4-claudiu.beznea.uj@bp.renesas.com>
 <OSAPR01MB158744E15B527496A8ABA4CE86062@OSAPR01MB1587.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <OSAPR01MB158744E15B527496A8ABA4CE86062@OSAPR01MB1587.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10.04.2024 17:13, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: Claudiu <claudiu.beznea@tuxon.dev>
>> Sent: Wednesday, April 10, 2024 2:41 PM
>> Subject: [PATCH RESEND v8 03/10] watchdog: rzg2l_wdt: Use pm_runtime_resume_and_get()
>>
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> pm_runtime_get_sync() may return with error. In case it returns with error
>> dev->power.usage_count needs to be decremented.
>> dev->pm_runtime_resume_and_get()
>> takes care of this. Thus use it.
>>
>> Along with it the rzg2l_wdt_set_timeout() function was updated to propagate the result of
>> rzg2l_wdt_start() to its caller.
>>
>> Fixes: 2cbc5cd0b55f ("watchdog: Add Watchdog Timer driver for RZ/G2L")
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v8:
>> - none
>>
>> Changes in v7:
>> - none
>>
>> Changes in v6:
>> - none
>>
>> Changes in v5:
>> - none
>>
>> Changes in v4:
>> - none
>>
>> Changes in v3:
>> - none
>>
>> Changes in v2:
>> - propagate the return code of rzg2l_wdt_start() to it's callers
>>
>>
>>  drivers/watchdog/rzg2l_wdt.c | 11 ++++++++---
>>  1 file changed, 8 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/watchdog/rzg2l_wdt.c b/drivers/watchdog/rzg2l_wdt.c index
>> 1741f98ca67c..d87d4f50180c 100644
>> --- a/drivers/watchdog/rzg2l_wdt.c
>> +++ b/drivers/watchdog/rzg2l_wdt.c
>> @@ -123,8 +123,11 @@ static void rzg2l_wdt_init_timeout(struct watchdog_device *wdev)  static int
>> rzg2l_wdt_start(struct watchdog_device *wdev)  {
>>  	struct rzg2l_wdt_priv *priv = watchdog_get_drvdata(wdev);
>> +	int ret;
>>
>> -	pm_runtime_get_sync(wdev->parent);
>> +	ret = pm_runtime_resume_and_get(wdev->parent);
> 
> Do we need this change at all? 

I haven't encountered issues w/o this patch, though I've did all my testing
(including suspend to RAM) with this patch on my tree.

> If we have balanced usage then
> this won't be a issue.

I think we should just use the proper APIs w/o making assumptions.

> Did any unbalanced usage count popup
> during the testing?
> 
> Cheers,
> Biju
> 
>> +	if (ret)
>> +		return ret;
>>
>>  	/* Initialize time out */
>>  	rzg2l_wdt_init_timeout(wdev);
>> @@ -150,6 +153,8 @@ static int rzg2l_wdt_stop(struct watchdog_device *wdev)
>>
>>  static int rzg2l_wdt_set_timeout(struct watchdog_device *wdev, unsigned int timeout)  {
>> +	int ret = 0;
>> +
>>  	wdev->timeout = timeout;
>>
>>  	/*
>> @@ -159,10 +164,10 @@ static int rzg2l_wdt_set_timeout(struct watchdog_device *wdev, unsigned int
>> time
>>  	 */
>>  	if (watchdog_active(wdev)) {
>>  		rzg2l_wdt_stop(wdev);
>> -		rzg2l_wdt_start(wdev);
>> +		ret = rzg2l_wdt_start(wdev);
>>  	}
>>
>> -	return 0;
>> +	return ret;
>>  }
>>
>>  static int rzg2l_wdt_restart(struct watchdog_device *wdev,
>> --
>> 2.39.2
> 

