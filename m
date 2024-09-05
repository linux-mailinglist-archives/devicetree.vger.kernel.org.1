Return-Path: <devicetree+bounces-100393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0877996D7C2
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 14:00:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26DAE1C22CCA
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 12:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F4B619AA5D;
	Thu,  5 Sep 2024 12:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EvoKYh86"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F706199E95
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 12:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725537608; cv=none; b=adxbhbbYyFCBnF5e+C4j1QND6M6EexhHTOfB0WJ14lcEVjYsTKCAxNDgBsdqYUgbsqMQDlStmVeCYGdHCfTkxKm2QxD3pCKxN0hOOZU9xqxWCVbjNqRaISx5LPAVxlZ18Q1Xm4PlIDczBwf83LXzU0Wdp4OEnAJ9AuDCkO9ROH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725537608; c=relaxed/simple;
	bh=Wcvq3+NDX0tzWvkuBOwRlEtcsUqZSW77XlwzSUee9gE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RknCVeUUiSyRMe+GB/+qhHZh/8ppoK5CUljS7/vWbjRHP80Xs7l7W0AKjPrJs6J0kd5tNWwTzdNE5wFDqAQIFMuf5GzxAiPeKomrbq+4LO+QUgkIwioalwgtGdLw40LFncV+/tr4NMEAoSksN75hW0EKNZNQsWFHhlzKwiO06cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EvoKYh86; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-42c94eb9822so5377485e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 05:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725537604; x=1726142404; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6W2T1ARXfE5FffV0ad0w8s9KYGn6D9vMF54U4dkdbSY=;
        b=EvoKYh86j8udYmFQEAEwOBCuS9SF9xikijcWo0FPRJ7skSwFJlMW94XC7aIVCkgLDs
         Et1NzFmhWxqiN2qCSG8NoR3pSrjWtr+rWIWS/4UAcbwk5HU6fsGpH+woMTm58lEqbSfx
         YAPNXootkOj+poKfIYTjgG7oFVcMy7o+aakhlk1NKXULvMsa8pbFHOV0UulxZdJlWSBp
         nTOuoJAf6763ghQnhELJZoatvDpzkJAxHk0FQBE2GaZGKduDPuFXQiGwbJB2QweU2mLE
         BiE33c7kMP119ZJtUH4JXu25edYGGMBH8v5y5Q39jfJJ5ykouWI8pPrm/Bvh8Aoz9c26
         /l+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725537604; x=1726142404;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6W2T1ARXfE5FffV0ad0w8s9KYGn6D9vMF54U4dkdbSY=;
        b=WOjvzsE5bzOpHnLEMS1XUIMFvOsllqsvUj0ljcv7HUnLwFPCREJKVBPvjhQ3LyLYZC
         joSZEX5YGv6x4gOQxpa5+sWa4nPUfZE5N8VTMkf+JUZkPEFlglFwN2kEVIC4olKuegUo
         wzb1+sFd9J5daQHNkFiBs3l5wKlwFhLW72htc0whJS/nGf2e7F7j139vDa/fnjLra8uE
         XsXu99VRksrJjQw09ZOq3ZQzATbzT31UhHav+uA2tCzrgcFBQs7H3AiwBNVMy+4ofxn+
         UF3JoC+QYjbhK3z3dy46JhNYIstgiHz6TH6nRMzx6vpUah9qzjfm2Dg+0ZXASaaAqKqw
         H+Mw==
X-Forwarded-Encrypted: i=1; AJvYcCV1DvW9XsEG67Z4VzPND7iV834MhkCz6b9Eyj0jLki8bRlYJUgHa3S3BBMxMgH6c3jQrmKSin/NiAaK@vger.kernel.org
X-Gm-Message-State: AOJu0Ywmx3Gbc7qeqEth/rr30pBarP+J9vLgfAvTeNV+0oGbHqLqTR8j
	6aeWgM599MvZrwJUbst6XqEjdbTMXLjEv5XzuVk+efXmbeeXs8RQxYfeWPG2ZQA=
