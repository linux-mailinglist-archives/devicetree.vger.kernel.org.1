Return-Path: <devicetree+bounces-42443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CC89D8578AE
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 10:18:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 26A611F23284
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 09:18:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B50831B946;
	Fri, 16 Feb 2024 09:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J/CUTWlV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A329B1BC3E
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 09:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708075072; cv=none; b=TCQ27do/rYFtTqtzLdyKg9IkdTZN4KaMiTHCMCInLLwxXCAy8d8nmMHJIEyaIQ1C3DFiLg9FOCKJFjqREhs9jotS3SFFkVhJKj0b+A2O6Cqz/vJkzXlHtwd5rx4Uwlt6I68o+7URr66ycLd6CoB877Y5DGsWqWYMM8gS4NUYRk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708075072; c=relaxed/simple;
	bh=ABK9SZFJh3iFrxKkRqATbU8RxTxkltNx7vTWVN5a9oo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JuvfSTEvxO2hcP+I/uJmQ2XrvPOwgN1lqozT99ixYPpBlsM6+E+4mIKKlSIpq1lw3tanr5xtlQjcFdbavmf4asonMvNpjBUDL1hP6Wj//yefWYb5HxTpADGp7K8Nz1cb4C+AgQNLjA0pxT5EnIf1WtAKrQX6IlDrhMRlrFJaHv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J/CUTWlV; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a3db14a0a31so150015866b.2
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 01:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708075068; x=1708679868; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mUfMiYERPQ1ajJgUKEduJKMufk+sBmKDdRWuDOgmHXA=;
        b=J/CUTWlV6pKwmfsF5tDSZRSXsr5gFDNkbzO+lohqo5YJiEakZ/VJuVycSQqFSJmPNy
         5ip9Dq7+krS+h4ckGz+qmdkeXA8mSGo2fzkO8TjjFa3AYUy1Rw5+bxgx0ahkiSIcSvBu
         aOjR48bryfXtsN3LMXgS767+4uYqxMJnHqWxFvTK2KdFLYDzk2mokduy+E/JiHWepTU6
         Ha/sWVBxaiw5XcosvVJKQ1QD8s9X6icJJ63q557XcisV6QaW9d4qcgdBhsix7LUy4xEM
         Ces/FBK1LBvIAvuunC42uWW5EVarmlLAxPlwgL3ysyowWHl9sYHI56O3fem8dvO0qrsf
         sRUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708075068; x=1708679868;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mUfMiYERPQ1ajJgUKEduJKMufk+sBmKDdRWuDOgmHXA=;
        b=BryvJpDyKV+Ij4rzvYazkk8mhgLtF0SIAQlDnNq2rPN9rh2qzN+zgHMVlU74MvQefE
         vX/+cN7Zb3TZoGzjopt+6iwHeToc0i3A56b4+Y8cAtz38G2mJIAwrpMXreH9oiCjF2D0
         ujqiF8kywjSmkfoX0Rx3PQsfPhFyzAgIpVx55Xb4zK2/p7KVC7chAvGcFjJ0m1HbO8ws
         Ji73TPOWsUMmZH5qyQ5qzAsUQUSH0b0wymIZwcsNx4F5ZxAGLRD+jD06hJ3iMCJD+Wy5
         F76BZ2pKMjITTfwF+Yuk7PTa2tfZZSyzGVdC6K8OW+VXfGXxljGHu2H0QuWziuV9ZjTm
         yz4w==
X-Forwarded-Encrypted: i=1; AJvYcCUswG3jcwMK4rsdxhcT1qsfzIaxh5b20nNujXBvNMnMITafCAUw0ljbLXFbm30pao9GweU4zt390cr9qf8+HofY6OQliynNmupwZA==
X-Gm-Message-State: AOJu0YyIXna3lCyHtBFtTjIE6YXIGk3r+jUuYJ2F0C+Fmk9rj4jj5BTj
	Xhjk/XEjcfP3gBIaEl9a7F4Oo455QMPOh8U7xP0LjSHZy03VooBvMiolpgbbQvA=
X-Google-Smtp-Source: AGHT+IGuET+EtCs0WnnjR5CAbdKd4XK1m9AeiKfXrzUx1p9v85Q3J3VA4b2RfFMqQIZF/vWftEh1tA==
X-Received: by 2002:a17:907:1051:b0:a3d:64d4:44bc with SMTP id oy17-20020a170907105100b00a3d64d444bcmr2950207ejb.18.1708075067939;
        Fri, 16 Feb 2024 01:17:47 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id s15-20020a17090699cf00b00a3bd8a34b1bsm1372932ejn.164.2024.02.16.01.17.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Feb 2024 01:17:47 -0800 (PST)
Message-ID: <60b568a1-6dc9-4116-af95-bfaaca61677b@linaro.org>
Date: Fri, 16 Feb 2024 10:17:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/13] dt-bindings: i2c: nomadik: add timeout-usecs
 property bindings
Content-Language: en-US
To: =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Rob Herring <robh@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Andi Shyti <andi.shyti@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>
References: <20240215-mbly-i2c-v1-0-19a336e91dca@bootlin.com>
 <20240215-mbly-i2c-v1-1-19a336e91dca@bootlin.com>
 <20240216022704.GB850600-robh@kernel.org>
 <CZ6E24VPJKJG.35LACFD6ZV5KE@bootlin.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CZ6E24VPJKJG.35LACFD6ZV5KE@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 16/02/2024 10:16, Théo Lebrun wrote:
> Hello,
> 
> On Fri Feb 16, 2024 at 3:27 AM CET, Rob Herring wrote:
>> On Thu, Feb 15, 2024 at 05:52:08PM +0100, Théo Lebrun wrote:
>>> Expose I2C device timeout configuration from devicetree. Use µs as time
>>> unit and express it in the name.
>>>
>>> Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
>>> ---
>>>  Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml | 5 +++++
>>>  1 file changed, 5 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml b/Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml
>>> index 16024415a4a7..e6b95e3765ac 100644
>>> --- a/Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml
>>> +++ b/Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml
>>> @@ -70,6 +70,10 @@ properties:
>>>      minimum: 1
>>>      maximum: 400000
>>>  
>>> +  timeout-usecs:
>>
>> Use standard unit suffixes.
>>
>> We already have at least 2 device specific timeout properties. This one 
>> should be common. That means you need to add it to i2c-controller.yaml 
>> in dtschema. GH PR or patch to devicetree-spec list is fine.
> 
> i2c-mpc (fsl,timeout) and i2c-gpio (i2c-gpio,timeout-ms). I agree this
> prop has no reason to be compatible-specific.
> 
> Feedback from dt-bindings and I2C host maintainers would be useful: what
> should the property be named? Having the unit makes it self-descriptive,
> which sounds like a good idea to me. timeout-usecs, timeout-us, another
> option?

It must have an unit. That's not negotiable for new properties.

Best regards,
Krzysztof


