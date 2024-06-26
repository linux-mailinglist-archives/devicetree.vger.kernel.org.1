Return-Path: <devicetree+bounces-80024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 465CE917A71
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 10:06:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A6908B209B1
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 08:06:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4D2115F318;
	Wed, 26 Jun 2024 08:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v53qFab9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BA71B950
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719389184; cv=none; b=V2i7EYjHiM60RwhsA2AIISQtgilPi7Yi2rab/x5P2HdSQfIlyNjcFkUntNEp5RaWR6Gyy2R6Difl39ZZNfE5kagSqEup5iGdPJZDXB0BtKS/uwZEC/EJ9gvrm3QWc+P0y3J6NZmgk0dkdKdf9VjZZDcjdaytYYENG43UPzhccgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719389184; c=relaxed/simple;
	bh=rZXPd1DzRInhDRtcY9Tgs9kK+KUqmSnwIdKGxP4P9WU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m6oVkxY7cVVWGv9Bo0LmUMVbnyAyLB59ybda3kqaLDg9/RQfXEA+ELkfunM2jY3uEBHKKIphZd1BJAQtYO/J8/+hYdxw79HnaVaUVsoM1vP4c8M5XBxDZ4MOWpELn6GBY7LCXpvwQKAmc/PwbmrzE5Z6hI6rPIbt5yoeh1Dq8ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v53qFab9; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-364ff42999eso5088455f8f.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 01:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719389181; x=1719993981; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=My9/g0GVPEXpaxxN/7a6H9LSpMIXap4+noEpDsopA0A=;
        b=v53qFab9J7hu6GZOC3oRPMQ/dLqKFpU4Dw1p+Qd2hZj4/31cY9R0/dSJ3pyGqlxugQ
         Z7nzNTR5JZOUv9NYzk36PbDSfjtCyNETliumHqxcpoYzqOLiMZGGF61MDTLl2atzH84f
         FXO763A9Hk8f3jn/Plud/sn29b7k9F1u8Z4yICyDdVWmSxFryJHksqtg09/9UfSTxLV3
         v2x/vIYzMfrhHTeuCw53ea6OyVGECwoUIfzpx81mc/i2PKEIjveqBearO+EBDX2eLAdr
         UqzhugdYEIvFT623Pd9YQOe3jO/xPt8JTvSvd1ju5ytgHDOZuqluLKrZJ+eV7YwzYEFn
         HHIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719389181; x=1719993981;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=My9/g0GVPEXpaxxN/7a6H9LSpMIXap4+noEpDsopA0A=;
        b=CoJXteraL23VXhOSxOzFzSvJRpJ13NMe9JreZbxaNqPw+iYCTG9k0xSXzCdfocmpH4
         vPAhNK33qiUouMSxEZcO4KdaCI7vMpMbJoGeo7XWNLH4T9N3e0xQuu9JnejIRfa8mf//
         hui60bL0KJ01s0nRdmQHQy/2uW62aSSx7j+KsiGzO6QqwU3cvkB1eHZsVdNDxk/2G7qq
         a4cA9eMH+eGaAdMsAIboCRwiIvICxbZ7EQOJRevpX7XgwL5Ro0LH/+MlZPfkUFg4O4wZ
         qp36iiUmWvA9Q2gSyBVIpn1e6whJ5nCJnWuxGbPUqKtCfW6kG3dnq8TCvSkYL0TuxM5X
         cQoA==
X-Forwarded-Encrypted: i=1; AJvYcCXnQEvTidU4aqIsXz59LtPa/LAsxTTlUwbBKi3r4BK+HTEbajwV1f/Fdod0o5Q9J2dNJaR9AEX4sqcXSFnzUGwiDJD+rFX88nnBGQ==
X-Gm-Message-State: AOJu0Yzt3pgyYu9NpJXI7YEOCudlp6FXnu4KJ8+Onq+Y/MeMMjS0d3tb
	b9rPEggPQUf64b0UnAKK6elR5wB50I8HZGL4HuRJ9s1vsZwsgJUjZxhn4Hh0aI4=
X-Google-Smtp-Source: AGHT+IFYPpmEMk0KFhlTbaqHeWEFWJ0uZm/Xuv/BxVjNUrlN6WksxTy7iVYi1YRdDVtylOESgx2QlQ==
X-Received: by 2002:a5d:5f8f:0:b0:366:f50a:2061 with SMTP id ffacd0b85a97d-366f50a223amr7905774f8f.50.1719389181052;
        Wed, 26 Jun 2024 01:06:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-366388c40c3sm15083853f8f.30.2024.06.26.01.06.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 01:06:20 -0700 (PDT)
Message-ID: <c15045b4-2e5f-4fcc-b25c-76a5e4973e93@linaro.org>
Date: Wed, 26 Jun 2024 10:06:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: i3c: dw: Add property to select IBI ops
To: Jeremy Kerr <jk@codeconstruct.com.au>, Aniket <aniketmaurya@google.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240626052238.1577580-1-aniketmaurya@google.com>
 <20240626052238.1577580-2-aniketmaurya@google.com>
 <e28ba03d1df1c0c5aec987411c40e44fc351ce0d.camel@codeconstruct.com.au>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <e28ba03d1df1c0c5aec987411c40e44fc351ce0d.camel@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 26/06/2024 07:31, Jeremy Kerr wrote:
> Hi Aniket,
> 
>> Use this property to select IBI related ops in the base platform
>> driver. Otherwise the driver defaults to return EINVAL for any IBI
>> requests.
> 
> [...]
> 
>> --- a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
>> +++ b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
>> @@ -25,6 +25,10 @@ properties:
>>    interrupts:
>>      maxItems: 1
>>  
>> +  ibi-capable:
>> +    description: Set to select IBI ops.

What are IBI ops? Standard form letter:

You described the desired Linux feature or behavior, not the actual
hardware. The bindings are about the latter, so instead you need to
rephrase the property and its description to match actual hardware
capabilities/features/configuration etc.

>> +    type: boolean
>> +
> 
> Wouldn't the compatible string select whether the hardware instance
> supports IBI or not?
> 
> I'd imagine that each specific synthesis of the DW IP would imply
> corresponding hardware settings, and so would warrant its own compatible
> value.
> 
> Maybe one for the DT folks: would this work better as individual
> properties? Is there a policy here?

Usually if feature is specific to given hardware, e.g. always capable of
foobar, then it can be deduced from compatible, so no need for new property.

Best regards,
Krzysztof


