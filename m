Return-Path: <devicetree+bounces-214478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE86B493BD
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 17:39:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA46C1BC0376
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 15:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 609D33054C3;
	Mon,  8 Sep 2025 15:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kr2tOBst"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A735F1C3BFC
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 15:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757345953; cv=none; b=Pc0jZWRdFwebbkg2Wi6DXoljeMtsacyc9Ok8uvHcNcTjl9FEMiItgIE9Qj04XkLh5x2ygw92uUaVbtCVXC6h98KfBiAAwMrq86FiUNyxqazv5Fmws/myvOk+naVyIcvhD/jr2ocxm/txqDaFsUzWEcC7kIbo6ClPxsk4nXOhdt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757345953; c=relaxed/simple;
	bh=hmxNwUU2zcaMmfH9+5ewG2jsk0T1GNdeIH4b++rXjvM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cKdkGK+5E/9ec7RIDzarURVSQDR8oVUzdLFs6hj3DHo5BpuGD5CRLbZXOWmYITlSnHcyuGbBC4qNjmlphuyEqERp9pvXKudTjL4OhbMl8StVKPzXNpriFmqCC2PB+K9IgawjUdDzENqrMa6yvFjaitxWuO2ueehJj+T1oayOOGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kr2tOBst; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5888e1u7023525
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 15:39:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9ix8Lxn9DP2aA0chOL91fW2+iXcks/DUCOCWwGLcOgI=; b=Kr2tOBstZ6FlTNhO
	h+ImuNoASmfh+AhJM9R4LNr1x87C5DPsXFQIwrrXGYlGj9O9/ECKXyEg0g84gRev
	7L8F/8LVRbJuOUv591x2ewQLznBtxspvcp7r2Edaq9Z3xNBLvwhxkc0nupfHMCFW
	NZiLN+Zj2nhn+cqfK1/1+OFhXHokjCmM3a522MndM8IqbRJ2RZcSXwiOlFQmkPva
	VnV05oxNXhw157PBFwTgUbys/c7ixabSE8pE0GzmFLDlAxGyRByhgBvNFY+otpbW
	uuZGfw/DqxL6PyYQ4sSDtCybmI4OxX3CFcfyxZCixulNEAGa3stSv1+HAsRWJRuj
	hFsnpw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8d2rb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 15:39:10 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b5f92a6936so10035121cf.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 08:39:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757345950; x=1757950750;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9ix8Lxn9DP2aA0chOL91fW2+iXcks/DUCOCWwGLcOgI=;
        b=HHO/frHk/PQwUVdiKZjcb4HIx31U27Oe7yMfgn8tRvnNAW0omdpRA79XZEnH0RFzQt
         JjVHffMOV+zJpoHvO1CZT4+8Ve9XR0XvpHTPJSCfFAYeXXbzJF6Vv022aYU2g2oO1BQU
         0Lz53AEYMqw8uMknsfhwexQOCxyxRb2BeU7PVhC5aLzyCxTlSiR/CvUOHn5tWBTNS0i8
         epg1+aVRK6Y7btwCGZUFkQQimCTRY4S59qVmrfMzlS7gXb4SgwScTygwrg2ORqjoTVx1
         WXP3JOOMly0yKRzEhpMfOvOm+mEDwFqTZi8nJg/UEnG4aCJ3s/EHGi5ODRIFRiWj9KJk
         6DVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXeSNwE7HlBsJtxkRaKBctrzZRbB6uspQ4zeiXbGYER+qC47xD5qiKEJiAeB2WbQbDttw2aVHdu76iG@vger.kernel.org
X-Gm-Message-State: AOJu0YyVSkQoQsqzRqhE8CrSvYOg+hc/crm24UkFL9zWFTweAWeZNsik
	ST1bIfrWcRNOjtMq9WdnR7xKD6mTXzCZ96H+Kecwlc4dM9T7UmiotcvJ2pLQ6eXbMdFtLu687Dg
	yqTFamlrE1IQ6ZsKIGi+gKN3CohWhhCR9+UZh0YwC2Li711AYXuYmUZNcsI8UV16z
