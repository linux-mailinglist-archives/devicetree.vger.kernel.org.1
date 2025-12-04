Return-Path: <devicetree+bounces-244278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADD2CA3043
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 10:35:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 899B6300A268
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 09:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23FA6331A59;
	Thu,  4 Dec 2025 09:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n+24TaRm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZA7VrKhf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E8228DB54
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 09:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764840906; cv=none; b=J5jgPb8/mvU1rND/FCYaqWtknAYqLfvlnD0o7rGUmA1/7FF8SbLyufg/DwhY1Kv4pldLOhegV1d/gFyv3QGMMbfeLVkNrdzE3fnWn/JaRMSDOzgrgbYO/YMsnl6TTTAEYmMdz7uttCTjG5j/RISdQKIRe4qKGnTVpaj4MQ26DcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764840906; c=relaxed/simple;
	bh=/xThXGvVTKpTEcd2n/nLsU2R+J5IVEQ2yxWAitgFA+U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bl5V44ImRuXi9j9apwnnVhO00nwf8KBFRpSS1iSw8N1VyJS/M5U/lGmVaLS0V1d4Pxmdz+Az4z3UXvfSsKkJPKddZxL9DieiWtjzzz6Cjb8zIYL2Z8fptitBwkAbCJdpfa76JEvdOC4EaUUCOQMdIDlYPKhjizB6JHoROJC5XCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n+24TaRm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZA7VrKhf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468eU3551475
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 09:35:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8frjVnxWUnblyyxLFPIXGUvDDmYFQSMSgpjtFN9Ly8M=; b=n+24TaRmKX91GwTx
	tzgu+YT/FCb6pGv4/4Bnj6ysfFZXuyLJDsum2/sgeHJFjIKdWlXHnKgaMQsVZwZt
	gK5PO4imN5cPGCBPNCXVV6R0a7VLUDwkeTEuQZWWqfMh+rCv7mJAxHMamHPGMw+j
	mSJr5p0KiXW2eBhf0Fp3hPZV20J3v+IoZ8wka1QynMKAaahXFdHO0hGWYAjgNiea
	rarZhkEld6EAeOgC7BhOm47cxjAiSgZk74qRMyp4ZlhYBXICoUWvBd7BSngAJCgS
	CaUmghqP8+j0dwNQdlwhOLiNcd6PsLfR017TBIyGf/h/jzGGjF9WIcK032Wuv4qy
	k7Jyqg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atmmdbha8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 09:35:03 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee409f1880so1159501cf.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 01:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764840903; x=1765445703; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8frjVnxWUnblyyxLFPIXGUvDDmYFQSMSgpjtFN9Ly8M=;
        b=ZA7VrKhfRj1mYvE/j13bmyonrx1Zxs4PY971mW2CQTIdkJ6uE2Hos6VoFxnVm3DyCW
         bVKnkcVXmVXQSWNGgHGBatMs0E45kK8gGUsyIhrXcrxS3Zlyr5/ekxg5IypFJKNCel87
         miUF/RTwrKIFBkc3NHwahQww+/vf4LrehUWSy5AsGRSfvwmNh3Yf28pEthdpYmpBQxTG
         BYhdKjn/9a4ur6FOsSDyKwRhFXlva29Hs55aEV16nH4MzCJ3U6jFwD1bwLerjPoviLIS
         WmDHVeYXvuEt6+I96zpoK5z55BYap2QrLqE6mI2InIDDUtDN2jBZvDVl5suU68KuxXfW
         09zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764840903; x=1765445703;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8frjVnxWUnblyyxLFPIXGUvDDmYFQSMSgpjtFN9Ly8M=;
        b=JSu7b84zvm21cmX9v7VdPwVcT2JkKBDLKX60M5hVovCveNdOty0KlVQCCS1MRY5HeD
         VtAxlbcnUhgzM2N+ny/s/iPqs3mA4rUwJcmHa7ad2mUL2+FrssZRr9IbA4rlH2RueHsi
         +lF/Rf7rNiGBL8uNEX4GhOc700zcb5QNsrljongTt60G2qKgnV61rUhwLBZWCLGKXzAO
         7q6RgJhylktbYN5VQgzHpGlQn7r8isPjKdCVLgnjlE1NzM4Jc33u6QXBPaE6Yo8h5VJu
         zl7CDFASiejdMsuNCUzXUA/gb0bEp82aBVx4zTzTvQpBqlgiS+MN1KIBa3nu7Zf9t7WT
         CoVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAJqM2wISeGCQSpYjg2gvWSzxe5orzOA0bjZigpi+7cODiXH5EJ4H4CFYusX4HoPJJV5k8Kny0lKoY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3R+2P3fZf/rP08gh6kixFnMdVxJELCKpqrSU85V12TA+sofgt
	Wy2S/mcWklaoNMnaQnV4y895E7DMdaRMI0EVCNPVNynTUdMRkzLuCJgXKIuLKBkZ7k7RLcB7U3o
	2RbrT4UocZ3u5q4h+NBg0NkbiSyaTUxOJgQ9l5GS1dlp8exfk3vrUg+Dwi0t2V0Ng
X-Gm-Gg: ASbGncsSDGvCfo1kdM4IHR6k2aMiM7Qi2jNMBwTZQoROF+1NvxgYdl+kib+UfomV1P5
	xYHGDBdvfe0xoh8hXcGniNTQjuppcc6HbdyAiBkrYtGAa9seoRbXp8chGjiahZ8gLpPN4JTymfm
	XDYuAghl8jeE5S606IOZnugN88Q1BklKzVC1ZGpB/8/wm+ixWzfnQ9jDKU8RQ0sVry9ipGgHM3R
	lOTDmfm2D+pGioC9CqUdqN++zAfOM14Wju+w9tfccID/Di2H673rPhJG+7JmuEqcxW01NfTKFQE
	sZ3Y7xRdAQUE4FvNgKfrxnLVZSStUmXGdNuR7qhCP6h8ZWiJB7g86GuduFlqKxVf7G3Sai3xch/
	xPM/QkHur93MC2UFzjIqvYL7G+Gm/kxOWrlnrOFXb/inwDETV2R4wh5D+waLArsmgXg==
