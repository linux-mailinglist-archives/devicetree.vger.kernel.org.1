Return-Path: <devicetree+bounces-202157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B11B1C402
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 12:04:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2261C18240D
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 10:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EE2628935E;
	Wed,  6 Aug 2025 10:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o5UKKG95"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B1D632
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 10:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754474648; cv=none; b=pUwH16iY8jo9W3L6Ttq60+ah1ZtZ8xoR6uAMvGZ3XaQPbTodqJgq8nifN76nvX7liHIbTa0iU0aI/eCk7qlpuxbuAxVCIEE8mac5IPb+wRMUvbQViGyp6IFY4h2EtmnlZkS+4d844kq3zcoU/7/aTtHckZCtWqrBT3GM1FTtYAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754474648; c=relaxed/simple;
	bh=Nfg8ZV5S9dd/rRMBz2rWxYkRdNNUygm0/QvzT0BF+uQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HriZ4totkCmUzYLJFafF4HDgeK2eSoMUaMPePGAoyPfDmoxPXa4Yc19CI3yy99yk/WZ8GRHa9xoRpTKqB0iQi+xxkNiu9eeBslYT1qi8YB5c4hq3A5GPJIKTgMkm9W0zrpOsugI6URUhfj1BgJ8L8Ek0mizq8Z6tIrkAa/C5XoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o5UKKG95; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5765Fe7x019919
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 10:04:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oH0wyHvL/nCeJrABEE6IBIqEp4r0L7EIKpUAEvO9+wo=; b=o5UKKG95Q5yUM+mz
	NZuWdcHD3OvOB4UZ5PNhLVK9C404h6tZmbkL70mxsguk7R4Ir5vlDlyHDDmdm/DS
	sWd0viLicRTNFVKGiZn/2FsdgTDK8OhVy7G4PjL0qjVhW8i/X4BD7mKUnF5dopvM
	PKydHHasD6GYBGESX506yd0I4VtR7KN3sSS72jFBj5QrG1p1HdGzgvKUupadUnd7
	2sSrUb+f4udAd7DMwQYwZCjtm4x5Hj9NCljepjBwyxADM2FymZtbQq1AUk5rK2Nc
	UeASzRfcErIfFE5ManV+p1sJYUh0JI8i9oypzgF+Ipt2pKY4EFDxm9unwEhsDbwP
	8bqfLQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpw1absp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 10:04:05 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4aef8afd26bso21358501cf.0
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 03:04:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754474645; x=1755079445;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oH0wyHvL/nCeJrABEE6IBIqEp4r0L7EIKpUAEvO9+wo=;
        b=lCjH+3CIyHUvkri77KrHZ8VFgADrQsVv3r2Ms5fRCQNdtzgXdJpNkZw8ORzJCHsQRe
         Nw09xDQx29qFoUAEVscX+maSVzDLZCZpd8gzTNvCEd+VChUw1EqK7W9itW8Jq772zg2f
         WmY0bR7r+F1O3EEAl5r/RlhSH4+W8vIhArygcoM14M4fqY+jCNbJ3UclL1MJ7PAFty/X
         JD11R9yakrDdggRopLPx0dOmkx8/G+ZtVCQaNsluhXt4tRVrFcNWR+0oox/pU06yky9T
         lpeziybpYbD57bayszUW0K6YPID62T2bG1rPc9yqv1RFhgIBUXbkRr+gNFLF9po9MAdF
         YiVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhjwVgtJHZWcFHm7MGA3Cvz5wjXvq35V4bFW3l4lJmmzZAcioYVuo9ls29V+lwDZdiHTNaX2RD6vz5@vger.kernel.org
X-Gm-Message-State: AOJu0YwaaxKrd/h6f4+m5x+6B8QPDWk87TVHGW4uGpOLPf8BqqeR72Jy
	9UWmSLLzpVpqoMzdmoqfYKKHCtj45+nENkQI9Rn8MlhbfNSpies/QLYGG/0PLMpxz1hoqA6Mjfc
	Wm8fEFGn+5pqQj8nUYrshxeweVIOYsjGRe8FQ54f+hrHiNMf0Ykoy23QCqoIM2lKd
