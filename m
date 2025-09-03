Return-Path: <devicetree+bounces-212305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E6356B424C7
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 17:16:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B6A41885514
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:16:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4782340D9A;
	Wed,  3 Sep 2025 15:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F2ny0UHt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1BE340D87
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 15:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756912477; cv=none; b=J/0jr2bng4fRWWYzY9uMV9teV3xSt9uM4u875DUStcuIxaZs0NTWGSlOGNZc95lR8pwPhi1noh2AuNsrn3ctYkg1Syr5RNTOImrK2WCzED65g6FYoNo1ORfHO/6cBpsvHDZlgtXH0vDz3V4SA0snI5wwmIFNz0SKzJHkitfn7u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756912477; c=relaxed/simple;
	bh=AmE3vN+qmvFJO55R8itzAjaA4PSPcgcddXsqYpwHxSo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WmUHdn7Stw/NZCjXrnU1dWNaTwIr6mxZvib97/hemSe7Yq3OgqLz5JiZNmdAs6r/kvPeMgh3ZBQLnU9uVJNEjtXGp6nI5ZHkDQSQQC7qRVcgzxpsXKVLVN+U3F5/KiWZwo7N8zZL4cUuQoNaLnof/Xd7AgTR5mjoTW7CzY3Ugyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F2ny0UHt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583DwpvQ029576
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 15:14:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h4UktVIdm2c0x5SK3djoEMrvw4KVq2MmQq9SrdZVv5U=; b=F2ny0UHtZ4m8BKGP
	Xig1qKmRBm55LMfbgSdQU/9ufvvoqSL0dGVnZ+R69YKJsqnXPEr8wIFa17M/jUsT
	JYAcCik2Pqry6a8U7R3E+91GsDM1zuDt+6Z+iYeGVq60+1L8gAddxIrU5nMjMgf1
	KXiLc9MWmawjJFHpSqVdfJdYBEs9Bqzp6DL5Zwcmot388PPS6+6b2TZCG/yacbix
	K0Ke21bWkicUeZwFCzW5KusAfkdrrJUnXe/mjCPBDGB7DgMPGrVQD+LUcMiaU3/Y
	S4jdzdfMIr8MLQrCakVOYxvlSJmP9tafv0sOjPte4oPLP33bzWIzkrH7FQj9UsWx
	2fyPsQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnpca7j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 15:14:34 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b331150323so71761cf.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 08:14:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756912474; x=1757517274;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h4UktVIdm2c0x5SK3djoEMrvw4KVq2MmQq9SrdZVv5U=;
        b=Mr1Yl72J/RbI57SCUMfYGlhYV15WtSvjMUjlhHp9zHyKsBrHRjGU2sjw4mqhJXDDKq
         ho4zxLGAJ/uYV7o3sIMRPmIjyIjS7mNPYjMG18YNw+ZBtfpHnu01nQMIV5zPodmU8rXD
         gUS6hF3YwEx4FFvmNdIL2San4nh69uEoqnl8IST+zYvDWdG3WA/qCn7EuLuxm5p2s+No
         1U8AGz6MhYjsepDoVe+ZodcSSJyNzvd341BGdsTOlNFRbEQob+wMw202Gflxbpmu01tL
         2LSolJIvj6r2tIk8Tg6sdY2ZGCd0jPDf+EJd/3hoOPe6poHjPTgQ0XcduTJO6WAIjt5l
         vW8A==
X-Forwarded-Encrypted: i=1; AJvYcCV4Hbjoml0ejr01m3/zNsXniwgS4qjLbJno7z92FlFVK3f7oepZp9py5C7Dlg2MdQV7kxkz2C4Hv4q+@vger.kernel.org
X-Gm-Message-State: AOJu0YyQ3+ArYzhk9jqYSy2F/BMr3NzG7EzALgu/q28Tq5eBzb10oj02
	MB6rc1G6vAS7Hgcd7KzqAAVl7lKZdJquDL3Y7BxA79G8/EHRpW2MfKdkfRiDtEPL4FyAh2g0Wxe
	/GRHIdEqAhAcVNi5kpA/DNeOLzHjzDbwmftyO87UGmftw24+U7u+O/cDUQr8ymJ5l
X-Gm-Gg: ASbGncvwBXzBBy96qJVCYdmjbVNgy0qhpHOICh/9Zy59opUJiqGYDtGMZ3s29hO8fzA
	0Gp+OaMpsYI2Lp97m8TJINerTc6gOr75PxK209cA7CB3tyTKrkBZLWKfoBsb55VU6iJDYiGQOxC
	ZqE5MS2j2KcU9sL/3jmoVHJk2NWapc2uRasN25PVioNOh4OJZxrOazqzso380NIbpSarHLN7EPn
	OhpbwHZnW8DT+MEoCcqAWlklGRH1VR6ESxiEcF3Jn50zQrR6onil0Tvth140vzcrNniiVH0geDC
	AeX1KO/2TAo1K6WIDS9nvb47+Y2motVaXNiHBNKnUnCFAtbGIrUzvMVzwIjwHXda0Uqzb5JkboN
	B22rHHVeuN73yH/exGFVIBw==
