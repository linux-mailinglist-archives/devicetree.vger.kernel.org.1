Return-Path: <devicetree+bounces-243372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B58BC97485
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 13:32:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E8643A3625
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 12:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4820A311C19;
	Mon,  1 Dec 2025 12:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gMSz7/9w";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WR06KCxu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE1C31197B
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 12:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764592028; cv=none; b=oCtrjiqJOwd3rlfGWMDZmjh9OsCxSRygb8ga8Hx2MsCyDLQsBuBLKiNhutw7/X8MJ3w0bHkDS1mwOQ+DCiSAeiwgdAb5hMdvUFzfOeyad0ZWaIBNbdINcbui85yXQr8+jyCrPaGDKCZ6rbKJ2050G//ytvAr5kwDPRX5S6D30eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764592028; c=relaxed/simple;
	bh=yJIGaEFZOUMiHJtzXe+axCDbhop0DwccJ+n1aWoVm3s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=igyCM9R9DpdOFf6rD2o80KtKzXU24dQp9SX5yw9Z8/3EV1rjsO4Yw7Pu9wYRWgTauF5UKeeFjGKhi3xyx1/Gruzbr5/Ttb8afqLs73dQumKhMvSFS1kXWyUiQf1PwAwobgRxg1i/ULrNAfOYUv0TOGBabtpwL0CYBpMv6wYP2Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gMSz7/9w; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WR06KCxu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B19MAeU3361535
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 12:27:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hHesOwSy4UlmbStnu47DBCPmCKs3dEISfe6pSDamg2o=; b=gMSz7/9wzosTWL8k
	okagcxeg/OfGxdzPJEsYGpXP77mcD2uXr2hNaslBDGf1xa/R7h9JavLr2hsseCTv
	6BC32vC5FxVbvOxfibZ0uBqrhM0k8sAcwraTZGEy1wrbCUk8cRXxGFefjWDsT2y1
	9tkFTLF7qMopYa0nGU6lqCNhHftlh4lH9giGbveTRBoPlVihcncBMTQV6E1z4Ofk
	yAtQglYDrydC1QRGkYJt+364prhy+3dQdCOZv433WdgXB4B9YS4zoxRsSHOI8urY
	5loEbpO/M62e8IJjL6ULXNve44lJTiB1OT2+07dp4WrWNmWz1D0dd2mkuUGLrsNj
	psOkCA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as8b00gue-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 12:27:04 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed6a906c52so7465521cf.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 04:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764592023; x=1765196823; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hHesOwSy4UlmbStnu47DBCPmCKs3dEISfe6pSDamg2o=;
        b=WR06KCxuSacO1EEpCYtqWwbkZi6q1KnLR5m/o4l91OBdQiuV7/5JfGutsW/JMDV/Ah
         nK7WV7uA4MggYP+u8FZPLWsleViAO0cDE9940aVBvU7HzfoK8C+ZijV/54ZVADCCNIT8
         tnVIwb2fM0bx4PmzcsufcfgUw5QBzOFglBZtGFYHpEAbRonzATMVvTBR0AlsDMjFCr2F
         iF2R3YCp081y754CEx/U9N/0pux/zrthuA+LJbhxIoNgEuiXaQzGoXLGHbys0QU2HW/t
         Egrf8gE4W2ULYofwBg4osh/7BjxEEZbwN1bUB1eeqxFLujBqk9Gt8UJqrDj+0Io7r6BA
         nvMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764592023; x=1765196823;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hHesOwSy4UlmbStnu47DBCPmCKs3dEISfe6pSDamg2o=;
        b=lwOJ/mFexoyVCfdGGUK8XVdLzJ3FAoawx66fRadbJD2Hwpy6Lk8MmIIOYSPtzH0NPF
         9Pdp5YeAY2izMd8DMAHnEy3F14hn4cZwYUf6xpwN1LpZHQfGl3Vp6PLhmslZ31QwVsQE
         g2fvc2yYAuw0+J32oFnztf9CoLg6JIEt9azKElTJTrmoSbFR3IP9hvSLxicV8KmFNAXi
         msjFrqsPZHYzDFdKxRdirmKxHTnuXC4PjCraF2CRrdPjaBAVhU+0KCLO0tbnIlXO6s+J
         i+ToD8NdMPoF8QhqyFuk5BAU97lQQ1c1O3wTc23x0Uk6yUQpJe+1KSlYS7NPbWsu5l5e
         AifA==
