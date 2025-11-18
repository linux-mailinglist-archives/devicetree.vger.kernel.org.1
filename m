Return-Path: <devicetree+bounces-239709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B85C688F9
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:34:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 7AE2D2A6D7
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:33:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A45BC31AF18;
	Tue, 18 Nov 2025 09:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y+2GtTlk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8959F317707
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763458422; cv=none; b=pn16BOCAf3/3QmXyAjb1ic1jcn4t+jqLEjqeR+BlCkBw2XWWLZwvNMtSvHCLKQAi3TAJpCtvGJ/H0VNmmDZm4jTrit4fCVOhhwwVcNEJiwNzKw+PZ21Wz2bL42oA3axqIe5ChYFYwNFtyU11AK/TrFSd2Be1iCXWXyH7BB21rx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763458422; c=relaxed/simple;
	bh=+50Ey2th+tvNWLHYjF3fekOQvXPxWkgWTW4J+kjkuuI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DHGUJl2mFWIcpdbsLTCOzgwdQHzm2EYqxDpl1JxCtFgqy3gngJ/ofoYphSHLEcQkgQFGcqbg76F6Sfn/dUkdxjPn6hIW+Mst3nJIGxqtKwDwimdoxLSi4+gojNop68GfyeX1xAOKVPFugNhakvMRbAFW3Ah50Z92B61MxTkXd/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y+2GtTlk; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-475ca9237c2so28970505e9.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 01:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763458419; x=1764063219; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lTOCRDtXGRsyXp0u8jNTz0TfJTFFmawtdeFt+8GZM68=;
        b=Y+2GtTlkNQxatit+63DAyzp440oXvf+KzxiB5+dz9/PGKW5mAQa6emkJG4aBVaL4na
         NtHlFYbXEl3qsbfF59W7vq8Ls++edU5LajSij7+f7MB/c+X2bdJJ+8Kj4rOVihpYaxWx
         BsM9vOWPBcsaJ+Xo44z2msIr/jk5DjkAEWsbwte4CxeBKGvdxme2MjCK8qPo7N3zZXFY
         hznAhrA98Q9NdvZh/0pV1tjrlDgukY4boCOdn6kkw5WspKYpSGv9F/Yc5Xt4i4H8L3fl
         N9VMro/eyoXpDHHKJZHtZBHOvhVG9KDzknz6FggTTob3S3RKtcQ4s/oi6nk8ztMjRE/H
         7d2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763458419; x=1764063219;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lTOCRDtXGRsyXp0u8jNTz0TfJTFFmawtdeFt+8GZM68=;
        b=TE9zyZiB9ey3bEMg0+fVfvibl/unWKCOiNbpf6K1qztoMfe5Sqtvh2947vH2V75u2P
         /+g+3ZD3BwcBegA49nf3ZvYv4GsPuScNtlz3ydE7w37ap+jI19rvpbpb1UUZp1X0IQGJ
         LG/htuvezGEKYJBN+8u8L7ZLiYtj909+OuVdVvUp2Kn7+BL6KabL/XoUoVx/y9aCRH0t
         crlXroI79XW3E9GEq4nots7K9sYLKDj/Z021Mc0Dqaj7oTH1A36ZrtLlEL0UYVrmpTnc
         1Vzj1S32mqJTIxu/6bq2pwrl4k0aDfyqZBedmS9/JmrHnd3xPR+SYxNPGwTubLmQrwbY
         u84w==
X-Forwarded-Encrypted: i=1; AJvYcCVPUMhsMPHu1+AAbzRl113rgZ42xEUO2FlhASpJYPIG/z85LMC4BsX8cwxC763uCB7Ld6hlHRDQu9VK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu7nIBJX85xygajUE52OBPbICMHBmFT0hsezhqU9rMBrdTD2mF
	idpRIBW7FvoxV9+VWeQq3ASEyaRPbHVKo/V2miZlERjmFuUbVrBrsmDSFQMgUfR+JeM=
X-Gm-Gg: ASbGncs9nEId5VPPHTeMKr2pNsqAksTyLNlEBlEndShEMQf5WgB1o1SIJ8tSuPtu483
	q25VcuPHrqeuGWVwskw8/+mD9Q+4L6Pjo8Iv0NMVDkyH8XLQwpKWoBDehCywMyNsjcF6FrNf0A8
	aw+/nxvoguEoTKOR1g0Gf33UYJn8ewsIEp344hH1YveQEE7KEAvE2+JgI7S8Rwev+HZNrMyzlFs
	NBSYQrHQ5ZBp+bKzD3pEp/B0GTTpy9IaGnfx7xxpHeLwdaemkn7zoQBGsUPduWG9SXsA3LA81W6
	NmBaltPHE4CnOJ3lduJ/FC3xt8XR3F97NSsoHRLo44OFYshzh026d7b3ikBafvL0K3ihOKIaItT
	OHz9Qs2XA1WXhV1mRCNoaB5nW0SjpACDVjlzVrEWkhZNBqywE6RguTiSTdpblWN7Q5lSNjkeJV2
	0RWG/q5cYi6Sqsu4VdDTrNEehWAVq6gXL24yzqkHkaV/gXlwBfutj388V8K1OYdI7XqFrDIC4F+
	w==
