Return-Path: <devicetree+bounces-100601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E4896E38A
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 21:52:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB2332852CB
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 19:52:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E56F193090;
	Thu,  5 Sep 2024 19:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EuSIksoS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3C414F125
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 19:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725565903; cv=none; b=d/axJbWK1o+bgBEj10pVEe6dK2oPS5TOGTdz8UdEztsb7a9QraKnSx9ddO5vGpgY3m8Otn7s6PKAEr8xZ6iXkZ4JoRhwR350yYjKd8lWBDme4WyJljEglFhHfWLJ/K9j/wCdaQZI/lkaQofJCzL39oZDsqAmPzin+MA1x5RPS9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725565903; c=relaxed/simple;
	bh=joL4c8PPhFiyZ5UnUOFkLdz0LK5dkMuMxewXUdcQ7bM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aqOZLmJGZqrnPgExXZJQRsYTW5diWBhlOuSSOGzJZI5lqNgrEyHNU9gimnFd3S2VjmsuLSe9C21ryKkSCuAcbj0WkANH23CMo8z9vQv+twC9nFW6VvttVVSBRz2mIO3qLiVIN2JAEyd3vSEI0OcPH1QEL4fGQyRa+Y9B3o7AOpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EuSIksoS; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3de13d6bdcaso568496b6e.2
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 12:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725565900; x=1726170700; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QLVeWx7E0txqyzsiOnnF/sbVg1ehRT/HOucMT+CgFps=;
        b=EuSIksoSRjuCol+jcxA1bD4ARWT9BS5NsC0niheXc+UFowaEnP1BmfKqwIwMf7fD5u
         6IqOcEI2c/HVY++pZ4MtGkFZ6NChvvyLgPU25QrkzhlBxpHJBDg5oLhlj5lPIxcrbuku
         SMmbWBG8fYqfaDKTZ0V2staGfK+VkA6u8iC6mdNEINELDrPIDjm8dai8JNaeIZ4D8Eg0
         YZKKmvDjyzS34MCHDCFiNFkdftULMbCEOavLUBaWW2XznF+/yCp14Af7T+4sItMUr0LN
         SIyj5ualQwN0rPqWn4B+ZTmU6t2wckZkRBxlnxjoeSfnXFfLKibt6Plk4277QmrmrpeJ
         ARlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725565900; x=1726170700;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QLVeWx7E0txqyzsiOnnF/sbVg1ehRT/HOucMT+CgFps=;
        b=kwegPqfdAPhfjBDRV1hfmWTJZcHyucnnmxsZ8gLavTOzPtNKchkZ3QXHAnUtzzShs7
         R3JT0WGDk6KfGiS9loMHZAI15gHy/8cMfW9cNjZked0XOBo0a+Z32gVKUspa9h1f08CW
         2uLjw+s2p6sjRAynWK9T95Te67kj3p5tt+DnvUbR08FQ82cKVN3Q/Tr2cuS2G1RinLkm
         N7dPIX4Jci685ESjuzRhYiu9+/G9FAtvKKpPgf4C2XH9R0vR3b+24jKl75jEjuJi4QD+
         rx2/ucD+e2rHC2yCsj9F+COG+rhJSwBOfctucQzPD3e53vJo0d9GYDUEK0LC7o35TP6T
         f1mA==
X-Forwarded-Encrypted: i=1; AJvYcCXwjCGjCpTQal+fT0MFRWekE3sP3jbNlnXbonQ3PZz1qFTCERdaOCSKOQI3X3sx3B9S6waqAOT3+xFA@vger.kernel.org
X-Gm-Message-State: AOJu0YwJwQk6Zdov1OIfqK5+uSskftSHWZ5rwSSiue38Bn+z+0oqx5tz
	vLKe+6swe/m7nwOgkqgTy2HMEj94CGGozvo22x+vNM57cjOGBu2cxipxFMfizaQ=
X-Google-Smtp-Source: AGHT+IH0q4/DKIs2Ct4Tvlg85A4eLDSf9cTxJ5giyUiMImKA1aAHf3bK94hxvew+0DR/TDUVZjfWNw==
X-Received: by 2002:a05:6808:1709:b0:3df:144f:9ef9 with SMTP id 5614622812f47-3e02a02d73cmr494020b6e.41.1725565900650;
        Thu, 05 Sep 2024 12:51:40 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3df117c1548sm3326464b6e.14.2024.09.05.12.51.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 12:51:40 -0700 (PDT)
Message-ID: <c8c23ed5-6f80-49b8-97c3-3f1dc36013c4@baylibre.com>
Date: Thu, 5 Sep 2024 14:51:39 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/9] dt-bindings: iio: dac: ad3552r: add io-backend
 property
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Angelo Dureghello <adureghello@baylibre.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org,
 Jonathan Cameron <jic23@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 linux-kernel@vger.kernel.org,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>
References: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
 <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-1-87d669674c00@baylibre.com>
 <172555368556.2000291.1962340187875764544.robh@kernel.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <172555368556.2000291.1962340187875764544.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/5/24 11:28 AM, Rob Herring (Arm) wrote:
> 
> On Thu, 05 Sep 2024 17:17:31 +0200, Angelo Dureghello wrote:
>> From: Angelo Dureghello <adureghello@baylibre.com>
>>
>> There is a version AXI DAC IP block (for FPGAs) that provides
>> a physical bus for AD3552R and similar chips. This can be used
>> instead of a typical SPI controller to be able to use the chip
>> in ways that typical SPI controllers are not capable of.
>>
>> The binding is modified so that either the device is a SPI
>> peripheral or it uses an io-backend.
>>
>> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
>> ---
>>  .../devicetree/bindings/iio/dac/adi,ad3552r.yaml   | 42 ++++++++++++++++++++--
>>  1 file changed, 40 insertions(+), 2 deletions(-)
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/iio/dac/adi,ad3552r.example.dtb: /example-1/axi_dac@44a70000: failed to match any schema with compatible: ['adi,axi-dac-ad3552r']


I think this can be fixed by putting commit "dt-bindings: iio: dac: add ad3552r axi-dac compatible"
first in the series before commit "dt-bindings: iio: dac: ad3552r: add io-backend property".

> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-1-87d669674c00@baylibre.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 


