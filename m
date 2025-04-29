Return-Path: <devicetree+bounces-171988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B16CDAA0D97
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 15:39:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17DEB1A83F36
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 13:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E382C2C375B;
	Tue, 29 Apr 2025 13:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j0kRIWr4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019FE2C2572
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 13:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745933982; cv=none; b=qJbmG/KdU53oQE5tNCjsVkxshKcQ8G8VoRmib+mg8nR9ldBWxqCq8hgG51tV+Tjml4+AyeXXIPhNr8Rgp+RiZSGAKT/+NTbY0O4gsF4Lw6DMo3NvgjIfcG+LdRul5HDsSc0O6IykIcVZ8ZOp1M4gv+2znZT/Ntz1yuDn0K+Zkr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745933982; c=relaxed/simple;
	bh=dfCucaLpFeMk9zeYmiLXz4zx1V11RANutVCHydBtngg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MXU0XWS2HHCV3ld0TtFYxxJp8rCQsB02xveXeFU9wHYOCGmPfJruJ69gVSHkcAJK8bPCYuh9d3yZ6W0ODZ6yEN1oC2TPnSCa21wttsYZBg9qao4ebC2UjN4Z4idGxpnFpqkm19pDcYiNwgMAlZARi08ubV+MO+AmyGwRrlT4ZE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j0kRIWr4; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-54acb0a5444so539604e87.1
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 06:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745933979; x=1746538779; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rXIWTkt2DgS6n2r01/TDiLubbA6VRAMBaVMcFzWMwNs=;
        b=j0kRIWr4Bg6oHuJg2HjOc3JKi29QK0nVJVFPvNJF72M5Q3mF18gsApusQkK+/RwrNk
         irzWgmbAbJCmmkzySlRDt3sROPGRezZTpy2tyMmiiV7YsPMzhhZ1Sq6F//zrJ3UCw7QG
         T5whcsgn9IgCsQ4IR1Gm+s0CWsLtGukTvmXeJCCYzy/dAZ/IdENgTcSGk0Il3di5xLQo
         m7Gr1LgiOKtN55WVqH7thqysskdDnfWlkXMguoZwU2dJIX3S/94PvTOYKVaFA2URgvaS
         oGg7uc2DTKv3u1MZwlOPJAySj/pw3ATAQr4ZJViUNWc1JP0wSvpGE4N62nHKe5CpFJMM
         zi+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745933979; x=1746538779;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rXIWTkt2DgS6n2r01/TDiLubbA6VRAMBaVMcFzWMwNs=;
        b=ZnxTVJWaEBT6M+fAGHsY9Q18wmAMCV4SVfnUDk4pdcyDsGrW3mu6t/4BC5QR51cyzW
         IzT6mfiaxGKL80sIb18V8OCXBgjEVbTHZxwG3JDvZJwY3bbKgG9i83QL+5Ezy6MAIwEL
         h9iBw7zCiz6jBMCNgJ74vKQH+HY4uqTSGt9KJeN7JQSTk32FHX78Qb3+ST6ylBn5VNhS
         ffcxME9LtN7ggUNpX8URlbMKmomD7xpR5HgxOTueK7UVr9suL1u+b6mDxMPRP3R4813R
         JxGmK279UnVMUBqfdTsmOR03IbdWgNB/iuOcrfSCluFV1gkscG05HUxjirS1qE47tGRw
         Eirw==
X-Forwarded-Encrypted: i=1; AJvYcCXWI5AtZY52VI6aQ0XMdBaJmEMi8qt0AbzMpjCwy6sLAf0EiKoNKtFEb01JogP/UmYcjzZ6Fje0Q97S@vger.kernel.org
X-Gm-Message-State: AOJu0YxrVOvgnzvkMARyl2TbyGEYSb6ZTkJzKuJYqhMoCtfCBTg21hd/
	HBgDmbjJ5od0Tu8zj3rnsmFlrT0GGaglKl9py59kOM+o8wtMlg2PkSQ7RyD9lJ4=
