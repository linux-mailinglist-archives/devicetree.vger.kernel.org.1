Return-Path: <devicetree+bounces-228648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CB2BEFB9C
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 09:46:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C6563B1B9A
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 07:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A57A2DC359;
	Mon, 20 Oct 2025 07:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BMjVIAXw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643C228030E
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 07:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760946365; cv=none; b=eq0m0mdXP63rDzRC3NoRSOdLCA9s96MFR3AULGJ1jSXidirAu0Fnx5ayoSEUxm7G0Bz134DGJG/mUf8b7V2HqBJENfNka4aB8VR6wpvR5qfD196L6u3DikqjO/u6aAN614BxGQZXcE/E3Z8tbNyQ6ots/agsDCEmWCa2TQjtdnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760946365; c=relaxed/simple;
	bh=X7/0YOAqO5V2172ZrybLrIHVzwGVuhBmLKlylhJxm1w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CEV7g/7fTWsYAty9zAPRZDrRVjS47GvO4oEgHfODMuqlBR6/5TqFLoLMG88qOcodMgUoKZJjDoW1KEKtfQoSzDvyrrUwk0ALT2IZX+qmjvfqLflqX5mAtobPiqfX1rTnY/JN40GuVyiQhQmUHZnHVNflqasXvl1qUpEMb4DO/cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BMjVIAXw; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-427091cd4fdso1672104f8f.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 00:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760946362; x=1761551162; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NeEefsjDjBTzkWLJQXyP/5aObcnLAGWfiU+nORhhDXo=;
        b=BMjVIAXw/qb0mfPjoMsyfy6xPQmKl4Qu+YGY72C6YEByg7AIqSq5CCpHo5oiYK9GBG
         p7BYn32ak7gyLIWfxzqngx13/XzqxW8phpWGb0AYyyw6NK4/D/jf0J7x04Lz8u8CJdDG
         W4/QpjldgFiw16NfNAgRgzjGhXSLGhDKLjiR+EIzzFrYxcbziuZt+kgvsVoz3P6tBXza
         0Ms5y8Ch+ybQRN1eTTM8hej4h5yGz3Tye5c+iX+XGUuZQGAdUcN5HxtkszUH9wG3VCJq
         ZRKSCC8Xf43dGOdCTPZ/9vNyNx0I/DjQn+oqtW1yJXyyXNoPxLkorp1T1hqMiiDHxx6c
         h5BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760946362; x=1761551162;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NeEefsjDjBTzkWLJQXyP/5aObcnLAGWfiU+nORhhDXo=;
        b=I8KeMcr2pFZlpFePsUqvFS6DRb4nMzFKMixYIntVCirbduK1P7GPCfPjjYZZowWPjc
         5wYPNAj9vpHOhVYlWWqz0xb5Xn6ieubcjhOxS6Dyg9eJdHJ5ztQs9FgbXv6eTBAK7CC2
         sTil3IclG28LAVMjOY0jl8BULZ8vfYIRZpOvEC8TafShq1gNvt6u0c5WMAPppTmh9s/S
         no2yvIDDymwu8zblzF5XjVyKPuSNK+96MGHdwF/QrjFN+aA4eHnXQINzv+F6TCnpFdOA
         VPTtjv90b+an/Ft/uAGZbNWkmaNww0BodSEqhVuLAI8TYlbSMK0bObnVLQN1qaUfVCDp
         9jZA==
X-Forwarded-Encrypted: i=1; AJvYcCXc0ZcHNy8QvUtO8CXUPxC1mcEQ4Ao3vnNpqO3fvmZVhJMup0l4W36brvuhc+9d5kBg7Vvz15cOv411@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg8NskZKs4Gkpr9zzQmtDAzQLV+fMm3YIY26FBTtevQg6tL7C6
	7osy9hoyB/3Wu3YivgPKROzDzSt38cFLLFtAkd4FEt0KDj5fRshT+If46JdvkpHS0i4=
X-Gm-Gg: ASbGnct1zlbz4BgsJgPeFjfrG6wpIujzUfl4rGP0txpEPbiT8DuzDKU34EpG0kPBT6M
	Mc5SG5YwWCXMhJrPgA43Tu+rkni8WCCLnmcFq8HtTkEPHiYGRbQg8bvOPeDVi3QLNroK4vFfAY0
	07LBWOIP2FZ9fGmiFIKJZgedXhzIa7Viosaau9IYFkkdG1TWXhhDOJ//ISTp500+5yJdkHXViKi
	so3wMEHoQdJYDWxNJjXWDq2mnf28mBwl4znS1aPcRo0WEJwKS8nIRdzItBrvWvDoKIbVMyschxn
	mHqtBvP8M8jeBMDWXEpw+TzcVXEJD6Prx9UzuIQyKs8JH6fD7Yje/1XJwnRQhrqsoF50ccZXajb
	CnuXO1KmSU7L1pglTsxjOMrcyv3ortojCGsmfXWJaw13xqwPG74qWXVtOzfobY0ucv9H9Htk+/Z
	SQkaHxLCspW8UIIZrhV34=
X-Google-Smtp-Source: AGHT+IElXYjtpSTA367NjPFbuT2cNOkeZqKtyb865DWWHqYMgZ9skD7DsDruCaof11OozJ+7TkNWCA==
X-Received: by 2002:a5d:5888:0:b0:426:d587:850d with SMTP id ffacd0b85a97d-42704d78d2amr6946088f8f.28.1760946361718;
        Mon, 20 Oct 2025 00:46:01 -0700 (PDT)
Received: from [10.11.12.107] ([79.115.63.145])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5a102fsm14122755f8f.1.2025.10.20.00.45.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 00:46:01 -0700 (PDT)
Message-ID: <17695fcf-f33c-4246-8d5c-b2120e9e03b1@linaro.org>
Date: Mon, 20 Oct 2025 08:45:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/6] clk: samsung: add Exynos ACPM clock driver
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com
References: <20251010-acpm-clk-v6-0-321ee8826fd4@linaro.org>
 <20251010-acpm-clk-v6-4-321ee8826fd4@linaro.org>
 <92f1c027-bacc-4537-a158-2e0890e2e8ee@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <92f1c027-bacc-4537-a158-2e0890e2e8ee@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/20/25 7:54 AM, Krzysztof Kozlowski wrote:
>> diff --git a/drivers/clk/samsung/Kconfig b/drivers/clk/samsung/Kconfig
>> index 76a494e95027af26272e30876a87ac293bd56dfa..70a8b82a0136b4d0213d8ff95e029c52436e5c7f 100644
>> --- a/drivers/clk/samsung/Kconfig
>> +++ b/drivers/clk/samsung/Kconfig
>> @@ -95,6 +95,16 @@ config EXYNOS_CLKOUT
>>  	  status of the certains clocks from SoC, but it could also be tied to
>>  	  other devices as an input clock.
>>  
>> +config EXYNOS_ACPM_CLK
>> +	tristate "Clock driver controlled via ACPM interface"
>> +	depends on EXYNOS_ACPM_PROTOCOL || (COMPILE_TEST && !EXYNOS_ACPM_PROTOCOL)
> 
> I merged the patches but I don't get why we are not enabling it by
> default, just like every other clock driver. What is so special here?

Thanks! Are you referring to the depends on line? I needed it otherwise
on randconfigs where COMPILE_TEST=y and EXYNOS_ACPM_PROTOCOL=n I get:

ERROR: modpost: "devm_acpm_get_by_node" [drivers/clk/samsung/clk-acpm.ko] undefined!

Cheers,
ta

