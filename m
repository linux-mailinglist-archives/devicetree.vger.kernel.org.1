Return-Path: <devicetree+bounces-126595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCB99E1FF4
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 15:50:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5537CB2932A
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3A461EE019;
	Tue,  3 Dec 2024 13:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="GZJ3PeU8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9091DF96C
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 13:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733233222; cv=none; b=rF0L5n+sPuLRMLeA2jZ1/V+APwMJ6RhBX368/JV96u+zSwv3nDteww++ANtDJlk0c4MeFrVabJSm0kHcJt96eFn7ZWGX+DapxehNgjsJz9pzjKPqOXtWpqhaWOAB70p0sRoAe/+xQtC31QaPtIA1eWhp5xXPmKK8YY+hJPX9D78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733233222; c=relaxed/simple;
	bh=gVds39EeL4HS6vcGaHXuEyB+vHQeohJ5fv2/hLPIul4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LCHpFdNlI2n/bEcUrsYTW3SafpZG4ZsCjDGoNgpiTzIDeXRWbO5MHEv2HtDtw30w4Eps9CrIhV6sVsATc+V/cHy91IaMJM2vhnc5MZiZPJczXGqmtk5ujV1s8tZj2zcKZcqYU69MY780DyiQzmi9+4iJtFKkqCTxAKnpLANE7c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=GZJ3PeU8; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-434a83c6b01so48591895e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 05:40:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733233218; x=1733838018; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xEoCnIl9TBM7hPMoS20hxmppTJP/LxiF7FoXkx67aU4=;
        b=GZJ3PeU8VnU9pLKWvDKVZm5sEMXDYkETuYBchqHHHYenHH0al5S2YjBNJ8fRLZw75t
         g5Trmf9qympemvmVGa8Pr7ND49RFgGRrYdrzcOviULkOoKHrUs2VCisdtUMgidXXHIot
         KLHjmY9X6wEwr6BMvNTQcjutS5Yy+ILThetfGnwIVBya/EqEH1fXpBn+Wtcm359Zeq9d
         H9ZmPNkfH3DK0tXvSymCymynzQAdUg1B7VdGAZecVCeZSWBLESukvu9M/UqYggnoTwjV
         WO79jfWQUB9Vl5RVZHR5Ay98us9dcB5Bi2lIa0dwmB8JChjBOFreN460cj/+w8aWVyoU
         PM/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733233218; x=1733838018;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xEoCnIl9TBM7hPMoS20hxmppTJP/LxiF7FoXkx67aU4=;
        b=ONc5bEknmEFhy6dolOwBgjatl4Ul90VRjDsGzLA7/NJ3K7z/OfIs6Il+cIic3jy/yf
         YRnUfAzfSH9Ke9z1ThOMouhyj3qBKvY+VCykVp3fOc17YBxZgwtl2qd0jdUr2UAYZZh9
         0DjVRV7we4lk51Bpwlzox1rcmqh3vzRgDZDyTVV3cq/Z3IoULiw76Jceb2Ky46hnzjwb
         c7OmQkl6/pW2nu/fXgQhrqlOjx9nCCXCgj63NAhz9hhQy+gClD7m2k4hj7xCTwXtDUf9
         YmD9BuZtFdPARPMHmzR9GfLu7z7v9V4FZJVvgbwaUXCDfH2WNcBWinwt+BOFWsk1zad7
         LiGw==
X-Forwarded-Encrypted: i=1; AJvYcCWkeEf5EftsaU0CDCAnpPB8Il0RY82Uh1+k5dwKnQ1Rx6iFCtjovFPACxhYrCJAymri2vYLUne9I6sV@vger.kernel.org
X-Gm-Message-State: AOJu0YxiawJtbEjr5qZZmv9IyRQlgHKPMLAQ+ilDOEOpetWe/uq9djtl
	nSxw8/bxCKsHVUv7wVdb6fhNdk1bxurDGUM9eGqV2LUbSs7yIQ56mbo5Ea6Dnbg=
X-Gm-Gg: ASbGnctsGWGo+YMiiLyWAuLst+DFPSKsS0VcMl0eOKNhBTVGZ9yCisWg9m4cLGFxG9J
	datkTgoI/hh9rukJ3cFtEIl4EOOJAJcwizXYvMRu5MBr5BOi5ATfzpQJGiE4jq1DfHVv/LI0URh
	mkmj7OLNIhCQ1ST2S72OzEe5VIkaJjkgj5gj6Pws6JzbZdXfZ040yDXsmCR2o4J9M69mZFG+IZh
	FYZW/JabSmz99XIDKnDyy7cM2ll6P2VW4DQXKbIxSieQTaVQJcTVoazXao=
