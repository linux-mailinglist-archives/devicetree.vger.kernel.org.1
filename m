Return-Path: <devicetree+bounces-62175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3CB8B031F
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 09:24:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 51BEBB25FFB
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 07:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D8D115884D;
	Wed, 24 Apr 2024 07:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KjiLHxaW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64290157A6B
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 07:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713943404; cv=none; b=eNb45+uBZ3qFSbyhr9o2LhQc470gG4Xc1T9fJzTNPv/v7+t+Ret6yYe9RngBt9LLTQMMMCPCBTfgZrJp155cCBzEIaBqyywCL20yUiz6HNO3Xb/TdGqv0MeOjB521tCTJz0Is80VHApJVtJI5ls0UW0lZYpKM1YqkdYC4FlqLPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713943404; c=relaxed/simple;
	bh=xxbCaBc95Z+Z+7XM5Kj5BsqZk7VsT9hZrQe/N57hIpg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vmp6QbI4RBiAplOqIMK8C/TnGq2etVZYvIZs2hibw2PyxfmE3aDpn7Ip3IFGOoGbogbZdnjuVSggrgsld7xkZZrAmRKrVH6sCqufGu51Mxy/nW/s0AtzFFhi55jYh/AnhiSC+HnmVPvmFfiMCaEWoE4jdCk87ep3jAeYgzoO+jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KjiLHxaW; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-51aa6a8e49aso7261582e87.3
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 00:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713943401; x=1714548201; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=eH5hTGqBaVmQ4QxFz7/DMtOsuiwt9fPf1HS+xP5aISM=;
        b=KjiLHxaWhVHm1alFdMVuRPmZNe5PdZaC6VgQHGvVTAWo2zTCGA7BS8uxMUEjPpKwbl
         Gp5+qRXl1Z2Ji/LLHjPxZ3D9qswvvL3stQA0IL0ub07fYzhqUv2Vsdu8AfMbjFYUZWcA
         SRRYNI8UdnD0YOuHI8zeWI9PjGdrR1q66FAbmcoPhIa5LvHt0+tQNM1YjMCxjfOFuZQy
         OY1yZu3Rp+9DfZIVox4wWXCxTBugXEvnlKGuCagaOgGnDg5O6QbWHhTvPH9ER4aTx+Bm
         uR2EW1lkumXaaUak/fQO/wdohkC9q9SrM1xXfXURAjkXntArPjQu7zK/xqmoOyl/950D
         5MKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713943401; x=1714548201;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eH5hTGqBaVmQ4QxFz7/DMtOsuiwt9fPf1HS+xP5aISM=;
        b=rIHIvPy8HnEVLhrZvG/vjewA4M8F5KKZS7Fn8vCqH+WrgAYT5h4FL2smTyYWExWtax
         B7o0rT9TUw4p2NqD8auxHQjldIgRpYss3c5zvMI9/hEVWLL55a/tTRIKhY5VsPInd+TV
         smvV0FzW7WNFMLioWsIdlDFlYUxrG8Gb2UnbkiKNSUEbLS+nt2VqYwigtMNFQAOa3yJo
         86a70eQj9GnaS0AMaUAWej+YNR7Zkb9b85obXk/9tA2JAP56fYwwjFGUfw4jHmxHQBSn
         wVWsjjPcV/aaPsfQgE9YSzm64G0e/2VfSwhoSuSe2y+Sj2qSdqGNs8F01ODhtXleabsz
         PxUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzqW4qf6A7C6Sp4vh8o70w70CPZBnQ/HReGXNVE0uThcSpvrVoUHWnesuBrHsM7p3xV7TSiD5KzeqVMSlFM1H5dr7fz+lCD8hFkw==
X-Gm-Message-State: AOJu0YyBa/CgPREERqzrybLNWjUDM8mFhG8NtWwzydjmEoVO6boZQvj2
	6HKFipSFBM0eqdrkQSIN/N2ZpOKZrYeKl+8sdln2g3ExAPEXJwgXLrben1wObYkPi6u3GIMlYAb
	ZrlA=
X-Google-Smtp-Source: AGHT+IGqo+H29o4iRcT5EnnqV/XVSKwzVeBUziqEaVmTYL+5Iogt2R+hnXOSJF4St9+K8Rt6G40iyg==
X-Received: by 2002:a05:6512:b88:b0:51b:5f9c:ac1b with SMTP id b8-20020a0565120b8800b0051b5f9cac1bmr1691883lfv.37.1713943401541;
        Wed, 24 Apr 2024 00:23:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id q23-20020a50c357000000b0056e672573e5sm7846910edb.88.2024.04.24.00.23.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Apr 2024 00:23:21 -0700 (PDT)
Message-ID: <7adfe10b-cfb6-4242-9520-dd9819bf7f43@linaro.org>
Date: Wed, 24 Apr 2024 09:23:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9] arm64: dts: hisilicon: hip05: move non-MMIO node out
 of soc
To: Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
References: <20240402193148.62323-1-krzk@kernel.org>
 <171394159880.43787.12383182687947213751.b4-ty@linaro.org>
 <6628B1E9.1050300@hisilicon.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <6628B1E9.1050300@hisilicon.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/04/2024 09:16, Wei Xu wrote:
> Hi Krzysztof,
> 
> On 2024/4/24 14:54, Krzysztof Kozlowski wrote:
>>
>> On Tue, 02 Apr 2024 21:31:40 +0200, Krzysztof Kozlowski wrote:
>>> Non-MMIO devices, which are BTW not really part of the SoC, should not
>>> be within simple-bus, as reported by dtc W=1 warning:
>>>
>>>   hip05.dtsi:301.30-305.5: Warning (simple_bus_reg): /soc/refclk200mhz: missing or empty reg/ranges property
>>>
>>>
>>
>> Almost a month passed, no replies from maintainers about picking it up. Dunno,
>> looks abandoned, so let me grab this. If anyone else wants to pick it up, let
>> me know.
>>
> 
> Sorry for the late reply!
> I am applying these patches which are in the following git repo.
>   https://github.com/hisilicon/linux-hisi/tree/next/dt64
> 
> And it is fine to me to go through your git tree.
> Thanks!

So you picked them up? Why you did not notify anyone? b4 does it almost
automatically. How anyone can know what is happening with the patches?

I will drop them from my tree.

Best regards,
Krzysztof


