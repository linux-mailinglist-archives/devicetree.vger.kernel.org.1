Return-Path: <devicetree+bounces-71848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6879F8D837F
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 15:08:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B8764B24BE0
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 13:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6095D12C54A;
	Mon,  3 Jun 2024 13:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P7N7YxIX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8801812C552;
	Mon,  3 Jun 2024 13:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717420110; cv=none; b=OQF67UyhkDRFNcRZZy/WuC3SNEQSoSnaVDnaFG8u8AmFi9xat1SQZskpCyp97DrbIEboj4Tp0JQDY3QpcGBXS/98EVeSrEzK9arlyfonpodK4gToZVeMFAiTmB4xpygO2jOR6ssBYFv8L9+iBbWXDYDtLB15d9cwUC1fqKH+HGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717420110; c=relaxed/simple;
	bh=d1jKSQXV/+hiSgBSN07jICt/1zBKhvpv+CtvkGHUXBg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dFyxiHB6pybrhOATjyQ2TZIRDtSEU3BXIHjfNPJ6xqkb3uq+irwZzFYR5TOSZvSxv/JmUMSxjLNmqj0b/2SQMbUWzm905YbvjXoIP+BOteSOHKvvLU4Hukb+ftJs8wpzrchhwmDEIzYHH3xLE/tlu70o62kE70Ol/t7BeG9prhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P7N7YxIX; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a6266ffdba8so384890466b.1;
        Mon, 03 Jun 2024 06:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717420107; x=1718024907; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qAZowHbU1vntJza1gFJRRVj1jWWarUdVjdkpZ7c+cdY=;
        b=P7N7YxIXaT2tSImJ8K6UK0JM1X8V99rSvdvRUS1vqR+eozUK8jm0F8mnWk/pXs2sRO
         1bcqZ9cRYGd5wai8Q/DY9cR7pVXkI7zLW/RVb/7+d+HJqLqXDRUTPfssiLgcQ2Dd3Ta4
         fCVK1BOQ34YME4V3xVHg/OyvglBDTvLufJOLoTXb6vuwJM5gOXAzIVDj5DDFfLOVHmxC
         tMj6cbxym16WP1uhKFnSgj9RtL39te86461bzgIJgGvClbEQ2eE3wd0IaaSgNK/9U2FS
         fdBrn6rTEuSkHFRDZqfXYMWseEZzUid1+Hdbt1YQ1XbzvpmI7ML97aHpjRG+n15+Slqy
         sKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717420107; x=1718024907;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qAZowHbU1vntJza1gFJRRVj1jWWarUdVjdkpZ7c+cdY=;
        b=M9hGGkFE7YE3yP56Bn7kAlcPS1uKDMu2k0NBEjtiJQIYUyVvDB+BgUYjqz385b3RDx
         J/DNOYwWQlXDj4iGUdC+YLfDJPG1GOJjeVxKs0yHcqiR6Z4Z/C5eytyqmZ6Tz3WDpkE8
         SS1LZ8p3AOHovdht9WFLGLUAl6UoypQ9TEDOgNHgcG+uu6rCgvacRqaAKsm8ZjgSJeFC
         MpF9G+7AgWjvrka58UwyaojWBkKxPeiaN8OB5rK6JZUa86slWURDln0yjBTGGrnrMNzF
         tdBhJsZxxw52UXGvqDpDMgElDqGTnEwuES13xWnUqOloc195PQ+MqXDUj+TpdJxFFIJi
         25/A==
X-Forwarded-Encrypted: i=1; AJvYcCXqBpwbrieEmQfPoDpGTPBNYYBhKNLMNgviR176fGV4RK0qgj0LOZPkjPTD6guWzJE0l+OuplDt0UrGEILIwG99uExLm7M4TxV7emm22/87OoKafM2MLfwustdNnbbi+o48ymLP49uAPgYjMzIoSQ191z4nVFB85qWDK6CYt0MKFJFwbg==
X-Gm-Message-State: AOJu0YzudqcUVbX+F2RtDsnY5XkxnqFoywCPMhaS/0nP+sNbK6ZqK2fl
	eTUnF3wh2k2uLertuiC31fOP5p8HQRxWf3m4R5jTAu+zpDv45UaD
