Return-Path: <devicetree+bounces-201697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98765B1A480
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 16:22:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F85E3A5811
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 14:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA4A9272E41;
	Mon,  4 Aug 2025 14:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AdCJmCNy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA7127144A
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 14:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754317301; cv=none; b=j8doS0xH5j7kpbkH5bjvjj1k2A/h7VcLu4Er11rgRlHSDPFgmVaTysQDUv6aVP458092P5liouhT/kVITFVhPvwgadFQqCEGK2tmE0fFanSEHNhh6pt8ArjUXKv065ebPHQaPEba5q7iFH2jNHdLfGe4L5rNMm/OQ79i6Y9IeJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754317301; c=relaxed/simple;
	bh=JpzrVHuJbSqz4kfCo6Qj0EWmSdpgwvVKMGbxSRnvEsQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Mt8fFtDB34GZB7azj4657KZLlqR7Dwlxev05DmuBGRSx4B2bLR5CwoSUWqdgFb/cZGBOky+4gdMfqv6L+Wjfpu9aqgC2NNE0wAOcz062FSm59DWTBZFps8ygaGHPCiEFyxK3QpjEFluK+6dYHwgvrm2s9DLb74L+4QPl51NkzrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AdCJmCNy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57493mFB032723
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 14:21:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8/GfkBSsmvKYG4YkE888sXgO7YRT7RFi88aXsYgKC5A=; b=AdCJmCNyMjuN0J6Y
	6b8rretHOKlIVfOMO2M2obxYLwSzXipvAAu/ctDHHqGGNqeprAY2p5C4JYrfEyPD
	mkad34J81WqpY/wTbG1IT49wZT0fZ2YQOZvdct4QWm4SKGXOBP0+sxCUFF+WWtMz
	9b+l7D+iGgHX8103qUf0uSEfHQ4dTFUCsxRe+0lR2z88Ri006Dr2kO5UC59brcRJ
	R08x8HSlSN+/7ZI34JyKrbq+Y/7WiTsaP+aoG6v+pdF2sXc6Rh5s+E7EeL4ZYavN
	iMV+ofT6ljEG20O9IvvsJQKa9v/W/OIIvy9uZBEllg9/0+VoZFA5KeNdpj86IZ0U
	v4iH2w==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48981rngv8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 14:21:38 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76bd757bbccso2991216b3a.1
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 07:21:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754317297; x=1754922097;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8/GfkBSsmvKYG4YkE888sXgO7YRT7RFi88aXsYgKC5A=;
        b=cBlZ1O7oGVqtSDZYa1jxeGiHaorlAvk4wSqwTyk9UHp2jzxUP3EU0xKWZwL0wWvU+h
         MLWlRgjjG7eAZ7CtxM8PgP24LaQarXP2b57GHGbdkAdQ3YP2vPoEIhRr/ZaKOTAm7PNC
         8lg2igZ3EykWn0ntYlnQWT69trvprYvK2oC08sXrjuNT9hOqR33xzj2nHZar1VLz8xns
         HPn7I08C46ZAK/FlHzORwTLPn7pZNTYp/okPNM+lYXhikMlWZyEc+28D2f2Wu8BOW796
         kZ5YAee9TJeezJRQ5CnIeejP7bG7Wcn8mRmOkscrh61vn52LZPfHvZ/Hvag9Pf9gTrrF
         9HPA==
X-Forwarded-Encrypted: i=1; AJvYcCWZW21mf0W4t9Ew+W5oiB+U32Kx2dTIkuzCOGhSiv8YQxYH2nRTW4oeZd5I6BKqWkzvAi2xtHCJ0Whu@vger.kernel.org
X-Gm-Message-State: AOJu0Yy40aOCpyQdlrVo0wqMesjFtgn7tfnGqkaw8hMwTFfAp6uBjxJ9
	OAbURssAie0fmUi9CGGJ6JY9GqFnnSKJC3uWzfPT3V38TrKWn75KCjY0uBJ/+cOlwwSC8lE0CGp
	5JKMSFtIddb4VPA/MlD8A5CVPxOAanCZ9fj+rNVMFrLfTq8XZaGPAArKa+Pi2Lljk
