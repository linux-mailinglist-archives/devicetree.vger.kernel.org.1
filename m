Return-Path: <devicetree+bounces-39417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8FB84C937
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 12:09:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 528C7289056
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 11:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A50E1805E;
	Wed,  7 Feb 2024 11:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="IPLZI6uG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC46117BC5
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 11:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707304142; cv=none; b=jzPgHUZ3sTbVgJJU4tbA6iuAEvzePZOZb0o/JiCoHsya3jvo5xLZt+D/hn3vxDFqia2M8JDU/mbQJ2DEfk5TAGm+WyEW8DokC5VjtOPCaVnXUQtPk8EmLDNxv5esw0omghVpGnC67ntb0utjUb2FO/XNkyxd7jkPfCcJNffq6tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707304142; c=relaxed/simple;
	bh=ludCN2TVVC0VlF3oN4zQ55FOfOprq98JMt8dluiEa28=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i50MzlFYMjwTC6+fXoEbiePIy/icDCyCFrLVdrmDPhQCangJkcmYEwse+mVzckPXvlVL9KlLKXOlUXuM166r87k03TK/qqXtDJUKElQIZ/3UtpWL/jfrfmjV4/9Dd7lHulfWQEOKt0VjOIV2JoKkSkGKrE/6Uq4ncFvfyGvcbb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com; spf=pass smtp.mailfrom=tweaklogic.com; dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b=IPLZI6uG; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tweaklogic.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-517ab9a4a13so352500a12.1
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 03:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1707304140; x=1707908940; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y4Er2JvCrzXK5LJAuZCNC4zYfiOB+GgDvOYEhwDSc+I=;
        b=IPLZI6uGiXIo17/jo0x508617kB7W6KczHe4RcLzWh/b6sWOzre62cgdOgJ+YqqjZR
         /nr9XURqVwZLHrXbqx7aguaiQdXhp8JoTNJqHFhf081wC+1ue1qknCALgNt84QZ2PHg1
         ryApSowKjfdPdY509+f/P7RepgDxdTlUWRN3lmnreL0NFpX4JsiV4dZs+svMtToj4rIa
         qP+q+frpQkPmMmoIAeKd41GMLgBXA8NNruTA8P+FxQvjYWZmUK9tWW+o0oWis9LAJWKH
         szTUqmcOEIuKE4H2J17yZtwrGE+z2fDWJPeOzlIspJqFy+i9V0b4pBuBQPgUNXGO7zpG
         F5mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707304140; x=1707908940;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y4Er2JvCrzXK5LJAuZCNC4zYfiOB+GgDvOYEhwDSc+I=;
        b=vwUayJaPMXRbyCaBDH7xrMLyer01fnbIeTMBF/F3CBYf9+QLZRAZW8B0q+qRi+pD6t
         JG8UJPw8uqaBx6Q/b9LT5UbpcVkV8TFko8quOO21p4tirPNJaUb/obt1TSxRzx2Ilawk
         kbK2M7pkhJoXHQ81j0JYO+nLuGwnntJvnmIiknNH4TwPSQtCdDhL57laCiNzeX5ifmGA
         7ixMVfb3Pr2nUlN6N/iUQjE8NAp2DzYip7U9KOBfmvE3OI/ZlrsqB8lXrVOG3WCxlr9E
         Owv373jHolPUaEVsR06FEYp6kLayhUOtm05h5uuekrTliBytGMzEgHyN/VvjkA9RgOp7
         EP+Q==
X-Gm-Message-State: AOJu0YxeXeh+xtU/6DC9EO4EDqJy1qb/Dg0UvYS3yIeOPIVSXPRug8j8
	ENXHI30w8YCRrv353ilEMcnEE82CFp5vtsmXh483xbYDU+wFYT3zM3Ma0kWpmA4=
X-Google-Smtp-Source: AGHT+IHixBjQ+x80cJqn2rYfFLizhrgAUeBl7cIYsU+F3jtydagok6FWiSeTqw+grYXJUYAIgI621A==
X-Received: by 2002:a05:6a21:394a:b0:19e:5683:e8d0 with SMTP id ac10-20020a056a21394a00b0019e5683e8d0mr5054306pzc.12.1707304140011;
        Wed, 07 Feb 2024 03:09:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWMBqqrEu/Maor6qKAKLi9J/x5p341mi1EahuFaugvKkoTSe5J4Pb6t6JsihxD9xPQJUCL1T3bIunLFxQC3QJfUkl9xYQsIjLm+HDB7WeNu204v8P56D+jkse98AadzL39P0GVpdnNAuJtzp0Mf9R5PS7t/oTYQCZdUJTSFFgKHceZhzRGTEhu4/rCSIyIj08pmsBrGeKdb/MhauXUhCL0ie9yYOggcjOW7j43eTfK7U4fn7/S4coP1xMCqPoJbYnlAmUpbK+AthNY1GbT+ZS8pARtQOWLBgCmUAr/ICRC1Uh6xWQcccwfxB89K57KhxcdCsefQhce29rOjpY+AMg3cIHW7HeXU1KAg2/e90BonQTTB3npnKxSlryUKNfjzRH+5M8g92QbrmMho0GduzxjqmKPoe2rfpsyVKzgEcgEHLvENk+nvW0aoIAUtQGlBai1w3SNDB6l2Kc6E7cwrgxpk8rwzPQ9uWhEttNmEoLSHk+k=
