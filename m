Return-Path: <devicetree+bounces-47379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3384B86D110
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 18:45:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5723A1C21181
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 17:45:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F01DE757E0;
	Thu, 29 Feb 2024 17:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ct44SgIR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D80770AEA
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 17:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709228743; cv=none; b=qk26aJ1rUgW40zjInXzBTQIZiQ9xCndL+vbjstos9VNdb+fqfCdd/8EjBdwe8S6Kth7GZL2gxlXg7wx1E084hEp8x6M1l1NzFIYA7LhpAk9XeY4hImB9tJ3Vofmt/QgqipTYDpY+a7ffBgvxk2dY3rlhMgxFaQkUq4wd2dYPFRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709228743; c=relaxed/simple;
	bh=niN2DkoUr9aar/ATcFru9UrJctQIzAQev8RXjVsXFj4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IkYAS+gGZZeb/WxaOWjsMN4etEkTYM1qhJnMtPim9B8Vy4U59PdoT9JvVpyI9F9NZT6OfQAdRruxw2FKHPL4TzDte9lXtNbiQaBV1Z5CvrQliHobkb/kePF0dzkJNcz/1LSJ3rpPBsQe77ljKVuA3JbaXGDqsIZLp1UoRgVCKUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ct44SgIR; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a3ee69976c9so219398266b.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:45:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709228741; x=1709833541; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wmljqfmy54a6NNLOCOYx8UypncQfGQwtX9U6nuaptoI=;
        b=ct44SgIRtFI9eEAXRpprzQa+Wd32x+teRTa6CTkvNGbFdhTXf08Zozl4T97adoykzZ
         2dLgjGShDM7xp8pJ3jtpJKcFSRCtwNRkLJ94EsuyHrxx39WoZt03e1zSXzevszvYi1S9
         oAFGg/WeFOA8AAVm6nGaQtPPnmncXCCBofjb6kH5ApaPUp8IAMLco3Apo/PZRp8PBQ6R
         +cp2iZvyqx8i0YOW7zSNCXSzJlSv6KxalRL1noPVIAN23A9NyaQpOhiZWTBKQ0hvmdFo
         7Fi+UNz4JwqegCSa9m5Y9hHWtxo2eL835dB9ddMMTPJ74mjAECGSsqCPGIU4y7vXnrSd
         LRDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709228741; x=1709833541;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wmljqfmy54a6NNLOCOYx8UypncQfGQwtX9U6nuaptoI=;
        b=e8IcOUc2ul8mK7ZCTiOtHrBgcts6i7IdC+Da5vw/UxOs3nIy6WyQmcfZyIez6DRRDu
         tXHVV03XP3bycqKDfqgUmz4KMSYm/vKP2R0lhXlZU3EaCiAW8xa5Wzc6dxI1nbC49s7K
         MbsjKc373dBncBS0omDvSY6moKemfBaWv1xla0eRtU9Ka682N6ZsU3YG2NqJUqHDUm1/
         GORv9ARowfcf1zeNZfqIJB7Be+Je1uP4lVgQlhk2cYXR1/W527TH3KOfzckS72dfc17V
         efuscph+uvGWT2xMQc/7t/3oL7dUrUWyWRNGYzvu1TZc6vEWyU85Q+2YT99FtefOHZvJ
         MZHw==
X-Forwarded-Encrypted: i=1; AJvYcCUryhe/Srd+VPfPHNrbX7PNsY7G20irQqtidzypVtMvd/xMAEnzO3ElhHax1vLtOrQ8VrdofVLCPdcKTv/ezSSTTohso+Q3jropDQ==
X-Gm-Message-State: AOJu0YxBaxjHDlLZoKdUbsbkSvfZb76F+bjHD7HEu/mXmVjXYks3juMj
	NXD7lxQHCuq4oLNsbpqVhcOkE7g4cE8kWwz3ttJp7l23+AsrlQNvT4Ff0eWazXM=
X-Google-Smtp-Source: AGHT+IHbz8jTPJnNM8a7f2FJzPKBXJTbKBo6EnwXbW+O0KOCE1+VLf83KPRxycKV6JIKnAKtXe7XjA==
X-Received: by 2002:a17:906:f198:b0:a3f:9629:d305 with SMTP id gs24-20020a170906f19800b00a3f9629d305mr2179272ejb.28.1709228740770;
        Thu, 29 Feb 2024 09:45:40 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id d12-20020a170906344c00b00a446c74c699sm159777ejb.225.2024.02.29.09.45.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 09:45:40 -0800 (PST)
Message-ID: <864d3027-188f-4612-9770-d617244aad17@linaro.org>
Date: Thu, 29 Feb 2024 18:45:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] reset: add GPIO-based reset controller
Content-Language: en-US
To: Tim Harvey <tharvey@gateworks.com>, Sean Anderson <sean.anderson@seco.com>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, andersson@kernel.org,
 bgoswami@quicinc.com, brgl@bgdev.pl, Mark Brown <broonie@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 konrad.dybcio@linaro.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-arm-msm@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, linux-sound@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, perex@perex.cz,
 Rob Herring <robh+dt@kernel.org>, srinivas.kandagatla@linaro.org,
 tiwai@suse.com
References: <CAJ+vNU3y5pzqeBnr8LHDtJtU7zajfRvP=_WmAhP=cAp_3iGFQQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAJ+vNU3y5pzqeBnr8LHDtJtU7zajfRvP=_WmAhP=cAp_3iGFQQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/02/2024 18:26, Tim Harvey wrote:
>> On 1/9/24 04:41, Krzysztof Kozlowski wrote:
>>
>> I think a separate pseudo-device is necessary a generic solution. So I
>> guess I will revive my patchset.
>>
> 
> Sean and Krzysztof,
> 
> I see a lot of value in a generic reset-gpio driver that you have both
> tried to get accepted in the past. I support boards that have a number
> of SPI and I2C devices that often have GPIO resets wired to them that
> are pulled in hardware to the in-reset state and find no support in
> the various drivers for reset handling. I've often wondered why a
> generic gpio reset wasn't supported in the SPI/I2C cores like it is
> for some other subsystems.
> 
> The approach of a gpios-reset solution makes sense to me.
> 
> Will you be submitting a follow-on series to your previous attempts?

Sorry, don't get. Why do you revive this old thread after code was
merged? If my patchset which was finally merged a week ago or so does
not work for you, please comment there or send follow-up work extending it.

Best regards,
Krzysztof


