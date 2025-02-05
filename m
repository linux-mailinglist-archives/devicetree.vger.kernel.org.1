Return-Path: <devicetree+bounces-143171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 59437A285A5
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 09:33:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2325D1885783
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 08:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8244722A1EA;
	Wed,  5 Feb 2025 08:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="lJqo5xnH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4B222A1D4
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 08:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738744427; cv=none; b=ZnI9o4gM6UpheZKKR3HSU8huPKJW4+z3lMn/KGI2z6iACtHiB9/F6C9yhCVdxRVaAJUAGqaaGevkvxGgYgL/CRyK448NyevcmnPKOiPDG9PqGwVggQM14jOWdlcW4weoSIr+zlmeMZ0ii/W46ONBPijPXjUyPSe2rCMYO6d8uN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738744427; c=relaxed/simple;
	bh=tyDu95QILmv23E+SCN8/LpSR8y4LOLUkoXXA3keVQjA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nk08gjJdxQUkJj5iewwZslqXan9/NTYoYtuHUHbArvqN9AnCfCiubXon9mjcDpDoX4qFNRBUD2SlRAmiHRyR5RIoyh0hNjoTEhmQX75M8G4y261a9bAEs7ediMsL/wP1Ku2W1ud3Mjabhxo+hRxbHLq+YU553zp1q5/bEplOCWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=lJqo5xnH; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5d3cf094768so11725238a12.0
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 00:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1738744423; x=1739349223; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZWJMgZaIr7eyfAuY5Dzkz5IEHRAy8S7VHAn+U+qmklk=;
        b=lJqo5xnHt6Vq8N9Gn4s8GqDYmsypPisnG+fjhs8ZBwjz+f5j6nh5BCBm+yrZgs1wLz
         V1d4UNhzUN8mMTENcoce2lbMaKuVy2rLPs0VVPxkUUOb9pjV5JcyoA0jKLwh474LobGQ
         iyCxx2tUcvCLaGu1P3wXxo3ce2rIeaUtXSTQtDcRTJl0lceBLWwNT6lOMgsYtrlxU9tn
         jIEceR/nqY/ksRJiuRH1kdx5UQQ6fDyRfuovPcs8BwgYwzXzTvs4qXMQC5AsbzOa7DgO
         sY5HCH/VBgvtpUgqDTjmxi0N8oEOFvhinNg26etoDzaTtDzbdxZUgPaaEH/nJ8duNPLp
         AMgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738744423; x=1739349223;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZWJMgZaIr7eyfAuY5Dzkz5IEHRAy8S7VHAn+U+qmklk=;
        b=vm7WphRDP82two2RgkPtvjknEjFgo/4EFTQty79+ZVGxcvuepPVugrm7Ynf+nuElYQ
         YrIyj+kQcTVTpIPVL/hJwqDuQGO2MNmWhmcsB+5dF7+xej08OGJ8/RChExaAi1/vtGXJ
         0pG/qzraJIr1323TRkN6YdMYVQABkUl0vOa6c9H4s2AgeZVGHrYMtCgMnVWOTyWZAKH8
         n42OXTJCDPEEdmERyGtjA1ur0wmGE8o6Ru7jxLMAmDgV+aTqpeLJsJfhb4pOn/qHh65n
         fVLZAyPMJy9QF9T35rL5DwP4TlU7CaDtH1updPbVSbLX32RjKwlVXimhohsiIlAl+FzR
         nCIw==
X-Forwarded-Encrypted: i=1; AJvYcCW8J0p4A9DON+OTdhPseQvhncCyLFGkGIEuAwT4DJrXBdAkU+xX/UK+GnJDyiHi24GZqDiDQe0k64RE@vger.kernel.org
X-Gm-Message-State: AOJu0YwPrMztzcG1pgz0Ice9ZGKLaTTBO0+OASNez78V03mcfbJgom5L
	PTDFg/fwyq+VRVCigc/VQr+u0XWfWK+Oe5lPun3kDPet6HpbO6D1ljukyMNvn4A=
X-Gm-Gg: ASbGncvh4/82mtJH6Q3ufbZ8aQpaQUyfzt2U++ThfZBUotspDoUly6mf8eAyGnorhSl
	mgKmN6YE7KwAlvh9jT8Lz7ufXI0qBGBWHZipRXj8FYILu7v593UD0MpsRZ6y/cIKxL34u24sq2D
	ix6f0vq8wWiotqPZPbAmXTHSo/oHwMqOHCfmDBX9+Z7Vx/xF3Eg5i6wOGuFjXkcRyRR9BORS6n/
	GD5i/0KkEUoLdDGtWnlaSGUG7GsAQCNk4oY+m8oOd7OhA4xQuoHYcxXPrzpGtfhRudxwGfZ+cBV
	mSEfHP1olW6sJxg+jfl7KgmJ
