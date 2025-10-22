Return-Path: <devicetree+bounces-229761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D07AEBFB956
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 13:16:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ADB3C4E5ADB
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 11:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B13E32E75E;
	Wed, 22 Oct 2025 11:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RHRMhbOx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC13032E6A2
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 11:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761131799; cv=none; b=HUPZh8c/X/pJZc80Dpl1kk3u/eKvmVzZyN5uWbwSYMSLOT2djNqZCLPA4va3M4OaJAsh7JbcNo4O5pLJyr3z6AdIiHw41HEdav2n0NScRYZIiuD+6kh+Rz1b79yZW7kzyKvHfN3VHOY3m6wgLHJ5q4bDYyR5ek79sXhHj7wfKWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761131799; c=relaxed/simple;
	bh=Jm3uLOZtRPxHI6IK3sy3F4UdLfXMgaAjhJr3zJ5I8kk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MIKsm7tfnWq20nTjbmHP30/5d8c/fl6tlic+D0aA4ks/ZdjlKyhieJpRYMEJogdyMpaG9LEY+9jYucZIrVG95T1L7VEbEfakPuWFsz75KphD4QwxYQxlCFyu4ZPd5LwPyVnOokfTpLD/VJfioQBDHM1njdtUXmAhWqNNMgvBAGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RHRMhbOx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MAwGYi031313
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 11:16:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2/XKwr4n4TC+ITwBrL2OP0RDLGxOxAW/3WtJ2aFNP9o=; b=RHRMhbOxHPMQOxKJ
	0bC5I2cBeDk3Q/JzcE/rDJ2OcrA+AFH5rjuOiFPotYhxJzUX4UBKkPgxTKCsG5mE
	6EasLvQxRsV/HistJlTJw5CqLGVmAe0zsRcgHgeQgDWGj6fNrxEX4eZ/ekmfJXla
	L3zRHLZILCndOWCHF4nbhNObm4zyzt3kAf8yzaXWVpCZwBD2UkcyajdYKwC/UEgy
	xWhPc8drdVA5nEunzehj4S/YwjcOb4gh43QiDqq14MZd73k/HSPF/nSjd2MAMuCj
	TMmh8VVjWXfRRA04QWiGv+HQylTuuPue6lmorNQM7O1Fu2h8mkJvkJFX126aQwh7
	ZhDdpQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge4cfx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 11:16:36 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-88f7d885f8dso252367585a.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 04:16:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761131796; x=1761736596;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2/XKwr4n4TC+ITwBrL2OP0RDLGxOxAW/3WtJ2aFNP9o=;
        b=vFkOkJmq5E/KgApjGosN9Iw3C1SmY1E+mPxuVGXe+lkORsEwHYnlYc28AADs2CnFge
         0JtBzuPdzTlciPn6JjSB6hP5NTXeUHr2V1xD+xLMyr1qd2xdR0AQo5cgaWDqQWPxlEZe
         Y/sCAtnPmkFYcXuIgOALRbeM6Dv99Gyg5JEy+A7p65Aq4mcySjcgjBA8kHu9JHztzVAL
         PEd7F+eluMzdypOiyhZp2KVEXQUB6mWd+yz2V94Z1+Ocm6JnEthIoRxiw9B9+48wl03b
         SkU+DI1Sy7kza/bYcvhHbVUFFjt9ndcjLIQYsPB+OO2RBMuxgZuwjvzeAlH112ZZWt4o
         SiTQ==
X-Forwarded-Encrypted: i=1; AJvYcCX820JibUiZz0ZO6LLz+kYFHEL37G6cscek9aEd06Moao/+taUOiWCPsWvQz2y/BvUGQZlc9PCNFKWT@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy5RyCCCaBO6Zlf3lIaX7MXt2XAKDg79A/lvsbIo8H3vYwJlYo
	Die9EKJeVkSbqOVMc3uDDSmapgPmT1/rV8Nz8h2cg0gjZXXPlcp+gStWSUhS5J65Ex480WV02Kf
	CXOUQHlBc1licvrk+sXvojhLyXhmdD3I1skO/6+BdtDH7gND7KYaB0Zs45JFx6sBg
