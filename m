Return-Path: <devicetree+bounces-189028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7583AE6678
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 15:30:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13DA0406C6D
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 13:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0788E2C15A4;
	Tue, 24 Jun 2025 13:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="byoPBbY3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4AE27FB31
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750771773; cv=none; b=uXzcTvn9/rGlCzx+Z65ixmXWYYN2Neqfj/pA4npuJGFADl27vO+WaRKdmXplboyVonjRilSDxVMBU1j2l6fNfoU3/j28A2HWK4Cp8hVbIiUEPjxRz23VmMxGNggNxO0+PZjklTl7lZgVwddgze81WYRk4Amt/LmNoOF8hQBkioM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750771773; c=relaxed/simple;
	bh=KkGuUQ1jO44VkHngKbwwZg2hXuZAc53zXvsEALMTdVY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cx9B4l7DQcm9d/Oe4CX9SLqxgmLu2vcNMD/9+dVbslaeoZjDRu1hCEqicfsLCCdvcWvA5ivqvRlyPhOL0xLlVIivHM/ytjx1Z/zeMsMdfws+/he5IYA7Qkdfpy7ZsXu9E+n3dY1g88nGuXcW/D9Bs2bWAAlUMYSRc7mLgDGT2MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=byoPBbY3; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-32b3afec1c4so5866171fa.3
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750771770; x=1751376570; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3MLKEW0O/I/yGtGiPGESO1OSUMKreNoFwAhjoXeg8po=;
        b=byoPBbY3udkIICsafgYPb2WA1zYbd/DnfFFOxTZ2dK++/oEcxh/b8Ff/njdLq/DeWl
         zXlIxX51LlFu6UjZn5H3xy4phhuqPkN0WV4qQn718NUeGuAl7fyoDTJBhCcG7EGHgLbd
         JxSjelOhTLwdpjHaBc7XPwvrZja9ksrVIAlaE3mbvLFDbDoZrHVRjbweQprkKGNORRCC
         7TyZRldVeLzEX7WVohCPWV3LLLGbrcMi/Lo98gH2OEZXT17HWByBkXXBd9Xc88XOSxQf
         A1bNFHN6cFtj1ZYEdcuZvQgsyMTR5ZEk8slZvPXAK4xw4PecGsBUWmYyRq6OxKadDD6d
         0xCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750771770; x=1751376570;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3MLKEW0O/I/yGtGiPGESO1OSUMKreNoFwAhjoXeg8po=;
        b=QcOyJfITjWRMNdVyK7F1n/7pvPSarbhEJSqxAcipp2crHJ0USOUVlOee/5BYtrwxpC
         r1SI9zLFKls4bOSDtwzJ95qQl3tG4vzEZLhVEsXoKC5PpFWbnUu7snFGAtcB4qQFCQ9v
         aM1KolQE0c06qQLNv+DgZXzBcYFo9YKAJcdUBp2rtlmBNiUx04ICf/G/sg2KHm32WPTb
         JKvc+PMPpO1eYfmY5Rb8XG4XFvJwCTQWj6okc4OGC05RXe7i+E5j4GWlM+G90s8/9ILL
         vi+RWPvdYpx6sV3JNgLHw9rMl1TZAmhBmasC2/yEhbsb8uGvIjPHZ+yMqTNscXnCxalO
         gWJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXikbHOMQqL0rMuvMI9QdM85B3VyKtdkXv1G+ci0mWbPtyyxVhG0wZrdzcEsc1kQYWtoHlfYQ2I5oFa@vger.kernel.org
X-Gm-Message-State: AOJu0YwBnf+BnFimMGCmD8zVVEp+zD+x5Z5f85+jhrbu3gy7Ior1KcFl
	FxH4cIibsvKrZtGLoDJ0WSYDYqZ/yL0Ux6HmT21Gb+YqW9KhIwFDN7o2EwPgsIZUQB8=