X-Gm-Gg: ASbGncsThQPaMEwZ1bdsH+ymm1wQ3/lSLT+jmQPTU1kYdhUHT2F22fgYtoBKfxYFWe8
	i583pxsbBn0qTjTv6hLWD9nLKWW2dxld3oFBc8uYJagQdBf07Lx+Qy5gk+J4RubXAzaUfV2JJjU
	a2H+S2Otyhn394VMEzOv87LROADTeT6vVRrNtkZzxthrt1TZefkCCkHJQ4VuEwi6ByW1fAu8FiU
	SmJtwQeNB/j5s+DswaaErDj/cH7darm8ErL1Z/gA+Lj67NMxOmnMv4Pmd4/t5g4d+OkGbRDyZe5
	D+tei53accBiQzyGxu4axtMN3YfpFXMHnzJwMNrMDwov3OGA/E4Px0j6VtKyBDmaWA==
X-Received: by 2002:a05:6a00:3e08:b0:76b:fb4a:118c with SMTP id d2e1a72fcca58-76bfb4a172bmr7973916b3a.18.1754317297490;
        Mon, 04 Aug 2025 07:21:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2a/0Ufnso4bxRvspDFw9tZsJRFX+Ok9Wx9RPO4FfJa9B4NdM6NtKaSQRpH2mJOxpF9hit4w==
X-Received: by 2002:a05:6a00:3e08:b0:76b:fb4a:118c with SMTP id d2e1a72fcca58-76bfb4a172bmr7973885b3a.18.1754317297067;
        Mon, 04 Aug 2025 07:21:37 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.31.7])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76be9143983sm6680905b3a.1.2025.08.04.07.21.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 07:21:36 -0700 (PDT)
Message-ID: <c2f39786-5780-4124-9e41-6971428aa267@oss.qualcomm.com>
Date: Mon, 4 Aug 2025 19:51:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] clk: qcom: Add TCSR clock driver for Glymur
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
 <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-3-227cfe5c8ef4@oss.qualcomm.com>
 <aIoBFeo00PPZncCs@linaro.org>
 <784545d0-2173-4a8b-9d5d-bee11226351e@oss.qualcomm.com>
 <aIxRKHKdBHDefDs2@linaro.org>
 <d2c17575-f188-4154-bb63-e0b1b89d8100@oss.qualcomm.com>
 <b2f219d6-d441-45d0-a168-b2cdbc01b852@oss.qualcomm.com>
 <3fc425fd-39fa-4efc-bc98-da86a88bfb1a@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <3fc425fd-39fa-4efc-bc98-da86a88bfb1a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: WM0o3Rbsguk6DQAPWirZlfJ9OXf6vLCR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDA3OSBTYWx0ZWRfX6Qh+DrZ6+V9j
 1sdwZHI2kT0NP2elaBbTRBEj0fSg8ewEy2RdDR3wTfjBpyNoWxWKScxiNwCH/s+Yz5DqeCk8AFR
 4EgSaKWY3VvPeXqmG9DdVEGJaFFAlgf3khJYSRGXwSpfEEPyYZVE3VE5jDfvggPASYpq3k2knjl
 sgVpBC/kXXEmtK6ANGOy/uUfzkHMhywzIoKwgPeE77Ch0h5YxPJ+YbKa2rz4COImBWkqyGAIZT5
 UTe9DM1XAby2b9mWLDAsP4Wfa9dzc8uNA0wQklAuBRdRH1o+1m75i+2lMS0VSvo8qzXcKaYR4pn
 aUHzqs+4tTzZNj2Pbe9Q7AC79ksy6Ix4CSTgsuzn/GEO9PANj2OnbAGBEUvib49G9N3AKqrGyxp
 cpfDrlTk+kJV+rcJmoaVP/LyA2Y155Q53GB1C2+0gDxqHAULWGJTYqUWreTPrSn47jSa4QeV
