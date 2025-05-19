Return-Path: <devicetree+bounces-178550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5576DABC1FF
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 17:16:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28F273B2495
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 15:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CF3F2853F1;
	Mon, 19 May 2025 15:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GAMjgOvh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1A7E26B093
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 15:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747667749; cv=none; b=Lp24SKIxFcajGujvUa5eVYcyr8Uq4eR5ay0iDw55iOfutdAEDhR+aFP6VVzlW2YWPXW22JO54WeuQrfZY6wTXXG16id7QJ4JQw9inaJvakZVYfKrD669lhXK5nHvwWG7vh8j7KrWoOGJRSmuFJAiXIKCgcl6SfDSx6hu2TAEc5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747667749; c=relaxed/simple;
	bh=+waXAjHPp2/K09OP/lmIyVTinzIg/SgT5315tIPMPqY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=F6rxAGCjTmuWJPOxc1vQZfHRhZmz/zShKJsrwyShNi5fTE5CqgbUHUTl5IX2fYELuCm3u6CM0mpGTTdRCAdDeQ3W/r2q0TPY+mwhp4dpIpxQiN+4YA5X6Je7EWX8umCi9PoLzyJPedeA6yX23wVMW4/fuUfrMchqezPCXeuD8fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GAMjgOvh; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-2e3dea42465so1398078fac.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747667747; x=1748272547; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RvV2Or60168cJV1VNj4zxLnm+t0hyD0WIsws06poAZg=;
        b=GAMjgOvhDmyalJfnykb2zZDfgSg+iGLKaPRpXCurM7/RGYd/qn9Eq9cBjoiKKam9eM
         /IaRt65UzPPnmBCEbUuxPsLOEaj1HodqDXlO4GNrHDx3/nSg5twXSrQPWMgiKOeFZbDc
         /V2ty0fKVRVWc8eGwBB7wVPfh/num5Z5ALIvqt4a9NJuDxwZVy4g+W5zTwX0RV6LJIC3
         K9pc/c2XGE2z+5l13UNfi5SqUzGHgkf5VjQYXJOLjLeftwDwvO7QxyOtkvuksyILDLKl
         WKmeKD8K1PLx0DnzJk7Upezs7OhjQ7iw3gyvbtu3AlYDCO3Ymm4MlK9jRylVOmwefPSw
         Vpww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747667747; x=1748272547;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RvV2Or60168cJV1VNj4zxLnm+t0hyD0WIsws06poAZg=;
        b=UqFLumkGC6Hkt9gtuaFAGWvrOLISiC8KyJeDZ2/57Ixsv3RMnEbZEvJfCvGNYzKM0O
         Avg5jC/ZCdnZVLHornWHsvejQVplOYp93X1KfIhtibZfnJ3LHHKXjRZGk76M9Mg4pXOQ
         ngs3SjKzjquSujQ9XpOljpgbu596ufX0v2qHSu594sGxYHVveq56zyJ4SUqqPY4h3QKI
         C6srBIsTqfos6qtsGAnN+MXVFZcA9vG8xJa9XbLxM8KIp0KoM/b2qXBN58HDS8jrVhzq
         PdNE1EulOCUJNZixuL7ExmYRUrKRczMyHbIxwpy902a4/JcUbmLGIk0IPIcH8Qu3cuDk
         pVdA==
X-Forwarded-Encrypted: i=1; AJvYcCXjHOOpSP8pW+evgl1UQGwkthEexJbdJZNeuMkFkycoiSJpmuOgwfHfjwMzrosRxUyCLJvTy2uQkaHv@vger.kernel.org
X-Gm-Message-State: AOJu0YymXymRuW3ZSxnrEckv20GehN9hSWZCwo0LPIjbsNpbEWOVewKx
	E87EO//gzjoTTZNe5/0wswM2BHg4z7Ilg2Ym5BCQE2C4mM+0aEjAAyFVq5Ed7vOgx4M=
X-Gm-Gg: ASbGnctlY6ZLrLJThh14lIzVo/+1eBPDCgFaHZ2nvrwl5sMVMGuKXGHEb/f/57JjOTm
	ybRDo+GX4TknG4NQrE5EtD9XGGgSrxeAudWZjuaWULJU35QncQHYvYIHSOHHFvvketukFpHVEtT
	P4NuKSyey87vGY5PrvjBxc5VYedU7lDj6TbratPm9H6GrmtIlcnmjPOOTx43UoI9tGa1Fint2Bu
	zNjqGML4CDOq7nkq9vUA1CgWm8yb/GdKRWm7inJDBkfKuqxxHZtCiegyRyJvZCT4HLJTtvYGhrx
	tOb/dHoJ52ZQeMbhfLISXHIWAnZzoNXfDdmrNmiPpXWA9d3nEFPLoW4wg0mMUrw4fFvq+DDYf7C
	+efN1hwm2n9U5DtZu8UJ4+TFmbA==
X-Google-Smtp-Source: AGHT+IFzJgzYkKq/FCa8DGUlgA0CYWDxadcejzt65LMfSHnfbviuGpb3/HHpYiAlzUizIYPsBvdn/A==
X-Received: by 2002:a05:6871:5291:b0:2d5:2dfd:e11c with SMTP id 586e51a60fabf-2e3c2800e09mr7135103fac.7.1747667746597;
        Mon, 19 May 2025 08:15:46 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:a628:91ca:eb5:d6f5? ([2600:8803:e7e4:1d00:a628:91ca:eb5:d6f5])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2e3c0b21e70sm1776494fac.41.2025.05.19.08.15.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 08:15:45 -0700 (PDT)
Message-ID: <556bb250-d7c6-48aa-8773-26799265f782@baylibre.com>
Date: Mon, 19 May 2025 10:15:43 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/6] iio: adc: adi-axi-adc: add
 axi_adc_oversampling_ratio_set
To: Pop Ioan Daniel <pop.ioan-daniel@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sergiu Cuciurean <sergiu.cuciurean@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Alisa-Dariana Roman <alisadariana@gmail.com>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 =?UTF-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <joao.goncalves@toradex.com>,
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250519140220.81489-1-pop.ioan-daniel@analog.com>
 <20250519140220.81489-4-pop.ioan-daniel@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250519140220.81489-4-pop.ioan-daniel@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/19/25 9:02 AM, Pop Ioan Daniel wrote:
> Add support for setting decimation rate.
> 
> Signed-off-by: Pop Ioan Daniel <pop.ioan-daniel@analog.com>
> ---

With the bit below fixed:

Reviewed-by: David Lechner <dlechner@baylibre.com>

...
> @@ -381,7 +397,8 @@ static int axi_adc_ad485x_data_size_set(struct iio_backend *back,
>  }
>  
>  static int axi_adc_ad485x_oversampling_ratio_set(struct iio_backend *back,
> -					  unsigned int ratio)
> +						 unsigned int chan,
> +						 unsigned int ratio)

I think this change belongs in the previous patch. Most importantly because
it could cause a compile error during a git bisect, but also because that
is where it logically belongs.

>  {
>  	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
>  

