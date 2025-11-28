Return-Path: <devicetree+bounces-242999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEBFC92588
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 15:41:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8621B4E0699
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 14:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AB8C243968;
	Fri, 28 Nov 2025 14:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b="NqFmVk1X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A209770FE
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 14:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764340862; cv=none; b=NJcyCe06MB5sS1fxqI9zKLjo5VyYAJcsh4SZkuu/sFpQcKZImYQ5nhSEhwO/g0U6r4vfwc48tj791Q87poyMEfsXkedF0ND6MCCO856UCkzh+JvtsHZJ38qxzFeljhvgxS0APdWEaHnVAPmxZLzJvlkHREMSvkrsD89wUcyg7xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764340862; c=relaxed/simple;
	bh=nsLOrWgxYNd+9t0HjvGOTBflK1u5oNIjw+t85+ss0Hg=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=C9T9An5n/p9xWw5Y339Tle31zyyyJ03IIGTZQ/fX4W5Bmv5dZ78iun9vwJdkz9gQIsQ3WakJStFeRvxaZVT8kMpFEOe/bhC70zVhh5ydJlvFotDNfjPboLP3pC1tam8oMoqWdPRQ2dpU42ljkzn8BZOGa8iJXQdxEDexZrnXwtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca; spf=pass smtp.mailfrom=marek.ca; dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b=NqFmVk1X; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marek.ca
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-8b22624bcdaso218723785a.3
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 06:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek.ca; s=google; t=1764340859; x=1764945659; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Zw8jI8l/SgkINwbZ2/JjqSTcwdf7o6B2BAOFFsVQGc=;
        b=NqFmVk1Xz/6/hOtyTRqGQCq6gpZG85TIvv1Um7iY0Oq7te8fHJ0g+8akZtr890OT9C
         9kiKV2ANw5GtVYP/1GHpmP4N8Bg+EvJF1NEXg66BryKhumhNF8LzCzPYLjWEAV33LYbr
         cK4CEIDlSJ4cze8K6F86518D6GR8Syd2CjLd+b6OoEQA8zzGtTFo8qjVsH7UtDo75pbn
         OdDA3qDJwLHkhZTe6esHrLfH2XUUaFhoO+e91m3LKXQqwKLrZsk4/CDK3n+wif6ZVTdw
         i/J/+zmktpZ0yDJl+wNUnoJfZsy1gWwzhKXEViONfcRPiIwk6f0Lv/hzpMSt1tFG96R+
         s3aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764340859; x=1764945659;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0Zw8jI8l/SgkINwbZ2/JjqSTcwdf7o6B2BAOFFsVQGc=;
        b=WzX0MwRYDZh1366iqKBa85AjBd5TYqDdnUU2n/DVUd1dB8kPL21ewGQlQ/NOPPnBr8
         rrGSgIbzYh3dY8+08L2EYfgNm318gUdJVqKG1giJ0ifOp0qE9//u2Fun1OukVzFmJAIE
         Cx8P1IBwOxnqLYxSQRmHI/EVVnw1Wen7i/BbQ0bcdRrRTCqqbWGzpXDfAX/4+leahUzq
         ys9yiBd8IEfSKpciQEh+hStcInRwAgDVxUWRIDAf/Kfl6qVu8RF5ByksCRdTVpnCk8tk
         Z56W4DK8QgtfTn4cOxHRN8V36TA1LB3q8Fboe49N+CfkTIzuJSzoSJwcWvjd6+InEi5/
         d7tA==
X-Forwarded-Encrypted: i=1; AJvYcCXKVYMTp+WYSDvH44vQ0PGYhMjkFJBkzGZzF7bQfS4N2Ah6u5/jGtOjfy5eIk6DX7jZoDxUv0cNShoT@vger.kernel.org
X-Gm-Message-State: AOJu0YylxZhu0EqYzMwC/XB9bYjel2qiktxRhAK3NIi0jhc9FAOAox20
	M7Ukbe32V6MI9yS7Ggx3mcGmv+gV9N7F8vPHH2z4qu/wSJRzcbDcEDG+PiEh51eDL5w=
X-Gm-Gg: ASbGncsB+UuAw0qOtQgGJAjvjP7y3MW/k25uwMkgBINC8i2ane+4qd1L1YY/3j4EVxV
	GDEAa/uRyXtpAO41F0p8oXZJH26wdIv6TVHOePiP++7nmaJpSlrAK5D0EAtgYTWG74Xwbu84aRN
	du6RvEW9E8wIqAzTZyeEGYXDYiHJtJFuByPpDafFrhsyCWnCsta3JBFdJmCTa9ZQD4Q9xWzE853
	TG5i1t/qL671vWxIAwkKdt1bMHCO+H2kAfKY1aqRqBy9FK8kudcYCqCPA9efQCEChehoiQW/c+g
	GkN6Lk4BFSYHtODjCAfmho4SAyYkF75rJIVZrrluneu8l8hMNLnlWGgDRUayrjV4CRx7BOUXC7a
	+JPTIJLsWoEKOQazMSLXOG1Sq/aSkWSp2wVtxCsGyGsYbv8+x752RY3vc13RP0UjH97UeCQGMUx
	IOZ9dbCmrnGTzv7y2SbHgEIg8QDjOh3xwDZmNFgats+OX162BiFyudUMHNuw==