X-Received: by 2002:a05:622a:1a04:b0:4b4:95d0:ffd3 with SMTP id d75a77b69052e-4b495d11860mr13068571cf.1.1756912473875;
        Wed, 03 Sep 2025 08:14:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3ugZbdxH7Mywin5NR6XHzSclz/+UkkqzuW+1UkBm9a3K2qRCxgaknMn8ihcTkzrrBdvAapg==
X-Received: by 2002:a05:622a:1a04:b0:4b4:95d0:ffd3 with SMTP id d75a77b69052e-4b495d11860mr13068051cf.1.1756912473181;
        Wed, 03 Sep 2025 08:14:33 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b040a410817sm1034669266b.101.2025.09.03.08.14.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 08:14:32 -0700 (PDT)
Message-ID: <c3de911c-e80a-429d-8a5c-c693546d4abf@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 17:14:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/6] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
 <20250822-a663-gpu-support-v4-3-97d26bb2144e@oss.qualcomm.com>
 <f11b778d-eba1-4712-81c7-b83f2cb38b46@oss.qualcomm.com>
 <exkrgx6rdotfrrsnklsd7zk4ydehsk5vaoevibpqisyq2dwbd4@sa4kgnuexlna>
 <f169be5a-faa5-4824-861e-27bd2083b9cf@oss.qualcomm.com>
 <t5pxum74q3fwf6wgcbaeaginjvtjfn357pkfswvafsggtmvxfv@jl5qjfhpmmow>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <t5pxum74q3fwf6wgcbaeaginjvtjfn357pkfswvafsggtmvxfv@jl5qjfhpmmow>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: I6vmqqBf1YO0ox2PNPgbTW6L7L2XcJSo
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b85b5a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=dNECfGFYMPGvbPEIsa0A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: I6vmqqBf1YO0ox2PNPgbTW6L7L2XcJSo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfX8G7pY/rIQgZl
 4qdOhiYIWysAE8AgsKJr8Xygl0w+/cWFPTfjvBThC+qzisbEyeQZ7KTDCPa2AE3CgTQvISVlj4h
 9xeZ4PB+MYoDkgWCq7r+RpowNYleGMUmPLuPW+jRt/+6cITNXGDn+/Vx7tlblADHVrY3XWA9GFm
 5K6r+EyNmi9nHsWRv9NzUkalw/TKLyOCW0XfofmdM0HHtIM1jqSPOdelIhPivONeBgBlxMx4Rkw
 4ucTbD5HhSVGZ5nOIkuCWsDD67cxt8HdHE3WlWKbr3M5bc7An767Z8so7FotJ7eu5DIXXAKq0zQ
 tE7xHpNrlW3yCH/VGH2d0WhxI+hmpwxe2zij1tOVZxIOAiX8Peebr+9aD32SBzVa7VeHjic7VOI
 K6P0QYN6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001

On 9/3/25 4:00 PM, Dmitry Baryshkov wrote:
> On Wed, Sep 03, 2025 at 03:36:34PM +0200, Konrad Dybcio wrote:
>> On 9/3/25 2:39 PM, Dmitry Baryshkov wrote:
>>> On Wed, Sep 03, 2025 at 02:26:30PM +0200, Konrad Dybcio wrote:
>>>> On 8/21/25 8:55 PM, Akhil P Oommen wrote:
>>>>> From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
>>>>>
>>>>> Add gpu and gmu nodes for sa8775p chipset. As of now all
>>>>> SKUs have the same GPU fmax, so there is no requirement of
>>>>> speed bin support.
>>>>>
>>>>> Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
>>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>> ---
>>>>>  arch/arm64/boot/dts/qcom/lemans.dtsi | 116 +++++++++++++++++++++++++++++++++++
>>>>>  1 file changed, 116 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
>>>>> index 8ceb59742a9fc6562b2c38731ddabe3a549f7f35..8eac8d4719db9230105ad93ac22287850b6b007c 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
>>>>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
>>>>> @@ -1097,6 +1097,18 @@ ipcc: mailbox@408000 {
>>>>>  			#mbox-cells = <2>;
>>>>>  		};
>>>>>  
>>>>> +		qfprom: efuse@784000 {
>>>>> +			compatible = "qcom,sa8775p-qfprom", "qcom,qfprom";
>>>>> +			reg = <0x0 0x00784000 0x0 0x2410>;
>>>>
>>>> len = 0x3000
>>>>
>>>> [...]
>>>>
>>>>> +		gmu: gmu@3d6a000 {
>>>>> +			compatible = "qcom,adreno-gmu-663.0", "qcom,adreno-gmu";
>>>>> +			reg = <0x0 0x03d6a000 0x0 0x34000>,
>>>>
>>>> This bleeds into GPU_CC, len should be 0x26000
>>>
>>> gpucc is in the middle of GMU, see other platforms.
>>
>> This is not the case here
> 
> Why? I think GPU CC is a part of the GMU by design: GMU accesses GPU CC
> registers directly from the firmware.

Correct, however this is only a similarly sounding argument - the DT
describes the hardware from the main Arm cluster POV. The GMU Cortex-M
core has its own address map etc.

Konrad

