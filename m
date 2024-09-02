Return-Path: <devicetree+bounces-99069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 956E596895E
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 16:04:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB6FC1C218D2
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 14:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63FAE20FAB7;
	Mon,  2 Sep 2024 14:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1A6JFwWc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2326720FAA9
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 14:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725285875; cv=none; b=kaav9DWHbhy/6j0schQNdcKzMntdjXHiPGGw+nYoLYNlKLoW9q+T3NBf6DQXkX6No4gOqHr7D3/b5CdgnYxLzcJFz2Z2Lzbwj3Ek7t8Tb0rPdFjixKbZpenS/d7dtXFEVGXxjVUdNuXSbHc8cAbs9arKm3iZow6ZHC0Rd0BcDbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725285875; c=relaxed/simple;
	bh=1Et7BQ8J8NaUaQ2JOGcVvt9EIpGRVMouUQixu30VYQ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XYbN+lqvVAPnB1EMYitPe/jpUc0JUlaF1oGJ5UWXOfoVrWT6z4zDRJIIL6EYKNdE0fLeJBih3JW2tU7QUOTHgXJdaLab2bKrGbS282CHxYNv44Xb1ZSIH79bnZs0wgQtG1PpU/eFAN+qx+rjCac2uR6QcXKNa9ObRczZYMtwrWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1A6JFwWc; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-42bb4f8a4bfso23156985e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 07:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725285871; x=1725890671; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7li9gM9UpjOPvgZbRWBjXaN43V8CimxS98Qo2lGYvXk=;
        b=1A6JFwWc2TKvbUAnCsmHO8hcKTV3QDVt/lcaLd1pL2lQi+X8bbi+TZPhbqIoOAYL18
         WZmQ9wDMMsMAkjk4u5o4FMAQFxpjSgu9GYx7hEE7NugVQRksV23J5woPtBnUY/MM3L1I
         tcMF70whY1J6HroBnDh7ZQvtQG1fwuONTKC7N+c9SFUCHXxR87ZuOqId1/FGvHH9m2wG
         JU/ShEG/sTNXHNaKt3PsJ8ahzD3u1Ql0k1UR/sZ5gEz+nBmvYAYp7I6X2DsfGNzdolwS
         0hf/mK5gS0mlgSjCClHqV/4OZz0mCnWsQoUclKZ0vzOWU9wZox/0l9svuX6chN8HchD3
         2uDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725285871; x=1725890671;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7li9gM9UpjOPvgZbRWBjXaN43V8CimxS98Qo2lGYvXk=;
        b=N6Pk8ctwOFWpMqzfL2RVttUsMVLlYbs46f/ONmOBFVfHTCTNcP5Hl1qH5AKRDC6VC2
         neYTERAAJfahW/7/ZTmw0sN65grFQkF2KHilINitW/AYPZjICXyFphuCt+cHJ/g4R7OP
         UJ0o13b7v6B0RwK3Sm0KFZ+uqWMmuQAAAJ5dtMAqiUIw9y0jGkN1/1CQauVfske1vg2x
         hmMhjFhyPFt0PGOqsR4gjiMfYVTDZK9J5BkHa33nQ1F1jG2V9c86ZQd0pM84C0Oa0wL/
         HlkGDtDoaXReGmD6u6kCth8IMXhI7wxHc755v226VIeP5bfzf+S9L8GXPQj7CPh2NgL1
         OCYw==
X-Forwarded-Encrypted: i=1; AJvYcCWaPURDw/LovKOZRsk6fpog6cJ2kQJjXG9AiWVeSswHhO6fIpZtF2/qVQry6j5tW5WiLuiMgnzyrsBG@vger.kernel.org
X-Gm-Message-State: AOJu0YzSD2o7Cmr0e78/Eszd50rnLBJ10rftiph9uJu4zvNwRszNRw/x
	vkaSQeRxEyFmy1gl8srdlkAqOfbcO/onCoDhsdaHWIRSptaTHuJjQ6rS544Zs5k=
X-Google-Smtp-Source: AGHT+IG1gqkcOsn3OrMuQLzElZ3vTWLBSEKfTqyMT/bGY8xZ/ih5MSuOCVwR1ZOZGcB/6pfKzVSjRw==
X-Received: by 2002:a05:600c:1ca8:b0:426:5b17:8458 with SMTP id 5b1f17b1804b1-42bbb693013mr69510745e9.12.1725285871041;
        Mon, 02 Sep 2024 07:04:31 -0700 (PDT)
Received: from [192.168.0.2] (host-95-233-232-76.retail.telecomitalia.it. [95.233.232.76])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42bb85ffbadsm132892695e9.12.2024.09.02.07.04.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Sep 2024 07:04:30 -0700 (PDT)
Message-ID: <0fbe1321-cc67-4ade-8cbb-cbbaa40d2ca1@baylibre.com>
Date: Mon, 2 Sep 2024 16:03:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/8] iio: backend: extend features
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dlechner@baylibre.com
References: <20240829-wip-bl-ad3552r-axi-v0-v1-0-b6da6015327a@baylibre.com>
 <20240829-wip-bl-ad3552r-axi-v0-v1-2-b6da6015327a@baylibre.com>
 <20240831122313.4d993260@jic23-huawei>
Content-Language: en-US
From: Angelo Dureghello <adureghello@baylibre.com>
In-Reply-To: <20240831122313.4d993260@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jonathan,

thanks for the feedbacks,

