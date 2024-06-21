Return-Path: <devicetree+bounces-78468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FC39125F6
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 14:51:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9A821C25129
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 12:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6185155315;
	Fri, 21 Jun 2024 12:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="kMDH4Xsq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC20155739
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 12:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718974163; cv=none; b=skVD0ra+FEdM6KJ+thn/2po4QaWglWD6ajF7R0BJRdFd/SKLu7c7ZibmdX8tpsIDykA+bbLyinco5tl/sSMoh5Z+xfnDnP16ujgmSTS11ss64ZgtWdDobIS5h2cbeio8YVkaoVSYkEGqiWqC0U2z3Axq/rAMcGFJdHUIsfNS++0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718974163; c=relaxed/simple;
	bh=c4lSndExJ/cc5eNCheDMr9J3W43LWQlWV5UyZYy72rs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UgVgChKPU2V2ck2TpsHFfBhkcl9VUV/N7rx9ck8JAlUPVTblWl+7S60Amomv0QCmyi2XzUa7kfBLkGBheVrCNm3dmwbj9nHXBuoy4P67iTDdERdKrR2Q2AbZw78epf2V6ayf5SZcXdd2isTftuh8kDbYvZbdFYfe7YAgBzPswmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=kMDH4Xsq; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-57cc30eaf0aso1092223a12.2
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 05:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718974159; x=1719578959; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RD+QCLuzt4S0oOl+2dqbiZ8N0PvfenhMgob7uoU9cwc=;
        b=kMDH4XsqFV/0DbkxnHYq7N3Wao5LpiimazNdSSYGfYTNhm2H43fQVirDgsRJ7YKymY
         mWAKiQUqqjfyMlJoh3mq9iJI+81h2bCntVkujJ/hBcJGbPN/SsKR7tfhu/fCuTZjMl52
         ujZ11AxqyTVjCdD4aIQD6YY64tpQnWueIKkrwRo7Hp9a/xJBbyvQoxDF0ae0Q4zjMAcG
         0pPh6urNnlFVSURwlb6zLtSUrsgaA8HQGnUxWbL0eVcJ0aPSye+WVVqWlWXnmobdtu8l
         OJkqbNyZSzcLFOdDxdVKZb3lIIsKoasR382gYCgm/07uIp9fZpiX6lgOfcPeMwgttCnF
         9KDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718974159; x=1719578959;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RD+QCLuzt4S0oOl+2dqbiZ8N0PvfenhMgob7uoU9cwc=;
        b=gWKHStEYITZXONoXGt3R9IKBEkguvnt6jo982VSlj0OxPRRFlwReQtLtGdY769EG7c
         dVLy2w1exEvsODEiZQmXITjRbRJ74xU1nvyDK/Ye3KviRhRotecSG2yHyzw0Acr68h6L
         XI37mkasn3Z21GSoW2wHBlEpYsjy/PZDHzFb0vv+DFCAuB3DnDVyjEUTvekgf+B6QgwO
         KGuXnMe19WeXFO9oWlRY1hgNK2gjKcrYXq6L0aiibyDGRXMH+opGrFob/gFU6FblkwsU
         YIV+VjvZIQ4JxnihzC5HYOUq3ZZ/wPPTTpsF2BgU+/LZ3HL+5sF6gnW9b4AeHshIa9G3
         EPMA==
X-Forwarded-Encrypted: i=1; AJvYcCWIPbLI6B8o4XKqlebH7jymFtT6ZwF4gXE5YXoDpYfI/DkQ0vn4/oAHwHosd/cSjZ1id1W642zRQIMDt/2sCQsNgb1YIs7aRQ0rPQ==
X-Gm-Message-State: AOJu0Yw/aSmp5EIEuF9FdTEC0+uJ1WezI04CB/vczeCFEh7Dr+eOm/0o
	RrzcHE9JBU4D2Fe6Is9T09Hvz9ewPFYPHR55KFBnewBktqGObeWN+laDmwBS7YE=
X-Google-Smtp-Source: AGHT+IF11C1F752WZxk5bhZLImhsRy3vnORk8rEHCQaYu1grWsvvDo6IHWo5qQhN675H1vflP/T/yw==
X-Received: by 2002:a50:d593:0:b0:57c:fc75:408c with SMTP id 4fb4d7f45d1cf-57d07e63da5mr6694311a12.19.1718974159142;
        Fri, 21 Jun 2024 05:49:19 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d30583e93sm899546a12.96.2024.06.21.05.49.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jun 2024 05:49:18 -0700 (PDT)