X-Google-Smtp-Source: AGHT+IGElgx3ZOHnT66SiGqxEHCvxnNfKxkGSoOKCVobJTUKmV7cex2HySNCQ7NnbKHxNDc687V4Xw==
X-Received: by 2002:a05:600c:3b9b:b0:426:62c6:4341 with SMTP id 5b1f17b1804b1-42c7b5b4bdfmr120906835e9.20.1725537603729;
        Thu, 05 Sep 2024 05:00:03 -0700 (PDT)
Received: from [192.168.0.2] (host-95-233-232-76.retail.telecomitalia.it. [95.233.232.76])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749eea60e2sm19131009f8f.62.2024.09.05.05.00.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 05:00:03 -0700 (PDT)
Message-ID: <5ca7f8a8-7ef7-4dbd-8ed4-791976bba3ef@baylibre.com>
Date: Thu, 5 Sep 2024 13:58:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/8] iio: backend adi-axi-dac: backend features
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dlechner@baylibre.com
References: <20240829-wip-bl-ad3552r-axi-v0-v1-0-b6da6015327a@baylibre.com>
 <20240829-wip-bl-ad3552r-axi-v0-v1-3-b6da6015327a@baylibre.com>
 <20240831123418.6bef6039@jic23-huawei>
 <fd68cda2-f523-49fd-943b-c07dbb461799@baylibre.com>
 <20240903201614.08722f59@jic23-huawei>
 <e7aacdc36be2bc11dc0e5ce5cf135482257d2a7d.camel@gmail.com>
