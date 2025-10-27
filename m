Return-Path: <devicetree+bounces-231530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D348BC0DFA9
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:20:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0376E34CF88
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DD71286D4D;
	Mon, 27 Oct 2025 13:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AsJIKiYD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8283B28853A
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761571237; cv=none; b=SrX6OmR571tmKaNhwZMswchoo7AhC4Noj7AOryVpmyNEsO4GuWWZAieE8uTtml2Erly13LyUfz+GreiAiVQ4RUkJYv175a/RfjUO1OQTvsPrbFAmfsr/EddCTuEyXCDfVuy5TfPTiuGDFxfVaiFGoQcQOotUgBPM/I9WVqF5IXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761571237; c=relaxed/simple;
	bh=HBEaI4YkpxM0ymZUHGuwzJMLz0hxOEJOQRaeskAgUJg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ATNPSzMk79+QX/3f5mpAIM/byNxkH5BMbLukTZ68MWJzer858jNG3aEuwY+WnwVc1CxFnQ2vOR5pwsF4BL6yHbJR4HbIyfLILSHIG8rEOGO8h8V7Va4yz2Ehk373XrgTet+a0x2Zgp2a0r6ZmvlRKhWw7/aRcNP31T4UmcPZ2jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AsJIKiYD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R84hoe2232116
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:20:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kSYlZ3f9vesYlsVsHAw5CyHtqlY6CNOY4YSlAreQ86A=; b=AsJIKiYDX7kcD3co
	6PZLgnIqmYG/LL/pHgMcBHT11BIh91Z7LYbNNQVvHu1xWRSw9gAunsQTONhVfDwI
	ITR3u+nNFYJQFCLvkVCrb6paN8FYonx2DUFv1g1Czkct8v0KAiO8XONyMF7fnsbz
	bgM59tHq1ZtXmxOjyBs3HZtPCLMOQVtASfBQpiLu0/cXQvd82j97EleYA1WIkqOh
	YEH2ZAgVbLmTReh+l2cfNS6e+V98JwfuPaYXrMPluj3X+l7XbY+3jfWLI5qq8LEY
	fS7a8JfwR/0Ap/7UuEI/O97HALdCarFl/ym+Vd8dUHAzbHbrI64IzCIQNIxGGg2Y
	/aFgKg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a24wn8v88-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:20:34 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4eb9cfa1b72so8920171cf.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 06:20:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761571234; x=1762176034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kSYlZ3f9vesYlsVsHAw5CyHtqlY6CNOY4YSlAreQ86A=;
        b=IXcR+Kw1/wiWpkRnvllQAmvDQF6v6O9N6Zs1Ds3YrIqqnrZaNCkkwk9owT2yr7WFWO
         evmwLlhEy1oVKP9glq8ma7fDmtH8ApkDIe6jBTDv/HxE+w+zp/1fSy1HncX/1Arbwi4X
         P4yZzXHTKH2QOIMWKeyyqkI3yo84euD9UHYWW8dgbGdLxgb3/o8PfW9fT49OLPobX6rM
         qo41F7tBe9QFs4ufVT9DvdHXZFYrz7S9ROCQsS7UBzDYGwUySYDCUI75NZlDNs0+sZws
         u/KMXSD9NKoXoXoZGIVJXk5crufpXf52Sf9VhDpPvGHa6rjythXJwQrwQ8CC5Z0Fuuug
         rBWw==
X-Forwarded-Encrypted: i=1; AJvYcCVB6ik7Un/X9uALjxMPxk891gpqElmL6MGIku7Jp03cVbqLqb/HPXEi9m6X5SuYP4Ofsdge9RB+oBXe@vger.kernel.org
X-Gm-Message-State: AOJu0YyPEH/V8srQonYTJYVxiIPZu4Gg3pFYIHm/dpgVboBW1XMzTpKY
	Et3ENCYJ3mR+sZr8Q0tUrYHlvcQxipoyViaaqo4VwhL0gSBKgh2vhYUBUI07CipiBN6+sFIfqWz
	iliaPVKeA4f73PE3c/EkbAf1/zgpjGV5O/dRXgBh5DhqCmICQNEIfIOiR/C6eN7AB
X-Gm-Gg: ASbGnct26RzYfpjYla5aAIe2kzczGXmZgz6ak5aOCbVYAuGkYmPPdFnd6wKn1/CXptk
	vSn1T96gs2m2SzroruKL8Xa2/UAqRPn3MIZ+Y86tFeqamV1FPSHz9K7GYiDpGQ7REXEX56YQj6i
	SPIdKwXTvH8NmkdPJmrfbMg0++GvwTCRCYpcqgcaaQVVpNoN7GvPhBpBPr/8jf1li86tdV1fbL4
	Qw4Rk/Jvp9K+c77MQFykNUveQVZKr5E/kxx43INbmdpdTPhGp3pyuyL4qYN7PVVm7gKLQs5b7sS
	NNp/GivIuMf1il/ons/bTD+wPFluM1BNVsRFHvnxYJY8LO1d39G5p7q3kHhvivK5vUSLkv9FItV
	6Uz3I9HonhQZTlMHTZrGzTjhBABAllYLxD/KJ1Bc9ttVfAYJISQoG566X
