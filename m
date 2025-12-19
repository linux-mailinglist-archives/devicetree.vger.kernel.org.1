Return-Path: <devicetree+bounces-248383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A245ECD2238
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 23:43:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F18F30184FA
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 22:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 210A42D592D;
	Fri, 19 Dec 2025 22:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RKN/EUF4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6742D3228
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 22:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766184096; cv=none; b=RnsPMtH1bgDrrwW8XJrUtpn2h096PajXDnscx2XaK/e8LrEMTgUsTgFyau9z8GdqbhRvkUYc7zievfwH2zILQDu9oUYmjsELv7HwuZw1kZSIn9j/7/q43YOULDBPDf3N3UJNPK/UHV/fXNQP9lvJQzqFjZ1X5i+wUxXnqzPGf08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766184096; c=relaxed/simple;
	bh=hgzx5PoMLzGBKv1Ko7649gjCYd1e9j7MWPLV2nFqSkk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F6nnM+2LpS906TtLvijewVyZFp8oqpkMh76rp+6XADfSZPG2ULUd8E/G72Bov+jwD87vy/xDdITjYRR1a75H2plqIeWitRwYvrBAegZHIZeNbIwEXCHqD31Jfwe8TayoIceB1hOBHBDacIhi+pdKtzJehm7pXo1xg3tYKMmQ2NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RKN/EUF4; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2a137692691so25901145ad.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:41:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766184093; x=1766788893; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZFdCAthq5ASj6VHc2YGV5WzUN0LwLQOv9WVjruH5x/g=;
        b=RKN/EUF4GY/UbqQxqr01x60TF21tsPBDP9uWj0+YpbVsnkxa5GHjuwe4zGzpF7bXJf
         RTZsvvVdmpeWwn9L+SgmpzxZYsEayW1VAGZ3CU53Tu4E1D3Lknbyxz/hMRmwTOfmM7Cs
         rNARS8iaAm1gTaymNBwmkPS8k/W0YIbkqy2LsuFNJk6yIX8I3YQzyxmmCrTuCGKDD7If
         jhW05td/+xdoMd3Ytrpr1d62cG6eAh5OQbq9OazXrJAhjBCHKrxq6Ecg36Fih7L5ZDLE
         vRSaWalv4kuESH1U95jcGE2NQS+WF8dK5iRSRxF5xBThf95Re9gGtVtwqTzvJVbEADfO
         JRcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766184093; x=1766788893;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZFdCAthq5ASj6VHc2YGV5WzUN0LwLQOv9WVjruH5x/g=;
        b=SaTVu9LEaBgv0gvU5rH7CuMcXNTOFsBtt50DlNkf46Akt6BDLZXm5FKneAZbOXzx2Z
         AF8Q9wHP0hOW7dyQMvtf2e+Yt8s7Vv4ExvXRCmVXBhrrbvYGDc/FPht9oBlO1XVSHLTP
         uA42AniRHZRydMNe39kQkzjourQ/mcK+a7LwiCveJYKf2mYOzCEKckX6qNarPUhfXuWE
         cXVMwfG1Gt7MUz6Pa4dp3RL5tMzoXfej5BVUXDvATAknJq4XxJcjjiT7UJVXz6uL/QUo
         85pyneuxf94848zln9cf6DlRJdrjNRtUe2JieMak4wrgwM1gsq15dA7UHOPgXJk36tm5
         GIgw==
X-Forwarded-Encrypted: i=1; AJvYcCUSldWmoydIyMH11B962y0N/6CpzGDMCtAMHp5WYBjKp399EvTtX69wZY4wwhhXLeWYwhYLMT/JbaJR@vger.kernel.org
X-Gm-Message-State: AOJu0Yyro1g5V7OwHasYvOcH1UoZU7rvhtBYSpAoiohUYHXb++cf738m
	vuQi+5aV/oDBcLDQfwLFoFH1Mznpq22KNBlNVkpumhoeHkCyMXVZxcis
