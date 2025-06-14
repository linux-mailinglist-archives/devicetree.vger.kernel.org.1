Return-Path: <devicetree+bounces-185973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71345AD9FA6
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 22:11:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADDC83B4C7C
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 20:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B92082E763D;
	Sat, 14 Jun 2025 20:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ksqqlrLe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7AA18DB29
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 20:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749931867; cv=none; b=CEXg0BMqdKp+tNO+OaP2GwORi7qI8T/VxTSf2gkU7P12u8im1TM5WgawtgIyd/ypNEBGH4yT5BLPnSWUg9nVfoDZm4RLVoNfLRpT9X6Fuirb7Cl22KcMDwLkyM5ImTGj4QOFPZPdc4IuWeDV6YoLgIsKmjmxYZl8sD7YRH/pplU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749931867; c=relaxed/simple;
	bh=Lf9M7Zr6DW7RmmLY8Cgj4YgFzJGrLdOc6mEeFxy0Ouo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AvABc/sCnl0Fy1/RMw91oKE6JSueHTjgfyruNUmCgPZJnZwxa4bIMJ7DDHq7sfiaQdkqA215jk/2lOsvBHEtkW1/Jbzkt+au/QctatrDhCo862e6CIPSQjCUNBgmxfASwig1dkU6OStgf9XAmxpKdYvxRTzT92kDJunv1QaHitE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ksqqlrLe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EAjdH8003298
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 20:11:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0jNtszeQm2L003a+S6O026ShhafqRqBRqMlvofcvflg=; b=ksqqlrLelS/xBtJ2
	JJBd2+gV+QcROc8PTelvqKMDdMu1gkGamoh5Iz7q6rq06XbGwV2u5M4sFnDo/PG9
	mlYKK0Y1YMYsPvsfLgV0ekY4UNdb+PSFMV4KoW7nBTXORge2jYeqPjQyxbVYnaP9
	dZYWsnRVAVXviB63rqqazXHQnhZFK5Bc5ap+sAFi84VOzrUlaV0xIVWEYaizquNl
	WdsJ75HbpCERM9p0CVDj76YbUW8FLH+8f1ePtjZnRuqfKsObdKfsjEVVIOAU0UVb
	Scb4PIcQJuIqSMLuyBt/igP8HX4oOoxgczbWp7yPq6yjNr2RfstBVvmjUDXsatSU
	R4Yz8w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791ht0yd8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 20:11:04 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c76062c513so79559785a.3
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 13:11:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749931862; x=1750536662;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0jNtszeQm2L003a+S6O026ShhafqRqBRqMlvofcvflg=;
        b=b467AKlGIrB3D+XEx4d1WCWCN9U4uabzH0cZSu0lPJBvPHRD64/Zcz6rx41kCOqDlW
         HDgnBW7fvxXpyX0XscD5S0UwTLP/KUJ/Sp83vbqeIi14QETzktQUlmDrHCw6WU1P0ne1
         Rmmr9S9v0cCREJPV7sTvwLQe+398LX3HmGVkDEJH8/PimrZuGgTRS0D0o35YS76AEGim
         kQNon9oxKVBkTC33xAZYtWrfcp/kYTmYt7jXPtbUgkrnAfBqAROH75aBAs99hWMFUhbW
         0cO/Cij0C3n0LnrHrwt2Ae2LNd/1sgkxQ2qqSoYgQ/W6rrcygL4xUUq9IgzjqkYU8o75
         ck8w==
X-Forwarded-Encrypted: i=1; AJvYcCUzSJEkQMaeOe4qFWkRTcOuh5s0NoM+8aDBBU00zorLn1bv3lKRjzr2pvwXSTWhPV0oyfxfmCuwKGZA@vger.kernel.org
X-Gm-Message-State: AOJu0YylkxGNBUA8GwXrIzSyQ0PxiHQz1107ChTcknXJl4IDOCNCSzxe
	UDY3kpYe2RXKSIkTQ9sazVqDvACgJR+pnty4lAMgonPdfdv4cnw/yglMNwuVzWCurlVoN/pK8vM
	yDWNh3SCTkyqZ/rJbSYHMs3meH6ehPaMUXKmxk1Lm0fJ+nIBYyFVHFfTkvc9ZLnnB
