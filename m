Return-Path: <devicetree+bounces-181883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 663BDAC94A3
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 19:22:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B815A21AD3
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 17:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED2132367A9;
	Fri, 30 May 2025 17:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ICTGlhBq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0D82D600
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748625717; cv=none; b=GQjotBLJYGUNHrao2DA7ebCpw1nl4yN8Ka58RBpjMpBmdPt3kXw72qHa6i9sr1T9AVnR+Oa5cdd1J9t3/ZK0cOVkR/BM0Cc7JcauNscCPZpH/3sSGr43XR0Ykx35i9TNz9AYxMiCrj8H8bhw0DjM5F2PBicIHJAuD6FhxV2aEIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748625717; c=relaxed/simple;
	bh=wX0obJuWwWvBhFCj6J1Giw1HxQdDFBK1JTnke8Tc1q4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tloT9SnGqOeCiy3aC3Z3c5HbKC20svHJcZWr38/B6dL1Mby/EfDyMFnEFHquZAV6Uham94EbwyVgvibI3rk25onkOJ54sIb0Dyyp3NGUOyXsjvf8Y7nU2ddCaeyPoh19ymprde7F7o+VSl+nd1CqCTaH5oxZRfesk/A9SvcIXBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ICTGlhBq; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-234d366e5f2so30338875ad.1
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748625715; x=1749230515; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fx3LNtc1BL1NPZaSnlXRzmMDR51HZrm8EkyfaUNT3Vo=;
        b=ICTGlhBqqGFagVlUAqCyucX61iQ85tQr2kgYWxiFuYUSbTmqBALBYNSAcu7dTSGHmw
         g8Cf6L946FkJbM5YKj7iy8ufAUK1EBOHDyPjR3cwy/Hb7c72RDep3989pvxwxT3TU4ow
         Zg5B4AJez4bP+3j2mOP4b2FQPjhHo1rI6eNALHYYHg/y381RNA7JKtyCsYygbp8dOyCA
         UKj+WZCEu7oYVU+LvN+mbW2Fv0ZTh7GdnWXS3J3wL7lQ+DRghFt2FSrBvEle9QYPjRGB
         FNuL4t2c956NNbMELXtnFqGox8hWs9bY3Sf4tN96u67wmCmCNJW+A4XejfbzLMDA3QVB
         roFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748625715; x=1749230515;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fx3LNtc1BL1NPZaSnlXRzmMDR51HZrm8EkyfaUNT3Vo=;
        b=PZYm205aegrqnaNjmv9PUrdTG2lkjE0POyl/mRZLeK3kr55BD4dGY99zXuTCYK+RLR
         JdqS3w/yL/BEH3A9BdTN7ahtjt2KzNO37xRyWJF+a/nBdKPzeFyXtHCy1kVKCLfZ3FWv
         mS1jIcwCkP2NdOpLq98ljk7ghf0G1MqwGoWQquQ87K1qGgC4sOKKDorahYp3ydIneBBb
         nZBSAlKdf6+p2dE1dJ4nzulXnrRdeFZusKu6SzhW8W+Vn8MY4dKgFRD6lJ6qkN3+wwJi
         XexB/XFvS5NcSuoVyXMCY0jZ55eNGzh00D/uYoammDC1gmXcUd0j5UPuapapEkLINC2U
         cAnA==
X-Forwarded-Encrypted: i=1; AJvYcCU6zcm0bs3KyEk2YGxasoYTpdfiqoOyUxfH4hOKEnMWLP6B8mXo/THjXNTVmKlUFHoU+iOagG8RcGh+@vger.kernel.org
X-Gm-Message-State: AOJu0YyFJQl/UkiBQNbTP1niFnDGoj1MY2BLlAzroBjNY9FVRJ/OPFgA
	THjl9ICs73tgEs7ZuEqK0sEmYbHl43CKGgeet8b8a5cSdLrHD5E55MB7KE7kSwce7kxzfIb8q9T
	U/SBW