X-Gm-Gg: ASbGncsJowHbIQn+IufaJ63rhbM7rQzRRL4uj0k6EPfSAjQEA+NeMU/cA9x75N5vt0w
	58Ie9+R0p4NhzZqH2p5omffva6DQQlkk/6qgoVDFpgrOGXiJhUrd+RPAXKwUhWDFuGlbYYtxeq9
	KtNAOPVI72nituwgTeN7kH9dxSc2JY6bPH0yImatrNXr0dRcIQqgxYwBCT9Gp13+8nhjidiKyir
	3GjxLqWUwooolmaLgk9V2IKkBtjh1Vp31OqNMTbz3oz+RmYZLWd3X8v8WyBWcvD880aISm8F26M
	zVvjzuBIPWcdKc1rg6QBqCfvvhNSMEKKOU14e+oLUyTqU4F+dXznV8OtjXb7sAJSLNtWadzkxIw
	6gIdbRnW/byqjmIluBQ==
X-Received: by 2002:ac8:5888:0:b0:4b0:8a0b:5dc1 with SMTP id d75a77b69052e-4b09141c634mr13322061cf.7.1754474644619;
        Wed, 06 Aug 2025 03:04:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCC204sGp2lAh4JdpyVcbNWgkbVjvoq6ZF9ArXM/l5nXMta/9k4mQLlGTUdhT1lX3+nZ0M8Q==
X-Received: by 2002:ac8:5888:0:b0:4b0:8a0b:5dc1 with SMTP id d75a77b69052e-4b09141c634mr13321711cf.7.1754474643981;
        Wed, 06 Aug 2025 03:04:03 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af994cbb883sm86231066b.28.2025.08.06.03.04.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 03:04:03 -0700 (PDT)
Message-ID: <9e3b4706-c61a-4d69-be84-a5b6fc90eb35@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 12:04:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] clk: qcom: Add TCSR clock driver for Glymur
To: Taniya Das <taniya.das@oss.qualcomm.com>, Abel Vesa <abel.vesa@linaro.org>
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
 <c2f39786-5780-4124-9e41-6971428aa267@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c2f39786-5780-4124-9e41-6971428aa267@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX5XVBn73FWngf
 ZZd0c3AMEguXCkp4OsoIoEWhzRNPOLLAOy2ShjIMLjgtSNk1I08IxrxRDZZnQ/tV+vU224UD1H4
 mhf/mUePSWiLUiod9eMzitIb+q4hdAZvCwGVRD+//01Kmr8ahATBmJotWu9L0nkA6yfX4HFbEzO
 drMA0QanIpnFKuasFvrqN4UF+wTbVs0ylG+TkF0zcI6EhJdWMR4lGQ+LQH/rSKF/55kN7bSvHPp
 BxQSUdPZxQQSM07k2PmOnnuBYrPZKb1PGg/5UZZoE7iK7dkmfh7M9qbBRv2IJegULHJ0qGrP61X
 93CBDoacbz7+GzEQWmBuDhE97dn5B3+4GaZVyG8+8sgyhK2BXAzZGm8UxkMHTsB6eX29HRFrgVG
 IGjJ8eHE
X-Authority-Analysis: v=2.4 cv=Ha4UTjE8 c=1 sm=1 tr=0 ts=68932895 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=pLAVxPC-hiG7cL8D95sA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: Nt5XNlDfFR2SbMBFQ0s5YYMxC7FE77Kh
X-Proofpoint-GUID: Nt5XNlDfFR2SbMBFQ0s5YYMxC7FE77Kh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_02,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 phishscore=0
 bulkscore=0 adultscore=0 suspectscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

