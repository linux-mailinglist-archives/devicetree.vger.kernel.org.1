Return-Path: <devicetree+bounces-248888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A09CCD6567
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 15:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9D250301935E
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F262729ACFC;
	Mon, 22 Dec 2025 14:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ao9EV+4L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135C328B3E7
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 14:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766412760; cv=none; b=K1iQI6Thl2Gcpy8FNY+5GcGIowojpsClODQinqwSb957+fNiaH5mAbocrwC9lz8g712l6ryoghtxDgTWHlc/UbqwHv/gDaVFWMCMhte0P/iZIxhBraryCmI784Li6BkVFNbEDhw9EOlTXtHfbf4RhQ6y51OrDR8AGp5gL97G56M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766412760; c=relaxed/simple;
	bh=Xsj5wm5Ee2iC1pgeBNDQo31nk2t2GEpJ2sgNBEawtsI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cXFePMZwz9FTFEYGyLkVhY6jsXOHtgRlsqnJTZJwn8Txa1Gobn7y++r/ohnAgp3PBo1NJ8guvdOKPFnsqRZ4WPz+dxDRnG5Zd1GMDH3hcMjBLD+AZeqbIN0tqFAeXU5oCGcs/6PjbAbos+TUsWLm9u2PaKeiM2zGH0nOQFDfG0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ao9EV+4L; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-477b5e0323bso25712825e9.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766412757; x=1767017557; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VA3M7XOTwFjd5+WkbcfE1Ns/HpZ/5cuPqqQTA2g43go=;
        b=ao9EV+4Lq0EWo6uyLJxF+K8PumSrO+K0JaRXqovqk72nhMWwvulXABErsgyDtSy4UC
         QS41vV0HBQovwEazHy2ZfqmxsMf/ywQH8HeEE5DqVan0wuZ99v2iVYl7dUHB4DQZK2uG
         j8NnUCgL/CKxi6X+HG6jWqRxOYkoISl5yNyvyoz3/BEBwObOaT+9Ed1fkhCRejRYZdxb
         9s73JBcxVZl0ek0RIjhhvmM1HsfKPTmZEulxRkf775xpDLUQWzd9ovHSePgk9DG/OLuw
         0BBVxwEUM/xMlZn2A5h2J3/QuNgNLvLWDryfAiSE2AMsrx3bFIHm9D9p9541eMq3Lgx4
         q89A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766412757; x=1767017557;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VA3M7XOTwFjd5+WkbcfE1Ns/HpZ/5cuPqqQTA2g43go=;
        b=l/kRsn5TEAa2I4dJywc/BaWftdoLMx5pJBado/d6RMf+aVG3vhGDgQ6RbjHsLfj+66
         05KKO1HzTD+40TL8ZmsOuV8GywRq6w5/1BKSSxrIMFyhcEjKbVNYos6D8Qm2Q8/nH+zV
         1JtG77MaY/fY1HjgJRe0Xq3gPzMnomi3hbVRyncIezzeyGaNl6Wan+Jq73X2f14beECu
         xBwPs71tzHN1dOh1vQ6cRDNT/fSrfDVO4xoZSdfqrhDrIs9JKoLGxHeB6Jb37E5FqKyJ
         7PdUPtGA1brh/BF1L557s+hT6SFOQjS/ujew/QeaZ9lRqdd2vQuc7ijb67n8Ig+QCJ4Q
         A5Ew==
X-Forwarded-Encrypted: i=1; AJvYcCVLvJyfcEsqpkMTKKLkEw6Coa+xXUI/2i7i7u+XN3Q3oqZwTE+yvk27D+BfBcQ9xM42is0A7LHaq12v@vger.kernel.org
X-Gm-Message-State: AOJu0YwMQhnbeC2cIDqvXhw/iSugkqw5oLpv7UdmYM96ftysDILvJ8Va
	6F/DLjbL8SgwGONfjb3+mrQDk6kEXMWBGxBcyg+mg/dBFt8HJvHj/UA6yapnLM8SZtM=
X-Gm-Gg: AY/fxX4/c5AvQC1Tt/M9xogEMOP6ElJUlkHfsv1Gg4Xw+syMNUcEEOGDWAIoRkTJxbE
	LHiJTFRetClD11cJVGFwnQ9TkA1V6rNvum1/Ng1Lv/OMAeUL22ZlJxgTtt1NMrQ+kVfJ5O3SeFV
	t5AWOmQM3rLIBuupA+nfxtkrepTNwMmuTRVOdE3Tg2BwVPM3W3bQnruXVSONI1fO9AX9Q3pjZT7
	3QJrQPmuuNRRK2mr/iOQ8lODmNLiDR5j9g575muszyRh8R4puwYACk4KuK0UbjB+z8xySCqcfyd
	opiMGJMEi36YCT2VyKTMOH7xbmP4H6uGzdlWbKDgLpyFoQIuPWi37k5Ew/lrY3D/I5O4PG5+zTy
	cHiVNZxWAKGdfBQsXW7JfqQA11+gp+jZeZ8vaiByrokIJIV2tx3nZyLlU8BWhy/8x37wWONsXrF
	VOQNiP2b5wAWv/dc2L3YnD
