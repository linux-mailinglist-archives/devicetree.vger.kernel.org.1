Return-Path: <devicetree+bounces-136097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DC3A03CF0
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 11:51:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E69FE7A0401
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 10:50:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 563E21E2603;
	Tue,  7 Jan 2025 10:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h6mNrljx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D7518A6C1
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 10:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736247007; cv=none; b=Y5AciKQ07zzOH7EdySSuul/naY3fiIzQWG1EoInDVaL00tAb+LODtOpZsA8+0tWJ46d/7IvSohnJxsBN3U2VJ8AxIDuBgNmtbFEUWcOam5I4lX+MhbkPSIaslmmqrL6/Njf/ZwEe1KmOLgSAiZXw3tToooN+9jOdhXctrg4JPxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736247007; c=relaxed/simple;
	bh=OHGq9fkaJJWtR9oYDdVO29zOPMvH6rWL6D6NLYJOWk4=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=ltVj3p8PRH+J/daPzGGCIMuwId2jgMVt7c89kxpylj2mbtFul9qnuN4MaG0/DECy91VeTZSh00lOaI3qjKEyXVg/SJ3VsAaq7Z1gnRT+eauBRv/FFr8OYGulw5LnOrWLmG6+I9Sb8VwyGBU9Sn5zRTZVn49ksbHlqZ+YcZr4nnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h6mNrljx; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-385d7f19f20so6778342f8f.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 02:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736247002; x=1736851802; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FvZr/dVKDpLXbb03C5T6q3T96NxB6hILwFKtXlC/Ynk=;
        b=h6mNrljxE8sVetJXPXJ94WEZEbJKxI+CNCpDCuHYOGrUYnR8IDylzvS5RagbX0YESo
         3PLg3H2fa2iiKuo7LmY1Z8kwz3biQ+MEUvAYo+yBFOgUmvXqfZ2palllxDlfRT8Z2HPd
         wmsrREsyutVZQxPlYLUG0Eaza5eiuOjbYfo0mfOqe2gCTaNl0bnrPgHU84oBYUqiUSku
         UVfALcdEKCgEmozsZ94h2kyFBNJLkL/YGylH5oN0jfZvnGONz17tnDtjDYkg9MRKXXex
         AdMQhIEAHNr53TogB3UxSQxL3BpFA+WzS2yaGvTUhsqmxkvrjGDKQJMbkywQVfDqyVPB
         q4qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736247002; x=1736851802;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FvZr/dVKDpLXbb03C5T6q3T96NxB6hILwFKtXlC/Ynk=;
        b=c4MYwvNuD7CmekXPUAjPNRWOadE1hyz1W/i5AOHvmkau+EgumEP0JoxnfUqp60VfKh
         Xvo5hYNBUrWl6zQnqltdh3o/5eRTgqKJlH50wBZnqDXL2074ygyxpbesFMXDVajkgVr7
         pbKf2hNiGgZHC0ffEyeVmV06fg24LWQH2rYxW9VQo4StZpqlvjQC9oD6qSZwnnEvbK81
         C9PJ8C/fRqqjeufdO+xo7P/cbsizjs7F+UW5NgRybUQnk0eUqeyHd0xKzS8f8xcibm1u
         Q0LtOp5pxUbKzogYqyPWXQelpKRF3MorAA6slO4GVWRp7ZmIycPHuoVT/FJjS9DOtK89
         Y6mw==
X-Forwarded-Encrypted: i=1; AJvYcCVJGOgR0ZPFilBSEf+3iedBN/A27JpKE0Wk54Volq2q13V3m9kdInXJEf1HKe8ZZKIXirTUdpH8KaJh@vger.kernel.org
X-Gm-Message-State: AOJu0YxzQShELLJwjtMgm2JBwx38o8oW1vzH4cP/oz5F2Vpo800dt2+L
	T3ZVhEva6z639GS9MiVRFqA/DOtA5HWIKVt0pCiBUZE49cK4vJv4D93cJdldrnU=
X-Gm-Gg: ASbGncslYN+8QeCtTHu2wPmTNxnGxOO/a2oLoVDLWvVUtceimqEgprp8R/EIUJRHnRQ
	KntBM56DjbTTjSv1jhh0EzrSzhay+LgZTgsvfLZnM8sCsNDpR7GN1guB1pBB6jCUu0UWDVE+g07
	gs9gKzaK7gBCvL5lv8ynCb0iXfGZXIbRa361wFXNedV8J50amgeRBRu/xwdzd/0YKIgopIGYphL
	iyXToW5AY76jc3gW9+1B+S8yc/WTKQouSRZlidnKkpw/LbsNws2jtysrSSCDqwx
X-Google-Smtp-Source: AGHT+IFWWsclrAudf9l2fMtvDlof68qSNuL9I0XDi2SzEiGNLoR/MT68Eprzp2TyquFNjFKf6bXUlQ==
X-Received: by 2002:a5d:5885:0:b0:385:ef8e:a641 with SMTP id ffacd0b85a97d-38a221ffb82mr55164693f8f.28.1736247002474;
        Tue, 07 Jan 2025 02:50:02 -0800 (PST)
Received: from [192.168.0.14] ([188.26.61.92])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b119d7sm626870095e9.20.2025.01.07.02.50.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 02:50:02 -0800 (PST)
Message-ID: <366ab35f-b881-4694-9d36-573f9922175d@linaro.org>
Date: Tue, 7 Jan 2025 10:50:00 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] firmware: add Exynos ACPM protocol driver
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com,
 peter.griffin@linaro.org, daniel.lezcano@linaro.org,
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de
References: <20241220-gs101-acpm-v5-0-4f26b7fb3f5f@linaro.org>
 <20241220-gs101-acpm-v5-2-4f26b7fb3f5f@linaro.org>
 <8e6bade0-5184-4bf7-b1f0-103a77d0f98b@kernel.org>
 <060c7a96-c1ed-4c97-8a3f-f510102466f9@linaro.org>
 <24963d4d-9d53-4d07-a756-3eb1fc50c3dc@linaro.org>
 <d41fd615-2e6a-4cfb-90c9-fc0122ea992f@linaro.org>
Content-Language: en-US
In-Reply-To: <d41fd615-2e6a-4cfb-90c9-fc0122ea992f@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/6/25 10:20 AM, Tudor Ambarus wrote:
>>>>> +static const struct acpm_handle *acpm_get_by_phandle(struct device_node *np,
>>>>> +						     const char *property)
>>>>> +{
>>>>> +	struct acpm_handle *handle = NULL;
>>>>> +	struct device_node *acpm_np;
>>>>> +	struct acpm_info *info;
>>>>> +
>>>>> +	if (!np) {
>>>>> +		pr_err("I need a device pointer\n");
>>>>> +		return ERR_PTR(-EINVAL);
>>>>> +	}
>>>>> +
>>>>> +	acpm_np = of_parse_phandle(np, property, 0);
>>>>> +	if (!acpm_np)
>>>>> +		return ERR_PTR(-ENODEV);
>>>>> +
>>>>> +	mutex_lock(&acpm_list_mutex);
>>>>> +	list_for_each_entry(info, &acpm_list, node) {
>>>>> +		if (acpm_np == info->dev->of_node) {
>>>>> +			handle = &info->handle;
>>>>> +			info->users++;
>>>>> +			break;
>>>>> +		}
>>>>> +	}
>>>>> +	mutex_unlock(&acpm_list_mutex);
>>>>> +	of_node_put(acpm_np);
>>>>> +
>>>>
>>>> You also need device links and probably try_module_get. See clk.c
>>>> clk_hw_create_clk() or of_qcom_ice_get(). Interestingly, none of them
>>>> perform both operations, which I think is necessary.
>>>>
>>>> I think you could also avoid entire list and mutex by using
>>>> platform_get_drvdata(), see of_qcom_ice_get().

[snip, irrelevant now]

I made my mind, I think the solution is threefold.
1/ use kref with a release callback so that the firmware drvdata will be
destroyed only when there are no consumers. Example:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1e7c57355a3bc617fc220234889e49fe722a6305

2/ In get_handle() after kref_get_unless_zero() succeeds, I'll be
calling try_module_get() for supplier. Even if kref will make sure that
consumers will still have a valid supplier drvdata, I'd like to delete
the supplier module when there are no consumers left.

3/ use device_link_add() so that when the supplier device unbinds, to
unbind the consumer devices as well.

I'll implement these. Cheers,
ta