On 8/4/25 4:21 PM, Taniya Das wrote:
> 
> 
> On 8/4/2025 6:40 PM, Konrad Dybcio wrote:
>> On 8/4/25 11:00 AM, Taniya Das wrote:
>>>
>>>
>>> On 8/1/2025 5:24 PM, Konrad Dybcio wrote:
>>>> On 8/1/25 7:31 AM, Abel Vesa wrote:
>>>>> On 25-08-01 10:02:15, Taniya Das wrote:
>>>>>>
>>>>>>
>>>>>> On 7/30/2025 4:55 PM, Abel Vesa wrote:
>>>>>>> On 25-07-29 11:12:37, Taniya Das wrote:
>>>>>>>> Add a clock driver for the TCSR clock controller found on Glymur, which
>>>>>>>> provides refclks for PCIE, USB, and UFS.
>>>>>>>>
>>>>>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>>>>>> ---
>>>>>>>>  drivers/clk/qcom/Kconfig         |   8 ++
>>>>>>>>  drivers/clk/qcom/Makefile        |   1 +
>>>>>>>>  drivers/clk/qcom/tcsrcc-glymur.c | 257 +++++++++++++++++++++++++++++++++++++++
>>>>>>>>  3 files changed, 266 insertions(+)
>>>>>>>>
>>>>>>>
>>>>>>> [...]
>>>>>>>
>>>>>>>> +
>>>>>>>> +static struct clk_branch tcsr_edp_clkref_en = {
>>>>>>>> +	.halt_reg = 0x1c,
>>>>>>>> +	.halt_check = BRANCH_HALT_DELAY,
>>>>>>>> +	.clkr = {
>>>>>>>> +		.enable_reg = 0x1c,
>>>>>>>> +		.enable_mask = BIT(0),
>>>>>>>> +		.hw.init = &(const struct clk_init_data) {
>>>>>>>> +			.name = "tcsr_edp_clkref_en",
>>>>>>>> +			.ops = &clk_branch2_ops,
>>>>>>>
>>>>>>> As discussed off-list, these clocks need to have the bi_tcxo as parent.
>>>>>>>
>>>>>>> Otherwise, as far as the CCF is concerned these clocks will have rate 0,
>>>>>>> which is obviously not the case.
>>>>>>>
>>>>>>> Bringing this here since there is a disconnect between X Elite and
>>>>>>> Glymur w.r.t this now.
>>>>>>
>>>>>>
>>>>>> The ref clocks are not required to be have a parent of bi_tcxo as these
>>>>>> ideally can be left enabled(as a subsystem requirement) even if HLOS
>>>>>> (APSS) goes to suspend. With the bi_tcxo parent the ARC vote from
>>>>>> HLOS/APSS will not allow APSS to collapse.
>>>>>
>>>>> Is there a scenario where the APSS is collapsed and still the ref clock
>>>>> needs to stay enabled ? Sorry, this doesn't make sense to me.
>>>>
>>>> MDSS is capable of displaying things from a buffer when the CPU is off,
>>>> AFAICU
>>>>
>>>> We can do CXO_AO instead to have it auto-collapse if it's just Linux
>>>> requesting it to stay on, I think.
>>>>
>>>
>>> Thanks Konrad for adding the display use case.
>>> Abel, we earlier also had some PCIe, USB use cases where we had to leave
>>> the ref clocks ON and APSS could collapse.
>>
>> XO votes will prevent CX collapse, not APSS collapse. CX also powers
>> USB and PCIe so that only makes sense.
>>
>> I think it's fair to just stick XO as the parent of every refclock
>> today and think about the what-ifs (such as the mdss case I mentioned
>> above) later - especially since we have no infra to take full advantage
>> of it today (non-APSS RSCs etc.)
>>
> 
> When ref clock have been part of GCC, then also they didn't have any xo
> as the parent, similar design we kept when it was moved to TCSR as well.

Perhaps we've been running on luck (i.e. XO votes being cast through
another device / clock as a second order effect) all this time.. I'd
happily move towards formal correctness.

Konrad

