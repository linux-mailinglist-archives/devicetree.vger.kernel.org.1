Return-Path: <devicetree+bounces-232625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E7109C197F3
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:53:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A05B404F82
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8D032E9EAE;
	Wed, 29 Oct 2025 09:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nO/CMfSu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bJOyBa7U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFD92DE1E0
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761731321; cv=none; b=mgwor2APV0vdeM4HjtSTCYHP8DV+8G5UpD+reKXNNwnsRXZtKIiGtZOvIgE7OcNJq4ud5DpJ9QZjSjP6vS3Uv4fuWohtqgdiQm/Q3Pfd6vN45yshO6JF/Xja3hcLOi90+LBqtehd7j/l0hA+1WhGXk2jOhb4CAZErdDHKBm4I4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761731321; c=relaxed/simple;
	bh=mSRviZJT8nrfv6oBTvNwoSXnVUlvfTZTNBlekRcUmq4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lIK5I5qoe8b0Ngufbfe5ZJjFCzMA79oy3TKkDvjMK4+YfzF+TAi8N7RfuFGUMOBJZZoIGPp0jKt7fEzIa2w0ldp3pBa5U+k/MY1rnHgIWHxDcLdzPxI+TEigpmnJkTbZ2Y1vTj9iShYkwtlsdVHgS9LZQJfCji2VDEIxrn5xTVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nO/CMfSu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bJOyBa7U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4vGRa3678128
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:48:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NXDJ/8mR0gw8cqrsb4EfbpEgu/FMCndzU0gyJwlxJA0=; b=nO/CMfSuJgXwZrsB
	YE+XH/1kPNG8FZ5xCpIE6LmWig76BSInQpp0cgV5alWrfp/5Wuuw1FXPBSwadAcr
	STCYgJbM8MAze1N/XVAjYSHHZn72PgbHkKrX06XB1rZaB8vLC0kclkOq29RhH9jp
	bOoZM4CkvHPzZfJYJruybBCPvDOVh1Vq8V7jvsljdmjNnzr0WDrPV+Ua6uHJ5tgy
	iZMNKcDbX7RsbEgsrMI6Ub4nd1a8Uj4ovZ0GM6RLFYIUs+ekSi6euimzvRUsC4so
	VicIKSzmvDWl7awoLeGR4TOjw74n7GiVfxIv5BZ2LLcsWp/juN7uHyxY3ExWYdGR
	QPKF/A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1j1un-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:48:38 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed0633c433so8359081cf.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761731318; x=1762336118; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NXDJ/8mR0gw8cqrsb4EfbpEgu/FMCndzU0gyJwlxJA0=;
        b=bJOyBa7UlumeEP2844E4+c9faKK7Edxe/2g4A9DE+sVuUaYW2pY/PTlL3Ycv36oO8z
         ubtQT6c5YpISvgvVYDDjcyqrYFCnlnEbeQ/EDfsi5PkG2CamMFxGuhaq6qVVjLGANThc
         DfHWQUlry0qHE5i3N2Q+6FHfbnPL9pnreKplaogj1JCLS3fE+ITUd/UI5dlx13cEHGhU
         /ws330l8V2Qi3Db3G9oISB9cumPYwK0PD2AIyQUWf41QzrjmDT7usEiXXSqNx51vz2qg
         8+VEdg7k22nUgGEK0ZcSycyZfMwzHfoIGI3TTLq5iXVWu4bAeFdiDZHM85hYoOAxoiw1
         Bv9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761731318; x=1762336118;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NXDJ/8mR0gw8cqrsb4EfbpEgu/FMCndzU0gyJwlxJA0=;
        b=LIShsP1aYeJCv/pVXZ7dAR96xNUA4IsY6bxk7oAaoH4BvkcwtHvRyUWFU1LQQjVLYp
         B25v7yOVuLe2f+XDbO7Y1ftRZqjW1T3QIP7186eUHDpDcZL/Cv2YvoM5sXk4sQnlMY6X
         +T/WjNTEzX/zgI0pj0f0yusBa9IuDsEP6yc2RVMspmkGtOzyOSq3Iw4c4JInU9m7qbkA
         BmzUSpG4cxxvYhx9pdW1XawebV6ze17+kJAbzvH574DdzlWMYVQBuOe7nfTW7fHDbOl1
         zs83BrUbMRZIoCL/G4vPlL7ybr6uMBBNIuHFuBQlBQX+DqCEZYcx1/IAWfXNgWkJYx4N
         lQZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaeLkPm4QHwHCFrQV9caNY4HhvDcoFVGs0KJiKzD+bMLyOWnr/6xCO8Osrf/68gGlFoCIgKI4jbJ2a@vger.kernel.org
