Return-Path: <devicetree+bounces-207885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 63774B31174
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 10:17:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDF16680C1B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 08:14:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA77C2EAB7F;
	Fri, 22 Aug 2025 08:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LmdAC+0M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EE72EAB6C
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755850450; cv=none; b=X4YAHOj6yAsokADL6D1GPusovxqFvxWg7u2wu9dUCC1rojeHUE94WsMvcwzabhfzLqpQmAEjzg3QlzYsjwrHMS0FnOZWMR8Wohbg4r3tA2FHcWEa6+ky8H53ApJtTHXa7sFqUftM411plGQUIRNplOslWgzVG0eqCzkzNqjPSTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755850450; c=relaxed/simple;
	bh=ISKJzVPXu4k+ZO6I9/7b7/q2WElbo9A+JMC+LqnOasU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UKwdol/YfemCnGk+O+A3FfWFzBf8DbXgxvGb7s2WfGMxZFYRDLvM4rQbiYMQnDdk++7Aoo1Y4uypC9OpOH1uJ76M92kKFbjuDupzTvBVMHCJkImVyamwtWYQVTr5V0gD2MgSh0yE4ArWEvojY6gKytJsLCvbl/YgDYF3e3haaeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LmdAC+0M; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-afcb7a16441so271363366b.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 01:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755850447; x=1756455247; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LPvTo2XEETbDk4TcDNA4R7e2eQHtVrkf9abfQlGJ7VI=;
        b=LmdAC+0MOvfF50Fuxs9TAbyHCdTDFlrQIbzbTUQ/F4/qTWpROoYBUX0dRV0vHEnGaa
         G2UdjJqlhQcveJELlToq5PXE/AzlsCnFZhyn0qOlRc57S4YPHuOMzwcLulZkD/K5potN
         ovOLU69OfOXyaZKKiMR4Ko6EQZFs+g2hi0b+MiCjS7mnX9EQneu/mNOe3LaBCtR6MqJu
         G/BFQaqrbVnEGxDpJtXbI8PiHN2nfAsEUWraAEfcKLrOd8JMtgBB4zJuITnTXcUDZZZ8
         laSRZFzGv003bbnZ6Wi5ZcR7mnXjq0sOf7K8yMbBpwuE2woAao252VKl6EINTL0uh43L
         cbpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755850447; x=1756455247;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LPvTo2XEETbDk4TcDNA4R7e2eQHtVrkf9abfQlGJ7VI=;
        b=PHEKiQAtnaummLjTbfnNwHiCT0As6BdpE9gDcAR6nz+iXjRwPNQsI8RY8Kd0U0+OUJ
         5frV1nvaa/TPGICMB7PEFJMrirtgOP9k31cNBqNOmMwNpv27FKUscL3MQ9kC6uYWj+pO
         TpjP01ONpW7MsTqB0+NYYBL/HJK6ECbCNP6Fhc/i27odahEYGFZj0tCFf6bniIRTH4Ql
         IkRE5OAQRd6IvYdd6nPdXb38ZoZl8hsMOvTdieWwByA2lIgrS4/2nWFMBTRes++3xPdC
         pgUdvYReKfi0+RCedcWEQkH/bwzrM0tx95uKie6zTbFjyFDvuMPJTmZe6UJ83Lx2qdxc
         RaXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOJmwiavjxgEUos8HH7A/0klOQ4ozpgcPF0vCO1e6fizO1Pm3RZIEAvEx20CNPsO3D4BBTELbac+kP@vger.kernel.org
X-Gm-Message-State: AOJu0YxHZMZiU80ppYA6jRwWxb3aE4MNdJ90jxuNnZYJ0DoC25iGNuIm
	a/eJkEV5Ed6dJX/KZ/xtD+ignL2IUz289mmMk4UlUyt7KDCtNlkYVMpGFtceY+CQQ54=
X-Gm-Gg: ASbGncsT6vdNZR8+fIwrKcaGlhqRZK1LZYRs6qzfnWvhyAQC07j/mvlO90/zr94UH8A
	hi1wLOmIVm+dYRer+WcB3756FuItUQVfsFaX5gWsDL/EOQgsQcigRyFhme34too2ItMJW3TxMvN
	/VRiulOF5dUN+Jy2bGdL5u1OeyY/AIdOENzG6uwrwGC1LBLaYP4My+B9Q4k0CPhB4w1kQjYYpTf
	+sch/QqX7aHYr5fFB2AhCBd5e9ggv5Wpuct39vYvn9KtnYJi9W7H2AfLaMvZHLb+RzI4jIPOFaN
	qBPK0Z5ukAWD0lUAMkYjopuTIPPIRZzU9KfgrSkLReV6bvv2Lnwt7GL2Qzua9TIIoj87UfR5web
	AhhVw+8jwjUIqh5KFvLsLGHzGIcZMlZnr
X-Google-Smtp-Source: AGHT+IEGEVoS2KNiJz+rap9NchIlTHp1e7qqv0SERyT7o+gtgwKhQP2IflgiPn4RYqUiBzAj2fr7cQ==
X-Received: by 2002:a17:906:6a1c:b0:af9:9ab0:6f3a with SMTP id a640c23a62f3a-afe28fd7ec3mr185456266b.23.1755850447341;
        Fri, 22 Aug 2025 01:14:07 -0700 (PDT)
Received: from [172.20.10.10] ([213.233.104.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded309ee8sm559576366b.27.2025.08.22.01.14.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 01:14:06 -0700 (PDT)
Message-ID: <720799b1-04ce-46da-b643-1adbdfc661e6@linaro.org>
Date: Fri, 22 Aug 2025 09:14:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] clk: samsung: add Exynos ACPM clock driver
To: Brian Masney <bmasney@redhat.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 willmcvicker@google.com, kernel-team@android.com
References: <20250819-acpm-clk-v1-0-6bbd97474671@linaro.org>
 <20250819-acpm-clk-v1-3-6bbd97474671@linaro.org> <aKdmurrT1pFtLSI8@x1>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <aKdmurrT1pFtLSI8@x1>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 8/21/25 7:34 PM, Brian Masney wrote:
> Hi Tudor,

Hi, Brian,

> 
> On Tue, Aug 19, 2025 at 11:45:38AM +0000, Tudor Ambarus wrote:
>> +static long acpm_clk_round_rate(struct clk_hw *hw, unsigned long rate,
>> +				unsigned long *parent_rate)
>> +{
>> +	/*
>> +	 * We can't figure out what rate it will be, so just return the
>> +	 * rate back to the caller. acpm_clk_recalc_rate() will be called
>> +	 * after the rate is set and we'll know what rate the clock is
>> +	 * running at then.
>> +	 */
>> +	return rate;
>> +}
> 
> ...
> 
>> +
>> +static const struct clk_ops acpm_clk_ops = {
>> +	.recalc_rate = acpm_clk_recalc_rate,
>> +	.round_rate = acpm_clk_round_rate,
>> +	.set_rate = acpm_clk_set_rate,
>> +};
> 
> The round_rate clk op is deprecated. Please convert this over to use
> determine_rate.

I can do that, sure. Shall I also update the kdoc for round_rate(), mark it
as deprecated and add your Suggested-by tag? It would help other newcomers.

Thanks,
ta

