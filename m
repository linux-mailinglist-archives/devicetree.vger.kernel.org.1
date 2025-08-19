Return-Path: <devicetree+bounces-206211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8A2B2BBAE
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 10:22:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18471686B4E
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 08:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49DCD31159B;
	Tue, 19 Aug 2025 08:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fmDZTJF2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87CC723F421
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 08:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755591675; cv=none; b=rJ3YMhnf8to2krgVkqVl1i4ftOd/EvH2yGVr8YhWvuVQQel3pgm4HLMZoeLmqVnKi/Mwy284Me7p8S4GuKHAg+2QcN0eOFDhKzVwyAoTOm3fhe5gYCE4Nutx4hRQlTwne+WPzcqn6UGrHejLaZR8Q2PZs9x2mIaXnFnLKpopBv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755591675; c=relaxed/simple;
	bh=wUlUXNYlT2av8wbOvTTdJzvL3+bwtI0HGI8+TD3utoM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r3lwB0Xgl+cUrPd+O1WkoJbbOdi+qnyjyZgPzpfHkN9XVpgjIJcFmi0rjMllnK3Zm3bAlJtSwYnZLTLDH5Hx3HPOgOv+D2Blo95b01zZc/p7LMg6B9obCoFcQZXJJUp2BvnT253Ozos10SWZR0OMblJ+0mscgx4Dkg5nyWZkM5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fmDZTJF2; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3b9d41c1963so2473892f8f.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 01:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755591671; x=1756196471; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KYn6biyygAUVxiflH2dTAhFnJ7gRMdUiaEcaWo4kcaM=;
        b=fmDZTJF2mG69Ua/UVUnJ2SscbGShP8niY3cJvTDWgpIQKRnSEQ+XxoJPAMhnpxQjKS
         2hSOQsNKf2IWePq1N6am0Maq+s+HNOP7FThaisiC4S7rk/s+RHUzKsJhyVcUpJDM32SK
         zQCMa+lLILxx/V3oHJD+ZYU9IazkdqM5Runv2BjAPy2fpxA/sjNFuVRvCIgKuUGzszre
         NkrRUK/gTv7VCUt4/4/EqKAhXh1HD6SKRoEEmm5ZVPjh8V37XGzb3HPxc4lazUCM/vbm
         Ko72WSMvkt1tFUjsyeBshSyAjfBmu80PkfbJrARUzwXWcs38xxfdkNFZ7V+JWKNpym+l
         /kTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755591671; x=1756196471;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KYn6biyygAUVxiflH2dTAhFnJ7gRMdUiaEcaWo4kcaM=;
        b=FqRQXnOEkMhfeEK18dJyjDsf6M3RAN/etdLDmhqfYeAM3PoUQVtjmDk4KC9+0N2ROf
         4RzyfNseRzn9z32D5jjTY1Cfid/E6h4Z1foAp5c/ui9wVhl0iRC582T4ciVtWpkYjtBD
         mYDaqcTJzXRt+jDk5OW3yB3UZCqZa3Y9/TAYmFLt27hqcMU1hFZRPWTL0+f23g3UTtzy
         wRUrAWdUUiObhOWVESGNQQgz6p//3h/vswQaMy16C7E7JLnE2gXbMPn5mNxaI+ZfXg3F
         x39XROpQ9rVKrN5sogzwIIjhB06xc6rB5s3pW6WyWB5l7MnVuzk0w6XbzW/F6+/LGzAx
         TDDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWH2FfICodudyppjAfDbDEj2GRgTsKA0q/eyH13SxBgCjwxcotDCMR6CTfZL1ps6FPPzyK6mjmOnClA@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1EA9wIW4oXoWaxt/4zBa6bu88fl5jp+RtRLCveW4sbtxpBzYg
	SDFG7z/Cf5BHuYsEAPdzoOjoz432w6zOHkAMjNpD3zbZBSOcDB2TWJOqsUxnXGPY61s=
X-Gm-Gg: ASbGncv8E5HWKxqmDb3zRALL8InpEg4CItVZCLhBk0l5BDYjjhHQWE7iEEXI864Xl9X
	w+U/lM6752JXiAwfa6mmkKXR2W5eekE+MwP1UsY5sDiOBY+9P2YJA4A3m2uxYDyRDN+3QC76xZg
	8L2hiHOxI0CvJRPx38O7R8maDy2c5YEipJJAbDDh20K57OqHIKWtVUFQpYnmio9XSRVPiGwiinC
	w1CoULo/Xa6mwSKCDZzOdqZ4OPrWwBCrd7Cfxs82d8jneaYFAdVebChKeAO/PjToMQOPolEz3Ne
	toqjdQHTwmY1SHYO4FAWnLqm807R9p5TY0C8KR513w5diJW/wR1MV1URmnUaCDv+br0M/kOLmUb
	+2BUd8lorXRClOkvKjVxMdlPlp84=
X-Google-Smtp-Source: AGHT+IFMCXCK9wgxZ9X1waWYq1FWyGk6N/vUke9mVrMaFS0aIoajO/AFuehg2yaWUxtXmN5DBKI78w==
X-Received: by 2002:a5d:5d0d:0:b0:3b8:f887:c870 with SMTP id ffacd0b85a97d-3c0e9f01259mr1308081f8f.19.1755591670842;
        Tue, 19 Aug 2025 01:21:10 -0700 (PDT)