X-Gm-Gg: ASbGncuz804HdyitikDoJ2z0IMG+y0DaIKKgKrlfG/NftFjscKG5AYqHLGzsYbnpGMn
	rJcathrCnnmA8+UR035P+PsuWXxYn+pSmB7X+9/2tk2i5tPErllbIf5cr/ZB8/j6r+ftMfkttEx
	XUkTODbANe6uLmxhalrONBnboNLYzulDJXszVBZ6hGW5mswc+0Cviy1Ai9yOfjC73RbR8Y4U1Kz
	zVOLdbAc5xWIorG/3pRpbdDnlwT/JJGGjz4vud6V8dfTM9UCF89Kmdqy5g//BmPcujmbn13GTro
	cJfn46nbQ31iCQosDFIShe/9qdaDxWBVM9TuD/TynrbWfYKlw43OYkZwN7jETJ0sF3oDfYdRUO8
	/qnxJuLB3ySzx8/nLAx8=
X-Google-Smtp-Source: AGHT+IEEBVDDneoPFN+7sFAMHBCHq47vbarUNCIPXdiRcDuyNm2fd5DTECIADdcYj+WkpUq1b02npA==
X-Received: by 2002:a05:6512:3406:b0:54a:f6e8:85c3 with SMTP id 2adb3069b0e04-54e9dd71f63mr359728e87.4.1745933978982;
        Tue, 29 Apr 2025 06:39:38 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb262cbsm1900092e87.14.2025.04.29.06.39.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 06:39:38 -0700 (PDT)
Message-ID: <a195ecae-6443-48f0-ad3a-d728ca66bea4@linaro.org>
Date: Tue, 29 Apr 2025 16:39:09 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] media: dt-bindings: Add qcom,qcm2290-camss
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: rfoss@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 dmitry.baryshkov@oss.qualcomm.com
References: <20250423072044.234024-1-loic.poulain@oss.qualcomm.com>
 <20250423072044.234024-6-loic.poulain@oss.qualcomm.com>
 <20250424-versatile-brown-chowchow-dfc4a9@kuoka>
 <CAFEp6-0iXCPn80Y0s6Hoq2MjgNa+OYJEr0oWSKuXtah_OF6cAQ@mail.gmail.com>
 <e82a8733-a3b9-43de-9142-7454bc57474c@kernel.org>
 <CAFEp6-3EA5dQJCsZYaqr_ySV1hV7kY+53jTo9ZaX6kx3rq7LYQ@mail.gmail.com>
 <c5cf0155-f839-4db9-b865-d39b56bb1e0a@linaro.org>
Content-Language: ru-RU
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <c5cf0155-f839-4db9-b865-d39b56bb1e0a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/29/25 16:18, Bryan O'Donoghue wrote:
> On 29/04/2025 14:08, Loic Poulain wrote:
>>> OK. This however starts new questions: why aren't there separate nodes
>>> for the CSI PHY controllers? These are separate blocks with their own
>>> address space, own power rails, own interrupts and own clocks.
>>>
>>>> (both of the above are supplied together without individual control)
>>>> - VDD_A_CAMSS_PLL_1P8
>>> This does not need voltage name then.
>> I've been trying to follow the various threads on this topic, but it
>> seems there's no consensus yet. So wouldn't it be more practical
>> to use the regular/simple bindings, similar to those used for the SM8250?
>> - vdda-phy-supply
>> - vdda-pll-supply
>>
>> I understand that more complex bindings, including voltage, CSIPHY
>> index, etc., are not necessary here, + this will likely be replaced
> 
> The thing is we know that a single rail for all phys is not correct.
> 
> The choices are
> 
> 1. Continue on as before
> 2. Do something interim re: my proposal on
>      csiphy#-XpY-supply @ 0.9, 1.2 and/or 1.8 per PHY
> 3. Move to defined PHY nodes like just about every other PHY in qcom let
>      alone linux -> dsi, usb, ethernet
> 
> Its pretty clear from the DT people which way we should go.
> 
> So, I've already started working on making individual PHY nodes based on
> our recent conversations.
> 
> I think tbh that we should push merging new SoCs and just solve this
> problem outright.
> 
> We can aim to merge the remainder of x1e, as well as all of qcm2290 and
> sm8650 for 6.17 then with the new PHY structure.
> 

If so, add SM8650 to the pile.

--
Best wishes,
Vladimir