X-Google-Smtp-Source: AGHT+IGnj+9M9LN3jV9fbWA5m/49stg2bFbulep5osCaO0G4XJ06eOYrjW09nbcbn9uMP2k4GUe/dA==
X-Received: by 2002:a17:906:4e87:b0:a66:d1a1:f92f with SMTP id a640c23a62f3a-a681fe4e434mr635709966b.14.1717420106446;
        Mon, 03 Jun 2024 06:08:26 -0700 (PDT)
Received: from [10.76.84.176] ([5.2.194.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68a9fdfb3dsm367032666b.154.2024.06.03.06.08.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jun 2024 06:08:25 -0700 (PDT)
Message-ID: <d2370ad2-5fed-41b3-bdd5-c6c895283c18@gmail.com>
Date: Mon, 3 Jun 2024 16:08:24 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/6] iio: adc: ad7173: refactor ain and vref selection
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>,
 Dumitru Ceclan via B4 Relay <devnull+dumitru.ceclan.analog.com@kernel.org>
Cc: dumitru.ceclan@analog.com, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240531-ad4111-v4-0-64607301c057@analog.com>
 <20240531-ad4111-v4-3-64607301c057@analog.com>
 <20240601194925.23123071@jic23-huawei>
 <e9ade241e57383d5342d377bc865046e612a7033.camel@gmail.com>
Content-Language: en-US
From: "Ceclan, Dumitru" <mitrutzceclan@gmail.com>
In-Reply-To: <e9ade241e57383d5342d377bc865046e612a7033.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 03/06/2024 16:00, Nuno Sá wrote:
> On Sat, 2024-06-01 at 19:49 +0100, Jonathan Cameron wrote:
>> On Fri, 31 May 2024 22:42:29 +0300
>> Dumitru Ceclan via B4 Relay <devnull+dumitru.ceclan.analog.com@kernel.org> wrote:
>>
>>> From: Dumitru Ceclan <dumitru.ceclan@analog.com>
>>>
>>> Move validation of analog inputs and reference voltage selection to
>>> separate functions to reduce the size of the channel config parsing
>>> function and improve readability.
>>> Add defines for the number of analog inputs in a channel.
>>>
>>> Reviewed-by: David Lechner <dlechner@baylibre.com>
>>> Signed-off-by: Dumitru Ceclan <dumitru.ceclan@analog.com>
>>> ---
>>>  drivers/iio/adc/ad7173.c | 71 ++++++++++++++++++++++++++++++++++--------------
>>>  1 file changed, 50 insertions(+), 21 deletions(-)
>>>
>>> diff --git a/drivers/iio/adc/ad7173.c b/drivers/iio/adc/ad7173.c
>>> index 6e249628bc64..a20831d99aa5 100644
>>> --- a/drivers/iio/adc/ad7173.c
>>> +++ b/drivers/iio/adc/ad7173.c
>>> @@ -60,6 +60,7 @@
>>>  #define AD7173_CH_SETUP_AINPOS_MASK	GENMASK(9, 5)
>>>  #define AD7173_CH_SETUP_AINNEG_MASK	GENMASK(4, 0)
>>>  
>>> +#define AD7173_NO_AINS_PER_CHANNEL	2
>>>  #define AD7173_CH_ADDRESS(pos, neg) \
>>>  	(FIELD_PREP(AD7173_CH_SETUP_AINPOS_MASK, pos) | \
>>>  	 FIELD_PREP(AD7173_CH_SETUP_AINNEG_MASK, neg))
>>> @@ -623,6 +624,7 @@ static int ad7173_setup(struct iio_dev *indio_dev)
>>>  static unsigned int ad7173_get_ref_voltage_milli(struct ad7173_state *st,
>>>  						 u8 reference_select)
>>>  {
>>> +	struct device *dev = &st->sd.spi->dev;
>>>  	int vref;
>>>  
>>>  	switch (reference_select) {
>>> @@ -646,9 +648,11 @@ static unsigned int ad7173_get_ref_voltage_milli(struct
>>> ad7173_state *st,
>>>  		return -EINVAL;
>>>  	}
>>>  
>>> -	if (vref < 0)
>>> +	if (vref < 0) {
>>> +		dev_err(dev, "Cannot use reference %u. Error:%d\n",
>>> +			reference_select, vref);
>>>  		return vref;
>>> -
>>> +	}
>>>  	return vref / (MICRO / MILLI);
>>>  }
>>>  
>>> @@ -905,13 +909,50 @@ static int ad7173_register_clk_provider(struct iio_dev
>>> *indio_dev)
>>>  					   &st->int_clk_hw);
>>>  }
>>>  
>>> +static int ad7173_validate_voltage_ain_inputs(struct ad7173_state *st,
>>> +					      const unsigned int
>>> ain[AD7173_NO_AINS_PER_CHANNEL])
>> I was late to the game in replying to previous thread.
>>
>> This is neater without the loop and with 2 parameters.  Anyhow see reply to v3.
>>
> 
> Yeps, even more given that we're passing/copying the complete array which always
> fells awkward to me :)
> 
> - Nuno Sá
> 
> 

