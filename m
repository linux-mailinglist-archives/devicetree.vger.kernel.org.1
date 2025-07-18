Return-Path: <devicetree+bounces-197708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 24780B0A68D
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 16:47:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5620717340B
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 14:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 207253B7A8;
	Fri, 18 Jul 2025 14:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HJ61Pe28"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD7D1EF1D
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 14:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752850075; cv=none; b=Hd3MFc2hfcdK1gmKi68UEOxKaTELbE7uKmUNdnT8RATZM3rbM8j8DeP6LLyv8m9v/cRdkFLN2JwVVrtY0RTNTYQy5hUsotZSgBqJieDOXMmiHYkKp7Psrjd5TX9+VFhYFlIOXugIPp5aS426O29Z4rkpY/OL8mDxvZWvdTKC3mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752850075; c=relaxed/simple;
	bh=SGS7vNJMXiIIoIjQRQtUQaHpMKEFAP3awdktnoVE/vs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZHOkqBrGuSb7TCgJ2j7F2x1gEHnacckE9yrau7u7fNoknBmcbndBjnZOuVz9BkA1BPbyd/1KpTjNeWXx4D82OmawPtEb4JAkJX1w7YxWEq7lud+eU31lAeCVRCRKkq+Mkcnbvb1FlolZBmRMK0ZurICtmExbx/L6kcW5qgXYfcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HJ61Pe28; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-553affea534so333762e87.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752850071; x=1753454871; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0wrXIKhwaKHW7DC3rbsM0aYXtZFOnbkt4Tlcd+Ix0O8=;
        b=HJ61Pe28AEMIOtWxq55M0ef6lJOp8UJyWXXOC/0xPstfHwzkVUdtHbUYqwmGUvMT+G
         cLUxvQwIqKVu2syD5cSDzNKshgamO7PD3qlhV2MUiQG7XCz6Fq+2cKt5JvDoGZL+ATE0
         LcfTKo1i7ESkpTqtndiMGbX6z77QzfxekF+FWDYunxHcq7YThEfpsayk1+4gdT3tOGeV
         aSH1jVZml0dllw8cs+lCbaU3eM5cv69/CpP4f4LDp8GrfCfwWhuZh046oR6+OBOGqon0
         dNoFERT2+nAniXfm6nlJ2DdjrAV8qqfwye16lP8mi7jxstgZS2HB+r0aGrsCKPVToB4J
         7etQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752850071; x=1753454871;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0wrXIKhwaKHW7DC3rbsM0aYXtZFOnbkt4Tlcd+Ix0O8=;
        b=VN+qO6bBYRw6Zuf4qaaWAhvBrr9QlPUv2ZAJxzFGQW2PCFM8fIFd6tglEi4FU+XqDC
         wEpsyGEE+129ildQq/Dgs1xV8A62AQGguANVlnOAMfuwVafbSohlgh2wgtGUDDq4FjZv
         m+KBTpmXj3ftTdFMS26iDsMXvXqsw93K+S2PTUGMvDix91mRt9QHgBM/SSXxzogmNdQr
         gj7O3yWqAEFRNhUeVsoD1uFt1ojKiL5jIKZXGVEPBZh27vApCxDM7sUGWQ5rF7ZOdTsl
         M/Wzpmiul3EUeCSUHNEQA2aIelQjduJY6fXX64LJnrONb2F70ZE9w9ypXSNvf7Iprirg
         C4Og==
X-Forwarded-Encrypted: i=1; AJvYcCXe862GKz6bJtnCCwBmAaKftoEO7kKygz7K9PQYQYSGDoKMj1MToAXgIwr70kUMAmfhG5MhUhBnvfJQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyUjXtYCivIMXPIZ+1zwjGh80br0HvWi/K0VQ6TEQ24S24jQDqt
	ukAaGwnYk/0CdsMt/yU8O6TWhC5wF86uFdXw2XPi4oqGgqAFp33icIoyvww1SxVvTS4=
