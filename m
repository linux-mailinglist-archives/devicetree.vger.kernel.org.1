Return-Path: <devicetree+bounces-94118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C673295411E
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 07:25:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2413A1F24E07
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 05:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 175607B3F3;
	Fri, 16 Aug 2024 05:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m2K4hj1D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3216478C7F
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 05:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723785925; cv=none; b=mi1kNORPOxc0Dz6yAVwhvN83nOaILOrWtpLzggFbdrJEnbptTnmlKeZ7/GAOfMDQKuptAH35vTHlHsFl/YHnN4njf6T0fDzYJXG3t3WDWqvR4+xawg752yzsPXMNe1t369V1wvdEfugc1xLgFS1jXrrGs/v62WrnXkGNOJpDIHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723785925; c=relaxed/simple;
	bh=MtzoWI4A45ZPFeVAIGdm5i+Q6MLGYbYv/xDdqD4WrHo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oNB8H/P0lM3DTcySsr4QxqGcV+c//qc+eMj3ibYBIV4FOhoXxZi8E0bDNKEMen7zmqDmI5KXkVZkcsPdzFzzMvSOXNHrRqi7t5GUO3vJSLbLqmBYjDHLClz7VpG7SjC5kbnekpJPGrRmN6HAmVF67yi7cFF6qc4eTlFYRJHDZ3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m2K4hj1D; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-428e1915e18so10806485e9.1
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 22:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723785921; x=1724390721; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=pLcosc9pLsnAumrfX5VAd70LtMNIkQgBOudP/eon/r4=;
        b=m2K4hj1DKjd6ZpSbl/YSMMoJ08YVwOCrsS0TZlowHtoxjhUA0H0ndI6qJ99UVvNxYF
         4SfjGAwctQu8VBcm+tiTiZGYi36e4wdjFJx02L4/U4ZUnZY50Z3ScrwVVxqp8wopD8zc
         /lcrH5rZarlAH1atOVOGjnhg0gSQcMdn8rXEsu0LvJBn//d5Uyb7/eioUblf/YCDYtWo
         s6A7JZe8h/JpCFB53Hb9dNG7XJ9Aa2ksKGRzr6TPCOa6CFzy2v7fSoINb7Tn9tBbXyTp
         PS1UkzdmmP4XYwi1UFxxvddtVnu65X93IGdnOpqRtz592gtk6emsrJcZIPYSBEhIkW+c
         TDEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723785921; x=1724390721;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pLcosc9pLsnAumrfX5VAd70LtMNIkQgBOudP/eon/r4=;
        b=dwqE31f/fBZKsdN5J6I4NWgowrG87lJ+G41rqZAi0AU++QrLY3em2kCWVMzDZsw946
         tIXntvAZEYoD5fhU+zS6VQ9O9H2W7hMuMfDk9IERiixy6m/+xRdrjott7WlS/VliyRO7
         XZ0gHR7Z+Ze2Qft7+jxirTnFtzI+hbRvnCw/jCSQx0Vec82NeaU6Zuxq+jJPmuWKXZ+W
         vn9yZC2YzFySLtqTJ4lBBOyAvro9LazHJpBCHphEOCLlR7htA3qnyjifgT76hkWPXDx4
         RCqEEA580UJE8B+w7NpsPcHGG8HCT6eRpFTvKfLRDwlu09Ifk65/oax9mm9mRem13p3z
         +ErQ==
X-Forwarded-Encrypted: i=1; AJvYcCUs+riPeu30/h/FscAe70DYhG6EqEecmVN5oaoRAwFs2kTF9RMF8kaGyqVUHAzXgUhr1W/+gZDPPNjvRdGTvf7RktwNzJmn8MU2vQ==
X-Gm-Message-State: AOJu0YzXc77aGSdE9qc0xbArkOkqS3tQhN264s71g2eFSRi6WM8ZYQMM
	wS4nq6rmPY+SVPjEMUgGvlOTZerCu1/dWUbjBcMEx+u9HrkOPCMVO/uDpp0KzwmhKYiS35279Nd
	UrMA=
X-Google-Smtp-Source: AGHT+IFKlpOgn6mk1D7ETQZGlDVC2UsP6ITcCocaeva5AmH6PFvM9I/eSZ/rxI8H0X/Z63xF2QJesA==
X-Received: by 2002:a05:600c:4e88:b0:425:649b:60e8 with SMTP id 5b1f17b1804b1-429ed7c1218mr10708505e9.18.1723785921117;
        Thu, 15 Aug 2024 22:25:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ed7947dfsm12135365e9.45.2024.08.15.22.25.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2024 22:25:20 -0700 (PDT)
Message-ID: <339fd129-2860-4574-9c75-2c91a2fbb983@linaro.org>
Date: Fri, 16 Aug 2024 07:25:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH 2/2] arm64: dts: sprd: sc2731: rename fuel gauge
 node to be generic
To: Stanislav Jakubek <stano.jakubek@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1720957783.git.stano.jakubek@gmail.com>
 <246c0c7763a432d4bebcb0e99b90dcf4cded333d.1720957783.git.stano.jakubek@gmail.com>
 <172364518667.95114.7859805701643557423.b4-ty@linaro.org>
 <Zr25xAv65+fd/qHW@standask-GA-A55M-S2HP>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <Zr25xAv65+fd/qHW@standask-GA-A55M-S2HP>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/08/2024 10:18, Stanislav Jakubek wrote:
> On Wed, Aug 14, 2024 at 04:20:29PM +0200, Krzysztof Kozlowski wrote:
>>
>> On Sun, 14 Jul 2024 13:57:00 +0200, Stanislav Jakubek wrote:
>>> According to DT spec, node names should be generic. Rename the
>>> sprd,sc2731-fgu node to a more generic "fuel-gauge".
>>>
>>>
>>
>> This also waits for something... so I grabbed it.
>>
>> Applied, thanks!
>>
>> [2/2] arm64: dts: sprd: sc2731: rename fuel gauge node to be generic
>>       https://git.kernel.org/krzk/linux-dt/c/e06e908dba9fed62c9493ea5cea2e4cbd306d23c
>>
>> Best regards,
>> -- 
>> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Hi Krzysztof,
> 
> you already applied this change as part of [1].
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit?id=0dcc203956537696e6f936eef886fde70e049f54

Indeed, thanks. I managed to double-apply because somehow how got
impression that was arm32, not arm64.

Best regards,
Krzysztof