Received: from [192.168.20.11] ([180.150.113.62])
        by smtp.gmail.com with ESMTPSA id a17-20020a056a000c9100b006dd9ff236b6sm1273985pfv.177.2024.02.07.03.07.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Feb 2024 03:08:59 -0800 (PST)
Message-ID: <43e01493-1f26-414b-b2eb-7fb959b9b542@tweaklogic.com>
Date: Wed, 7 Feb 2024 21:37:37 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/5] iio: light: Add support for APDS9306 Light Sensor
Content-Language: en-US
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>, Marek Vasut <marex@denx.de>,
 Anshul Dalal <anshulusr@gmail.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Matt Ranostay <matt@ranostay.sg>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240206130017.7839-1-subhajit.ghosh@tweaklogic.com>
 <20240206130017.7839-6-subhajit.ghosh@tweaklogic.com>
 <ZcI3Pz6Z5V4qqpHO@smile.fi.intel.com>
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <ZcI3Pz6Z5V4qqpHO@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Andy,
>> + */
> 
> ...
> 
>> +static_assert(ARRAY_SIZE(apds9306_repeat_rate_freq) ==
>> +		APDS9306_NUM_REPEAT_RATES);
> 
> Just make that define to be inside [] in the respective array and drop this
> static assert. The assertion might make sense to have different arrays to be
> synchronized and when their maximums are different due to semantics (not your
> case AFAICS).
> 
> ...
> 
>> +static_assert(ARRAY_SIZE(apds9306_repeat_rate_period) ==
>> +		APDS9306_NUM_REPEAT_RATES);
> 
> Ditto.
> 
> ...
I apologize for this. You pointed me out in an earlier review, I misunderstood
it and used the macro in two static asserts! It will be fixed.
> 
>> +	struct mutex mutex;
> 
> checkpatch probably wants this to have a comment.
I used the mainline checkpatch, it did not through any explicit warnings or errors
regarding this.
As per previous review pointed below, I removed the the comment from here to
kernel doc:
https://lore.kernel.org/all/20240121152332.6b15666a@jic23-huawei/

Do you still want me to add a comment before struct mutex?
> 
> ...
> 
>> +	struct regmap_field *regfield_sw_reset;
>> +	struct regmap_field *regfield_en;
>> +	struct regmap_field *regfield_intg_time;
>> +	struct regmap_field *regfield_repeat_rate;
>> +	struct regmap_field *regfield_gain;
>> +	struct regmap_field *regfield_int_src;
>> +	struct regmap_field *regfield_int_thresh_var_en;
>> +	struct regmap_field *regfield_int_en;
>> +	struct regmap_field *regfield_int_persist_val;
>> +	struct regmap_field *regfield_int_thresh_var_val;
> 
> May we reduce the names by
> 
> 	struct {
> 		...
> 		struct regmap_field *int_persist_val;
> 		struct regmap_field *int_thresh_var_val;
> 	} regfield;
> 
> In the code
> 
> 	struct regfield *rf = &priv->regfield;
> 
> 	rf->int...
> 
> ...
> 
>> +static struct attribute *apds9306_event_attributes[] = {
>> +	&iio_const_attr_thresh_either_period_available.dev_attr.attr,
>> +	&iio_const_attr_thresh_adaptive_either_values_available.dev_attr.attr,
>> +	NULL
>> +};
>> +
>> +static const struct attribute_group apds9306_event_attr_group = {
>> +	.attrs = apds9306_event_attributes,
>> +};
> 
> ...
> 
>> +static int apds9306_runtime_power_on(struct device *dev)
>> +{
>> +	int ret;
>> +
>> +	ret = pm_runtime_resume_and_get(dev);
>> +	if (ret < 0)
>> +		dev_err_ratelimited(dev, "runtime resume failed: %d\n", ret);
>> +
>> +	return ret;
>> +}
>> +
>> +static int apds9306_runtime_power_off(struct device *dev)
>> +{
>> +	pm_runtime_mark_last_busy(dev);
>> +	pm_runtime_put_autosuspend(dev);
>> +
>> +	return 0;
>> +}
> 
> Seems to me like useless wrappers. Why do you need that message?
No specific need for that message, however the wrapper was suggested in a previous review:
https://lore.kernel.org/all/ZTuuUl0PBklbVjb9@smile.fi.intel.com/

Do you still want me to use the pm functions directly from the calling functions?

> Btw, it's used only twice, open coding saves the LoCs!
Yes, it makes sense.
> Try making the next submission so the driver LoCs is < 1400.
The current driver file is 1335 lines, next one, I will definitely try to keep in under 1400 lines.
> 
> ...
Acknowledging all other review comments. Thank you for reviewing.

Regards,
Subhajit Ghosh