X-Google-Smtp-Source: AGHT+IGjvYXGcM8w+Yy+Mw51ltxXu22tj1ZNHWr9tLZbYKT9LQg2FaVpLbb1z4I+LQJU8q7Yzr3yiA==
X-Received: by 2002:a05:600c:1caa:b0:477:76cb:4812 with SMTP id 5b1f17b1804b1-4778fe0694amr165159625e9.0.1763458418772;
        Tue, 18 Nov 2025 01:33:38 -0800 (PST)
Received: from [192.168.0.27] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9df99d3sm11797575e9.12.2025.11.18.01.33.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 01:33:38 -0800 (PST)
Message-ID: <28f33d3a-6866-4bdb-a1e5-d193dcb7d4d1@linaro.org>
Date: Tue, 18 Nov 2025 09:33:35 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] Add CAMSS support for SM6350
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Luca Weiss <luca.weiss@fairphone.com>, Bryan O'Donoghue <bod@kernel.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <3ph8XeidoxkUIsK7qiOH29pde94sdwa3ReWKVVrPabgS5enIAmwVAC5plyFnBMJGKQBnxFB6df6j69OMFIeavw==@protonmail.internalid>
 <20251114-sm6350-camss-v2-0-d1ff67da33b6@fairphone.com>
 <df4a6a77-9004-4dbe-9b11-7af2bea7e068@kernel.org>
 <DE8JJCQA0C4Q.35NEED7XG0K0V@fairphone.com>
 <17e7ebc9-3b88-4334-b87d-1bce6d5bb120@linaro.org>
 <893b97ad-7d2b-4408-bab5-2cd63fdaa33b@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <893b97ad-7d2b-4408-bab5-2cd63fdaa33b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 17/11/2025 12:53, Konrad Dybcio wrote:
> On 11/16/25 3:30 PM, Bryan O'Donoghue wrote:
>> On 14/11/2025 15:59, Luca Weiss wrote:
>>> On Fri Nov 14, 2025 at 4:51 PM CET, Bryan O'Donoghue wrote:
>>>> On 14/11/2025 11:15, Luca Weiss wrote:
>>>>> Add bindings, driver and dts to support the Camera Subsystem on the
>>>>> SM6350 SoC.
>>>>>
>>>>> These patches were tested on a Fairphone 4 smartphone with WIP sensor
>>>>> drivers (Sony IMX576 and IMX582), the camera pipeline works properly as
>>>>> far as I can tell.
>>>>>
>>>>> Though when stopping the camera stream, the following clock warning
>>>>> appears in dmesg. But it does not interfere with any functionality,
>>>>> starting and stopping the stream works and debugcc is showing 426.4 MHz
>>>>> while the clock is on, and 'off' while it's off.
>>>>>
>>>>> Any suggestion how to fix this, is appreciated.
>>>>>
>>>>> [ 5738.590980] ------------[ cut here ]------------
>>>>> [ 5738.591009] gcc_camera_axi_clk status stuck at 'on'
>>>>> [ 5738.591049] WARNING: CPU: 0 PID: 6918 at drivers/clk/qcom/clk-branch.c:87 clk_branch_toggle+0x170/0x190
>>>>
>>>> Do you have a full and complete kernel tree we could look at here ?
>>>
>>> Sure, this branch has everything in:
>>>
>>> https://github.com/sm6350-mainline/linux/tree/sm6350-6.17.y/
>>>
>>> For further refence, at least two other people have tested this branch
>>> in postmarketOS, nothing particularly exciting to report from there,
>>> apart from that the sdm-skin-thermal thermal zone (thermistor right next
>>> to SoC) is currently configured with 55 degC as critical trip, which is
>>> quickly achieved when starting a video recording, but that's not really
>>> an issue with camss, but will need some tweaking regardless.
>>>
>>> https://gitlab.postmarketos.org/postmarketOS/pmaports/-/merge_requests/7281
>>
>> diff --git a/drivers/clk/qcom/gcc-sm6350.c b/drivers/clk/qcom/gcc-sm6350.c
>> index a4d6dff9d0f7f..229629ef82809 100644
>> --- a/drivers/clk/qcom/gcc-sm6350.c
>> +++ b/drivers/clk/qcom/gcc-sm6350.c
>> @@ -908,9 +908,7 @@ static struct clk_branch gcc_camera_ahb_clk = {
>>
>>   static struct clk_branch gcc_camera_axi_clk = {
>>          .halt_reg = 0x17018,
>> -       .halt_check = BRANCH_HALT,
>> -       .hwcg_reg = 0x17018,
>> -       .hwcg_bit = 1,
> 
> No reason to drop the hwcg description
> 
>> +       .halt_check = BRANCH_VOTED,
> 
> It'd be useful to explain why we should ignore the hw feedback in this case
> 
>>          .clkr = {
>>                  .enable_reg = 0x17018,
>>                  .enable_mask = BIT(0),
> 
> Konrad

vfe170 is what we have on sdm845

So I'm just asking Luca to try the sdm845 method of waggling this clock 
since what we have doesn't work.

---
bod