X-Gm-Message-State: AOJu0YyF/N2nVXTNyqeMJ2uvzcFs4z5ig4EESHnoQVljQa5IYfV595oY
	7FXauzdVOTZwWanWvFnTwB8LYaBj3qz0HeZAeOO9RV8xOStv4rZooYkzP3w20NK2wFZjzAJQd2s
	qZhs/pSyy7toUXRa9uclRlRXA+lBXeXKyWDNI6L6iroFsyFBD10sVAohkHENfG2e2
X-Gm-Gg: ASbGncvuASlHyDcg4EJ6JgEh7ctpKV/uEMVCOoz2czgXW0PWV911IOWMFMxRLWdBZM1
	HwZE+9skGCFoBhBEz0Y2IDoNcv6rtkcHUyEwooOL+7aqMFGbhAeOi+yyPkKqudsUwagGtqPdDrz
	nFqOqpRpXyHDUKgcye2CmETyrB8EXwwFrVz8ufa1cVPruc26JkOTjblITLmWBYnzgmEH2TuIVeb
	DW8OKWPDleQQBeXKKgawBkP3jlzvKHZLc00yKwzfbC97AoW3jnXYZ9PrvrpcbN54q3OqV7mJ/jR
	EUnKuA7Ifs4HECnu0ymblaOWd4MNAjOGIDdw9sOCyCMLdjj3xrJ3HGNZrsZ5jx+hglMQ3CiBbX2
	whp6oJQ4qzqLGQLSGIlokQYxeDq8rJ5Ld9Yda0forWk12rZnyiWCDLAdl
X-Received: by 2002:a05:622a:24a:b0:4ed:7ce:8497 with SMTP id d75a77b69052e-4ed15b5b4admr21772851cf.3.1761731318148;
        Wed, 29 Oct 2025 02:48:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYOEqIUpR3rqvcOHQdFhJnl6mL7OfMUA6zGCTArqO2LmMgBKniIZv31BF5P5aE2+XJqdUc6w==
X-Received: by 2002:a05:622a:24a:b0:4ed:7ce:8497 with SMTP id d75a77b69052e-4ed15b5b4admr21772471cf.3.1761731317612;
        Wed, 29 Oct 2025 02:48:37 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6404de640fcsm757954a12.8.2025.10.29.02.48.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 02:48:37 -0700 (PDT)
Message-ID: <c7c26f26-4e18-4f54-8c88-69ce97345e86@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 10:48:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/12] drm/msm/dsi/phy: Add support for Kaanapali
To: yuanjiey <yuanjie.yang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
 <0291d0f2-483f-48d8-8c75-f1bbcd1ab18f@oss.qualcomm.com>
 <ehgdx7av3jewowkvtsqrbnsphgxm5hryl6n5otnapi4xneldze@gcwvpssisv2x>
 <aQGHyN19/a/tl0BH@yuanjiey.ap.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aQGHyN19/a/tl0BH@yuanjiey.ap.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Nu/cssdJ c=1 sm=1 tr=0 ts=6901e2f6 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=fe0abWBLJpTHcFswpKQA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: nMQqfDswLlM2fnFwA6OoUjRUNyjoizFP