X-Google-Smtp-Source: AGHT+IEkPw+a3028ZQyrhsgmHH+SzklBTFms6yyL7p+03ifSENO+S3RHSgC/4IQpypF76SJjGitgmA==
X-Received: by 2002:a05:600c:4ed2:b0:434:a7b6:10e0 with SMTP id 5b1f17b1804b1-434d09d00c5mr22741135e9.18.1733233217778;
        Tue, 03 Dec 2024 05:40:17 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434c132b4c8sm122292095e9.36.2024.12.03.05.40.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Dec 2024 05:40:17 -0800 (PST)
Message-ID: <3f2dc65c-61e9-4d4b-9610-4b106bb691cc@tuxon.dev>
Date: Tue, 3 Dec 2024 15:40:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/14] iio: adc: rzg2l_adc: Simplify the runtime PM code
Content-Language: en-US
To: Paul Barker <paul.barker.ct@bp.renesas.com>,
 prabhakar.mahadev-lad.rj@bp.renesas.com, jic23@kernel.org, lars@metafoo.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, p.zabel@pengutronix.de
Cc: linux-iio@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20241203111314.2420473-1-claudiu.beznea.uj@bp.renesas.com>
 <20241203111314.2420473-4-claudiu.beznea.uj@bp.renesas.com>
 <9fbf057c-164b-4451-85a8-cf4d5807b4c1@bp.renesas.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <9fbf057c-164b-4451-85a8-cf4d5807b4c1@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Paul,

On 03.12.2024 14:53, Paul Barker wrote:
> Hi Claudiu,
> 
> On 03/12/2024 11:13, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> All Renesas SoCs using the rzg2l_adc driver manage ADC clocks through PM
>> domains. Calling pm_runtime_{resume_and_get, put_sync}() implicitly sets
>> the state of the clocks. As a result, the code in the rzg2l_adc driver that
>> explicitly manages ADC clocks can be removed, leading to simpler and
>> cleaner implementation.
>>
>> Additionally, replace the use of rzg2l_adc_set_power() with direct PM
>> runtime API calls to further simplify and clean up the code.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>  drivers/iio/adc/rzg2l_adc.c | 100 ++++++++----------------------------
>>  1 file changed, 20 insertions(+), 80 deletions(-)
>>
>> diff --git a/drivers/iio/adc/rzg2l_adc.c b/drivers/iio/adc/rzg2l_adc.c
>> index 7039949a7554..a17690ecbdc3 100644
>> --- a/drivers/iio/adc/rzg2l_adc.c
>> +++ b/drivers/iio/adc/rzg2l_adc.c
>> @@ -8,7 +8,6 @@
>>   */
>>  
>>  #include <linux/bitfield.h>
>> -#include <linux/clk.h>
>>  #include <linux/completion.h>
>>  #include <linux/delay.h>
>>  #include <linux/iio/iio.h>
>> @@ -69,8 +68,6 @@ struct rzg2l_adc_data {
>>  
>>  struct rzg2l_adc {
>>  	void __iomem *base;
>> -	struct clk *pclk;
>> -	struct clk *adclk;
>>  	struct reset_control *presetn;
>>  	struct reset_control *adrstn;
>>  	struct completion completion;
>> @@ -188,29 +185,18 @@ static int rzg2l_adc_conversion_setup(struct rzg2l_adc *adc, u8 ch)
>>  	return 0;
>>  }
>>  
>> -static int rzg2l_adc_set_power(struct iio_dev *indio_dev, bool on)
>> -{
>> -	struct device *dev = indio_dev->dev.parent;
>> -
>> -	if (on)
>> -		return pm_runtime_resume_and_get(dev);
>> -
>> -	return pm_runtime_put_sync(dev);
>> -}
>> -
>>  static int rzg2l_adc_conversion(struct iio_dev *indio_dev, struct rzg2l_adc *adc, u8 ch)
>>  {
>> +	struct device *dev = indio_dev->dev.parent;
>>  	int ret;
>>  
>> -	ret = rzg2l_adc_set_power(indio_dev, true);
>> +	ret = pm_runtime_resume_and_get(dev);
>>  	if (ret)
>>  		return ret;
> 
> Should we check (ret < 0) here instead of just (ret)? According to the
> docs [1], pm_runtime_resume_and_get() can return 1 if the device is
> already active.

The v6.13-rc1 implementation of pm_runtime_resume_and_get() is:

static inline int pm_runtime_resume_and_get(struct device *dev)
{
	int ret;

	ret = __pm_runtime_resume(dev, RPM_GET_PUT);
	if (ret < 0) {
		pm_runtime_put_noidle(dev);
		return ret;
	}

	return 0;
}

It can return zero or negative error number.

Thank you,
Claudiu


> 
> [1]: https://docs.kernel.org/power/runtime_pm.html#runtime-pm-device-helper-functions
> 
> Thanks,
> 

