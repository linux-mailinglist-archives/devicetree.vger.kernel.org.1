Return-Path: <devicetree+bounces-76389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7B990A71D
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 09:30:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F5E01F223FB
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 07:30:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCA1C18FDC4;
	Mon, 17 Jun 2024 07:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JmFVOSbY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0600818C349
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718609395; cv=none; b=Yn1HQV84We6jdGysgwTrVHPIyDED5dnKtwfwfqYPHoWDesYWgFPFYnly44suBrUQIu6mD66Uu8tDZ78jdMwKNDeTUJsuHHOmoBLKLqGG1bUp1d3FzR+7sB8dIlcIauHB2kODZ+AD8vAZHiwFb7+7NIRDmwixwn/53HtYvbvN03Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718609395; c=relaxed/simple;
	bh=b8KZ+FHmL2x7Y4S1morlodudVRbCot5zoP0+rCi2RAE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CAl7W5LBlR0MvrQEn8Mdm+j28NSJAUsJJaVWlWDzPr2Xhuh/WsC3RTvGf8KbxRh3K0q2oyiYW1sv8lvlu2mtvB3F+uZrH+NUKkbyU+au4J19uIrOSvPzwQTL6TJbOfuVggz5L9V1CDqacXWS9kKKlA8DId9lUzJd4A3VT4GnOvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JmFVOSbY; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-57ca578ce8dso4589190a12.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 00:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718609392; x=1719214192; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=R90PgbpAoGmyJZqo7EQdm/mireaXzAr0y54y2Hm9H4I=;
        b=JmFVOSbYx32kHwx4Ew5I//VTjWtFXO0O2KXzw8o2MLjFKiwLhk5hotV62tQihCrKML
         lh/izkC+gdVFojllZLFBFrmSvEaw9aFc/OzC/gRiu2SWukEULIcsVqn5E7dCivgyE4Z6
         ls44uenG+Ibfjwqr1RBgdzEjbLgbJONJtTcazcSPoYZPLzfTG9X5u7jsXH/XnB7jHU5f
         Avjfz04UTcj/Ckr483SKY9izjG3KTB6n6L4odQ4Sw/LWyY3F8K1NcHQlq+rBG/L/1nQF
         k02TWni6o8dTVJLmvbYahBKi6Shh3P9c9RmR/7k8UMQDZkCEA+WLdcS42irSvESS2D1Y
         uWvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718609392; x=1719214192;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R90PgbpAoGmyJZqo7EQdm/mireaXzAr0y54y2Hm9H4I=;
        b=e8DxSZZ1FyEM0+b+tdHbvZhGFXZFl6VDhS7bZMPNssGbVLDuJ+atN8E5/C67S6TqfG
         C8XKlVUdmQwDuAw3HzUn0NnAmXjmUvZ84CpGZIEcNW2xmpfSJl+ROOQr2gxMTEeUTLTw
         mZOvIXImJ77g5mtizYgQAtw5MOqC9v2MhPnZYYZpuIAmu5TSU64V0jG2ybLvgmwgmWtm
         9GkvdQSwUSUoV6E8El3EIbASXUJ+F/zVs1OBu7Pi4AYTzRQuOkkikP8xfRvjZ+Bkrok3
         VclHp/8pBhMXCmUVoraHr8I+tTvWUFfNH2rGFpI6BnUF/AVTkTEbswXfpIFBUK4+YX4u
         QeHg==
X-Forwarded-Encrypted: i=1; AJvYcCW2Kw5JavWwLeNxkTqTF3lQjS6RUwvCFfayHp2sQaBRt3XFaClmOwbA8rwx2j3eUwofO+1DVFiM3lz2wiadk39GPrHI7Lu7/5Fl5A==
X-Gm-Message-State: AOJu0YyunEDQzzbi/ZyVSjjsgkbogiILe5KouSRT6/dmzwNQw2UsoxX4
	Qbz6EvDlU3CKVioSUNkRzlhXTW3OYk6XGLPQC9ri8gNmKK255hPxQE54mO2e0cQ=
X-Google-Smtp-Source: AGHT+IHXHTfUj2T0z9KmQ8zrAR3njVCwUDztqltdZx9LMp6TfzqnPfEwgRl881HE76087R5sx2rUCg==
X-Received: by 2002:a17:907:7f26:b0:a6f:50ae:e09 with SMTP id a640c23a62f3a-a6f60cefc4emr823960466b.4.1718609392196;
        Mon, 17 Jun 2024 00:29:52 -0700 (PDT)
