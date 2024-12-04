Return-Path: <devicetree+bounces-126850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB92A9E35E4
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 09:50:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88271163E44
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 08:50:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16D91198E90;
	Wed,  4 Dec 2024 08:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="mapWc9ew"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C83198841
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 08:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733302210; cv=none; b=R69aIrwBztxrdbb7KJFIybGdb3lBNNejdLkyU29U0xTg0KT/Y1zQWznAGWm9bHNxPv6bZNgZiyBMdtDXWQbBcyH1+tOe/crUtXatVOnSQ+Am16N6MDwig8xFzLVJ+8pxGicrRBqi73vELwjKLGZAkTd0qMDGRwBILKB/cKoe/p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733302210; c=relaxed/simple;
	bh=SKbPOKp8EmEZzoWIWsE7IwT5qwKdLVo+LROCnTyZjbA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ALNAyedKkaMVLOkv982CiBTqccah9LFs9TfTBnkCgVQmkHe20/3sQ8Fmp0zoaJb1v0BmNpN9KG2c0TIjES9swp89DoaLe9qZW629x8TAXpFE3JcL6VSbolP29bzseiCtQJuKSwh+nwK65qf4WLiO/2synnGRvjxwdy7mUS5UbK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=mapWc9ew; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-434a099ba95so58858305e9.0
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 00:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733302206; x=1733907006; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kX/PdWrycYoLN9w/gftabjVrrnBJFYg9A4mS6DbMIag=;
        b=mapWc9ewi5JeMYlI9k9igzEbEMTg7RZ3PSBcLYVp5Zw0zsvmuPjdeQ1+GBgd1dTnM3
         LmVMIkusahLlK2LC9hf8hURugxEV9DdwUsx5QFfybldduxxhl3eZW35+UZ/G0aWbQze9
         v0pKnJwceFnl3n+HCGtWf/2Lfh8umMPh7r8VUMQuEmXtFhn3zxe8SIVu2G1N1ydzrk0A
         zhS4Cbbx69kFm2YEJJo6Eiack/uVHiyGnsH///zzVp5cAq0k41BxadFwtpswdgLy0eC+
         nD5KokG+/tgnoAiUrGk+v4+SurbnxO3menGShwGI24ibbJznQu3dMxMTw5FwabXNfuK7
         i/Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733302206; x=1733907006;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kX/PdWrycYoLN9w/gftabjVrrnBJFYg9A4mS6DbMIag=;
        b=QHRp8Mu1bsWn92gMp4a/e80zjHqa2CfUJCFb6bDDVUBAUn6FfpinoSLhFnoVx6Q8Mw
         Yd75HxB/faoFBhKwavoEDc34yALI3//0VbZ0dqgu6C+dIl7oP0UXQIUkqx3z3X03uHWq
         jpDTMv5F0Bu+UCuxqK4LqJFVVWfF1h0J2Xja9wr9gINrljJvdcY95bOcs/KD5n1n1Mqv
         Vw2AR1rxI7ESDk9t1JathAcooACBAF3YXlwDAG6w9fy+oLz4H0/gIGaGkUMxu2mmZb7U
         yYD0d24j183rXrGg/Y27NNHW6FZqJuXnneAYLSE+9KIndeph9IoXbCvirwg5SxZ7MkBU
         1oxg==
X-Forwarded-Encrypted: i=1; AJvYcCXulweHfjrdn9TaaEn3j6/kVwSj7wlWxI+gp12289E6LRERzljk8Bz/VpIYO6MZ3f+zBftF0F6kQtds@vger.kernel.org
X-Gm-Message-State: AOJu0YzZN/AkyEGTKNwxiP9yTBZaNPLYlrJv07ZnJvlErapbnF6/xXyb
	sUwfEl2m5j2S4z9KpAfFJJygzt9NTWbzH37kTHXzwmLewzMvkBEIte5mC2HtKB8=
X-Gm-Gg: ASbGncs3Z7re5rSwHxHkByRIPhjudTXHoHN7bx6skMjm8Sk3+3QTm/WNzP59nZLSfHe
	wEYzdD9w65qHzbHeyxchI9PcmHwNljz0rHdWlp22qQDwlAtOCUa2vsRGxLqDplYRrnigFB8UEze
	ZhRJpeoHnddpEbulSBZUKkIHy9XKOYhZxamcC2SUDyceCCPmd6+bbCn04g4bVS8yPjpPUjOKbGC
	huB88TDG0CZdF5b9d3GTGwrQGhcW/ZZNxsXTijFBA31FGBRi0aEuB+fV6I=
X-Google-Smtp-Source: AGHT+IGbtU/rD+eIsFIVhtu10NokIMY21idDwmyfqhDLr7nu+tQXuHISi1JSEe4tGoyx24spnbSvMg==
X-Received: by 2002:a05:600c:1ca2:b0:434:ba13:e52b with SMTP id 5b1f17b1804b1-434d0a14a83mr53170425e9.31.1733302205966;
        Wed, 04 Dec 2024 00:50:05 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d5272f99sm16732325e9.11.2024.12.04.00.50.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2024 00:50:05 -0800 (PST)