On 31/08/24 1:23 PM, Jonathan Cameron wrote:
> On Thu, 29 Aug 2024 14:32:00 +0200
> Angelo Dureghello <adureghello@baylibre.com> wrote:
>
>> From: Angelo Dureghello <adureghello@baylibre.com>
>>
>> Extend backend features with new calls needed later on this
>> patchset from axi version of ad3552r.
>>
>> A bus type property has been added to the devicetree to
>> inform the backend about the type of bus (interface) in use
>> bu the IP.
>>
>> The follwoing calls are added:
>>
>> iio_backend_ext_sync_enable
>> 	enable synchronize channels on external trigger
>> iio_backend_ext_sync_disable
>> 	disable synchronize channels on external trigger
>> iio_backend_ddr_enable
>> 	enable ddr bus transfer
>> iio_backend_ddr_disable
>> 	disable ddr bus transfer
>> iio_backend_set_bus_mode
>> 	select the type of bus, so that specific read / write
>> 	operations are performed accordingly
>> iio_backend_buffer_enable
>> 	enable buffer
>> iio_backend_buffer_disable
>> 	disable buffer
>> iio_backend_data_transfer_addr
>> 	define the target register address where the DAC sample
>> 	will be written.
>> iio_backend_bus_reg_read
>> 	generic bus read, bus-type dependent
>> iio_backend_bus_read_write
>> 	generic bus write, bus-type dependent
>>
>> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
>> ---
>>   drivers/iio/industrialio-backend.c | 151 +++++++++++++++++++++++++++++++++++++
>>   include/linux/iio/backend.h        |  24 ++++++
>>   2 files changed, 175 insertions(+)
>>
>> diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industrialio-backend.c
>> index a52a6b61c8b5..1f60c8626be7 100644
>> --- a/drivers/iio/industrialio-backend.c
>> +++ b/drivers/iio/industrialio-backend.c
>> @@ -718,6 +718,157 @@ static int __devm_iio_backend_get(struct device *dev, struct iio_backend *back)
>>   	return 0;
>>   }
>
>> +
>> +/**
>> + * iio_backend_buffer_enable - Enable data buffering
> Data buffering is a very vague term.  Perhaps some more detail on what
> this means?

for this DAC IP, it is the dma buffer where i write the samples,
for other non-dac frontends may be something different, so i kept it
generic. Not sure what a proper name may be, maybe

"Enable optional data buffer" ?


>> + * @back: Backend device
>> + *
>> + * RETURNS:
>> + * 0 on success, negative error number on failure.
>> + */
>> +int iio_backend_buffer_enable(struct iio_backend *back)
>> +{
>> +	return iio_backend_op_call(back, buffer_enable);
>> +}
>> +EXPORT_SYMBOL_NS_GPL(iio_backend_buffer_enable, IIO_BACKEND);
>> +
>> +/**

>> + * iio_backend_set_buffer_disable - Disable data buffering
>> + * @back: Backend device
>> + *
>> + * RETURNS:
>> + * 0 on success, negative error number on failure.
>> + */
>> +int iio_backend_buffer_disable(struct iio_backend *back)
>> +{
>> +	return iio_backend_op_call(back, buffer_disable);
>> +}
>> +EXPORT_SYMBOL_NS_GPL(iio_backend_buffer_disable, IIO_BACKEND);
>> +
>> +/**
>> + * iio_backend_buffer_transfer_addr - Set data address.
>> + * @back: Backend device
>> + * @chan_address: Channel register address
> Run scripts/kernel-doc on this and fix the errors (parameter name is
> wrong).  W=1 builds might also point the simpler ones out.
ack, done
>> + *
>> + * Some devices may need to inform the backend about an address/location
>> + * where to read or write the data.
> I'd drop the 'location' part unless this gets used later because you
> are referring register address above.

ack, done


>> + *
>> + * RETURNS:
>> + * 0 on success, negative error number on failure.
>> + */
>> +int iio_backend_data_transfer_addr(struct iio_backend *back, u32 address)
>> +{
>> +	return iio_backend_op_call(back, data_transfer_addr, address);
>> +}
>> +EXPORT_SYMBOL_NS_GPL(iio_backend_data_transfer_addr, IIO_BACKEND);
>> +
>> +/**
>> + * iio_backend_bus_reg_read - Read from the interface bus
>> + * @back: Backend device
>> + * @reg: Register valule
>> + * @val: Pointer to register value
>> + * @size: Size, in bytes
>> + *
>> + * A backend may operate on a specific interface with a related bus.
>> + * Read from the interface bus.
> So this is effectively routing control plane data through the offloaded
> bus?  That sounds a lot more like a conventional bus than IIO backend.
> Perhaps it should be presented as that with the IIO device attached
> to that bus? I don't fully understand what is wired up here.
>
Mainly, an IP may include a bus as 16bit parallel, or LVDS, or similar
to QSPI as in my case (ad3552r).

In particular, the bus is physically as a QSPI bus, but the data format
over it is a bit different.

So ad3552r needs this 5 lanes bus + double data rate to reach 33MUPS.

https://analogdevicesinc.github.io/hdl/library/axi_ad3552r/index.html


>> + *
>> + * RETURNS:
>> + * 0 on success, negative error number on failure.
>> + */
>> +int iio_backend_bus_reg_read(struct iio_backend *back,
>> +			     u32 reg, void *val, size_t size)
>> +{
>> +	if (!size)
>> +		return -EINVAL;
>> +
>> +	return iio_backend_op_call(back, bus_reg_read, reg, val, size);
>> +}
>> +EXPORT_SYMBOL_NS_GPL(iio_backend_bus_reg_read, IIO_BACKEND);
>> +

Thanks a lot,

regards,
Angelo


-- 
  ,,,      Angelo Dureghello
:: :.     BayLibre -runtime team- Developer
:`___:
  `____:


