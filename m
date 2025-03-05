Return-Path: <devicetree+bounces-154265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3332FA4F85D
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 09:00:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BC9B1890345
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 08:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C8B71F4E3B;
	Wed,  5 Mar 2025 08:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dUy1k6Pf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFBDC1E5B73
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 08:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741161602; cv=none; b=ZcPpujGPdYG/c+yk+FPVw4qIloURNcmY3+U4a6Jcoa6JlPPgq2+Y+1yfss2Yp+4li3i49ux+D9dDYSXX8/4Au/UK+fhUMUhFByZ5Nw+nFuF4sXPjZpfk3ZysdffBQjX20ZJa6R3UK6P7JZt3Mv1Yrpcq1Sl82oBb4uNbT420B8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741161602; c=relaxed/simple;
	bh=y25J/hIP5cQuDdNvQ+VTPz5TWiB+VYXGxfCZmMMxxi8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gAH1MRfMdAqMth58MotJUpTKAdL8jieLODteTt5KvxYiiXWcd4ODExiRQluh6LLL+BXbw30FKIaMMcYSowuOVkU2Rku+Cf5o8vgcf5sf8fLiUYJKJidN3e1xxzRS90gl1p9W4OjZz+dhzAdUES+7ufw9EGmVvm0V2YnlY4JO5Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dUy1k6Pf; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43bc526c7c8so3429355e9.3
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 00:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741161599; x=1741766399; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=88zJPeEM6Ees5O8b20N8jdD2aVPaYoBTwcvx+zuqOE4=;
        b=dUy1k6PfbNYktUu1iKdFsDuPjNsnfL4zfn/L855/KXBtnFmeRRclV6pijwvcYbxfN8
         tg92sQZBXdHyeQGQ5E3JSCDkUdyAY/TWWRBIiTQMTJSRYdqtjkQtmt+8myQmIlQbikTx
         cKVEMD7wfPSSnlFOFREAjKj8jTstEotYlgNghFMj9wt9VfdpdjhYB6HQXM3oRp/Emj5G
         HFo30T9ebCZIBsu2hFHKn5YShofmkHN4qHFAlDDsv4CuF0uM3XdhEvPEKhDKx0PVMd02
         +I4qYT1rWQoARRAfXp4e7Egi3eLAZL6itufZqQQNtB8KZh2KiJ8+h873Xm9UZuodtP2X
         8z/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741161599; x=1741766399;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=88zJPeEM6Ees5O8b20N8jdD2aVPaYoBTwcvx+zuqOE4=;
        b=brcgco8uvd/aDR19ymP2HqwvvY/CYXLK/ASZAeWzTZ47phUFV2LCzbK5wVPNnDSR06
         97ECNIVsD7IkWfnO+s3IzysF6hcVjYXjkyfZhGOn6BRSXl0GuUnSDlsARH8JycKgkf/Z
         MaP+MTtqBlLrV68JJQ7/Mx7+zkcI/spDIlIAKUlpZwtsReAEweOdUxU3vOcfDILvSIaK
         DJSpw053pnqbKnT5jx1ZyLYVG+42siGTF7dy7PHh9/2oIUsGC2f/jMAQimdGvzTlPIAQ
         HuXqgLZ/SFN5yy7GAkKTUU44yLB8AO1utVQ5GZ2ZmYsTSiZZIJfINeJP0bRIxcDHVqiG
         2w5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUae8iN+8TKeQxsmS5n3V8/3eTkpOaPtuLG9lJ4kEI7Sxva4rphwFDExMqnSpXW4FOJhm8xsh+Hl8Lg@vger.kernel.org
X-Gm-Message-State: AOJu0YzkuCD/FJ3HnGKM6LKFB0ExtGV9zn4SwPOGf7VOon81iREaaqej
	jivDhnoAJiuKbCIco7oITwZH0kro6D1LcYT54cR2rYihF/bji8m6zUAm9cTUnTM=
X-Gm-Gg: ASbGncv2K2oS4rO3nlLvMUaZO9O8ajbSvmJGejkZMi69Bq4x1wHdnjrQPynw3QVgWge
	+h+eSjwUvd8IzLLqN9UqXEyeVc6NNH4k9FETZlB22oJnwflfHbiypiqaj70O1Fpbsk5xPrzjSwY
	BXrW0S5W0xiyoaFdgPHJM9BzvR2CZE4mBjj/DfVZ/Vexkan6TZ0luTQQGq6Cy4/8K0TZO+ZHKZK
	s2/LAjyamMuc9xVUMo+2zY0pqERAE/7MlCyTMs7k6ztAY0LZar8sYfAIDh5Y+m9QRWhciAcxykh
	PQJYuOSHumoo+qmZkkDcKO8amb74dBCKld1R1N1khkttfrEtjIugc9ZVGh+cffA6
X-Google-Smtp-Source: AGHT+IGR+fRTadOEWXBUD9X5CMFMEpgOuQoFFOazelTvrWLHVz4Mpbanh32Q0mDZ2cFWEr1glhNXNA==
X-Received: by 2002:a05:6000:1561:b0:38a:8784:9137 with SMTP id ffacd0b85a97d-3911f7b2b32mr598515f8f.9.1741161598873;
        Tue, 04 Mar 2025 23:59:58 -0800 (PST)
Received: from [192.168.1.20] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b7b6asm20606967f8f.51.2025.03.04.23.59.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 23:59:58 -0800 (PST)
Message-ID: <7b1bb8ae-14aa-476b-b34c-9cb7aeaf0105@linaro.org>
Date: Wed, 5 Mar 2025 08:59:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
To: Zhang Yi <zhangyi@everest-semi.com>, krzysztof.kozlowski+dt@linaro.org
Cc: tiwai@suse.com, amadeuszx.slawinski@linux.intel.com, robh+dt@kernel.org,
 conor+dt@kernel.org, alsa-devel@alsa-project.org, broonie@kernel.org,
 devicetree@vger.kernel.org
References: <20250305071050.113541-1-zhangyi@everest-semi.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250305071050.113541-1-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/03/2025 08:10, Zhang Yi wrote:
> 
>>> +
>>> +  prefix_name:
>>
>> No underscores in node names, missing vendor prefix... but more
>> important:  I don't understand the need for this property. Description copies property name so it is not useful.

And these comments as well.

>>
>> Drop. You maybe wanted dai prefix, but this is already in dai-common.
> 
> I will update description at v4 PATCH


> 
>>> +  everest,dmic-enabled:
>>> +    $ref: /schemas/types.yaml#/definitions/flag
>>> +    description:
>>> +      The property is a choice between PDM and AMIC
>>> +
>>
>> No supplies?
> 
> I will drop the property

I did not comment about dmic, but meant missing power supplies, which
usually are placed here.

> 
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - "#sound-dai-cells"


Best regards,
Krzysztof