Message-ID: <0e5bafb1-fbf9-4168-bbe4-1feaaa6f812b@tuxon.dev>
Date: Wed, 4 Dec 2024 10:50:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/14] iio: adc: rzg2l_adc: Add support for channel 8
Content-Language: en-US
To: Jonathan Cameron <jic23@kernel.org>
Cc: prabhakar.mahadev-lad.rj@bp.renesas.com, lars@metafoo.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, p.zabel@pengutronix.de, linux-iio@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20241203111314.2420473-1-claudiu.beznea.uj@bp.renesas.com>
 <20241203111314.2420473-10-claudiu.beznea.uj@bp.renesas.com>
 <20241203201857.7ccdcf99@jic23-huawei>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20241203201857.7ccdcf99@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Jonathan,

On 03.12.2024 22:18, Jonathan Cameron wrote:
> On Tue,  3 Dec 2024 13:13:09 +0200
> Claudiu <claudiu.beznea@tuxon.dev> wrote:
> 
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The ADC on the Renesas RZ/G3S SoC includes an additional channel (channel
>> 8) dedicated to reading temperature values from the Thermal Sensor Unit
>> (TSU). There is a direct in-SoC connection between the ADC and TSU IPs.
>>
>> To read the temperature reported by the TSU, a different sampling rate
>> (compared to channels 0-7) must be configured in the ADM3 register.
>>
>> The rzg2l_adc driver has been updated to support reading the TSU
>> temperature.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
>>  static unsigned int rzg2l_adc_readl(struct rzg2l_adc *adc, u32 reg)
>> @@ -161,7 +173,7 @@ static void rzg2l_set_trigger(struct rzg2l_adc *adc)
>>  	rzg2l_adc_writel(adc, RZG2L_ADM(1), reg);
>>  }
>>  
>> -static int rzg2l_adc_conversion_setup(struct rzg2l_adc *adc, u8 ch)
>> +static int rzg2l_adc_conversion_setup(struct rzg2l_adc *adc, u8 ch, enum iio_chan_type type)
>>  {
>>  	const struct rzg2l_adc_hw_params *hw_params = adc->hw_params;
>>  	u32 reg;
>> @@ -177,6 +189,15 @@ static int rzg2l_adc_conversion_setup(struct rzg2l_adc *adc, u8 ch)
>>  	reg |= BIT(ch);
>>  	rzg2l_adc_writel(adc, RZG2L_ADM(2), reg);
>>  
>> +	reg = rzg2l_adc_readl(adc, RZG2L_ADM(3));
>> +	reg &= ~hw_params->adsmp_mask;
>> +	/*
>> +	 * type could be IIO_VOLTAGE = 0 or IIO_TEMP = 9. Divide to 8 to get
>> +	 * index 0 or 1 depending on the channel type.
> 
> That is not particularly nice and potentially a little fragile if we get other device
> support in future. Better to match on the type in rzg2l_adc_channels[] possibly wrapped
> up in a little utility function bool rzg2l_adc_channels_is_temp(); Then use a
> ? 1 : 0 to get the offset in default_adsmp[]

I though about this, too, but considered we should not go beyond 1 as the
rzg2l_adc_conversion_setup() is currently call in places where the channel
type is only IIO_VOLTAGE and IIO_TEMP, just saying...

I'll switch to the approach you propose in the next version.

> 
> 
>> +	 */
>> +	reg |= hw_params->default_adsmp[type / 8];
>> +	rzg2l_adc_writel(adc, RZG2L_ADM(3), reg);
>> +
>>  	/*
>>  	 * Setup ADINT
>>  	 * INTS[31] - Select pulse signal
>> @@ -192,7 +213,8 @@ static int rzg2l_adc_conversion_setup(struct rzg2l_adc *adc, u8 ch)
>>  	return 0;
>>  }
>>
>>  
>> +	case IIO_CHAN_INFO_PROCESSED:
>> +		if (chan->type != IIO_TEMP)
>> +			return -EINVAL;
>> +
>> +		mutex_lock(&adc->lock);
>> +		ret = rzg2l_adc_conversion(indio_dev, chan->type, adc, ch);
>> +		if (!ret) {
>> +			/* Convert it to mili Celsius. */
>> +			*val = adc->last_val[ch] * 1000;
> Prefer you provide a scale of 1000 and report this raw.

I'll look to this.

>> +		}
> Also strong preference for error conditions out of line.
> As in that other case, guard() makes that easier as yo ucan do
> 		{
> 
> 			guard(mutex)(&adc->lock);
> 			ret = rz....
> 			if (ret)
> 				return ret;
> 
> 			*val = ...
> 			
> 			return IIO_VAL_INT;
> 		}


I agree, looks cleaner with guard().