X-Gm-Gg: ASbGnctN/E7LPRu1yKjcHZ0Z+CrPH/Aw26fv2gW779/kEDq7CwzdKD67IhTrKV4SiPn
	vMFd8+6CmtnTylDM9ZJ4JPVoo6gBdTOZHnJ4XW3ENzTP9N4UHAwj409w4n68fhkd+VdUBBmov9H
	lukEmDCgbZ5kky5x6/UC9GX12NQYaO9Q+IMos1ICVgGiSp30yf8c72mfEq8ArfXcFUN0H9N6xwv
	R85cm8vOZQ4AfKQEgs1lRNfUa/g1uo9Q2Jb5b5U7kPZ2N2VTj0+oLWjpECpriIRJ7JpGPblr2S/
	QTzkZBvwhzVAop6D9kE+X6F8zfj2JPWS73T+Lsjqp//6oGHCQinMb9lG5abHe3bMKH08lpi7/yv
	arCAnqG9AhIXCJ7Voqq5p1+KBbnf7Ize7ANEoPkdR7GgPbIZ9jgJzLRDM/gYd37GXiigzEdvBrf
	dG
X-Google-Smtp-Source: AGHT+IHmeCCgliflJieJcxYaVeEiJeaG5eaZXTCq0nZO0tyPaHN+CmG0r7M7PG8TjgEvup/ql7ymUA==
X-Received: by 2002:a05:6512:618:10b0:54f:c2ab:c6be with SMTP id 2adb3069b0e04-55a2333f9e1mr813845e87.7.1752850071221;
        Fri, 18 Jul 2025 07:47:51 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31da69f2sm278610e87.198.2025.07.18.07.47.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 07:47:50 -0700 (PDT)
Message-ID: <c4a2b0b9-4e91-4ad1-b27a-7f948de86825@linaro.org>
Date: Fri, 18 Jul 2025 17:47:44 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] media: i2c: Add OmniVision OV6211 image sensor driver
Content-Language: ru-RU
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250717124001.108486-1-vladimir.zapolskiy@linaro.org>
 <20250717124001.108486-3-vladimir.zapolskiy@linaro.org>
 <fa9a1084-9e90-497a-bf28-579a20a293bc@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <fa9a1084-9e90-497a-bf28-579a20a293bc@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/18/25 10:07, Krzysztof Kozlowski wrote:
> On 17/07/2025 14:40, Vladimir Zapolskiy wrote:
>> +
>> +static int ov6211_power_on(struct device *dev)
>> +{
>> +	struct v4l2_subdev *sd = dev_get_drvdata(dev);
>> +	struct ov6211 *ov6211 = to_ov6211(sd);
>> +	int ret;
>> +
>> +	if (ov6211->avdd) {
>> +		ret = regulator_enable(ov6211->avdd);
> 
> You should just use bulk API and simplify all the regulator handling code.

There is no bulk API for optional regulators.

<snip>

>> +	ov6211->xvclk = devm_clk_get_optional(&client->dev, NULL);
>> +	if (IS_ERR(ov6211->xvclk)) {
>> +		ret = PTR_ERR(ov6211->xvclk);
>> +		dev_err(&client->dev, "failed to get XVCLK clock: %d\n", ret);
>> +		return ret;
> 
> syntax is always: return dev_err_probe
> 

Ack.

>> +	}
>> +
>> +	freq = clk_get_rate(ov6211->xvclk);
>> +	if (freq && freq != OV6211_MCLK_FREQ_24MHZ)
>> +		return dev_err_probe(&client->dev, -EINVAL,
>> +				"XVCLK clock frequency %lu is not supported\n",
>> +				freq);
>> +
>> +	ret = ov6211_check_hwcfg(ov6211);
>> +	if (ret) {
>> +		dev_err(&client->dev, "failed to check HW configuration: %d",
>> +			ret);
>> +		return ret;
>> +	}
>> +
>> +	ov6211->reset_gpio = devm_gpiod_get_optional(&client->dev, "reset",
>> +						     GPIOD_OUT_HIGH);
>> +	if (IS_ERR(ov6211->reset_gpio)) {
>> +		dev_err(&client->dev, "cannot get reset GPIO\n");
>> +		return PTR_ERR(ov6211->reset_gpio);
> 
> syntax is always: return dev_err_probe
> 

Ack.

Thanks for the review.

-- 
Best wishes,
Vladimir