X-Forwarded-Encrypted: i=1; AJvYcCXxzmt+wSVmkpAtXbi7JwAQclh3eaETqcX0qeGYqgOHT2SBA3A20Kp8s1mM04fJvRz5AoWZxxP0onZ6@vger.kernel.org
X-Gm-Message-State: AOJu0YxUmsZzh1UHXatBzqgXzVvVBouwehbda5fQGSUJmQ2O+utT215r
	UVYmisUUI25wRNf0S0BqzUQL14VKyhtHTpXY13vBo2jh/baTCEXtGSHj+JLmOYtR/N42iFX3LQr
	GdiRy+Xso6VnEP4UfAFujOyAOnFMKkgRKzq54OIOED3O8i1AWj/NoAAJQNPO9TlmP
X-Gm-Gg: ASbGncttILm+cbaJX1V1vR5RbM0su6fR9pysdLnJ/zJICnqeO0/Qeg7+vKjrZwejZBZ
	wBib3zn596Slypt4gQLpbZXoQDSM5uPTWH8hPuM40aLZ6RUn1AobzKuZteO1Uu68XkgCV9vcdNj
	HetuQJhiUNdFoToKnEW3I1XC+TN2bp/bDsYCgQjNZGv6acnvpcrX5BdAt7VJyrAZPAi7SYFqtsG
	BoNyNxSi2xYWOo7yqja3I8UkvNxSvbzxj1abCBCySMn7CaClh9WxkxVYkegiqPOnOgZ9mRWyiSe
	lbLQts/mL6HwMph9qSqOk1JeuUlG3SYS2/9n4Ry1tJeUsqrdpajcQtDuFoojESkXA99u7zMB2Ht
	6v61yP1zfUlI2XL+unmi4VUPYowADwkY0WLdOzut3r54s159aWlC4DnQzXJxeGHpIxOo=
X-Received: by 2002:a05:622a:48c:b0:4ec:f9c2:c1ec with SMTP id d75a77b69052e-4ee5b786a91mr393681431cf.9.1764592023294;
        Mon, 01 Dec 2025 04:27:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEkeN/nmadH9CHH/9Y+coj7TYMoy0iGkvmU+08GMR/mUE4lST+OGZzjQyEVPgWQoUvdkudhDA==
X-Received: by 2002:a05:622a:48c:b0:4ec:f9c2:c1ec with SMTP id d75a77b69052e-4ee5b786a91mr393681091cf.9.1764592022909;
        Mon, 01 Dec 2025 04:27:02 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a90c93sm12242774a12.9.2025.12.01.04.27.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 04:27:02 -0800 (PST)
Message-ID: <13b44a8c-357d-4f98-8762-640179fe3ff3@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 13:26:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] clk: qcom: gcc: Add support for Global Clock
 controller found on MSM8940
To: barnabas.czeman@mainlining.org
Cc: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Adam Skladowski <a_skl39@protonmail.com>,
        Sireesh Kodali <sireeshkodali@protonmail.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lanik <daniilt971@gmail.com>