X-Proofpoint-GUID: WM0o3Rbsguk6DQAPWirZlfJ9OXf6vLCR
X-Authority-Analysis: v=2.4 cv=a8Mw9VSF c=1 sm=1 tr=0 ts=6890c1f2 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=asiLZvre+94PXO3FyfMC2Q==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=SVYV74fhp6AACa02m-cA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_06,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 mlxlogscore=999 mlxscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508040079



On 8/4/2025 6:40 PM, Konrad Dybcio wrote:
> On 8/4/25 11:00 AM, Taniya Das wrote:
>>
>>
>> On 8/1/2025 5:24 PM, Konrad Dybcio wrote:
>>> On 8/1/25 7:31 AM, Abel Vesa wrote:
>>>> On 25-08-01 10:02:15, Taniya Das wrote:
>>>>>
>>>>>
>>>>> On 7/30/2025 4:55 PM, Abel Vesa wrote:
>>>>>> On 25-07-29 11:12:37, Taniya Das wrote:
>>>>>>> Add a clock driver for the TCSR clock controller found on Glymur, which
>>>>>>> provides refclks for PCIE, USB, and UFS.
>>>>>>>
>>>>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>>>>> ---
>>>>>>>  drivers/clk/qcom/Kconfig         |   8 ++
>>>>>>>  drivers/clk/qcom/Makefile        |   1 +
>>>>>>>  drivers/clk/qcom/tcsrcc-glymur.c | 257 +++++++++++++++++++++++++++++++++++++++
>>>>>>>  3 files changed, 266 insertions(+)
>>>>>>>
>>>>>>
>>>>>> [...]
>>>>>>
>>>>>>> +
>>>>>>> +static struct clk_branch tcsr_edp_clkref_en = {
>>>>>>> +	.halt_reg = 0x1c,
>>>>>>> +	.halt_check = BRANCH_HALT_DELAY,
>>>>>>> +	.clkr = {
>>>>>>> +		.enable_reg = 0x1c,
>>>>>>> +		.enable_mask = BIT(0),
>>>>>>> +		.hw.init = &(const struct clk_init_data) {
>>>>>>> +			.name = "tcsr_edp_clkref_en",
>>>>>>> +			.ops = &clk_branch2_ops,
>>>>>>
>>>>>> As discussed off-list, these clocks need to have the bi_tcxo as parent.
>>>>>>
>>>>>> Otherwise, as far as the CCF is concerned these clocks will have rate 0,
>>>>>> which is obviously not the case.
>>>>>>
>>>>>> Bringing this here since there is a disconnect between X Elite and
>>>>>> Glymur w.r.t this now.
>>>>>
>>>>>
>>>>> The ref clocks are not required to be have a parent of bi_tcxo as these
>>>>> ideally can be left enabled(as a subsystem requirement) even if HLOS
>>>>> (APSS) goes to suspend. With the bi_tcxo parent the ARC vote from
>>>>> HLOS/APSS will not allow APSS to collapse.
>>>>
>>>> Is there a scenario where the APSS is collapsed and still the ref clock
>>>> needs to stay enabled ? Sorry, this doesn't make sense to me.
>>>
>>> MDSS is capable of displaying things from a buffer when the CPU is off,
>>> AFAICU
>>>
>>> We can do CXO_AO instead to have it auto-collapse if it's just Linux
>>> requesting it to stay on, I think.
>>>
>>
>> Thanks Konrad for adding the display use case.
>> Abel, we earlier also had some PCIe, USB use cases where we had to leave
>> the ref clocks ON and APSS could collapse.
> 
> XO votes will prevent CX collapse, not APSS collapse. CX also powers
> USB and PCIe so that only makes sense.
> 
> I think it's fair to just stick XO as the parent of every refclock
> today and think about the what-ifs (such as the mdss case I mentioned
> above) later - especially since we have no infra to take full advantage
> of it today (non-APSS RSCs etc.)
> 

When ref clock have been part of GCC, then also they didn't have any xo
as the parent, similar design we kept when it was moved to TCSR as well.

-- 
Thanks,
Taniya Das