X-Google-Smtp-Source: AGHT+IGEhtb+H3GSiFZ15hfS2O4DULBg79tuO2z8AqJ7PA+RjBlmFu+bQNPdm0vgf5fs1z4uefNclg==
X-Received: by 2002:a17:906:6a1a:b0:ab3:974:3d45 with SMTP id a640c23a62f3a-ab75e24c011mr195996166b.1.1738744423032;
        Wed, 05 Feb 2025 00:33:43 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.173])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e49ff2c6sm1074003866b.96.2025.02.05.00.33.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2025 00:33:42 -0800 (PST)
Message-ID: <567adde6-a348-41c0-b415-80daf16d3dbb@tuxon.dev>
Date: Wed, 5 Feb 2025 10:33:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] thermal: of: Export non-devres helper to
 register/unregister thermal zone
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, rafael@kernel.org,
 rui.zhang@intel.com, lukasz.luba@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, geert+renesas@glider.be,
 magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250103163805.1775705-1-claudiu.beznea.uj@bp.renesas.com>
 <20250103163805.1775705-3-claudiu.beznea.uj@bp.renesas.com>
 <46c8e8ff-ea39-4dbd-a26c-67fcabf4b589@linaro.org>
 <CAPDyKFq40KB6jKapnm0mOkFGB9-7VEGiBhNrVn_2fzrcziq0=Q@mail.gmail.com>
 <20250204143303.0000174a@huawei.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250204143303.0000174a@huawei.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Jonathan,

On 04.02.2025 16:33, Jonathan Cameron wrote:
> On Wed, 15 Jan 2025 16:42:37 +0100
> Ulf Hansson <ulf.hansson@linaro.org> wrote:
> 
>> On Thu, 9 Jan 2025 at 18:34, Daniel Lezcano <daniel.lezcano@linaro.org> wrote:
>>>
>>>
>>> Ulf,
>>>
>>> can you have a look at this particular patch please ?
>>>
>>> Perhaps this scenario already happened in the past and there is an
>>> alternative to fix it instead of this proposed change  
>>
>> I think the patch makes sense.
>>
>> If there is a PM domain that is attached to the device that is
>> managing the clocks for the thermal zone, the detach procedure
>> certainly needs to be well controlled/synchronized.
>>
> Does this boil down to the same issue as
> https://lore.kernel.org/linux-iio/20250128105908.0000353b@huawei.com/
> ?

Yes, as described in the cover letter.

> 
> Just to point out there is another way like is done in i2c:
> https://elixir.bootlin.com/linux/v6.12.6/source/drivers/i2c/i2c-core-base.c#L630
> 
> Register a devres_release_group() in bus probe() and release it before
> the dev_pm_domain_detach() call.  That keeps the detach procedure well
> controlled and synchronized as it is entirely in control of the driver.

From the IIO thread I got that Ulf doesn't consider it a good approach for
all the cases.

Thank you,
Claudiu