X-Gm-Gg: ASbGncvq6hLf51OFgcrz4KMfuy6rKxCLcpMa3JEmvLBBn+mJRqZ+BKqoZyNT6uenyAr
	jpNaaoSYcROLH67hANjnYBJge8TbIgn1WxQcqpZzIA6VHbdueZwnipJdIaEvq6iwUShqPU+X9EC
	APD79CA3e6BR4iDIwsbXy1Bjwh1CDW0XrNaQAF33pryIEISShAXMXWpwXHF9j+ewyUIW0V8Zncu
	ifwhz/JMD80DO5FJGILbLi4kyyB9IsXx4Vge3D6CVr1KCPc/dAaL2Gd7pG8Jv9SAvVnzV+/Hk63
	amQd3jfA7myaUUz0pN7/XK0vVukTMctPwd2XJ+Bm+cHHqXf7exS2M59HTVFysTiJBj3XsAWBXCw
	PhdzZ2PIxkwa+HylF2HyNUNc4cRYyFoqo5jxcjBl+DjegqBxY51Y=
X-Google-Smtp-Source: AGHT+IGvDSwwMCcOPXsenn7I5P7Tg6A5E1lHNYZ5jImzp3hQ4To7P36CxWECrV/a1zEmeSJjd7sc0Q==
X-Received: by 2002:a05:6512:3b8d:b0:553:35ab:30ae with SMTP id 2adb3069b0e04-553e3bfa0e3mr1661558e87.13.1750771770237;
        Tue, 24 Jun 2025 06:29:30 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41bbba4sm1836925e87.109.2025.06.24.06.29.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 06:29:29 -0700 (PDT)
Message-ID: <c29385d4-30ea-4774-9cf9-699b08e29800@linaro.org>
Date: Tue, 24 Jun 2025 16:29:28 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: media: qcom,x1e80100-camss: Sort
 interconnects alphabetically
Content-Language: ru-RU
To: Krzysztof Kozlowski <krzk@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250624094253.57441-1-vladimir.zapolskiy@linaro.org>
 <20250624094253.57441-2-vladimir.zapolskiy@linaro.org>
 <aa56b956-95f3-484d-8afa-058925b95bfd@kernel.org>
 <fff77f71-e21b-43b9-9da5-6cf819add970@linaro.org>
 <5a5b78f7-e156-4c5e-8407-b249040e227d@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <5a5b78f7-e156-4c5e-8407-b249040e227d@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/24/25 15:04, Krzysztof Kozlowski wrote:
> On 24/06/2025 13:38, Vladimir Zapolskiy wrote:
>> On 6/24/25 13:10, Krzysztof Kozlowski wrote:
>>> On 24/06/2025 11:42, Vladimir Zapolskiy wrote:
>>>> Sort the entries of interconnect and interconnect-names lists in the
>>>> alphabetical order of values in the latter property.
>>>
>>> We do not sort these entries alphabetically and you did not explain why
>>> you are doing this.
>>
>> I did it, because I assume that the preference is to sort all named
>> values alphanumerically.
> 
> Where is such preference documented?

There is no such preference documented, as I stated it was my assumption
and it was based on your firm insistance to apply a particular sorting
order for regs, clocks and interrupts properties. Apparently you are
fine with out of the same sort order for 'interconnects' values, the
criteria of picked properties remains unclear for me.

>>
>> Since my assumption is incorrect, I kindly ask to let me know, which
>> properties should have values sorted by alphanumerical order of
>> ${property}-names values and which are not, there should be a method
>> to distinguish such different properties.
> 
> None of them "should" as in "break ABI" or "change something later". I
> don't understand why again we keep discussing such trivialities which

A triviality for you is not a universal triviality, that's why people
ask questions to remove uncertainty, the question asked above has never
been discussed with me, and the answer is not given also.

Regarding "breaking the ABI", it's been discussed earlier that no dt
binding user in the upstream implies no ABI break practically.

I believe this change shall be dropped from the series, it's not
important at all.

-- 
Best wishes,
Vladimir

