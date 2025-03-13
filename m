Return-Path: <devicetree+bounces-157143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AECA5EF83
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 10:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 012D219C12BA
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 09:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 208CC263F36;
	Thu, 13 Mar 2025 09:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oJ4gVJSi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF96E264634
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 09:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741857931; cv=none; b=W9xDM257CT0mTyeLcCQOT8ILjvr7nGeWVsG+W7IU6t3itaC24d7no5suVcFAohuejno3LozjRifQ7qcNzDLef2BW11A3QmjHzLaR7xTXdayzuPd17JM9trzXT+oXCKGiKuICxsLR8ikxTm9gQWq5zOJ8RAg+zqgkvIRhrJqDVSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741857931; c=relaxed/simple;
	bh=rcivCuuKb5DJC2dWp1UTKWOv6WJHpyf26Dq5c+yW+e8=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=MlPdBoy+bR2wZ17KoDhS2Y/58EEEeGLZvJjKGTu1uSboiwSthlHh2SxoOi1WgDy4PGvytLY+oeuJ/qRk5anyj8ABNo6NRVjc17gj2rop2HV+QnHK5NxtNCceXkBrc/u0S2f6hUNZGQ/iLThCYjfwN5BlzP7n86AA6jEF4Si/AKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oJ4gVJSi; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-aaee2c5ee6eso116506166b.1
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 02:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741857926; x=1742462726; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f6BKWe13AnVlYTglbR/JxIsdaPBVgChyq3A6mVc/FBI=;
        b=oJ4gVJSimuN2kZWyzbfd1f9+Tchq0Wg7v+XxRjq5VUjBV+rMXWosJ1nsxKo8RrzZW6
         C1lr633Tp5DZHBvO56+67xXSOdm+w9BXrQ9cGPlYqWnW6+2Q4Qn/Mff94YwNjyQH8dS1
         M+LGQUDn9YZIvpq8JDUFlb5FWxd9JSXYgvR0lNeD3pgY+Hkm5yOYtyr/ZGREQYmp2T3C
         YQA0w1DoqU0/1GLnjnAlHOwUvayCBXX/lSMdq2IBCSdFt+Fk4plpv8xeS6msIoSsE/MW
         vRZuPfco8eZBw96Qw1aPHHpUqMNdyd94yfK3BPXhdB/9fGDZgCu5VcZygtfgwXnKHRB3
         ZBEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741857926; x=1742462726;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f6BKWe13AnVlYTglbR/JxIsdaPBVgChyq3A6mVc/FBI=;
        b=Pfr35OFfuqPEbWYd0zXHPXRa5xzSoFaPLjkingaRsvGMX8UeeD0dPSBRybLMboshLn
         7Ny7tYCQvR8pBVd2515eVEILxdYFBgZ/cBoxsN0r3ux7uPr03dySLkvB3TPAgLKj0NqX
         DJooKWoBDwmFs4EfqvILqxTkj9ToJp0NW9e+Ra9346OOKDzKAST4kL6Z4GPHaIFMV0rU
         Qhk4jKrsicRJbw3MGfjtaEfTOZXO0Wj1vxCDIYvyQF8JTZVgx+Tp6U+F/I41uqi5AaH0
         m5+Xb/DXnOS7JnWq9Dba4M2Hx0436f/ilGKca8GCR/AJnN/cR5gyk5kniaFg2ZPEelPv
         8udA==
X-Forwarded-Encrypted: i=1; AJvYcCX1BohndT96rGprQnrVgMATN9t2RNrsLhAdqijQYP4PWON72P71YVS+Q2uoBZGRi2e/n/l4xMqZIzhn@vger.kernel.org
X-Gm-Message-State: AOJu0YwIurElbitXhccAO9bmvnNjEWcltnz849GCYdNN4r3/Te7Yce83
	49RMvVnU6O63oA0+yTrDdfNsHoRWoJovTkxtvNGeRyVW3CkYK0AGMmCxeREnZ3k=
X-Gm-Gg: ASbGncviQJxbw2vijBaXEXC5qg5hJj48stGkWioOLPeW6A3aKGdcWm5INC11xLrqWtF
	fXpbYsBoaHQFekvjY8OsSpPqSGaaY6OOzTE3lmfJi1kQyOpeZNEQ9C9N2TDm3jHhthTbhK9Mv8f
	YGVsk9m3N+g03UlJrZPL3TeqjRomHhjeWTYIIrdZH1GL3dcl88P8rCTx+DTwle+jJKG7pgi6a2A
	1VKovLCfAqPZk7mndxzhlDAChk2ujBdTJ4iGAuqXxleTbvNpOjjXTbiQfs1O/J6Ad7elU2Z70Ca
	Gsh9NRpRf4QnkrH045eCdgIRSAZdhfs01L5lCewHTnmUeMRRhgTYUzxDJR/ar703D0qo121BfSv
	LULRaW0XOydeYvwGnDsvmQfJ/JSoF8MGUpKSwhxWtOD+8HML/hUul7CCl8RS1SEy7ypqpAMq3S0
	jL8LUCLouUyXtmgyM+I7IvjSqJd3JcSts=
X-Google-Smtp-Source: AGHT+IH5zmAOIRX14h+u56weR60bWxrn363VpmkSSc4ZYAXcq/6Kyfk3T7hCGoj152xsnptr/NS2Ng==
X-Received: by 2002:a17:906:9587:b0:ac2:7ec8:c31d with SMTP id a640c23a62f3a-ac27ec8cc78mr1760185266b.17.1741857926012;
        Thu, 13 Mar 2025 02:25:26 -0700 (PDT)
Received: from ?IPV6:2001:1c06:2302:5600:7555:cca3:bbc4:648b? (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac314a4856csm57215666b.156.2025.03.13.02.25.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 02:25:25 -0700 (PDT)
Message-ID: <b1be6e61-c620-4df0-810f-036c3c28561d@linaro.org>
Date: Thu, 13 Mar 2025 09:25:24 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8550: Additionally manage MXC
 power domain in camcc
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20250303225521.1780611-1-vladimir.zapolskiy@linaro.org>
 <20250303225521.1780611-3-vladimir.zapolskiy@linaro.org>
 <dbxvzgqs5slrl5edqunal3wplg5jiszqv46dr4nzgowwlhkhxa@qwtfq7nfjwfo>
 <59b2553f-adbe-4a92-b7a1-8b388c03ef6b@quicinc.com>
 <93458252-956b-4630-957b-784cac4ca7ad@linaro.org>
Content-Language: en-US
In-Reply-To: <93458252-956b-4630-957b-784cac4ca7ad@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 13/03/2025 09:10, Bryan O'Donoghue wrote:
> On 13/03/2025 04:39, Taniya Das wrote:
>> power-domains = <&rpmhpd SM8550_MMCX>,
>>         <&rpmhpd SM8550_MXC>;
>>
>> Once the above change is incorporated, please add
>>
>> Reviewed-by: Taniya Das<quic_tdas@quicinc.com>
> 
> Why does the ordering matter ?
> 
> It shouldn't, right ?

Being clear.

I just want to check that you aren't implying a dependency between the 
two domains, its just alphanumeric sorting you mean here, right ?

---
bod

