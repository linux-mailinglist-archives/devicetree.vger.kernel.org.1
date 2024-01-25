Return-Path: <devicetree+bounces-35183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A3883C838
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 17:38:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6570D1F22B7B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 16:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F30DC12FF94;
	Thu, 25 Jan 2024 16:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IgzLHAvO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAC97CF13
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 16:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706200692; cv=none; b=dsSkJ4OCCLo/yGLftQ3VBz10zyQsRR7uf+BO7T+wsdO9KUAcWnYKmeFjFMqOLzW1xxFKSXl0mscEdGp/hicc1ZTfEiwbfKBW51IxwHxSbfLUT9BqeUxP2giJOkuCDyr16FyiCdWWVhJozwXN/99ESV6btLOjxSdqsYULvVbwJnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706200692; c=relaxed/simple;
	bh=5iHmZSUw/hxQN9z3V+lUnPdT+e3bU0zrcKfS5gS85Hk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AWIXDHPt7VNoZItB3e+oE0bg2j0kBCr2b/Etxe0a6sgriyrSPKprnAE+OjOCBzAU55tf65N5iJPrISEZLCeBSShA2+emriecXgyjYOXqxkVC15w2aXHj+NAMgWo6psTZCCzsWOtgA+3ysyOqImDsct9/KmbolH4fg/b9nfFdn3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IgzLHAvO; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40ed232ea06so6783725e9.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 08:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706200690; x=1706805490; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rdWJmaQOAQRqKfeFd0MmNRfM9EYtkNX7pmnDfEinoJo=;
        b=IgzLHAvOEaS80zWpEmg5BFAtnbXO+eTi0fW/bIZznAHv0dHOre72Md6C7cN7Pfu3V/
         pEzhWSHr6kBWGXrekYoVVadQZ1WUNKd+rxiuLTXtauYCDiXLFHSwJG5fNllg8alXZlH2
         m0SEGKzkTA98Zp2HWBD85ONaxFUzs3eL6JUXDWOJE1+HysC9YgJVfOkjHF9SahTXSwTv
         YmjETnOqWYkDR1NfrC45d9d8bEVMZrPd/8/fEBMJRm3lIU0sJ2CVIWmQF+w3196VpOgK
         FtkAapWKfe2YWG3G+56MB1N7+00+z8DbnPvEsdeyaDD301ZHUT3vm1CRp2cTx3RKf1sc
         +FZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706200690; x=1706805490;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rdWJmaQOAQRqKfeFd0MmNRfM9EYtkNX7pmnDfEinoJo=;
        b=s6ii9i5EiTsideh/Th45QOhs7DiepHUpIkFnlfuARsN/sCn52lTs33+EsHKJO0R122
         iJr19X+3oGSj14Y6yA4tb9maGOg/4owBO51jf9nmy/Ghem5kS0owXimDBhjYwkWEeJ45
         Xv/6Ig2CDEYQ5miIEp7wwbsRE5g8lM0+HMqOCU4nOvP8ZGrbYFqx0NW1pjtdHZzkqSHB
         Ydm14Q8126dV+xabMdlRMCMp1eEPQWXMVZDaI902D6HaefsJNLuuSItEnRW6XnZJztFF
         hzgF9N4xIv4rT6Cr0zFPe6I0/EiFgeSh8UvjHWa4nw2da/xh3FeAIGYxN3EI3wMS9gtP
         uTJg==
X-Gm-Message-State: AOJu0YxyDQ9b3LonCkRFlgZDp60LmxqCalF7ZkETTw3pBcjIw3m2QPTF
	ZJp9COY30RryT9XnPozHKiXwhcm56YttrYGRTPbOOvQQKYudcdjoUSjs/HatLVY=
X-Google-Smtp-Source: AGHT+IENGpkXRnJ4oq3mQYeuH9mZrQxEhx1vWZCv34pZFd4Er736Z33tETLnlINQ8GGk7N3f9x3CtA==
X-Received: by 2002:adf:e686:0:b0:339:21b8:e716 with SMTP id r6-20020adfe686000000b0033921b8e716mr988724wrm.127.1706200689695;
        Thu, 25 Jan 2024 08:38:09 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id l9-20020a056000022900b00337d980a68asm16818099wrz.106.2024.01.25.08.38.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 08:38:09 -0800 (PST)
Message-ID: <1c58deef-bc0f-4889-bf40-54168ce9ff7c@linaro.org>
Date: Thu, 25 Jan 2024 16:38:07 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/28] spi: dt-bindings: samsung: add
 samsung,spi-fifosize property
Content-Language: en-US
To: Mark Brown <broonie@kernel.org>
Cc: andi.shyti@kernel.org, arnd@arndb.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 alim.akhtar@samsung.com, linux-spi@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-arch@vger.kernel.org, andre.draszik@linaro.org,
 peter.griffin@linaro.org, semen.protsenko@linaro.org,
 kernel-team@android.com, willmcvicker@google.com
References: <20240125145007.748295-1-tudor.ambarus@linaro.org>
 <20240125145007.748295-6-tudor.ambarus@linaro.org>
 <7ef86704-3e40-4d39-a69d-a30719c96660@sirena.org.uk>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <7ef86704-3e40-4d39-a69d-a30719c96660@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/25/24 16:16, Mark Brown wrote:
> On Thu, Jan 25, 2024 at 02:49:43PM +0000, Tudor Ambarus wrote:
>> Up to now the SPI alias was used as an index into an array defined in
>> the SPI driver to determine the SPI FIFO size. Drop the dependency on
>> the SPI alias and allow the SPI nodes to specify their SPI FIFO size.
> 
> ...
> 
>> +  samsung,spi-fifosize:
>> +    description: The fifo size supported by the SPI instance.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    enum: [64, 256]
> 
> Do we have any cases where we'd ever want to vary this independently of
> the SoC - this isn't a configurable IP shipped to random integrators?

The IP supports FIFO depths from 8 to 256 bytes (in powers of 2 I
guess). The integrator is the one dictating the IP configuration. In
gs101's case all USIxx_USI (which includes SPI, I2C, and UART) are
configured with 64 bytes FIFO depths.

