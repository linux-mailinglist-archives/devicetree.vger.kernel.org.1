Return-Path: <devicetree+bounces-125734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5CD9DF13D
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 15:40:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7A23CB2113E
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 14:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C94AB19E7D1;
	Sat, 30 Nov 2024 14:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IuQxLG12"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF3719B3C5
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732977600; cv=none; b=KJWGShDqqrZFOCeTeO+MJAIRH5baU5VSMVEerfEQRaSPkWEgD6VpoLQanE5+9J+6+Jeg4NspZerBnyzV0J0rYGWvyzTCS0t3nSPsZZgVGmtWmuqHmYp/ZSADW5MGTenmYFzTWLr12bFkPyIZ9YyqYzeCfzPtRBKyu13I3CitOMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732977600; c=relaxed/simple;
	bh=7wo6+OwAwawRl2fUWf8Sjtpk/jR6z5MOcsfGNdQvYk0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IN8sub4ndRu7o1i9w7KXdui/MoWyTtfr44wJ8zo0A5o7z9+08kjlwwfDhwTR0H13EfNpUKSle7WXVo5qBkWklBAURb2dZI9EQ0+xG7J4G4Y2EnPmVHiWYk6rKjB+VKdi8xl3y2zcL9Pxz9EC9sX9RxKyhWPX+Jf7WsesMjCtlRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IuQxLG12; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AU0rtRa002195
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:39:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qEL9pcYOfgLTQITjWY+X3oT7hMHawmthCsfXN2Tn6Jc=; b=IuQxLG12sObDcQd3
	7kd64oHFsZJxbkHnm74JMptW/6jTwZqHUY6gBmAwlwr5cVIG48BpK8vE54ZcWKqY
	YDUICV7w5wZSI9UsvkBeZ1qdoBgVAO/ZJxAddpuR4eqAsfZbN5aPeWOxA5NQx6DL
	GNGNliwkhjGBhWIWd2hj+zqrROCmR7lArXj1d4+VmVwEUqyBSjAR2f9h3CdoO2GL
	XDg0ftNKWlmNPgGMnBZF6x2J0qB6A0PQEadZ3sOHxNc3vRf9L14Cmz8JN9/39Un7
	dGzaG04K7udDwY9e8QrjAu4UikdWsu7jKSN2BrvKCwMO1fw40rCH90n7tKKnN6tE
	mZ6KLQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437rde92e0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:39:58 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d880eea0a1so6537636d6.3
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 06:39:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732977597; x=1733582397;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qEL9pcYOfgLTQITjWY+X3oT7hMHawmthCsfXN2Tn6Jc=;
        b=AtsbIA7wvnQy0+SxsHRNjnyhAfcZf//Tr/ZqtKdFrEmeS5QCuGGa2MomYetDxomGy2
         n5khHCAcV9AFQjzZtSOl0LyRwKQdsu1BKRYqzomM6WKwNvP+SpONlqXJYvtanbEhY2jK
         /Am4JteZ++Am+C9fvEl6shOQf8oaDAWVmNVVzDY8YRTBfdF03I+oIRHn2QCTNR/WRXvR
         qyeVnqepkeY1nj6K/OFjvu2lbcXA9AX2FNxgUVBkYCYhqUvIGmtD3RkL/UpoO0EPEvCQ
         iN0hcXAw4BmKbXaFCO/uuY32E6HxNF6HwXqLcoe8RR8PatcmVNl3G7mZ6RA97sF8Jf3J
         3a5g==
X-Forwarded-Encrypted: i=1; AJvYcCW2IrVLIvuYWTOPZAiqstytuNRZvsteYsjELkg777CcELTcXPH2nkBz+KeF/Prx0Zzwvr/wO0hANamV@vger.kernel.org
X-Gm-Message-State: AOJu0Yzdv7vqzaZQIAXUGOr5iynHJjrmWUQK1SHhU6bk8VCwG6B0jyUy
	sgS1F7Xamvm4w453TnMyKBWz+MuHCg7GIH0vyEmL9ihxNXAi68oMhVY8r7O6K7vwyumVHS/ppZY
	eHQ8CF/2hJ4ZwY497RMGJKc8wxQBoc94c5xyjXP3SzvL7sA+GDRRFRvvjTQUO