X-Google-Smtp-Source: AGHT+IF+bRN602uWgXw1VPyzp3DSwonh1uWbL5QRZOIhNprDUDJvHsg+IMEMZQjGqsAuLEKv6lRugA==
X-Received: by 2002:a05:620a:29c9:b0:8b1:c886:1c19 with SMTP id af79cd13be357-8b33d1fd6admr3187080985a.23.1764340858985;
        Fri, 28 Nov 2025 06:40:58 -0800 (PST)
Received: from [192.168.0.189] (modemcable125.110-19-135.mc.videotron.ca. [135.19.110.125])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b52a1b6cdcsm316535885a.32.2025.11.28.06.40.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 06:40:58 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: qcom: x1e: bus is 40-bits (fix 64GB models)
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
 Abel Vesa <abel.vesa@linaro.org>, Rajendra Nayak <quic_rjendra@quicinc.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20251127212943.24480-1-jonathan@marek.ca>
 <aSl48gV9laFb-MR1@linaro.org>
From: Jonathan Marek <jonathan@marek.ca>
Message-ID: <d969b3e6-a6e1-6dd3-45b9-539ba7a9f42d@marek.ca>
Date: Fri, 28 Nov 2025 09:39:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <aSl48gV9laFb-MR1@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/28/25 5:26 AM, Stephan Gerhold wrote:
> On Thu, Nov 27, 2025 at 04:29:42PM -0500, Jonathan Marek wrote:
>> Unlike the phone SoCs this was copied from, x1e has a 40-bit physical bus.
>> The upper address space is used to support more than 32GB of memory.
>>
>> This fixes issues when DMA buffers are allocated outside the 36-bit range.
>>
>> Fixes: af16b00578a7 ("arm64: dts: qcom: Add base X1E80100 dtsi and the QCP dts")
>> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
>> ---
>>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> index cff34d1c74b60..cd34ce5dfd63a 100644
>> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> @@ -792,8 +792,8 @@ soc: soc@0 {
>>   
>>   		#address-cells = <2>;
>>   		#size-cells = <2>;
>> -		dma-ranges = <0 0 0 0 0x10 0>;
>> -		ranges = <0 0 0 0 0x10 0>;
>> +		dma-ranges = <0 0 0 0 0x100 0>;
>> +		ranges = <0 0 0 0 0x100 0>;
>>   
> 
> Could you clarify which "issues" (crashes?) you are referring to?
> 
> We need to distinguish two distinct use cases here, which are both
> (somewhat) supported upstream: Running in EL1 with the Gunyah hypervisor
> with the regular DTB and in EL2 with the x1-el2.dtbo applied.
> 
> # EL2 with x1-el2.dtbo
> 
> For EL2, I think the 40-bit dma-ranges should indeed work correctly, so
> we could add your proposed change inside x1-el2.dtso. I'm not sure which
> issues we are fixing with that though (besides correctness of the
> hardware description). In EL2, all DMA devices should be behind an
> IOMMU. In this case, the dma-ranges limit the size of the I/O virtual
> addresses (DMA addresses) that are given to the devices. The IOMMU maps
> the DMA buffers to arbitrary physical memory addresses (including
> outside of the 36-bit range, dma-ranges limits only the DMA address).
> 
> I would expect that applying your change effectively just enlarges the
> I/O virtual address space, which will then be 40-bit instead of just
> 36-bit. For most devices, even 32-bit of virtual address space should be
> enough. A larger address space will only be applied for drivers that
> explicitly request a larger DMA mask (e.g. the nvme driver).
> 
> We can make this change for correctness, but given that it is only about
> the IOVA space, there shouldn't be much functional difference.
> 
> # EL1 with Gunyah hypervisor
> 
> For EL1, the hypervisor firmware used on most retail laptops limits the
> usable DMA memory in the SMMUs to the physical 36-bit range. You are
> right that laptops with 64 GiB memory are essentially unusable in EL1
> without disabling the physical memory outside the 36-bit range, but
> applying this patch would make it even worse.
> 
> There are two separate cases:
> 
>   - For devices behind the SMMUv2, the situation should be the same as
>     above. Increased IOVA space, but no effect on physical address range.
>     This is what is currently causing crashes with 64 GiB RAM in EL1.
> 
>   - Devices behind the SMMUv3 (PCIe) do not have an IOMMU assigned when
>     running in EL1. In this case, the 36-bit dma-ranges prevents PCIe
>     devices from using memory outside the 36-bit range. They will fall
>     back to bounce buffers in that case. Applying your patch will disable
>     that, making it even more likely to crash than before.
> 
> Given that x1e80100.dtsi / hamoa.dtsi primarily models the EL1 setup
> with Gunyah hypervisor, I don't think it makes sense to apply this patch
> as-is. It will just make it even more likely to crash than before.
> I suggest adding these overrides in x1-el2.dtso, with the expected
> limited effect I described above.
> 
> Thanks,
> Stephan
> 

I am using EL2.

Without this patch, DMA buffers allocated in the upper 36-bit physical 
range will try to use bounce buffers. The dma range from the dts is 
compared against the physical address, not the virtual address.

The crash I see is display driver crashes/freezes once a buffer is 
allocated in the upper 36-bit range and it tries to use bounce buffers. 
This can happens very quickly under load.

The same crash would happen for EL1 as well. I wasn't aware of the EL1 
broken firmware when I sent this patch, but instead of display freezing 
I guess the behavior would a hard reset now, which is a bit worse but 
still unusable unles display/gpu driver is disabled.

This patch is correct and should be applied regardless of 
broken-firmware EL1 cases (where 64GB isn't usable anyway), but I guess 
the Fixes tag can/should be dropped.