X-Received: by 2002:a05:622a:5c8:b0:4b7:9ae7:4cdd with SMTP id d75a77b69052e-4ea1177c842mr202134751cf.8.1761571232023;
        Mon, 27 Oct 2025 06:20:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdz/wQ0BK9pQjwusme3Hz0+MCw4EcI0EDUElKxUQ9hHLgGZIHDtysKRoKXFj8XSgwXP6Dm/A==
X-Received: by 2002:a05:622a:5c8:b0:4b7:9ae7:4cdd with SMTP id d75a77b69052e-4ea1177c842mr202133331cf.8.1761571229943;
        Mon, 27 Oct 2025 06:20:29 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef95d5bsm6279668a12.16.2025.10.27.06.20.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 06:20:29 -0700 (PDT)
Message-ID: <0291d0f2-483f-48d8-8c75-f1bbcd1ab18f@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 14:20:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/12] drm/msm/dsi/phy: Add support for Kaanapali
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        yuanjiey <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-2-yuanjie.yang@oss.qualcomm.com>
 <omlhiywjr46ik6bj2aiutgcf4aifen4vsvtlut7b44ayu4g4vl@zn4u3zkf6cqx>
 <ad906eb5-c08f-4b66-9e37-aaba99889ad4@oss.qualcomm.com>
 <aPryORKIuSwtXpon@yuanjiey.ap.qualcomm.com>
 <einog245dsbqtx3by2cojyzmyctk2fffpwndwoe24puwqq4fta@cu6iiidxqgr4>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <einog245dsbqtx3by2cojyzmyctk2fffpwndwoe24puwqq4fta@cu6iiidxqgr4>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=XIY9iAhE c=1 sm=1 tr=0 ts=68ff71a2 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NCk8XzW7qX7BC1ZPH1kA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: akPY_Yj1cqjCqVdOj5eehsu_dd7zIAZh
X-Proofpoint-ORIG-GUID: akPY_Yj1cqjCqVdOj5eehsu_dd7zIAZh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDEyNCBTYWx0ZWRfX1b9jwH/W8DoK
 c6/Xr8IMV5X4fsYYMVmOnUes7d2FdsGqBovqPpXunq4+z4qnocFslT+FgTTKlZAG1uiuiafeNW4
 dNeB5VzKWDxaa5gkCXDE7wusc+IHpCnFy1w6lWdUvzStdfkfVUETgnSMoLtFPV4+Y7Riy8RsjpY
 DXLKneLY/6+ux+3i+J2ReY22lpHKpj3TfZfniFfs/YOgKlo81RvNirs76rCo99HKZiPFihM0qU6
 gBEcl+1vDfOC4N30lQLYsv4nkU9lymrag/2nX/HcQ7Oze1Y2Q98yWKdw/Ob9zv+VnAjpOKKtU52
 dLXaBLgp/Tz2FCEiQV2/EhmSgcFM5ag4uwPwHHQetzEWIzXBl+/YuEcXFWqRR7agRgpH7zt8er/
 fAQEiQKb/+ZNCcgYHyNkne7gQvVLQA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510020000
 definitions=main-2510270124

On 10/27/25 2:14 PM, Dmitry Baryshkov wrote:
> On Fri, Oct 24, 2025 at 11:27:53AM +0800, yuanjiey wrote:
>> On Thu, Oct 23, 2025 at 02:02:45PM +0200, Konrad Dybcio wrote:
>>> On 10/23/25 1:48 PM, Dmitry Baryshkov wrote:
>>>> On Thu, Oct 23, 2025 at 03:53:50PM +0800, yuanjie yang wrote:
>>>>> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
>>>>>
>>>>> Add DSI PHY support for the Kaanapali platform.
>>>>>
>>>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>>>>> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
>>>>> ---
>>>
>>> [...]
>>>
>>>>> +	.io_start = { 0x9ac1000, 0xae97000 },
>>>>
>>>> These two addresses are very strange. Would you care to explain? Other
>>>> than that there is no difference from SM8750 entry.
>>>
>>> They're correct.
>>> Although they correspond to DSI_0 and DSI_2..
>>>
>>> Yuanjie, none of the DSI patches mention that v2.10.0 is packed with
>>> new features. Please provide some more context and how that impacts
>>> the hw description.
>>
>> Thanks for your reminder.
>>
>> Correct here:
>> io_start = { 0x9ac1000, 0x9ac4000 }  DSI_Phy0 DSI_phy1
>>
>> And v2.10.0 no clearly meaningful changes compared to v2.9.0.
>> just some register address change.
> 
> Addition of DSI2 is a meaningful change, which needs to be handled both
> in the core and in the DSI / DSI PHY drivers.

DSI2 was introduced in 8750 already, but it was done without any
fanfare..

I see a diagram that shows an XBAR with inputs from DSI0 and DSI2,
and an output to DSI0_PHY (same thing on kaanapali - meaning this
patch is potentially wrong and should ref DSI1_PHY instead?)

Konrad

