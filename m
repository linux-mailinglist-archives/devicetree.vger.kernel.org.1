Return-Path: <devicetree+bounces-99963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C1D96BA81
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 13:27:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AEE461F23A86
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 11:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E645E1D04B9;
	Wed,  4 Sep 2024 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eMEKJ+po"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3906E126C01
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 11:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725448973; cv=none; b=Az1LWViPmYAOKS+PZXGgRRJgwtV/RLYwC55dulzn90wtdEUj7cWQvURU+gfqbvFWK/qFC6vMQ4/rMRkTTerJkWobX5TGnlfeP7gghXWnOQEHUJVkWVf8wu/0rWvYMZr8teCrN9pGXGc2DMdcB7BgceJeGJW2+Rmlpt4acwI17uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725448973; c=relaxed/simple;
	bh=PcrFgpDkn50Q165eUFY8BrJ1SaOyvBQGLSKOHPiZ39k=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=XgWVLVd9x5jDH7jqv/NWTcsWX4YsgpdlsKxHXZ5p4GXfbSHrttBwtuOoBgLyjUs0vFTxPfUbyS9O5kLxrriti2scWdaVAhpVPHgvuHPcJIB1T7u1cMUjkd+S++ngPvqT7s/7d3DJlpD1BqcEIXybAVpoSZGK210n8OzaXlar6QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eMEKJ+po; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5c245c62362so4194218a12.0
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 04:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725448971; x=1726053771; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mXcgyount9FIa988qWiuGCSNSad2TY4cycGUqv4MAcE=;
        b=eMEKJ+poMaUoMLaoQl4/MJ8qmYejIDtE6TGRb55KL06o/G1nVVAwDOvv76xA6CDMZC
         kE/1j0/gUfrTfAGbNXBVRA/5jEyKulRyPU3vwbbwR9TyN1x+ZR17KCs2o/uogY2dpD/n
         H8eqYeMk0+KOulPbvRsq947GzQF3QHGeAVbOwh0vW2AxQ+iCt1wM+k06uHntEim/UNJw
         J/RcOmAaWsAqRaniwcfXLqpOoQ2SoqxFKdDDQ/ZtfF+TEp9gfDU5Tv1NCCTTfPvKOTh/
         TzLS8XEhK4bcbu9D3BlNFtY3p8V3Dn8m1JCb9BfM4tVO5CHE2JEkxQHZz0yKwJJBPQzP
         KB/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725448971; x=1726053771;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mXcgyount9FIa988qWiuGCSNSad2TY4cycGUqv4MAcE=;
        b=UkbNcsCMHY6vQf8Hh4O9QJCvTDzzjU9mRV14I/DGrPES3dlItcFD0IGh/XDL9OHD/o
         dQRHpvbAWJVgi4bDVtHwVdmmdwuNm0838eZYVn2HQm8TwNVik7FLqJlYLl12zCJn/Ddb
         QhYvbzZl+Lg115hF9rCIuYpD0qQVa+vPsP4X0RI3/hhX7OJ4ks2yZKb/xfhaf+c2se7y
         sI0LM5zxHGrNDTZFFLRdqxloIObSE8ICFdnfh08ZXqsQVhR00cTSp0LKI7sBNc+rS70B
         t7rDa1qu2Vc18vIrJa15n8z2NsFld8WyonaesGvaCbTe0s23rbvTIlOFWXy5bKt+2DMK
         2cqw==
X-Forwarded-Encrypted: i=1; AJvYcCUEnRgsNrZhz/Mi8iMmLdbEQxebzyIN/etw+GRh/pN25Cme+KQF7UQ3M+rvOnpZ/wybf88Iazot3YwQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzxp6V0gq4Z6jMG2pcsmXPTJF43R0zjpBKUXLgi/HOniiKcv8Hb
	Y9dL+nFpKUqinLPuK0rF2AWlRtGQfxkJX0MpZ98bWsebB9Iomug6y8FDp+Jcp+g=
X-Google-Smtp-Source: AGHT+IGABy8yJ6gIVqPxqOGLJAZPBvqQIMiwgmXxYJH0VAwdvLE5ifagcTmvrdZkt3pAKO8bdRK9WA==
X-Received: by 2002:a05:6402:354e:b0:5c2:43a0:47e3 with SMTP id 4fb4d7f45d1cf-5c27584b805mr2244804a12.36.1725448970452;
        Wed, 04 Sep 2024 04:22:50 -0700 (PDT)
Received: from [192.168.0.25] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c226cd20basm7459660a12.65.2024.09.04.04.22.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2024 04:22:50 -0700 (PDT)
Message-ID: <5fb85de5-9162-4c63-9b49-96c7d22ed999@linaro.org>
Date: Wed, 4 Sep 2024 12:22:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/10] (no cover subject)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: Vikram Sharma <quic_vikramsa@quicinc.com>, Robert Foss
 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kapatrala Syed <akapatra@quicinc.com>,
 Hariram Purushothaman <hariramp@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 cros-qcom-dts-watchers@chromium.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suresh Vankadara <quic_svankada@quicinc.com>,
 Trishansh Bhardwaj <quic_tbhardwa@quicinc.com>, stable@vger.kernel.org,
 Hariram Purushothaman <quic_hariramp@quicinc.com>
References: <20240904-camss_on_sc7280_rb3gen2_vision_v2_patches-v1-0-b18ddcd7d9df@quicinc.com>
 <4e0529d2-0277-4a41-8d4d-915e4ec0baa1@linaro.org>
Content-Language: en-US
In-Reply-To: <4e0529d2-0277-4a41-8d4d-915e4ec0baa1@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2024 12:21, Bryan O'Donoghue wrote:
> On 04/09/2024 12:10, Vikram Sharma wrote:
>> SC7280 is a Qualcomm SoC. This series adds support to
>> bring up the CSIPHY, CSID, VFE/RDI interfaces in SC7280.
>>
>> SC7280 provides
> 
> Please RESEND with a subject !
> 

And don't forget to include the V number V3 ? perhaps.

---
bod