Content-Language: en-US
From: Angelo Dureghello <adureghello@baylibre.com>
In-Reply-To: <e7aacdc36be2bc11dc0e5ce5cf135482257d2a7d.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 05/09/24 12:49 PM, Nuno Sá wrote:
> On Tue, 2024-09-03 at 20:16 +0100, Jonathan Cameron wrote:
>> On Mon, 2 Sep 2024 18:04:51 +0200
>> Angelo Dureghello <adureghello@baylibre.com> wrote:
>>
>>> On 31/08/24 1:34 PM, Jonathan Cameron wrote:
>>>> On Thu, 29 Aug 2024 14:32:01 +0200
>>>> Angelo Dureghello <adureghello@baylibre.com> wrote:
>>>>   
>>>>> From: Angelo Dureghello <adureghello@baylibre.com>
>>>>>
>>>>> Extend DAC backend with new features required for the AXI driver
>>>>> version for the a3552r DAC.
>>>>>
>>>>> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
>>>> Hi Angelo
>>>> Minor comments inline.
>>>>>    
>>>>>    static int axi_dac_enable(struct iio_backend *back)
>>>>> @@ -460,7 +493,13 @@ static int axi_dac_data_source_set(struct
>>>>> iio_backend *back, unsigned int chan,
>>>>>    	case IIO_BACKEND_EXTERNAL:
>>>>>    		return regmap_update_bits(st->regmap,
>>>>>    					
>>>>> AXI_DAC_REG_CHAN_CNTRL_7(chan),
>>>>> -					  AXI_DAC_DATA_SEL,
>>>>> AXI_DAC_DATA_DMA);
>>>>> +					  AXI_DAC_DATA_SEL,
>>>>> +					  AXI_DAC_DATA_DMA);
>>>> Unrelated change.   If you want to change this, separate patch.
>>> Thanks, fixed.
>>>>   
>>>>> +	case IIO_BACKEND_INTERNAL_RAMP_16:
>>>>> +		return regmap_update_bits(st->regmap,
>>>>> +					
>>>>> AXI_DAC_REG_CHAN_CNTRL_7(chan),
>>>>> +					  AXI_DAC_DATA_SEL,
>>>>> +					
>>>>> AXI_DAC_DATA_INTERNAL_RAMP_16);
>>>>>    	default:
>>>>>    		return -EINVAL;
>>>>>    	}
>>>>> @@ -518,9 +557,204 @@ static int axi_dac_reg_access(struct iio_backend
>>>>> *back, unsigned int reg,
>>>>>    	return regmap_write(st->regmap, reg, writeval);
>>>>>    }
>>>>>    
>>>>> +
>>>>> +static int axi_dac_bus_reg_write(struct iio_backend *back,
>>>>> +				 u32 reg, void *val, size_t size)
>>>> Maybe just pass an unsigned int for val?
>>>> So follow what regmap does? You will still need the size, but it
>>>> will just be configuration related rather than affecting the type
>>>> of val.
>>>>   
>>> void * was used since data size in the future may vary depending
>>> on the bus physical interface.
>>>
>> I doubt it will get bigger than u64.  Passing void * is always
>> nasty if we can do something else and this is a register writing
>> operation.  I'm yet to meet an ADC or similar with > 64 bit registers
>> (or even one with 64 bit ones!)
> I think the original thinking was to support thinks like appending crc to the
> register read/write. But even in that case, u32 for val might be enough. Not
> sure. Anyways, as you often say with the backend stuff, this is all in the
> kernel so I guess we can change it to unsigned int and change it in the future
> if we need to.
>
> Since you mentioned regmap, I also want to bring something that was discussed
> before the RFC. Basically we talked about having the backend registering it's
> own regmap_bus. Then we would either:
>
> 1) Have a specific get_regmap_bus() callback for the frontend to initialize a
> regmap on;
> 2) Pass this bus into the core and have a new frontend API like
> devm_iio_backend_regmap_init().
>
> Then, on top of the API already provided by regmap (like _update_bit()), the
> frontend could just use regmap independent of having a backend or not.
>
> The current API is likely more generic but tbh (and David and Angelo are aware
> of it) my preferred approach it to use the regmap_bus stuff. I just don't feel
> that strong about it :)
>
>>> Actually, a reg bus write involves several AXI regmap operations.
>>>>   
>>>>> +{
>>>>> +	struct axi_dac_state *st = iio_backend_get_priv(back);
>>>>> +
>>>>> +	if (!st->bus_type)
>>>>> +		return -EOPNOTSUPP;
>>>>> +
>>>>> +	if (st->bus_type == AXI_DAC_BUS_TYPE_QSPI) {
>>>> As below, I'd use a switch and factor out this block as a separate
>>>> bus specific function.
>>> Ok, changed.
>>>>   
>>>>> +		int ret;
>>>>> +		u32 ival;
>>>>> +
>>>>> +		if (size != 1 && size != 2)
>>>>> +			return -EINVAL;
>>>>> +
>>>>> +		switch (size) {
>>>>> +		case 1:
>>>>> +			ival = FIELD_PREP(AXI_DAC_DATA_WR_8, *(u8
>>>>> *)val);
>>>>> +			break;
>>>>> +		case 2:
>>>>> +			ival =  FIELD_PREP(AXI_DAC_DATA_WR_16, *(u16
>>>>> *)val);
>>>>> +			break;
>>>>> +		default:
>>>>> +			return  -EINVAL;
>>>> Hopefully compiler won't need this and the above. I'd drop the size != 1..
>>>> check in favour of just doing it in this switch.
>>>>   
>>> sure, done.
>>>
>>>
>>>>> +		}
>>>>> +
>>>>> +		ret = regmap_write(st->regmap, AXI_DAC_CNTRL_DATA_WR,
>>>>> ival);
>>>>> +		if (ret)
>>>>> +			return ret;
>>>>> +
>>>>> +		/*
>>>>> +		 * Both REG_CNTRL_2 and AXI_DAC_CNTRL_DATA_WR need to
>>>>> know
>>>>> +		 * the data size. So keeping data size control here
>>>>> only,
>>>>> +		 * since data size is mandatory for to the current
>>>>> transfer.
>>>>> +		 * DDR state handled separately by specific backend
>>>>> calls,
>>>>> +		 * generally all raw register writes are SDR.
>>>>> +		 */
>>>>> +		if (size == 1)
>>>>> +			ret = regmap_set_bits(st->regmap,
>>>>> AXI_DAC_REG_CNTRL_2,
>>>>> +					      AXI_DAC_SYMB_8B);
>>>>> +		else
>>>>> +			ret = regmap_clear_bits(st->regmap,
>>>>> AXI_DAC_REG_CNTRL_2,
>>>>> +						AXI_DAC_SYMB_8B);
>>>>> +		if (ret)
>>>>> +			return ret;
>>>>> +
>>>>> +		ret = regmap_update_bits(st->regmap,
>>>>> AXI_DAC_REG_CUSTOM_CTRL,
>>>>> +					 AXI_DAC_ADDRESS,
>>>>> +					 FIELD_PREP(AXI_DAC_ADDRESS,
>>>>> reg));
>>>>> +		if (ret)
>>>>> +			return ret;
>>>>> +
>>>>> +		ret = regmap_update_bits(st->regmap,
>>>>> AXI_DAC_REG_CUSTOM_CTRL,
>>>>> +					 AXI_DAC_TRANSFER_DATA,
>>>>> +					 AXI_DAC_TRANSFER_DATA);
>>>>> +		if (ret)
>>>>> +			return ret;
>>>>> +
>>>>> +		ret = regmap_read_poll_timeout(st->regmap,
>>>>> +					       AXI_DAC_REG_CUSTOM_CTRL,
>>>>> ival,
>>>>> +					       ival &
>>>>> AXI_DAC_TRANSFER_DATA,
>>>>> +					       10, 100 * KILO);
>>>>> +		if (ret)
>>>>> +			return ret;
>>>>> +
>>>>> +		return regmap_clear_bits(st->regmap,
>>>>> AXI_DAC_REG_CUSTOM_CTRL,
>>>>> +					  AXI_DAC_TRANSFER_DATA);
>>>>> +	}
>>>>> +
>>>>> +	return -EINVAL;
>>>>> +}
>>>>> +
>>>>> +static int axi_dac_bus_reg_read(struct iio_backend *back,
>>>>> +				u32 reg, void *val, size_t size)
>>>> As for write, I'd just use an unsigned int * for val like
>>>> regmap does.
>>> Ok, so initial choice was unsigned int, further thinking of
>>> possible future busses drive the choice to void *.
>>>
>>> Let me know, i can switch to unsigned int in case.
>> I would just go with unsigned int or at a push u64 *
>>
>>>
>>>>   
>>>>> +{
>>>>> +	struct axi_dac_state *st = iio_backend_get_priv(back);
>>>>> +
>>>>> +	if (!st->bus_type)
>>>>> +		return -EOPNOTSUPP;
>>>>> +
>>>>> +	if (st->bus_type == AXI_DAC_BUS_TYPE_QSPI) {
>>>> It got mentioned in binding review but if this isn't QSPI, even
>>>> if similar don't call it that.
>>> It's a bit difficult to find a different name, physically,
>>> it is a QSPI, 4 lanes + clock + cs, and datasheet is naming it Quad SPI.
>>> But looking the data protocol, it's a bit different.
>> is QSPI actually defined anywhere? I assumed it would be like
>> SPI for which everything is so flexible you can build whatever you like.
>>
>>> QSPI has instruction, address and data.
>>> Here we have just ADDR and DATA.
>>>
> I'm not sure the instruction is really relevant for this. From a quick look, it
> feels like something used for accessing external flash memory like spi-nors. So,
> I would not be surprised if things are just like Jonathan said and this is just
> flexible as spi (being that extra instruction field a protocol defined for flash
> memory - where one typically sees this interface)

Ok, so QSPI is the hardware, and the protocol on it may vary for the target
chip/application.

Looks like DDR makes the 33MUPS rate reachable, and not all the controllers
have DDR mode. Also some controllers are supposed to work with a QSPI flash
(so with instructions), and likely this reason driven the need to use a 
custom IP.


Regards,
Angelo


> - Nuno Sá

-- 
  ,,,      Angelo Dureghello
:: :.     BayLibre -runtime team- Developer
:`___:
  `____:


