Return-Path: <devicetree+bounces-34098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 320788389FC
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 10:10:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DC7B428A2FD
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7796B5812C;
	Tue, 23 Jan 2024 09:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TRxKOzwk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62135787B
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 09:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706001004; cv=none; b=tW3cl04NY3GBpz6Zu+Vm4h+4y2P8wB76GoFdwB06bijkHM4XmuoQoidDVemoYIeopqinHaGZTTaecsWd8/Bg7n7mzTU1m2znRVhZq9G9f6/mS7hvoKYI550SW/b0dKHvz62sT2iDoE/i3uNG+pFmzGzObgWxSSlXuJIceTo2y/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706001004; c=relaxed/simple;
	bh=l1z7MpNV2XBlhoyz3GMY3Nt1zn0+YBINb8neBgR4jnY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=blBRsU4NF987YP/QuBVUoQIdasCkp9EyKT+XpQOBJPTzNCXOqUjZMtR1HiDBx9EE6xqyh23xpo52NkH5N5poMqvc/1kDPZ1E3RsSu6Y+4uxKXM84VpPwYMHezL406yyyWwx0VdVQu5wsAebSXXndUe9KqyzU4EHW7d4ohoKlwjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TRxKOzwk; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-33931b38b65so2033281f8f.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 01:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706001000; x=1706605800; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G/HqiW9cuoCgRPzOrcA9BJqfZ68FEkgWUe/8BGsgIpk=;
        b=TRxKOzwkby3p645v2Wckz6OeuPX0dZUh8PQxABZE6I6H3CTOK2zZcpF/rAEK/IacVC
         mgOi/JrlYRD18zERETm1OPdx5E4WCaCsOoPm8oBhrBUpr+Xm/WylubBIEMpjU1Odiq+K
         MJcJ5VnCBuBBOC2dZqsz3XPMPYYcI/FNx8e1ExwtcfqrOyGOXvtdVlYPLw4L5+0KF3m2
         e1gJy/Pq39ceT/8tkG8DCEQKwlOJStxc9CPTjWpDjaD7KkIzGBY/vf61d/gjUKxSdO3U
         z/6pXVTQHdc+8uFZea72DeAUkFU+Wxpsih39ZxwXcjDhfLn/K1U65UqpeUaMQ73jTtQt
         WqFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706001000; x=1706605800;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G/HqiW9cuoCgRPzOrcA9BJqfZ68FEkgWUe/8BGsgIpk=;
        b=w2vRaspjMDshyGUuJ5A43rpsO/hmeOqE9lHF3HSieIg+8H7zwTtqRa18NXXPptSiBt
         m2P34VMjPVR+WnRdns4WoqA6A5duAajX1YNWZKwxpkohmZdJhYh4WtCAE1WPmky3CxMu
         cA3oXnXyB+YoZ2AnN5q0V5cgwNVz+Ml/trVRWlIa7Q3mA5udwJ99sxXbNKX6yZS17SOb
         YEG9dUfmQu7pN7d8FtNK3Q+ip6b2FuvXwWEbh0nS0CRzQ3A407oO3vjAlfvTTAxrBBWN
         xcrWHFrq0jNSGh8yJ/DKLI2Z9FKR2Ns/REKdTQeJykNPxj5stWJzqPyavpUJko//rpCi
         5H9g==
X-Gm-Message-State: AOJu0YwCRAp+V9J6S7IgZSDZAXFf5/Pbsu+d62HXFnRXM6/n+A4hYDmT
	fbex/tAli6s76vH7mDI4kdiFiiGEhrLtgh4+5HxwZgCr7QAafbmd8zZNxmprIXM=
X-Google-Smtp-Source: AGHT+IHwTNj8g3dvwECmi4e9jyueOXSQNydI76YVWJPcRPlJ19sDAS1sSw+zEcJmwp9KYsK7H8mCrw==
X-Received: by 2002:a5d:4986:0:b0:337:b38f:ceff with SMTP id r6-20020a5d4986000000b00337b38fceffmr1453386wrq.231.1706001000055;
        Tue, 23 Jan 2024 01:10:00 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id j6-20020adfb306000000b00339208ecb30sm10897064wrd.68.2024.01.23.01.09.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 01:09:59 -0800 (PST)
Message-ID: <fd46e414-16f7-4ca8-9125-39e423ce32f1@linaro.org>
Date: Tue, 23 Jan 2024 09:09:57 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/8] arm64: dts: exynos: gs101: define USI8 with I2C
 configuration
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: andi.shyti@kernel.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com,
 tomasz.figa@gmail.com, cw00.choi@samsung.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 andre.draszik@linaro.org, semen.protsenko@linaro.org,
 willmcvicker@google.com, kernel-team@android.com
References: <20240119111132.1290455-1-tudor.ambarus@linaro.org>
 <20240119111132.1290455-8-tudor.ambarus@linaro.org>
 <9d12f4f9-1892-48f3-b8d1-8f59788cc91d@linaro.org>
 <6ddbf20c-6929-4cb0-9fdb-570cc7170b9c@linaro.org>
 <7fdc00e1-0a93-43a6-8fb6-c447ad8aef64@linaro.org>
 <a2c64a9f-4467-44ef-a13d-0af80abf4dfd@linaro.org>
 <9d5249a6-5838-4af1-be18-3b9a9e34a937@linaro.org>
 <bf651183-9321-4dd7-b8b4-4cd635760f31@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <bf651183-9321-4dd7-b8b4-4cd635760f31@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/23/24 08:59, Krzysztof Kozlowski wrote:
> On 23/01/2024 09:57, Tudor Ambarus wrote:
>>
>>
>> On 1/23/24 08:44, Tudor Ambarus wrote:
>>>> However I don't fully understand why that dependency - except patch hunk
>>>> context - exists. You shouldn't have such dependency.
>>>>
>>> Let me try offline, I'll get back to you.
>>
>> The dropped patches depend on the dt-bindings patch that you queued
>> through the "next/drivers" branch:
>>
>> b393a6c5e656 dt-bindings: clock: google,gs101-clock: add PERIC0 clock
>> management unit
>>
>> We need the peric0 bindings that are referenced in device tree, that's
>> why the next/dt64 branch failed to build.
>>
>> Please let me know if there's something on my side that I have to do
>> (now or in the future).
> 
> It is useful to mention this in cover letter, so I will know how to
> apply the patches. I understand therefore the dependency mention in the

Thanks for the patience, I learn along the way.

> cover letter is not accurate, so I can ignore that aspect.
> 

Yes, that's right. The dependency on name fixes is just as a patch hunk
context, no functional or build dependencies. I now know the process,
and I'll be more verbose next time.

Cheers,
ta