Received: from [192.168.0.18] ([78.10.207.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f42ddfsm491479166b.171.2024.06.17.00.29.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 00:29:51 -0700 (PDT)
Message-ID: <bfc40d4b-f3ef-44ab-8048-1ff5bdcbfb57@linaro.org>
Date: Mon, 17 Jun 2024 09:29:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ASoC: Add ak4619 codec support
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org,
 Khanh Le <khanh.le.xr@renesas.com>
References: <877ceotnrg.wl-kuninori.morimoto.gx@renesas.com>
 <875xu8tnpw.wl-kuninori.morimoto.gx@renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <875xu8tnpw.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/06/2024 02:30, Kuninori Morimoto wrote:
> From: Khanh Le <khanh.le.xr@renesas.com>
> 
> This patch adds support for the Asahi Kasei AK4619 audio codec.
> 
> [Kuninori cleanuped and adjusted to upstream code]


...

> +	/*
> +	 * Select below from Sound Card, not here
> +	 *	SND_SOC_DAIFMT_CBC_CFC
> +	 *	SND_SOC_DAIFMT_CBP_CFP
> +	 */
> +
> +	/* First Priority */
> +	SND_SOC_POSSIBLE_DAIFMT_I2S	|
> +	SND_SOC_POSSIBLE_DAIFMT_LEFT_J,
> +
> +	/* Second Priority */
> +	SND_SOC_POSSIBLE_DAIFMT_DSP_A	|
> +	SND_SOC_POSSIBLE_DAIFMT_DSP_B,
> +};
> +
> +static struct snd_soc_dai_ops ak4619_dai_ops = {

Missing const

> +	.startup			= ak4619_dai_startup,
> +	.set_sysclk			= ak4619_dai_set_sysclk,
> +	.set_fmt			= ak4619_dai_set_fmt,
> +	.hw_params			= ak4619_dai_hw_params,
> +	.mute_stream			= ak4619_dai_mute,
> +	.auto_selectable_formats	= ak4619_dai_formats,
> +	.num_auto_selectable_formats	= ARRAY_SIZE(ak4619_dai_formats),
> +};
> +
> +static const struct snd_soc_component_driver soc_component_dev_ak4619 = {
> +	.set_bias_level		= ak4619_set_bias_level,
> +	.controls		= ak4619_snd_controls,
> +	.num_controls		= ARRAY_SIZE(ak4619_snd_controls),
> +	.dapm_widgets		= ak4619_dapm_widgets,
> +	.num_dapm_widgets	= ARRAY_SIZE(ak4619_dapm_widgets),
> +	.dapm_routes		= ak4619_intercon,
> +	.num_dapm_routes	= ARRAY_SIZE(ak4619_intercon),
> +	.idle_bias_on		= 1,
> +	.endianness		= 1,
> +};
> +
> +static const struct regmap_config ak4619_regmap_cfg = {
> +	.reg_bits		= 8,
> +	.val_bits		= 8,
> +	.max_register		= 0x14,
> +	.reg_defaults		= ak4619_reg_defaults,
> +	.num_reg_defaults	= ARRAY_SIZE(ak4619_reg_defaults),
> +	.cache_type		= REGCACHE_RBTREE,
> +};
> +

> +static int ak4619_i2c_probe(struct i2c_client *i2c)
> +{
> +	struct device *dev = &i2c->dev;
> +	struct ak4619_priv *ak4619;
> +	int ret;
> +
> +	ak4619 = devm_kzalloc(dev, sizeof(struct ak4619_priv), GFP_KERNEL);

sizeof(*)

> +	if (!ak4619)
> +		return -ENOMEM;
> +
> +	i2c_set_clientdata(i2c, ak4619);
> +
> +	ak4619->regmap = devm_regmap_init_i2c(i2c, &ak4619_regmap_cfg);
> +	if (IS_ERR(ak4619->regmap)) {
> +		ret = PTR_ERR(ak4619->regmap);
> +		dev_err(dev, "regmap_init() failed: %d\n", ret);
> +		return ret;
> +	}
> +


Best regards,
Krzysztof


