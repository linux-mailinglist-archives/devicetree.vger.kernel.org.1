Return-Path: <devicetree+bounces-104896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 146CB98476D
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 16:14:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 364AB1C22D67
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 14:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AC3D1AAE00;
	Tue, 24 Sep 2024 14:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XYw9WTE9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760D61A76CB
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 14:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727187256; cv=none; b=Wn1s6Fi5iUpc7Ci6U8Iy3mAMFJU1wIqJSZ5ourZX8ER9F9TRZgNvkhH5gv1DfweSVGf0z0WJ462EoIW569vO9EbT+JswXr5ZKervcjJL0qBU0FhKnK18lw49qCp6FZHmREQsgUQXbNs0k9eDHme6KhDifTqFJgMQmqhrzePvJ4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727187256; c=relaxed/simple;
	bh=V/PUUsrHTTTW+3zaxNcMjyWj64r3RcrrF4rrOXWDBT4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U9ZiAJKX2nLqnWXYKrvnktmdnyw1K5ahrEw/WYxw+dJwh5rcVX6JihbzJg/h2RBuL7XtubzSiYnYk5ooatt+yCstvjO5DMwp0qqUo2TBABm766PqFGcIxgEsVYFMoEQ8nG8TMy9rlO4XwdKu3bYIk4V1k9YBfeMq85Vk1SyzIlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XYw9WTE9; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42cb5b3c57eso55758125e9.2
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 07:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727187253; x=1727792053; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cPqPAIRC4kzpvMVpwleDzWlqXHAHV6tKF2dStYetukg=;
        b=XYw9WTE9y/XuNELY3ED+zr6P6fOTog7B3YF44ZrTWJbxXQKzCM6psHCqIwPvofXlzc
         ms5iShVlDWTNLEZEt6rR7VZg615i94Q9AYYblYBuMsZw7y6WaJ1Vbvz+6l1HwoNUThnB
         ehFoEVbLus2dNtT/RwMMHaKdXPFN2Js1AukRNyHQGSbsjOy0/+kcb6Fv1ejJW3217bCC
         ssYkkEx6T/hAkW2e552DrCjbSXWtIXLqQ34++NwvueFVX5jUIGSsDDimgOs/kZwcdxTg
         E9tJV/cPaXA/XRxvkRh1M9hh1sKCTrmumP5vgJDKF+HPro3PoHBRvluPeYJKmR2IXRds
         PPfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727187253; x=1727792053;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cPqPAIRC4kzpvMVpwleDzWlqXHAHV6tKF2dStYetukg=;
        b=BwnlRxgrpJaibxhEtA6VHjNc2e9RxHmiRqgCH8W4JMUBp1QKzEwK4z+buIrjgKnxzB
         GCOcQDMXUuh0qD8wZQ44t2Qg2Ee/qMg0ShZB18DMoQ/iQX0rZpqVLUchov+qT0AG+4Wn
         uPIzx8XT3fT0NGBL+LBmGra9G/6qDNDUXFL6GV+uZZ9GCmto7sD+PukLXi5X23z7F04n
         HzQ4p9gIsLbGmYVZmhLidF5CM8KlzfcQNCrpso1PN2rye6jOpmSkbY+riSqlk/5hZMWL
         JNs92kXPxH5TzeuIafBYqTjR9O/TmI4sm/a5Z6yHhAXbg0INX8OweNe0nyKPySZKojy8
         fgMw==
X-Forwarded-Encrypted: i=1; AJvYcCXYwmgrAdxhi394C3VDoZ35nOBP45SrScz9GCOk3Eeqs/tunw5s/0Sqbm1655h0bGUmIypMCtT72iBY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2LzVehvLRmtnCO9CaA4BimUGEdcRVgCYNyIiObnOLN/NpKWGW
	sxjw0HowcSWCaZeb2WHpDbT3ce3FGjVB/xSEHznHy/bLPqDY4ubz+LGjr8TIqTM=
X-Google-Smtp-Source: AGHT+IGSYsWrKVwIe2oOw8UgUxMbvkjKQb/gIym3agpxcBX+5tTzqrrsLc3m+aKpdOUh4SQ0yvSzuA==
X-Received: by 2002:a5d:47a8:0:b0:374:c6ad:a7c6 with SMTP id ffacd0b85a97d-37a431583e1mr10060570f8f.20.1727187252638;
        Tue, 24 Sep 2024 07:14:12 -0700 (PDT)
Received: from [10.2.5.157] (amontpellier-556-1-151-252.w109-210.abo.wanadoo.fr. [109.210.7.252])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e75450ec6sm157838835e9.21.2024.09.24.07.14.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2024 07:14:11 -0700 (PDT)
Message-ID: <45f72533-ba1b-4531-890d-63d86a1f0ca4@baylibre.com>
Date: Tue, 24 Sep 2024 16:11:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/10] iio: backend: extend features
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Nuno Sa <nuno.sa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, dlechner@baylibre.com
References: <20240919-wip-bl-ad3552r-axi-v0-iio-testing-v3-0-a17b9b3d05d9@baylibre.com>
 <20240919-wip-bl-ad3552r-axi-v0-iio-testing-v3-5-a17b9b3d05d9@baylibre.com>
 <60610fe3e5885033c0a1d14db6e2f576367a2e44.camel@gmail.com>