> 
>> +		mutex_unlock(&adc->lock);
>> +
>> +		return ret ? ret : IIO_VAL_INT;
>> +
>>  	default:
>>  		return -EINVAL;
>>  	}
> 
>>  static const struct iio_info rzg2l_adc_iio_info = {
>> @@ -332,11 +368,14 @@ static int rzg2l_adc_parse_properties(struct platform_device *pdev, struct rzg2l
>>  		if (channel >= hw_params->num_channels)
>>  			return -EINVAL;
>>  
>> -		chan_array[i].type = IIO_VOLTAGE;
>> +		chan_array[i].type = rzg2l_adc_channels[channel].type;
>>  		chan_array[i].indexed = 1;
>>  		chan_array[i].channel = channel;
>> -		chan_array[i].info_mask_separate = BIT(IIO_CHAN_INFO_RAW);
>> -		chan_array[i].datasheet_name = rzg2l_adc_channel_name[channel];
>> +		if (rzg2l_adc_channels[channel].type == IIO_VOLTAGE)
>> +			chan_array[i].info_mask_separate = BIT(IIO_CHAN_INFO_RAW);
>> +		else
>> +			chan_array[i].info_mask_separate = BIT(IIO_CHAN_INFO_PROCESSED);
> 
> Make it raw, but I'm curious we have no _SCALE on this device.  Do we really have no idea
> of the calibration of these channels?

The calibration data is stored on the TSU (Thermal Sensor Unit) hardware
block. From the TSU driver (not yet published) we read the temperature
through the ADC channel and apply the calibration data on the value
returned by ADC (this is how HW manual suggests). This is the current
(internal) struct thermal_zone_device_ops::get_temp() API of the TSU driver
(it will be published later, after some clarifications with hardware team
on SoC specific aspects):

// ..

#define TSU_READ_STEPS		8
#define MCELSIUS(temp)		(temp * MILLIDEGREE_PER_DEGREE)

// ...

struct rzg3s_thermal_priv {
	void __iomem *base;
	struct device *dev;
	struct thermal_zone_device *tz;
	struct reset_control *rstc;
	struct iio_channel *channel;
	u16 calib0;
	u16 calib1;
};

// ...

static int rzg3s_thermal_get_temp(struct thermal_zone_device *tz, int *temp)
{
	struct rzg3s_thermal_priv *priv = thermal_zone_device_priv(tz);
	struct device *dev = priv->dev;
	u32 ts_code_ave = 0;
	int ret, val;

	ret = pm_runtime_resume_and_get(dev);
	if (ret)
		return ret;

	for (u8 i = 0; i < TSU_READ_STEPS; i++) {
		ret = iio_read_channel_processed(priv->channel, &val);
		if (ret < 0)
			goto rpm_put;
		
		ts_code_ave += val;
		/*
		 * According to HW manual (section 40.4.4 Procedure for
		 * Measuring the Temperature) we need to wait here at
		 * leat 3us.
		 */
		usleep_range(5, 10);
	}

	ret = 0;
	ts_code_ave = DIV_ROUND_CLOSEST(ts_code_ave, TSU_READ_STEPS);

	/*
	 * According to HW manual (section 40.4.4 Procedure for Measuring
	 * the Temperature) the formula mentioned in the hardware manual is
	 * as follows;
	 *
	 * Tj = (ts_code_ave - priv->calib0) * (165 / (priv->calib0 -
	 * priv->calib1)) - 40
	 *
	 * As the temperature retrieved from the IIO channel is in
	 * milicelsius convert all members of the equation to milicelsius.
	 * It has been chose like this to avoid loosing precisions by
	 * converting IIO reported temperature to celsius.
	 */
	*temp = DIV_ROUND_CLOSEST_ULL(((u64)(ts_code_ave -
		MCELSIUS(priv->calib1)) * MCELSIUS(165)),
		MCELSIUS((priv->calib0 - priv->calib1))) - MCELSIUS(40);

	/* Round it up to 0.5 degrees Celsius. */
	*temp = roundup(*temp, 500);

rpm_put:
	pm_runtime_mark_last_busy(dev);
	pm_runtime_put_autosuspend(dev);

	return ret;
}


> 
>> +		chan_array[i].datasheet_name = rzg2l_adc_channels[channel].name;
>>  		i++;
>>  	}
>>  
>> @@ -386,7 +425,7 @@ static int rzg2l_adc_hw_init(struct device *dev, struct rzg2l_adc *adc)
>>  	reg &= ~RZG2L_ADM3_ADCMP_MASK;
>>  	reg &= ~hw_params->adsmp_mask;
>>  	reg |= FIELD_PREP(RZG2L_ADM3_ADCMP_MASK, hw_params->default_adcmp) |
>> -	       hw_params->default_adsmp;
>> +	       hw_params->default_adsmp[0];
>>  
>>  	rzg2l_adc_writel(adc, RZG2L_ADM(3), reg);
>>  
>> @@ -479,7 +518,7 @@ static int rzg2l_adc_probe(struct platform_device *pdev)
>>  static const struct rzg2l_adc_hw_params rzg2l_hw_params = {
>>  	.num_channels = 8,
>>  	.default_adcmp = 0xe,
>> -	.default_adsmp = 0x578,
>> +	.default_adsmp = { 0x578 },
>>  	.adsmp_mask = GENMASK(15, 0),
>>  	.adint_inten_mask = GENMASK(7, 0),
>>  	.adivc = true
> 