X-Gm-Gg: ASbGncs3kWtwDrlwR3bCPikpijevlW0+uvgb2SlKRdnFPct8WZMzDPZXylaDntv2GTm
	2cZSiYVO3JlHo3k/Sehu27oxDeCSDfDT1AEw/woQwU31SggbYoFe6RpevIbX1JlgzECbf22NvhV
	j0C5+ApCTdPIFEcNf2SkDYd1SmtOrOr/LAlpak/hZ7HhrjZfE5o1Uh8K7+j/C3xy4Dmch7KFxvO
	iICx4Y0TqMLR3zbe6A6IkdGDkvQ+DlRVqbxfdGCZ2LrbPZjb4reUClOqo+fWgqSd1JGhLRQzV3D
	N95NBPsgpQ9Q29lX0EG68TF6EWF/LfwH0SaLsF/qLWbMPW0UjSQRkw/ANPKLReCu1J3UfP0O2S2
	fXhXKSVIITIlfkIcjcOhOYWd6Z/Oz
X-Google-Smtp-Source: AGHT+IGxQ4vx/p7gFcrPUXmfUl5nW4TgCsxZE4dbab/ZMJxQ+jpblaeElxTMSWbhudFctt+RNP7NeA==
X-Received: by 2002:a05:6808:448d:b0:3f3:e9d5:7790 with SMTP id 5614622812f47-4067962bf6bmr2154323b6e.6.1748625704848;
        Fri, 30 May 2025 10:21:44 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:29cb:b1cd:c8f4:2777? ([2600:8803:e7e4:1d00:29cb:b1cd:c8f4:2777])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40678ce830fsm453255b6e.31.2025.05.30.10.21.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 10:21:44 -0700 (PDT)
Message-ID: <ad5b68b3-75f3-440b-80ef-6fc58128767c@baylibre.com>
Date: Fri, 30 May 2025 12:21:43 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 6/6] iio: adc: ad7606: add gain calibration support
To: Angelo Dureghello <adureghello@baylibre.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250526-wip-bl-ad7606-calibration-v7-0-b487022ce199@baylibre.com>
 <20250526-wip-bl-ad7606-calibration-v7-6-b487022ce199@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250526-wip-bl-ad7606-calibration-v7-6-b487022ce199@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 5/26/25 5:03 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Add gain calibration support, using resistor values set on devicetree,
> values to be set accordingly with ADC external RFilter, as explained in
> the ad7606c-16 datasheet, rev0, page 37.
> 
> Usage example in the fdt yaml documentation.
> 
> Tested-by: David Lechner <dlechner@baylibre.com>
> Reviewed-by: Nuno Sá <nuno.sa@analog.com>
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---
...

> +static int ad7606_chan_calib_gain_setup(struct iio_dev *indio_dev)
> +{
> +	struct ad7606_state *st = iio_priv(indio_dev);
> +	unsigned int num_channels = st->chip_info->num_adc_channels;
> +	struct device *dev = st->dev;
> +	int ret;
> +
> +	device_for_each_child_node_scoped(dev, child) {
> +		u32 reg, r_gain;
> +
> +		ret = fwnode_property_read_u32(child, "reg", &reg);
> +		if (ret)
> +			return ret;
> +
> +		/* Chan reg is a 1-based index. */
> +		if (reg < 1 || reg > num_channels)
> +			return ret;
> +
> +		r_gain = 0;
> +		ret = fwnode_property_read_u32(child, "adi,rfilter-ohms",
> +					       &r_gain);

ret is assigned but not checked

> +		if (r_gain > AD7606_CALIB_GAIN_MAX)
> +			return -EINVAL;
> +
> +		ret = st->bops->reg_write(st, AD7606_CALIB_GAIN(reg - 1),
> +			DIV_ROUND_CLOSEST(r_gain, AD7606_CALIB_GAIN_STEP));
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}