X-Gm-Gg: ASbGncsidjAoPAu8QLF3bEiRtK5VV5C+6DXlymVGxlMpN7iigdYQ4c3hdnQNFnRdEIF
	ZjjFIF4+CBsF1bqJF50Dk/7nLDWMhLSeoCPrhxxfSP+L3LRb9v7NEoRyCinBWwW+C3kl9bfPWhH
	fxB9AfSQHf1T3G0ICReXgatDsPPQgDnMKGVcqjnmZrye0nqpctb5KSut1jnaTXDByzio88iloSl
	unlcVMTddutVBSCGK/UqLHPuPT5KyleM9Cq63362RYx5WurVpG05INFb4pFIEC68i7Te/rxVhbP
	baO4gmftxN+PoxKyVOO6YdElPsBJSOY=
X-Received: by 2002:ac8:5744:0:b0:461:3642:58ab with SMTP id d75a77b69052e-466b355451fmr103068731cf.7.1732977597074;
        Sat, 30 Nov 2024 06:39:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQOG0vLo7hDZ+FO3x1hWCxs6Z3dM5YMOYTOSUdTk4Ker966yT9GnTf5F/6weefhgqs0kAYUw==
X-Received: by 2002:ac8:5744:0:b0:461:3642:58ab with SMTP id d75a77b69052e-466b355451fmr103068581cf.7.1732977596691;
        Sat, 30 Nov 2024 06:39:56 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d097dd685csm2869863a12.44.2024.11.30.06.39.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 06:39:56 -0800 (PST)
Message-ID: <01673652-e1fe-4478-bbeb-f532e3358e8f@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 15:39:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] RFC: arm64: dts: qcom: Disable USB U1/U2 entry for QC
 targets
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, quic_ppratap@quicinc.com,
        quic_jackp@quicinc.com
References: <20241107073650.13473-1-quic_kriskura@quicinc.com>
 <f15c4760-b52f-41d8-9dc7-3896879b3ca8@oss.qualcomm.com>
 <1d6bb573-6366-49d1-a921-cb04136627a8@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <1d6bb573-6366-49d1-a921-cb04136627a8@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ldP41q7TEzAyxppXSkUx9xTaoytvLsg_
X-Proofpoint-GUID: ldP41q7TEzAyxppXSkUx9xTaoytvLsg_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 adultscore=0 malwarescore=0 mlxlogscore=476 phishscore=0 suspectscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411300121

On 10.11.2024 8:15 PM, Krishna Kurapati wrote:
> 
> 
> On 11/9/2024 2:22 AM, Konrad Dybcio wrote:
>> On 7.11.2024 8:36 AM, Krishna Kurapati wrote:
>>> Enabling U1 and U2 power-saving states can lead to stability and
>>> performance issues, particularly for latency-sensitive or high-
>>> throughput applications. These low-power link states are intended
>>> to reduce power consumption by allowing the device to enter partial
>>> low-power modes during idle periods. However, they can sometimes
>>> result in unexpected behavior. Over the years, some of the issues
>>> seen are as follows:
>>>
>>> 1. In device mode of operation, when UVC is active, enabling U1/U2
>>> is sometimes causing packets drops due to delay in entry/exit of
>>> intermittent low power states. These packet drops are often reflected
>>> as Missed Isochronous transfers as the controller was not able to
>>> send the packet in that microframe interval and hence glitches are
>>> seen on the final transmitted video output.
>>>
>>> 2. On QCS6490-Rb3Gen2 Vision kit, ADB connection is heavily unstable
>>> when U1/U2 is enabled. Often when link enters U2, there is a re-
>>> enumeration seen and device is unusable for many use cases.
>>
>> Would be nice to enable it on there too, then ;)
>>
>> Generally per-file commits are preferred to make potential reverts
>> easier down the road
>>
> 
> Hi Konrad,
> 
>  I agree with you. After the SoB and the "---", I added a paragraph mentioning that if this RFC patch looks fine, I will send a series and make this change for all SM and QCS targets.
> 
> Let me know if the above commit text makes sense. Although I don't have all the debug details, I didn't want others in the community face the issues we faced and hence the patch.

lgtm

Konrad