> 
> That IIO thread has kind of died out for now though with no resolution
> so far.
> 
> Jonathan
> 
> 
>>>
>>>
>>> On 03/01/2025 17:38, Claudiu wrote:  
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> On the Renesas RZ/G3S (and other Renesas SoCs, e.g., RZ/G2{L, LC, UL}),
>>>> clocks are managed through PM domains. These PM domains, registered on
>>>> behalf of the clock controller driver, are configured with
>>>> GENPD_FLAG_PM_CLK. In most of the Renesas drivers used by RZ SoCs, the
>>>> clocks are enabled/disabled using runtime PM APIs.
>>>>
>>>> During probe, devices are attached to the PM domain controlling their
>>>> clocks. Similarly, during removal, devices are detached from the PM domain.
>>>>
>>>> The detachment call stack is as follows:
>>>>
>>>> device_driver_detach() ->
>>>>    device_release_driver_internal() ->
>>>>      __device_release_driver() ->
>>>>        device_remove() ->
>>>>          platform_remove() ->
>>>>         dev_pm_domain_detach()
>>>>
>>>> In the upcoming Renesas RZ/G3S thermal driver, the
>>>> struct thermal_zone_device_ops::change_mode API is implemented to
>>>> start/stop the thermal sensor unit. Register settings are updated within
>>>> the change_mode API.
>>>>
>>>> In case devres helpers are used for thermal zone register/unregister the
>>>> struct thermal_zone_device_ops::change_mode API is invoked when the
>>>> driver is unbound. The identified call stack is as follows:
>>>>
>>>> device_driver_detach() ->
>>>>    device_release_driver_internal() ->
>>>>      device_unbind_cleanup() ->
>>>>        devres_release_all() ->
>>>>          devm_thermal_of_zone_release() ->
>>>>         thermal_zone_device_disable() ->
>>>>           thermal_zone_device_set_mode() ->
>>>>             rzg3s_thermal_change_mode()
>>>>
>>>> The device_unbind_cleanup() function is called after the thermal device is
>>>> detached from the PM domain (via dev_pm_domain_detach()).
>>>>
>>>> The rzg3s_thermal_change_mode() implementation calls
>>>> pm_runtime_resume_and_get()/pm_runtime_put_autosuspend() before/after
>>>> accessing the registers. However, during the unbind scenario, the
>>>> devm_thermal_of_zone_release() is invoked after dev_pm_domain_detach().
>>>> Consequently, the clocks are not enabled, as the device is removed from
>>>> the PM domain at this time, leading to an Asynchronous SError Interrupt.
>>>> The system cannot be used after this.
>>>>
>>>> Add thermal_of_zone_register()/thermal_of_zone_unregister(). These will
>>>> be used in the upcomming RZ/G3S thermal driver.
>>>>
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>  
>>
>> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
>>
>> Kind regards
>> Uffe
>>
>>>> ---
>>>>   drivers/thermal/thermal_of.c |  8 +++++---
>>>>   include/linux/thermal.h      | 14 ++++++++++++++
>>>>   2 files changed, 19 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/drivers/thermal/thermal_of.c b/drivers/thermal/thermal_of.c
>>>> index fab11b98ca49..8fc35d20db60 100644
>>>> --- a/drivers/thermal/thermal_of.c
>>>> +++ b/drivers/thermal/thermal_of.c
>>>> @@ -329,11 +329,12 @@ static bool thermal_of_should_bind(struct thermal_zone_device *tz,
>>>>    *
>>>>    * @tz: a pointer to the thermal zone structure
>>>>    */
>>>> -static void thermal_of_zone_unregister(struct thermal_zone_device *tz)
>>>> +void thermal_of_zone_unregister(struct thermal_zone_device *tz)
>>>>   {
>>>>       thermal_zone_device_disable(tz);
>>>>       thermal_zone_device_unregister(tz);
>>>>   }
>>>> +EXPORT_SYMBOL_GPL(thermal_of_zone_unregister);
>>>>
>>>>   /**
>>>>    * thermal_of_zone_register - Register a thermal zone with device node
>>>> @@ -355,8 +356,8 @@ static void thermal_of_zone_unregister(struct thermal_zone_device *tz)
>>>>    *  - ENOMEM: if one structure can not be allocated
>>>>    *  - Other negative errors are returned by the underlying called functions
>>>>    */
>>>> -static struct thermal_zone_device *thermal_of_zone_register(struct device_node *sensor, int id, void *data,
>>>> -                                                         const struct thermal_zone_device_ops *ops)
>>>> +struct thermal_zone_device *thermal_of_zone_register(struct device_node *sensor, int id, void *data,
>>>> +                                                  const struct thermal_zone_device_ops *ops)
>>>>   {
>>>>       struct thermal_zone_device_ops of_ops = *ops;
>>>>       struct thermal_zone_device *tz;
>>>> @@ -429,6 +430,7 @@ static struct thermal_zone_device *thermal_of_zone_register(struct device_node *
>>>>
>>>>       return ERR_PTR(ret);
>>>>   }
>>>> +EXPORT_SYMBOL_GPL(thermal_of_zone_register);
>>>>
>>>>   static void devm_thermal_of_zone_release(struct device *dev, void *res)
>>>>   {
>>>> diff --git a/include/linux/thermal.h b/include/linux/thermal.h
>>>> index 69f9bedd0ee8..adbb4092a064 100644
>>>> --- a/include/linux/thermal.h
>>>> +++ b/include/linux/thermal.h
>>>> @@ -195,13 +195,23 @@ struct thermal_zone_params {
>>>>
>>>>   /* Function declarations */
>>>>   #ifdef CONFIG_THERMAL_OF
>>>> +struct thermal_zone_device *thermal_of_zone_register(struct device_node *sensor, int id, void *data,
>>>> +                                                  const struct thermal_zone_device_ops *ops);
>>>>   struct thermal_zone_device *devm_thermal_of_zone_register(struct device *dev, int id, void *data,
>>>>                                                         const struct thermal_zone_device_ops *ops);
>>>>
>>>> +void thermal_of_zone_unregister(struct thermal_zone_device *tz);
>>>>   void devm_thermal_of_zone_unregister(struct device *dev, struct thermal_zone_device *tz);
>>>>
>>>>   #else
>>>>
>>>> +static inline
>>>> +struct thermal_zone_device *thermal_of_zone_register(struct device_node *sensor, int id, void *data,
>>>> +                                                  const struct thermal_zone_device_ops *ops)
>>>> +{
>>>> +     return ERR_PTR(-ENOTSUPP);
>>>> +}
>>>> +
>>>>   static inline
>>>>   struct thermal_zone_device *devm_thermal_of_zone_register(struct device *dev, int id, void *data,
>>>>                                                         const struct thermal_zone_device_ops *ops)
>>>> @@ -209,6 +219,10 @@ struct thermal_zone_device *devm_thermal_of_zone_register(struct device *dev, in
>>>>       return ERR_PTR(-ENOTSUPP);
>>>>   }
>>>>
>>>> +static inline void thermal_of_zone_unregister(struct thermal_zone_device *tz)
>>>> +{
>>>> +}
>>>> +
>>>>   static inline void devm_thermal_of_zone_unregister(struct device *dev,
>>>>                                                  struct thermal_zone_device *tz)
>>>>   {  
>>>
>>>
>>> --
>>> <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs
>>>
>>> Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
>>> <http://twitter.com/#!/linaroorg> Twitter |
>>> <http://www.linaro.org/linaro-blog/> Blog  
>>
> 