X-Gm-Gg: ASbGncuhDvJKNbsABwhD2mKD2GFE93Jf/TwHsMDzeAeu/nm8cfIxwZHCc8rxNEwz1I9
	qYc0uNClEFcpSc5Ed/EVCK8MueMUGQ7/7EEWnVnjaZryxSFhRZoghTDoO2wu4a+aHgjZN87Y7i2
	2MKcIwJdx1WFvz2aikm1oMja2Db4Xp1P4hRX9yVf/pY5xZVPXL3uCsGt8LR0h4lwAgCW7b1d0GN
	DACe4tR2gLodn92MlKvopCC1zbwJGgDnctw+H2I7PjSlTiAp0BZ1gd9B9qpld0xuKX6i7Gn7uvj
	9OTslv2E7fFxUmJCIdv9xgURPCIuEfwXdbo8zGuEyHQSiIYOHfL8GPx7yof6GwPyvyw8LEoSHT/
	KuN4=
X-Received: by 2002:a05:6214:1d23:b0:6fa:c6c0:47dd with SMTP id 6a1803df08f44-6fb477df5d4mr21509606d6.8.1749931862556;
        Sat, 14 Jun 2025 13:11:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRES697/oN1AQmDhdRQilCw0Ubbzj8UpxMJ2bP9ZmoY9s77DbcZSICsQ0QM0NVB4w93RwYIg==
X-Received: by 2002:a05:6214:1d23:b0:6fa:c6c0:47dd with SMTP id 6a1803df08f44-6fb477df5d4mr21509546d6.8.1749931862145;
        Sat, 14 Jun 2025 13:11:02 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec8158bf0sm355754266b.26.2025.06.14.13.11.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 13:11:01 -0700 (PDT)
Message-ID: <74f7053c-10d6-4aca-a87a-0ac7f55c2f1f@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 22:10:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: rename bus clock to follow the
 bindings
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Mahadevan <quic_mahap@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250602-sa8775p-fix-dts-v1-1-f9f6271b33a3@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250602-sa8775p-fix-dts-v1-1-f9f6271b33a3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE2OCBTYWx0ZWRfX1KJsKNE9vtGM
 smZQAb3TUjU/GZ+TguDwBPAOjgJ6ojN8eHCp+lkauRrj1jVQHXPVyCsabe88XN8A+sBJWH8g4Lj
 7EDaK1a5S4w5IDcMCjxFAvQoCbM0khgSZor0AIePlTR56+HPVhnXKQFxgFC2Esm4MCnR/cIkSiZ
 fZMHOZnCUoL/NiTKcNTuiBvVMZUqFyYrA2iaEbWAIbVKh0fTJ5hm24XFk6GewhuZXQQpwiYgLGr
 Glrf3B2fNbQaloR+0Uxl9HKYwm9O/5cpqho4hmuV9WMcD3vVz6T12aqui3KruGyyvEnurfiCFd9
 vYXrFgP17P7ipx+fD2QVssPzrIf7kEOFzoFW5r7Ux6JuxraBIspsiFzFXbupLieE7k5QrJTEAYR
 NXetG8u269NmWzQc09voPbNvOxenQxIU/OLs+lTseg5/aEuYxK9XawEoX+9rcVK0QdMHwY7y
X-Proofpoint-GUID: 54clQ7KkGhHtHcfAkG3n-uYeXDBZ18kz
X-Proofpoint-ORIG-GUID: 54clQ7KkGhHtHcfAkG3n-uYeXDBZ18kz
X-Authority-Analysis: v=2.4 cv=CtK/cm4D c=1 sm=1 tr=0 ts=684dd758 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=3CVIpg13t1iulFfMIbsA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_08,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 phishscore=0 mlxlogscore=896 adultscore=0 impostorscore=0 malwarescore=0
 mlxscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506140168

On 6/2/25 9:23 AM, Dmitry Baryshkov wrote:
> DT bindings for the DPU SA8775P declare the first clock to be "nrt_bus",
> not just "bus". Fix the DT file accordingly.
> 
> Fixes: 2f39d2d46c73 ("arm64: dts: qcom: sa8775p: add display dt nodes for MDSS0 and DPU")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 45f536633f6449e6ce6bb0109b5446968921f684..7eac6919b2992a3512df1e042af22d0cbad04853 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -4122,7 +4122,7 @@ mdss0_mdp: display-controller@ae01000 {
>  					 <&dispcc0 MDSS_DISP_CC_MDSS_MDP_LUT_CLK>,
>  					 <&dispcc0 MDSS_DISP_CC_MDSS_MDP_CLK>,
>  					 <&dispcc0 MDSS_DISP_CC_MDSS_VSYNC_CLK>;
> -				clock-names = "bus",
> +				clock-names = "nrt_bus",

Is it the "nrt" clock though, and not "rt"?

There used to be a split for non-/real-time use cases, but
I have little idea about the specifics.

Konrad