X-Gm-Gg: ASbGncv+3LhBuxC5BTkhKjv+Xzr6lfz9bv0cp400M0DA/7ZKhapDx6yPGL7OO4evuyV
	R1XVN2qIosbmoI834xMCNluppjxDEuZ+mCjTxtpIr6e/Qcapu1BTxxmFL6gqbpRI+KgsQV4e+tm
	kPBLuCYJUsvh9XucAs18KCBps4gAY7vi8ZZkSdE8pfy2kH9WsiQy+k99LBe9uDFAv+xZI63kdDn
	4EA4smwrACfQGFD6RWgYXJHWvB+BGnJRk7H7PWIGMJMiSBwSp4Z7bLufS1nJlV4v3pxgmSwM339
	Xmp0rP7TiUtq1HUFCgckaSvbeVhimCCzFv9/BSattabcVqi+sUe/5SPaLKXyKZl5/3gncK70LCm
	ElPqpaQ7WbEeWbl750+zoag==
X-Received: by 2002:a05:622a:19a7:b0:4b4:9070:f27e with SMTP id d75a77b69052e-4b5f826059cmr55448971cf.0.1757345949562;
        Mon, 08 Sep 2025 08:39:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSjAuw3MqqByPMWEwcaVGXJrt8t0L5vdGx6BjurjDCr+ZzKHljYEOvuS1tfcYm8a1jnOKGwQ==
X-Received: by 2002:a05:622a:19a7:b0:4b4:9070:f27e with SMTP id d75a77b69052e-4b5f826059cmr55448481cf.0.1757345948792;
        Mon, 08 Sep 2025 08:39:08 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0423ed35e4sm1961096966b.25.2025.09.08.08.39.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 08:39:08 -0700 (PDT)
Message-ID: <5bbe77f0-185f-4905-8097-8769f0d5f518@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 17:39:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/6] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
To: rob.clark@oss.qualcomm.com, Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
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
        Dmitry Baryshkov <lumag@kernel.org>,
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
 <c3de911c-e80a-429d-8a5c-c693546d4abf@oss.qualcomm.com>
 <14b5db9f-8b31-4baa-a03d-12112425fbbe@oss.qualcomm.com>
 <CACSVV02h8AUX8WtEuu5w-g2XnfBkfozHQQ15zGK6+LVX_w=d1g@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CACSVV02h8AUX8WtEuu5w-g2XnfBkfozHQQ15zGK6+LVX_w=d1g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX9WM0WI+mePUE
 j3+/XROQMoYPNmSjUMBG2d1+ocZW5WVG4gVMzujok7YOpXAecFaP+Xqb8jdQ5KJiVWXFXpd2joG
 sUd+WZ8hD4sVzaFSY2E7K/1mRKImHpSuQ12igPN9KkFppW/PzgZ4pZy+apRBPOIyZx3HkMuMh/Y
 G12N/fAEjHQWSwBgr+XyX3MmT18eHX+wyqSYq36qA+MI35AVRh/RYsorg+/OHj5UWL1Fe7pHSE4
 uxs5K+8K0eiTBD/QSqB0FluGUR22cXea0ROH2bOt9E76vsRWUU8Rg/hQaQO5eF76hhbhllZ+Xaj
 YCajVvnJjKfqkbS7dFqzJGJYn01JVeKm/sXJegUI7YXIzQc7zAERRof2vMTD705rZFuQlp5Cx4b
 XblzL78Q
X-Proofpoint-ORIG-GUID: -19a2aVWs2lzM3y62hLAkBmbwcCEFcCa
X-Proofpoint-GUID: -19a2aVWs2lzM3y62hLAkBmbwcCEFcCa
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68bef89e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=KKAkSRfTAAAA:8 a=am1a1fgwjgo6KoPeU6gA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_05,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