X-Google-Smtp-Source: AGHT+IFkgPzgcEzzm/S7ihHzPfNjmkpBYEHZP9ugNRs1lGCTGJPSGFfsN+MEX7aZQeQUoYjvcxeOng==
X-Received: by 2002:a05:600c:404a:b0:47b:d5ab:3ce2 with SMTP id 5b1f17b1804b1-47be2a06182mr111267445e9.18.1766412757363;
        Mon, 22 Dec 2025 06:12:37 -0800 (PST)
Received: from [172.20.10.10] ([46.97.169.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa0908sm22224955f8f.31.2025.12.22.06.12.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 06:12:37 -0800 (PST)
Message-ID: <e9a39590-39ce-43ae-8f44-1edd137d4ade@linaro.org>
Date: Mon, 22 Dec 2025 16:12:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] soc: samsung: exynos-chipid: add google,gs101-otp
 support
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 Srinivas Kandagatla <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org,
 willmcvicker@google.com, kernel-team@android.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251120-gs101-chipid-v3-0-1aeaa8b7fe35@linaro.org>
 <20251120-gs101-chipid-v3-5-1aeaa8b7fe35@linaro.org>
 <653202f78f060b7e001b78604dd26d0f18ab76f9.camel@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <653202f78f060b7e001b78604dd26d0f18ab76f9.camel@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi!

On 12/19/25 5:10 PM, André Draszik wrote:

cut

>>  static const char *exynos_product_id_to_name(unsigned int product_id)
>> @@ -93,19 +99,53 @@ static int exynos_chipid_get_chipid_info(struct device *dev,
>>  		return dev_err_probe(dev, ret, "failed to read Product ID\n");
>>  	soc_info->product_id = val & EXYNOS_MASK;
>>  
>> -	if (data->rev_reg != EXYNOS_CHIPID_REG_PRO_ID) {
>> -		ret = regmap_read(regmap, data->rev_reg, &val);
>> +	if (data->sub_rev_reg == EXYNOS_CHIPID_REG_PRO_ID) {
>> +		/* exynos4210 case */
>> +		main_rev = (val >> data->main_rev_shift) & EXYNOS_REV_PART_MASK;
>> +		sub_rev = (val >> data->sub_rev_shift) & EXYNOS_REV_PART_MASK;
>> +	} else {
>> +		unsigned int val2;
>> +
>> +		ret = regmap_read(regmap, data->sub_rev_reg, &val2);
>>  		if (ret < 0)
>>  			return dev_err_probe(dev, ret,
>>  					     "failed to read revision\n");
>> +
>> +		if (data->main_rev_reg == EXYNOS_CHIPID_REG_PRO_ID)
>> +			/* gs101 case */
>> +			main_rev = (val >> data->main_rev_shift) & EXYNOS_REV_PART_MASK;
>> +		else
>> +			/* exynos850 case */
>> +			main_rev = (val2 >> data->main_rev_shift) & EXYNOS_REV_PART_MASK;
>> +
>> +		sub_rev = (val2 >> data->sub_rev_shift) & EXYNOS_REV_PART_MASK;
> 
> The above looks a little fragile, comparing register offsets between different
> hardware platforms and macros, but I guess it works for now and isn't really
> much different to before.

Right, I thought we'll get this in faster if I keep the old style.

I can introduce a drv_data->get_chipid_info() method and add methods for exynos4210
and exynos850 before adding the g101 support. It duplicated a bit the code when I
tried it, and I chose to keep it as it is now. Happy to switch to a drv data method
if you prefer, just say.

cut

>> @@ -127,10 +167,24 @@ static int exynos_chipid_probe(struct platform_device *pdev)
>>  		return dev_err_probe(dev, -EINVAL,
>>  				     "failed to get match data\n");
>>  
>> -	regmap = device_node_to_regmap(dev->of_node);
>> -	if (IS_ERR(regmap))
>> -		return dev_err_probe(dev, PTR_ERR(regmap),
>> -				     "failed to get regmap\n");
>> +	if (drv_data->efuse) {
>> +		struct clk *clk;
>> +
>> +		regmap = exynos_chipid_get_efuse_regmap(pdev);
>> +		if (IS_ERR(regmap))
>> +			return dev_err_probe(dev, PTR_ERR(regmap),
>> +					     "failed to get efuse regmap\n");
>> +
>> +		clk = devm_clk_get_enabled(dev, NULL);
>> +		if (IS_ERR(clk))
>> +			return dev_err_probe(dev, PTR_ERR(clk),
>> +					     "failed to get clock\n");
> 
> Could you use devm_regmap_init_mmio_clk() instead?

Will do, thanks! I'll need to introduce a clock-names property in the bindings.

Cheers,
ta