Received: from [192.168.1.3] ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c077c56454sm2659047f8f.58.2025.08.19.01.21.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 01:21:10 -0700 (PDT)
Message-ID: <7a81e256-ec55-4baa-a054-04c4fba0b5c7@linaro.org>
Date: Tue, 19 Aug 2025 09:21:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/13] spi: spi-fsl-lpspi: Set correct chip-select
 polarity bit
To: Frank Li <Frank.li@nxp.com>
Cc: Mark Brown <broonie@kernel.org>, Clark Wang <xiaoning.wang@nxp.com>,
 Fugang Duan <B38611@freescale.com>, Gao Pan <pandy.gao@nxp.com>,
 Fugang Duan <fugang.duan@nxp.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Larisa Grigore <larisa.grigore@oss.nxp.com>,
 Larisa Grigore <larisa.grigore@nxp.com>,
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
 Ciprianmarian Costea <ciprianmarian.costea@nxp.com>, s32@nxp.com,
 linux-spi@vger.kernel.org, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
 <20250814-james-nxp-lpspi-v1-2-9586d7815d14@linaro.org>
 <aJ4TkKdkIPiJhhF4@lizhi-Precision-Tower-5810>
 <90d40899-c9b8-4628-a0b5-06ee0aa497be@linaro.org>
 <aKNEfJrD+pp8+0dT@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <aKNEfJrD+pp8+0dT@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 18/08/2025 4:19 pm, Frank Li wrote:
> On Mon, Aug 18, 2025 at 02:05:16PM +0100, James Clark wrote:
>>
>>
>> On 14/08/2025 5:49 pm, Frank Li wrote:
>>> On Thu, Aug 14, 2025 at 05:06:42PM +0100, James Clark wrote:
>>>> From: Larisa Grigore <larisa.grigore@nxp.com>
>>>>
>>>> The driver currently supports multiple chip-selects, but only sets the
>>>> polarity for the first one (CS 0). Fix it by setting the PCSPOL bit for
>>>> the desired chip-select.
>>>>
>>>> Fixes: 5314987de5e5 ("spi: imx: add lpspi bus driver")
>>>> Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
>>>> Signed-off-by: James Clark <james.clark@linaro.org>
>>>> ---
>>>>    drivers/spi/spi-fsl-lpspi.c | 6 ++++--
>>>>    1 file changed, 4 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/spi/spi-fsl-lpspi.c b/drivers/spi/spi-fsl-lpspi.c
>>>> index d44a23f7d6c1..c65eb6d31ee7 100644
>>>> --- a/drivers/spi/spi-fsl-lpspi.c
>>>> +++ b/drivers/spi/spi-fsl-lpspi.c
>>>> @@ -70,7 +70,7 @@
>>>>    #define DER_TDDE	BIT(0)
>>>>    #define CFGR1_PCSCFG	BIT(27)
>>>>    #define CFGR1_PINCFG	(BIT(24)|BIT(25))
>>>> -#define CFGR1_PCSPOL	BIT(8)
>>>> +#define CFGR1_PCSPOL_MASK	GENMASK(11, 8)
>>>>    #define CFGR1_NOSTALL	BIT(3)
>>>>    #define CFGR1_HOST	BIT(0)
>>>>    #define FSR_TXCOUNT	(0xFF)
>>>> @@ -425,7 +425,9 @@ static int fsl_lpspi_config(struct fsl_lpspi_data *fsl_lpspi)
>>>>    	else
>>>>    		temp = CFGR1_PINCFG;
>>>>    	if (fsl_lpspi->config.mode & SPI_CS_HIGH)
>>>> -		temp |= CFGR1_PCSPOL;
>>>> +		temp |= FIELD_PREP(CFGR1_PCSPOL_MASK,
>>>> +				   BIT(fsl_lpspi->config.chip_select));
>>>> +
>>>
>>> Feel like FILED_PREP(..., BIT()) is stranged.
>>>
>>> I suggest #define CFGR1_PCSPOL(x) BIT((x) + 8)
>>>
>>> Frank
>>
>> It's using an existing macro that everyone knows though and I found 65
>> instances of exactly this. It can be read as "set bit X and put it into the
>> PCSPOL field without any further investigation.
> 
> Where have such pattern in kernel?
> 
> Frank
> 

Grep "FIELD_PREP\(.*,\n?.*BIT\("

65 results, e.g:

   return FIELD_PREP(RTL8366RB_LED_0_X_CTRL_MASK, BIT(port));

James

>
>> If we make a new macro, first the reader will have to jump to it, then it
>> still doesn't immediately explain what the "+ 8" part is. Using FIELD_PREP()
>> also has the potential to use autogenerated field masks from a machine
>> readable version of the reference manual. You can't statically check your
>> macro to see if + 8 is correct or not, and it also doesn't catch overflow
>> errors like FIELD_PREP() does.
>>
>> There might be an argument to add a new global macro like FIELD_BIT(mask,
>> bit). But it's not very flexible (can't set multiple bits) and you can
>> already accomplish the same thing by adding BIT() to the existing one.
>>
>> Thanks
>> James
>>
>>>
>>>>    	writel(temp, fsl_lpspi->base + IMX7ULP_CFGR1);
>>>>
>>>>    	temp = readl(fsl_lpspi->base + IMX7ULP_CR);
>>>>
>>>> --
>>>> 2.34.1
>>>>
>>