Content-Language: en-US
From: Angelo Dureghello <adureghello@baylibre.com>
In-Reply-To: <60610fe3e5885033c0a1d14db6e2f576367a2e44.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 20/09/24 14:50, Nuno Sá wrote:
> On Thu, 2024-09-19 at 11:20 +0200, Angelo Dureghello wrote:
>> From: Angelo Dureghello <adureghello@baylibre.com>
>>
>> Extend backend features with new calls needed later on this
>> patchset from axi version of ad3552r.
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
>>
>> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
>> ---
>>   drivers/iio/industrialio-backend.c | 111 +++++++++++++++++++++++++++++++++++++
>>   include/linux/iio/backend.h        |  23 ++++++++
>>   2 files changed, 134 insertions(+)
>>
>> diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industrialio-
>> backend.c
>> index 20b3b5212da7..f4802c422dbf 100644
>> --- a/drivers/iio/industrialio-backend.c
>> +++ b/drivers/iio/industrialio-backend.c
>> @@ -718,6 +718,117 @@ static int __devm_iio_backend_get(struct device *dev, struct
>> iio_backend *back)
>>   	return 0;
>>   }
>>   
>> +/**
>> + * iio_backend_ext_sync_enable - Enable external synchronization
>> + * @back: Backend device
>> + *
>> + * Enable synchronization by external signal.
>> + *
>> + * RETURNS:
>> + * 0 on success, negative error number on failure.
>> + */
>> +int iio_backend_ext_sync_enable(struct iio_backend *back)
>> +{
>> +	return iio_backend_op_call(back, ext_sync_enable);
>> +}
>> +EXPORT_SYMBOL_NS_GPL(iio_backend_ext_sync_enable, IIO_BACKEND);
>> +
>> +/**
>> + * iio_backend_ext_sync_disable - Disable external synchronization
>> + * @back: Backend device
>> + *
>> + * Disable synchronization by external signal.
>> + *
>> + * RETURNS:
>> + * 0 on success, negative error number on failure.
>> + */
>> +int iio_backend_ext_sync_disable(struct iio_backend *back)
>> +{
>> +	return iio_backend_op_call(back, ext_sync_disable);
>> +}
>> +EXPORT_SYMBOL_NS_GPL(iio_backend_ext_sync_disable, IIO_BACKEND);
>> +
>> +/**
>> + * iio_backend_ddr_enable - Enable interface DDR (Double Data Rate) mode
>> + * @back: Backend device
>> + *
>> + * Enabling DDR, data is generated by the IP at each front
>> + * (raising and falling) of the bus clock signal.
>> + *
>> + * RETURNS:
>> + * 0 on success, negative error number on failure.
>> + */
>> +int iio_backend_ddr_enable(struct iio_backend *back)
>> +{
>> +	return iio_backend_op_call(back, ddr_enable);
>> +}
>> +EXPORT_SYMBOL_NS_GPL(iio_backend_ddr_enable, IIO_BACKEND);
>> +
>> +/**
>> + * iio_backend_ddr_disable - Disable interface DDR (Double Data Rate) mode
>> + * @back: Backend device
>> + *
>> + * Disabling DDR data is generated byt the IP at rising or falling front
>> + * of the interface clock signal (SDR, Single Data Rate).
>> + *
>> + * RETURNS:
>> + * 0 on success, negative error number on failure.
>> + */
>> +int iio_backend_ddr_disable(struct iio_backend *back)
>> +{
>> +	return iio_backend_op_call(back, ddr_disable);
>> +}
>> +EXPORT_SYMBOL_NS_GPL(iio_backend_ddr_disable, IIO_BACKEND);
>> +
>> +/**
>> + * iio_backend_buffer_enable - Enable iio buffering
>> + * @back: Backend device
>> + *
>> + * Enabling the buffer, buffer data is processed and sent out from the
>> + * bus interface.
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
>> + * iio_backend_buffer_disable - Disable iio buffering
>> + * @back: Backend device
>> + *
>> + * Disabling the buffer, buffer data transfer on the bus interface
>> + * is stopped.
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
> IIRC, both me and Jonathan had some comments about the above 2 calls? Aren't they
> about buffering? I think I mentioned something about using the same buffer ops as
> typical IIO devices use.

i have now separated iio_backend_ops, keeping buffer enable/disable
for axi-ad3352r case only,

static const struct iio_backend_ops axi_dac_generic_ops = {
     .enable = axi_dac_enable,
     .disable = axi_dac_disable,
     .request_buffer = axi_dac_request_buffer,
     .free_buffer = axi_dac_free_buffer,
     .extend_chan_spec = axi_dac_extend_chan,
     .ext_info_set = axi_dac_ext_info_set,
     .ext_info_get = axi_dac_ext_info_get,
     .data_source_set = axi_dac_data_source_set,
     .set_sample_rate = axi_dac_set_sample_rate,
     .debugfs_reg_access = iio_backend_debugfs_ptr(axi_dac_reg_access),
};

static const struct iio_backend_ops axi_ad3552r_ops = {
     .enable = axi_dac_enable,
     .read_raw = axi_dac_read_raw,
     .request_buffer = axi_dac_request_buffer,
     .data_source_set = axi_dac_data_source_set,
     .ext_sync_enable = axi_dac_ext_sync_enable,
     .ext_sync_disable = axi_dac_ext_sync_disable,
     .ddr_enable = axi_dac_ddr_enable,
     .ddr_disable = axi_dac_ddr_disable,
     .buffer_enable = axi_dac_buffer_enable,
     .buffer_disable = axi_dac_buffer_disable,
     .data_format_set = axi_dac_data_format_set,
     .data_transfer_addr = axi_dac_data_transfer_addr,
};


could this be good ?


> - Nuno Sá

Regards,
Angelo