X-Gm-Gg: AY/fxX4+iS8RnO7tqqilURZ2pEGyGjewJFHjq0IAFY5Dkf2tOa17VehIVotIj5i4Cyj
	oe1M7jemXcbQLWK7CRmqBGdo2XFRXjoc77Rfbrz8vFR+heZNaXtl7iVkMimcGhfSV1rkC+Q7NTL
	CeB9JwwOlgcjpay8I5IkQP3ek6BdPrhS2kevB2TjB4CBKU9jg3FCCquHGM1Syg4mzSdEhofh3R/
	TVojwgyfU0Tknai95h+yzMdXFueFqj+bnE6miC6Vx08mqCLIUysmRlt2s1Rj2OfojsEsrpsHOeN
	ZCKZbaH175N/40a1+/11XG7zwGbJ81xkO9sWB+s5a8YwYLoQ0mztvzzyndM2dXcLT/bkNBMDRqf
	Dyy9NR5Mt/X11haL7heBag6awGJFURTPq4jaUFp2xiElgH6I9yIgzigzUlCvhkC6295DTqGnc45
	rgtACnmcv93w+Y
X-Google-Smtp-Source: AGHT+IGVt+A1lgqxcT4FlSvp+xbq/a0lG/KBNo3OI5rmHpthKmsWmE2H4WLCb8DIHt5ZxU58e/rv2w==
X-Received: by 2002:a17:902:ce81:b0:2a0:d63c:7853 with SMTP id d9443c01a7336-2a2f2223714mr37358695ad.16.1766184092672;
        Fri, 19 Dec 2025 14:41:32 -0800 (PST)
Received: from [192.168.0.13] ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c5307c7sm2983673a12.28.2025.12.19.14.41.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 14:41:31 -0800 (PST)
Message-ID: <ade7690d-14d1-413a-b4b5-eda91d64207c@gmail.com>
Date: Fri, 19 Dec 2025 14:39:41 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/3] clock: eswin: Add eic7700 clock driver
To: Troy Mitchell <troy.mitchell@linux.dev>, dongxuyang@eswincomputing.com,
 mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, bmasney@redhat.com
Cc: ningyu@eswincomputing.com, linmin@eswincomputing.com,
 huangyifeng@eswincomputing.com, pinkesh.vaghela@einfochips.com
References: <20251113013637.1109-1-dongxuyang@eswincomputing.com>
 <20251113013846.1222-1-dongxuyang@eswincomputing.com>
 <aUS9bLVLhIPMOcWa@kernel.org>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <aUS9bLVLhIPMOcWa@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi ESWIN folks,

Please refer to my comments below

On 12/18/25 18:50, Troy Mitchell wrote:
> Hi Xuyang,
> This is a quick review.
> 
> On Thu, Nov 13, 2025 at 09:38:46AM +0800, dongxuyang@eswincomputing.com wrote:
>> From: Xuyang Dong <dongxuyang@eswincomputing.com>
>>

...

>> +static int clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
>> +			    unsigned long parent_rate)
>> +{
>> +	struct eswin_clk_pll *clk = to_pll_clk(hw);
>> +	struct clk *clk_cpu_lp_pll = NULL;
>> +	struct clk *clk_cpu_mux = NULL;
>> +	struct clk *clk_cpu_pll = NULL;
>> +	u32 postdiv1_val = 0, refdiv_val = 1;
>> +	u32 frac_val, fbdiv_val, val;
>> +	bool lock_flag = false;
>> +	int try_count = 0;
>> +	int ret;
>> +
>> +	ret = eswin_calc_pll(&frac_val,  &fbdiv_val, (u64)rate, clk);
>> +	if (ret)
>> +		return ret;
>> +
>> +	/* Must switch the CPU to other CLK before we change the CPU PLL. */
>> +	if (clk->id == EIC7700_CLK_PLL_CPU) {
>> +		clk_cpu_mux = __clk_lookup("mux_cpu_root_3mux1_gfree");
> It seems you want to switch to a safe clock source before setting up the
> PLL, right?
> 
> I am not sure whether your approach is correct, but the use of
> __clk_lookup() should be avoided whenever possible.
> Would it be feasible to obtain a proper clock handle somewhere and
> perform the necessary configuration from within a clk_notifier instead?
>> +		if (!clk_cpu_mux) {
>> +			pr_err("failed to get clk: %s\n",
>> +			       "mux_cpu_root_3mux1_gfree");
>> +			return -EINVAL;
>> +		}

I have a strong feeling that this switch to safe clock and back to PLL
can be done with something very similar to this:

"Add notifier for PLL0 clock and set it 1.5GHz on the JH7110 SoC"
https://lore.kernel.org/all/20240826080430.179788-1-xingyu.wu@starfivetech.com/

Please take a look. Thanks!

Bo