I rewrote the function, but it feels a bit awkward, perhaps I could get a bit of
advice before sending V5:

static int ad7173_validate_voltage_ain_inputs(struct ad7173_state *st,
					      unsigned int ain0, unsigned int ain1)
{
	struct device *dev = &st->sd.spi->dev;
	bool special_input0, special_input1;

	special_input0 = ain0 == AD7173_AIN_REF_POS || ain0 == AD7173_AIN_REF_NEG ||
			 ((ain0 == AD7173_AIN_COM_IN_POS || ain0 == AD7173_AIN_COM_IN_NEG) &&
			 (st->info->has_common_input)) || ain0 == AD4111_VINCOM_INPUT;
	special_input1 = (ain1 == AD7173_AIN_REF_POS || ain1 == AD7173_AIN_REF_NEG) ||
			 ((ain1 == AD7173_AIN_COM_IN_POS || ain1 == AD7173_AIN_COM_IN_NEG) &&
			 (st->info->has_common_input)) || ain1 == AD4111_VINCOM_INPUT;

	if (st->info->has_vincom_input) {
		if (ain0 == AD4111_VINCOM_INPUT &&
		    ain1 < st->info->num_voltage_in && /* Normal input */
		    ain1 >= st->info->num_voltage_in_div) /* Input without divider */
			return dev_err_probe(dev, -EINVAL,
				"VINCOM must be paired with inputs having divider.\n");

		if (ain1 == AD4111_VINCOM_INPUT &&
		    ain0 < st->info->num_voltage_in && /* Normal input */
		    ain0 >= st->info->num_voltage_in_div) /* Input without divider */
			return dev_err_probe(dev, -EINVAL,
				"VINCOM must be paired with inputs having divider.\n");
	}

	if ((ain0 >= st->info->num_voltage_in && !special_input0) ||
	    (ain1 >= st->info->num_voltage_in && !special_input1))
		return dev_err_probe(dev, -EINVAL,
				     "Input pin number out of range for pair (%d %d).\n",
				     ain0, ain1);

	if (!special_input0 && !special_input1 &&
	    ((ain0 >= st->info->num_voltage_in_div) !=
	     (ain1 >= st->info->num_voltage_in_div)))
		return dev_err_probe(dev, -EINVAL,
			"Both inputs must either have a voltage divider or not have: (%d %d).\n",
			ain0, ain1);

	return 0;
}

It feels a bit too verbose, but I could not come up with a better way to
incorporate all those cases.