Message-ID: <497f8ddd-2a3a-4111-8923-fe467bd59815@tuxon.dev>
Date: Fri, 21 Jun 2024 15:49:14 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/12] i2c: riic: Use pm_runtime_resume_and_get()
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>,
 Chris Brandt <Chris.Brandt@renesas.com>,
 "andi.shyti@kernel.org" <andi.shyti@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "wsa+renesas@sang-engineering.com" <wsa+renesas@sang-engineering.com>
Cc: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240621112303.1607621-1-claudiu.beznea.uj@bp.renesas.com>
 <20240621112303.1607621-5-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB1134618ADDB552893DB00C58E86C92@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB1134618ADDB552893DB00C58E86C92@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Biju,

On 21.06.2024 15:24, Biju Das wrote:
> Hi Claudiu,
> 
> Thanks for the patch.
> 
>> -----Original Message-----
>> From: Claudiu <claudiu.beznea@tuxon.dev>
>> Sent: Friday, June 21, 2024 12:23 PM
>> Subject: [PATCH 04/12] i2c: riic: Use pm_runtime_resume_and_get()
>>
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> pm_runtime_get_sync() may return with error. In case it returns with error
>> dev->power.usage_count needs to be decremented.
>> dev->pm_runtime_resume_and_get()
>> takes care of this. Thus use it.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>  drivers/i2c/busses/i2c-riic.c | 25 +++++++++++++++++++++----
>>  1 file changed, 21 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c index
>> 83e4d5e14ab6..6b739483ef37 100644
>> --- a/drivers/i2c/busses/i2c-riic.c
>> +++ b/drivers/i2c/busses/i2c-riic.c
>> @@ -113,6 +113,8 @@ struct riic_irq_desc {
>>  	char *name;
>>  };
>>
>> +static const char * const riic_rpm_err_msg = "Failed to runtime
>> +resume";
>> +
>>  static inline void riic_writeb(struct riic_dev *riic, u8 val, u8 offset)  {
>>  	writeb(val, riic->base + riic->info->regs[offset]); @@ -133,10 +135,14 @@ static int
>> riic_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
>>  	struct riic_dev *riic = i2c_get_adapdata(adap);
>>  	struct device *dev = adap->dev.parent;
>>  	unsigned long time_left;
>> -	int i;
>> +	int i, ret;
>>  	u8 start_bit;
>>
>> -	pm_runtime_get_sync(dev);
>> +	ret = pm_runtime_resume_and_get(dev);
>> +	if (ret) {
>> +		dev_err(dev, riic_rpm_err_msg);
>> +		return ret;
>> +	}
>>
>>  	if (riic_readb(riic, RIIC_ICCR2) & ICCR2_BBSY) {
>>  		riic->err = -EBUSY;
>> @@ -301,6 +307,7 @@ static const struct i2c_algorithm riic_algo = {
>>
>>  static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)  {
>> +	int ret;
>>  	unsigned long rate;
>>  	int total_ticks, cks, brl, brh;
>>  	struct device *dev = riic->adapter.dev.parent; @@ -379,7 +386,11 @@ static int
>> riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
>>  		 t->scl_fall_ns / (1000000000 / rate),
>>  		 t->scl_rise_ns / (1000000000 / rate), cks, brl, brh);
>>
>> -	pm_runtime_get_sync(dev);
>> +	ret = pm_runtime_resume_and_get(dev);
>> +	if (ret) {
>> +		dev_err(dev, riic_rpm_err_msg);
>> +		return ret;
>> +	}
>>
>>  	/* Changing the order of accessing IICRST and ICE may break things! */
>>  	riic_writeb(riic, ICCR1_IICRST | ICCR1_SOWP, RIIC_ICCR1); @@ -498,8 +509,14 @@ static void
>> riic_i2c_remove(struct platform_device *pdev)  {
>>  	struct riic_dev *riic = platform_get_drvdata(pdev);
>>  	struct device *dev = &pdev->dev;
>> +	int ret;
>> +
>> +	ret = pm_runtime_resume_and_get(dev);
>> +	if (ret) {
>> +		dev_err(dev, riic_rpm_err_msg);
>> +		return;
>> +	}
> 
> This change will lead to resource leak. Maybe if there is error
> skip accessing the register. Or restore previous code,
> just ignore condition in remove.

Ok, I'll delete the adapter.

> 
> There are other place in i2c core driver where this call can fail.
> You could fix as well.
> https://elixir.bootlin.com/linux/v6.10-rc4/source/drivers/i2c/i2c-core-base.c#L509

Yes, there are many other places as well. Wolfram, would you prefer
touching that code, as well?

Thank you,
Claudiu Beznea

> 
> Cheers,
> Biju
> 
>>
>> -	pm_runtime_get_sync(dev);
>>  	riic_writeb(riic, 0, RIIC_ICIER);
>>  	pm_runtime_put(dev);
>>  	i2c_del_adapter(&riic->adapter);
>> --
>> 2.39.2
>>
> 