X-Received: by 2002:a05:622a:1819:b0:4ed:94e7:97bc with SMTP id d75a77b69052e-4f01b0eb165mr45162201cf.3.1764840902640;
        Thu, 04 Dec 2025 01:35:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHX+v1eNNwOOMBrWUNa6eWsNBTYHiNNTwNLR0pcIGD5JXevK1bZUv6tKavTcr9qRZQ7sGDnFA==
X-Received: by 2002:a05:622a:1819:b0:4ed:94e7:97bc with SMTP id d75a77b69052e-4f01b0eb165mr45162071cf.3.1764840902230;
        Thu, 04 Dec 2025 01:35:02 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b412dec1sm758405a12.30.2025.12.04.01.34.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 01:35:01 -0800 (PST)
Message-ID: <69f7f357-d328-4559-be8a-81a9df790f0a@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 10:34:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/11] clk: qcom: dispcc: Add support for display clock
 controller Kaanapali
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
References: <20251125-kaanapali-mmcc-v2-v2-0-fb44e78f300b@oss.qualcomm.com>
 <20251125-kaanapali-mmcc-v2-v2-8-fb44e78f300b@oss.qualcomm.com>
 <w3ezxipjucswfswfg2z7b7uyu55bssqatdnbxa6jflii4j7nym@lxsnidrewepu>
 <8d0ec7fc-6eb0-4b71-8e0f-3deaf1f489d6@oss.qualcomm.com>
 <75e53a37-0fd2-41d6-92bc-fb4ad5856829@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <75e53a37-0fd2-41d6-92bc-fb4ad5856829@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: pKrcHYMrwT7bFYZrizqpepVRWgnrWKtZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA3NyBTYWx0ZWRfXxFxCQOwtB6E4
 70ombxGpxTb90duYRbGj2oYy9aEWHbWpZGygpaX17DMrY9FwFGKmDIB/8cmajmJluGC8H134Ksc
 nzdLmO16uKapbLNf/u0WcPDwAP34EowKTv+UNE0smtMa6g7bd8tAN0QU3kOU3ywKHTQMnrf/dfm
 KCN2fsiXxkjDl0jhV76ndFAIplTSrltj3KcNeooYH0yhidQCV9C5IQY8b5mHkPwHEpah0nI1bXL
 xCcOv9LPCSAp3LT69RwNW84ArQ6fPKX+wMnvR1RD99YLPvT70cB2CXyRYy8rSWUd5IWoUVBneJl
 /CMkCYNVzDP08vujZ5FzYozxLQCCiUHIYYr9apD+QqPVq3tNXJF+wrWXuuKCcsKYNeW4ohI1N5X
 ZOIQPBAfRAdEcFjE2MB/fuXvfuPwVg==
X-Proofpoint-ORIG-GUID: pKrcHYMrwT7bFYZrizqpepVRWgnrWKtZ
X-Authority-Analysis: v=2.4 cv=Ctays34D c=1 sm=1 tr=0 ts=693155c7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gmcpGffKwdJZmXMFCqgA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040077

On 12/4/25 8:14 AM, Taniya Das wrote:
> 
> 
> On 12/1/2025 6:50 PM, Konrad Dybcio wrote:
>> On 11/26/25 1:09 AM, Dmitry Baryshkov wrote:
>>> On Tue, Nov 25, 2025 at 11:15:17PM +0530, Taniya Das wrote:
>>>> Support the clock controller driver for Kaanapali to enable display SW to
>>>> be able to control the clocks.
>>>>
>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>> ---
>>
>> [...]
>>
>>>> +/* 257.142858 MHz Configuration */
>>>
>>> This is a bit strange frequency for the boot config.
> 
> The lowest PLL configuration is used as boot config based on the
> MDP_CLK_SRC clock requirement. The PLLs on Kaanapali can support these
> lower frequencies as well.
> 
> 
>> The frequency map lists this odd cookie as the lowest predefined config,
>> perhaps it was pulled from there.
>>
> 
> Correct Konrad.
> 
>> More interestingly, the only consumer of this PLL (MDP_CLK_SRC) makes no
>> effort to use the m/n/d registers, instead relying on the PLL to re-clock
>> for its ratesetting with a fixed divider of 3 (and div1 @ XO rate).
>>
> 
> The m/n is not preferred in the cases where the PLL needs to slew to
> derive a new VCO frequency. That is the reason to keep the divider
> constant as much as possible to derive a particular frequency.

OK this is roughly what I expected, thanks for the explanation.

> 
>> 257.142858 * 3 = 771.428574 over-drives MDP_CLK_SRC, FWIW.
>>
> 
> The lowest frequency requirement is 85.7MHz and the frequency is derived
> using
> 257.142858 (PLL VCO) / 3 (RCG Div) = 85.714286 MHz
> 
> there is no over-drive at RCG of MDP.

Sorry, you're obviously right, I don't know how I got it backwards..

>> Taniya, we've seen something like this in camera too. Is there a reason
>> the frequency is being set this way?
>>
> 
> We start with the lowest frequency to configure the PLL and frequency
> requirements are decided based on usecases.

I meant the rate-change-through-PLL-reclocking, but you've answered
that above

Konrad