References: <20251116-gcc-msm8940-sdm439-v1-0-7c0dc89c922c@mainlining.org>
 <20251116-gcc-msm8940-sdm439-v1-2-7c0dc89c922c@mainlining.org>
 <793d5039-0506-4104-b4ce-64bfa3cc00eb@oss.qualcomm.com>
 <5C7A10CF-910E-448A-8BFD-F2A46782D3B9@mainlining.org>
 <8faa0c8e-6f21-4025-bbdf-d4ec18eb7628@oss.qualcomm.com>
 <869028d628bad9e1c37c3d9ea8346ba0@mainlining.org>
 <2220aea0-6139-4534-8c42-1331a642ab62@oss.qualcomm.com>
 <f0be91fdde1b542b2c18702b0c91f26f@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f0be91fdde1b542b2c18702b0c91f26f@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=TcKbdBQh c=1 sm=1 tr=0 ts=692d8998 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=TocdZaKPi77q-W1Ug14A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: h9osFBkN7XDWRjVw72pd_Wz5PCfuulwr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDEwMSBTYWx0ZWRfX89GA3vbrbuDH
 fBz23DlZb49C1+BN7cbAyGg6TNaoEcZxv30fjae+MoxjyPiXi3SWtATgzjHiYpRAv/ZwZyNrW7a
 YC3IAVHii/IIAGRpAePlkgFN/XHOtYBmyWhMhOXLJp4gAiACfgsoi/RKaXOu6R6dPvPPZfZKeRX
 KW1sgK/ZZqB4FamF38T+POKccLFnCYa9CfghOs2O/QN1l1SMqr17oJAL7K/Of8X+RzPqLCLVPNf
 5MT5FiS3YVkBVk7lvnoJWz42Ga0CGjat9zJSfBo8pXTZTSbP3c6TTwVGPDinFNUo65qMTrxEAPU
 tC7UJz9UZse22OAnZxD6uEh3ogYPXLJ1Cc+UDPNqLZXIOU5esWKlZekaiujJY0AAFaicJTXdEpk
 vCnyRLTKLAKV6RZnnbuTVe1LCDmdEw==
X-Proofpoint-GUID: h9osFBkN7XDWRjVw72pd_Wz5PCfuulwr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 spamscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010101

On 11/30/25 3:50 PM, barnabas.czeman@mainlining.org wrote:
> On 2025-11-17 15:17, Konrad Dybcio wrote:
>> On 11/17/25 3:02 PM, barnabas.czeman@mainlining.org wrote:
>>> On 2025-11-17 13:17, Konrad Dybcio wrote:
>>>> On 11/17/25 9:51 AM, Barnabás Czémán wrote:
>>>>>
>>>>>
>>>>> On 17 November 2025 09:03:53 CET, Taniya Das <taniya.das@oss.qualcomm.com> wrote:
>>>>>>
>>>>>>
>>>>>> On 11/17/2025 3:05 AM, Barnabás Czémán wrote:
>>>>>>>
>>>>>>> +static struct clk_branch gcc_ipa_tbu_clk = {
>>>>>>> +    .halt_reg = 0x120a0,
>>>>>>> +    .halt_check = BRANCH_VOTED,
>>>>>>> +    .clkr = {
>>>>>>> +        .enable_reg = 0x4500c,
>>>>>>> +        .enable_mask = BIT(16),
>>>>>>> +        .hw.init = &(struct clk_init_data){
>>>>>>> +            .name = "gcc_ipa_tbu_clk",
>>>>>>> +            .ops = &clk_branch2_ops,
>>>>>>> +        },
>>>>>>> +    },
>>>>>>> +};
>>>>>>> +
>>>>>>
>>>>>> Is the TBU clock used on 8940 by a SMMU driver?
>>>>> As far as I know no MSM8940 is using same smmu driver and bindings like MSM8937.
>>>>
>>>> On msm8939, the clock needed to be turned on for the GPU SMMU
>>> I have not got any qcom-iommu issues on 8940 but i think it could come when i try to add ipa2 driver
>>> for the SoC until i do not know where to check it.
>>
>> I can't find a definitive answer, but it's most certainly going to be
>> necessary to turn it on
>>
>> Konrad
> 
> I have enabled ipa2-lite for 8940 at downstream and it can cause gpu to crash.

Really!?

FWIW the clock on 8939 is called GCC_*GFX*_TBU_CLK so it being related
made more sense. Here, I see no connection :/

Konrad

> I have tried to add TBU clock for apps_iommu but it not fixing the issue.
> 
> Here are the iommu changes based on 8937 apps_iommu node:
> +&apps_iommu {
> +       clocks = <&gcc GCC_SMMU_CFG_CLK>,
> +                <&gcc GCC_APSS_TCU_CLK>,
> +                <&gcc MSM8940_GCC_IPA_TBU_CLK>;
> +       clock-names = "iface",
> +                     "bus",
> +                     "tbu";
> +
> +       /* IPA */
> +       iommu-ctx@18000 {
> +               compatible = "qcom,msm-iommu-v1-ns";
> +               reg = <0x18000 0x1000>;
> +               interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
> +       };
> +};
> +
> 