On 9/7/25 1:02 AM, Rob Clark wrote:
> On Sat, Sep 6, 2025 at 1:56 PM Akhil P Oommen <akhilpo@oss.qualcomm.com> wrote:
>>
>> On 9/3/2025 8:44 PM, Konrad Dybcio wrote:
>>> On 9/3/25 4:00 PM, Dmitry Baryshkov wrote:
>>>> On Wed, Sep 03, 2025 at 03:36:34PM +0200, Konrad Dybcio wrote:
>>>>> On 9/3/25 2:39 PM, Dmitry Baryshkov wrote:
>>>>>> On Wed, Sep 03, 2025 at 02:26:30PM +0200, Konrad Dybcio wrote:
>>>>>>> On 8/21/25 8:55 PM, Akhil P Oommen wrote:
>>>>>>>> From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
>>>>>>>>
>>>>>>>> Add gpu and gmu nodes for sa8775p chipset. As of now all
>>>>>>>> SKUs have the same GPU fmax, so there is no requirement of
>>>>>>>> speed bin support.
>>>>>>>>
>>>>>>>> Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
>>>>>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>>>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>>>>> ---
>>>>>>>>  arch/arm64/boot/dts/qcom/lemans.dtsi | 116 +++++++++++++++++++++++++++++++++++
>>>>>>>>  1 file changed, 116 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
>>>>>>>> index 8ceb59742a9fc6562b2c38731ddabe3a549f7f35..8eac8d4719db9230105ad93ac22287850b6b007c 100644
>>>>>>>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
>>>>>>>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
>>>>>>>> @@ -1097,6 +1097,18 @@ ipcc: mailbox@408000 {
>>>>>>>>                          #mbox-cells = <2>;
>>>>>>>>                  };
>>>>>>>>
>>>>>>>> +                qfprom: efuse@784000 {
>>>>>>>> +                        compatible = "qcom,sa8775p-qfprom", "qcom,qfprom";
>>>>>>>> +                        reg = <0x0 0x00784000 0x0 0x2410>;
>>>>>>>
>>>>>>> len = 0x3000
>>>>>>>
>>>>>>> [...]
>>>>>>>
>>>>>>>> +                gmu: gmu@3d6a000 {
>>>>>>>> +                        compatible = "qcom,adreno-gmu-663.0", "qcom,adreno-gmu";
>>>>>>>> +                        reg = <0x0 0x03d6a000 0x0 0x34000>,
>>>>>>>
>>>>>>> This bleeds into GPU_CC, len should be 0x26000
>>>>>>
>>>>>> gpucc is in the middle of GMU, see other platforms.
>>>>>
>>>>> This is not the case here
>>>>
>>>> Why? I think GPU CC is a part of the GMU by design: GMU accesses GPU CC
>>>> registers directly from the firmware.
>>>
>>> Correct, however this is only a similarly sounding argument - the DT
>>> describes the hardware from the main Arm cluster POV. The GMU Cortex-M
>>> core has its own address map etc.
> 
> but the firmware is part of how the hardware appears to the main arm cluster
> 
>> We have been keeping GPUCC region in the GMU's reg range in all chipsets
>> for the purpose of coredump.
>>
>> Can we leave this as is until we have a mechanism to dump these into gpu
>> coredump (via gpucc driver??)? I recall you proposed something similar
>> sometime back.
> 
> IMO we should keep this in the GMU range.. if in the future we have
> some other mechanism to dump gpucc state, then for future platforms we
> can start using that (ie. new dt but old kernel should be a thing we
> at least pretend to try to keep working), but for current/past
> platforms we should stick with keeping this in the GMU's range

Eh, right, sorry, we discussed this with I think x1e, let's keep it
as-is until more infra is in place

Konrad