X-Proofpoint-ORIG-GUID: nMQqfDswLlM2fnFwA6OoUjRUNyjoizFP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA3MyBTYWx0ZWRfX8s0GeXQlqMdB
 Ei2Hs2PFsJY6LQCyIRf/fY1Eyit2nVliC/EBk2Q7p15+a3w5BUXCE2grsJ4aS9RciYhz0b5uedc
 VRtWF25MywniXxgrlqaHLmi7D/l8XIItBNAOthprFbY7F5E7BzD3IV6nRumfIbqwZO/j+5d3vpX
 aXS4Xlg8Vsn3B+0zgzYR/DFRT8ujLsUV7gEQyiOMMJ4yqEBHYHoy6oKCj6U64+0zHFWrffj8euI
 InKOeuG98ULTq/w0pYlQklLBNzKB8fXPYhy7Hrair8rJDuUpydZ5mQvOFfUlJ06lqZYtL7ktNZq
 Gyg8y9hU8mgO0Sekuk5c3Jg2IAeoJAmpuG2nqWKiaBexK4DfQpvjKobD28H+NZmddS2wEI9fDKu
 X8bkR8i+rDbo05OEScoXB3S2gvmMVw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290073

On 10/29/25 4:19 AM, yuanjiey wrote:
> On Mon, Oct 27, 2025 at 03:29:40PM +0200, Dmitry Baryshkov wrote:
>> On Mon, Oct 27, 2025 at 02:20:26PM +0100, Konrad Dybcio wrote:
>>> On 10/27/25 2:14 PM, Dmitry Baryshkov wrote:
>>>> On Fri, Oct 24, 2025 at 11:27:53AM +0800, yuanjiey wrote:
>>>>> On Thu, Oct 23, 2025 at 02:02:45PM +0200, Konrad Dybcio wrote:
>>>>>> On 10/23/25 1:48 PM, Dmitry Baryshkov wrote:
>>>>>>> On Thu, Oct 23, 2025 at 03:53:50PM +0800, yuanjie yang wrote:
>>>>>>>> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
>>>>>>>>
>>>>>>>> Add DSI PHY support for the Kaanapali platform.
>>>>>>>>
>>>>>>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>>>>>>>> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
>>>>>>>> ---
>>>>>>
>>>>>> [...]
>>>>>>
>>>>>>>> +	.io_start = { 0x9ac1000, 0xae97000 },
>>>>>>>
>>>>>>> These two addresses are very strange. Would you care to explain? Other
>>>>>>> than that there is no difference from SM8750 entry.
>>>>>>
>>>>>> They're correct.
>>>>>> Although they correspond to DSI_0 and DSI_2..
>>>>>>
>>>>>> Yuanjie, none of the DSI patches mention that v2.10.0 is packed with
>>>>>> new features. Please provide some more context and how that impacts
>>>>>> the hw description.
>>>>>
>>>>> Thanks for your reminder.
>>>>>
>>>>> Correct here:
>>>>> io_start = { 0x9ac1000, 0x9ac4000 }  DSI_Phy0 DSI_phy1
>>>>>
>>>>> And v2.10.0 no clearly meaningful changes compared to v2.9.0.
>>>>> just some register address change.
>>>>
>>>> Addition of DSI2 is a meaningful change, which needs to be handled both
>>>> in the core and in the DSI / DSI PHY drivers.
>>>
>>> DSI2 was introduced in 8750 already, but it was done without any
>>> fanfare..
>>>
>>> I see a diagram that shows an XBAR with inputs from DSI0 and DSI2,
>>> and an output to DSI0_PHY (same thing on kaanapali - meaning this
>>> patch is potentially wrong and should ref DSI1_PHY instead?)
>>
> Yes, I check ipcata Doc, I see DSI0\DSI0_PHY DSI1\DSI1_PHY DSI2\DSI2_PHY in Kaanapali, 
> addition of DSI2\DSI2_PHY compared to SM8650.
> 
> look like I should add: config io_start = {DSI0_PHY, DSI1_PHY, DSI2_PHY},
> 
> Do you thinks this fix is OK?

The MDSS documentation says there are only two DSI PHYs, so perhaps one
is not exactly implemented. Let's get confirmation of which one that is
and keep the two functional ones.

Konrad

