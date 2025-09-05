Return-Path: <devicetree+bounces-213238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 974B1B44E37
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 08:49:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 334A5565763
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 06:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C49D926A0DD;
	Fri,  5 Sep 2025 06:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f/MM6ggL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57F4223DFB
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 06:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757054947; cv=none; b=uIuaf7Fiu8w81NDbq+ecJOMiardJEl5bvKtz1PWsSaMV0H7pxmbZEy+KopwdNL2ja1C0fln4F2vQQrFIV6tAmiH/ylw8lS1dsL7svPrjZkZl+CM70Z4qlA3aobMHtgS+jEe5zbtOtQzGxu8SyQNTzmUp40l+0L0wNHSeDD5AQJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757054947; c=relaxed/simple;
	bh=PNwmuy9ZrUvG6BXlXC8y5kritsIgdToaDCNu24xtDEA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JvXGR2hgVsQiHu2Hbw5MLwOfBvePotj5SgzECqVTS/qYOE41uVcjnvDJary6K6/xLqsiyav5sh1HNQDKppQ2WcvPPv4zXcAUOkfeUzObvStBYBEkRR6XB8j1jBC3gCE2bAqHRgIWwtDViZ4sc3yjZZfu+uRnLOsgZZA2TziUw3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f/MM6ggL; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3e1a31c692bso26304f8f.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 23:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757054944; x=1757659744; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=EKDOsWP8voctZ/Z4kh43R/z8whzRh07BGNOQiQAcmr4=;
        b=f/MM6ggLmH7W/2kr4fLPSyztSw5axX1kIj67hB1LUhhILa+G36/2e+36MmkxvOQPYf
         suHHgzVJ7NhHAQ6ti4Kj6waOn1Qyu4YTcJBsLWRUjkr+ZQ9na0El6GxSAMZixxRVzs8C
         S9963cHBNsoX7QceD3SxYjUzw4D6/1xNfZ0Qr328EPZuFZLSVkySrMPGlm5SSP9zmlVS
         fwfMvfb0Sg2NxwEiTalWo0Isa9f35yK1Cosm0nXJq+mDd5SR8gXn8BaA8Xus2Q/8xQzN
         Qo+ju6zQt5OATU/y7/630+KA47FwcPLR9NWt3AXg1cFLpOk6WOG2wVxfAAlT9zuB4STC
         WZlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757054944; x=1757659744;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EKDOsWP8voctZ/Z4kh43R/z8whzRh07BGNOQiQAcmr4=;
        b=H3UvfZXN4FkOVLfxftDa9fREPC9OtanxYh0ciyQy+fO8oG24ngW0EQlsbszQsAMpCh
         6ETxp9TfAq280V4au+TJvp44hBxdXCnwN1/FaSpQ+uJHaDC7/nV3Uhj/j0Ph4MFn0F93
         ZSdLEHLHsXkJ23PWFTNL/HL/aox/CCvGuuSOQtUPcpFkhH8pQ+9s7oYCE1LjleUdPOyB
         6H+VcJm50omqqttMGWaO3OPQi6aNPgHWt2ewWJjScySMABI9Mh6Cc0g+t+IcQrcgOt8Y
         pw8hEX5fbVCQFWqFC7BA4nG0IuY3jd30ckQskw8EJvsNFtjEXNih2Z/UMfJCr3OYw/i4
         E24Q==
X-Forwarded-Encrypted: i=1; AJvYcCW5Ua9hbQ+Mx8gXWY5y+Shw26Vvhukg9hDuqt3BYOoTXqFzNYk+7wZiSsdQhl+FLPrdqwsmdvPFHEnX@vger.kernel.org
X-Gm-Message-State: AOJu0YzLgeCUN8BuEdCRT6j2357bvnHPU85xVXupynK3o8X4WInRlbpk
	TIU2DfERrRNa4At/gfAVPfYokH4f1H6S8zv5DQ62tM+weu0m3cnbcFq9q+lLKyiSbh4=
X-Gm-Gg: ASbGnctzH6wyCn4pvR4AVuEYMjaXz9C3dXZbYm0XNhPx3Csp0/UupjClC0o5Bhj7TUE
	+Ms2VfQO/89GF1l40KununJb4Hc6ig6E/sqr5klUmZCLHk9oFhyekeJ8cb32E/syN/s466bIiqd
	nfp/Sl5LJl1MOFp+8UKAXl3667jLmUwtl5QzWVQj7fw8FwsoruStgHyfS8Ssn5hJsngkjLmaQwO
	8VV0/DCk//qxw+Pdc92Yk7vlOpe52IoP60+F30vdauTOLwZbfdtRMNXqp346y3JI+PN4JssCu83
	uCuG9vfoi5n1UgIfHH8P6XJu9YlY5s2AyNgBUjzBf2xSPmhrN+nqmTMglCBXkK36rIyGwg7a1lG
	fZ6fXTSSNw6CmKxp2X0W5rkAKNvmWT371IasN/mBQzck3PGODaPoJQIT3Y4Kvfbce
X-Google-Smtp-Source: AGHT+IGrJWqN/vuJ5bYR8HntkcB6wDhwMnuKODVl27jVmQNuhe/bcRvAsFKD/PzJaLc98zEaFVnTCA==
X-Received: by 2002:a5d:5f91:0:b0:3d4:6abb:7de1 with SMTP id ffacd0b85a97d-3d46abb844fmr6949454f8f.3.1757054944165;
        Thu, 04 Sep 2025 23:49:04 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf34493b8csm29592720f8f.59.2025.09.04.23.49.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 23:49:03 -0700 (PDT)
Message-ID: <8fe9ccd9-ec66-4174-896e-01501b8ad8ec@linaro.org>
Date: Fri, 5 Sep 2025 08:49:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] docs: dt: writing-schema: Describe defining properties in
 top-level
To: Frank Li <Frank.li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250904142400.179955-2-krzysztof.kozlowski@linaro.org>
 <aLmwk/0gqrivgl1U@lizhi-Precision-Tower-5810>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <aLmwk/0gqrivgl1U@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/09/2025 17:30, Frank Li wrote:
>> diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
>> index 470d1521fa17..e0859094575d 100644
>> --- a/Documentation/devicetree/bindings/writing-schema.rst
>> +++ b/Documentation/devicetree/bindings/writing-schema.rst
>> @@ -165,6 +165,14 @@ The YAML Devicetree format also makes all string values an array and scalar
>>  values a matrix (in order to define groupings) even when only a single value
>>  is present. Single entries in schemas are fixed up to match this encoding.
>>
>> +When bindings cover multiple similar devices that differ in some properties,
>> +those properties should be constrained for each device. This usually means:
>> +
>> + * In top level 'properties' define the property with the broadest constraints.
>> + * In 'if:then:' blocks, further narrow the constraints for those properties.
>> + * Do not define the properties within an 'if:then:' block (note that
>> +   'additionalItems' also won't allow that).
>> +
> 
> I can understand what your said. I think it would be better if add some
> simple examples.
Example for that is already there - at the bottom of this file.

Best regards,
Krzysztof