X-Gm-Gg: ASbGncs9tWKjSnqP+DWKyti/YpAplldqcZwlQ1gwM26Bkn4Wei5KD8QjMKw0ng1O1PR
	I3qSSGWtvucZH2n3wXRJdpwuSmiBumfb4NMeo0H0L2RvCBfC4KvZHQUwioM9Me4s6fsoh6kf+5+
	V8T0NT2u9BmCsttQuw1W37BT7uaiudN3cjmMa+mA0i2jjAK7FUHIN8boMzLRS/UanNrNRhjRosk
	P4stnN8gdpP6amjNHvS5BjY1x916utiBs57kQKpzdzKVPHqZDtGwlP0PYCMEWXzsRKhhi5d52v4
	vqaGUpo/huXfAiX1bdBlPSPcOpSTvtp+T3/zDf96afcsjhYrDJ1h1AzHLIxtq8NXjfixcP+wKeC
	4T9/aDyB27CCRl0QRDa/Xom5PXDvjRqmPzYRI0kd4fulRjbkmgFW1ABvK
X-Received: by 2002:ac8:7c4e:0:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4ea117a5b7fmr52762721cf.9.1761131795785;
        Wed, 22 Oct 2025 04:16:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHeA3+PEnZOUseZLDtXfAVmeVdOnmr0b8PKWtvHThf68jn90VUbNoN9ykrr/MODPrJ/wV25QA==
X-Received: by 2002:ac8:7c4e:0:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4ea117a5b7fmr52762431cf.9.1761131795294;
        Wed, 22 Oct 2025 04:16:35 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb725f3fsm1315242266b.68.2025.10.22.04.16.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 04:16:34 -0700 (PDT)
Message-ID: <349b031b-7e2c-479d-92ed-52b7ae0d15bb@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 13:16:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] drm/msm: Add display support for Glymur platform
To: Abel Vesa <abel.vesa@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251014-glymur-display-v2-0-ff935e2f88c5@linaro.org>
 <20251020-astonishing-zebra-of-respect-1c2eca@kuoka>
 <d6ivp57mh77gxybjvvwpmqoc5fsy52yydtvs23bepwdxgkxhzj@ahryeick6yaw>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d6ivp57mh77gxybjvvwpmqoc5fsy52yydtvs23bepwdxgkxhzj@ahryeick6yaw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX7/XVrt9C5Ewm
 StxHBW7nMBgZ8bwXEDo3Fy9SPjNSbLQCrn+qkVJbLO6JziYNuDo9lmZCqgObTDaQgYj8l0GlmPE
 d1/HSESNsk51Ek9z29iAOvO0oNuH+0Hyv0uhEjh7erYgOCtWeMcDsI942XLQ1z+Ue7sv1TyxV1q
 p3x4CeDlAV2YJ9y0ikDDHUE2dYLv0KaVY7ar04gNa8zeFPYXZTxpqR6Fo2z8mTtbHulhJuf+Qh2
 LQGxaxxyVXceh3TbfpSY9zmIGddUIs9yNklr3m6j1STu7DSXlhzTW6HUwWK4B9lRr93Ae/KzKu4
 sQAmIGwGjn5yDvSmBVkXBhSnC+CAZ6rt62wS2jtg7+DEzxKnGzza346KPzSkPFOL7FcFR5gqfBp
 4mWr0iWQsBnLdgI062yGYVtm6JPx0g==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f8bd14 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=3ACIv-cKCvEmzLgNCBYA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: TsATwa06PUkp2jexdl0UMYSSRBppnH8G
X-Proofpoint-ORIG-GUID: TsATwa06PUkp2jexdl0UMYSSRBppnH8G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

On 10/22/25 12:51 PM, Abel Vesa wrote:
> On 25-10-20 12:40:24, Krzysztof Kozlowski wrote:
>> On Tue, Oct 14, 2025 at 03:38:25PM +0300, Abel Vesa wrote:
>>> The Glymur MDSS is based on the one found in SM8750, with 2 minor number
>>> version bump. Differences are mostly in the DPU IP blocks numbers.
>>>
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>> Changes in v2:
>>>  - Picked-up Krzysztof's and Dmitry's R-b tags.
>>>  - Fixed the bindings check reported by Rob.
>>>  - Fixed indentation reported by Krzysztof.
>>>  - Re-worded the commits to better explain the incompatibility
>>>    with previous platforms.
>>>  - Add the UBWC config patch, as suggested by Dmitry.
>>
>> Where are lore links? b4 provides them automatically.
>>
> 
> This patchset was enrolled with b4 due to logistical reasons
> which lead to losing initial kernel tree.
> 
> I thought the b4 prep -e should be the one to use in this case,
> but now I realized that has a different purpose. My bad.

b4 prep -e base_commit has always worked for me

git config alias.last 'describe --abbrev=0'

-> b4 prep -e $(git last)

really handy

Konrad

