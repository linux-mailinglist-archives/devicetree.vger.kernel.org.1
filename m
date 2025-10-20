Return-Path: <devicetree+bounces-228818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA92BF0EB9
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:51:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 896044E1359
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 11:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91B492D5930;
	Mon, 20 Oct 2025 11:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ajy2SNsN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA16B27462
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760961073; cv=none; b=VL/E4FQPsMS5jG+4B18riNarWJO3QcHHxIAkWrIvSUGKY18fpKxRRm6uZXtMp5CIgMpyDNuGMVRYyQ0oE+x3ThV2Pmf1ovcbuwOGMpVn/SrBDwyNfvw8qtqf0XcWJhZ7JiqGlKoLbCstUC8ziE4r4+W77HAlr1JPHxb44J3DKK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760961073; c=relaxed/simple;
	bh=3l8Mpe21IMJZ36Vru6F8BdwTtWxRFRzgQWuducNxevk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jlzE5MjmtVMLoQJIxn1VfAbpr78iSh/cs1E4OxL7BBfJheeggHjoPgw5z2uYDxl91ta+NjcCKhRWDXiuqb21qDy0NYXkMaJxVEMAsnp0A3QsaVMdY1JTeaBS0SLUo5qnYPvsfYDeoLg9bkMudZNtLdKdSQA/e3QPnpYZNaG7bnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ajy2SNsN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59KB1K63023441
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:51:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	snBgGKuWB4UoFzX3BzQo/X9MRDaf9rRWG1mdK2nsjBI=; b=ajy2SNsNq0av0MGQ
	axcgju1AOR/YNbcoBnpL33vXwNRigab4/PMgpVDIpp2li9zMHr4TRT7WQX+gJnvp
	vvojYGl6mUR76Ap8Zf8WrrEfnmrQ+lFmjKUz9Bx5jmFNTWRrHbFxcMOX4n5mMzCS
	CMSwLVEG+swyQ0sIz7xnnmeBCllKn5bdO6RxH7G1rwI8h3+NHnzWxhHYFESiiVkW
	5qhrn4l3L1/R+b7/6xzLoadii0oCTOIeBOsTlvWjzG8Zkk+pvINx92bqeLSY6xdC
	RynGgrn2ErDgKodwSclu5JGdoVntrSFe3vE9sdQ+CxhhPwovmumi8MO1/MBqSVlc
	a5youQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2yv4jst-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:51:10 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-87c2d14fc1bso6790896d6.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:51:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760961070; x=1761565870;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=snBgGKuWB4UoFzX3BzQo/X9MRDaf9rRWG1mdK2nsjBI=;
        b=L9yNWEYKGPKc1BcUabOZPtDEDt8nfBBk8/2GjlPNnVLSB4ESXr28+G08pOWrglPkd7
         8W0aaegHCTaTtZa0gRc5wN4hXPatbkULKCtlpEDS/rzf+ukytNC8iBhxRipCMXLZ7rD6
         vewQNvtPjkKkg5GIESfEqAtJ70MS67AOqadIKKMrJP9kNOIu4/4n/pqs8k6kAeetjRHm
         xBESTrjsUBoPPFv4JVKqtoDFncIDYgJykDJcjEIdIfbZ22DqGEyqvnAFkRM8VbrdWbE0
         GPOux1XPs23saGHUR+W5P+lPD+Stl/EyNxvsb8N2YyFSAGOlO8uxgkuoLqSwuAl2kVE0
         xByQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTSxD9Z842DfnNpYNrpS4rP3jKYydT5tG8ixZ7exoY95dFbAPnpTHEIRHNWaDZ7oQgX6dB+zLXFveE@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy1XOfUfWD7pZ5377CHO7mBV9AbuaZdshI/Gn7XquUDGB2bIBa
	WOhdwnkyp6XRvXWSHsHEYrJxkGVXmAGP4eftdR/gw/FNYYxjuJbAypbW3gPlr4l9JTgt6d03PU1
	7hxjf5duGQjP7vEjZqwgjuNjH1h7p5Dfc0akQin62zCNM6PP5oOWnCvNY67rFJkCr
X-Gm-Gg: ASbGncsAx++78judMkRJChGNpLyB5BFjHKMYZ7WmmVFzRFH8njSRisble7byDOStRJF
	6zW0LgWmvChyq0XmEHhXdZdUZxpO1VuezU9dzt2ByQ1ghW+jsUWKpEzQgwIzFKDtAvsfn5yHBrJ
	2gx/NICqDONJs6PhjKEnwDvd4OhQT9DNU8FpEAsKxHISXeN/0iUHqZUiWAbusXQsGy25xRTKi0Q
	AYLAUjBNvUwaHSduoR7djS/DK5VW6xgP5oMm20nZjxDPMd0BjG6rJ+yT6q5hRaljeMfZ3EIUA7m
	XoomPtFuOfEI0LJWCtQTohbbOqtuYMlEixc8m6C8G8EhEjS+35W6k5STxKHIHODPd+mhpfpG2K3
	/23KzuR9xxXPuD4TKbV9ESCHyQsIwOjRzTRMpc6TybyaN/pHeqep8pibr
X-Received: by 2002:ad4:5c62:0:b0:77a:fa17:551d with SMTP id 6a1803df08f44-87c2065bc7emr122377376d6.4.1760961069987;
        Mon, 20 Oct 2025 04:51:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFi4TsWjjriGLTXDyCWtzNZZafmMb2+lKzlJu/Cn821IEoakSsLgIAHwrkmiDI+yaHV2vGUJw==
X-Received: by 2002:ad4:5c62:0:b0:77a:fa17:551d with SMTP id 6a1803df08f44-87c2065bc7emr122377176d6.4.1760961069463;
        Mon, 20 Oct 2025 04:51:09 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c48ab560esm6477728a12.12.2025.10.20.04.51.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 04:51:08 -0700 (PDT)
Message-ID: <50ac4730-8c9c-49ae-8a1c-db4c8d87804e@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 13:51:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/24] arm64: dts: qcom: glymur: Enable pdp0 mailbox
To: Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-6-24b601bbecc0@oss.qualcomm.com>
 <fec06b27-637a-4923-b07d-1f0a1fdf4922@oss.qualcomm.com>
 <ca4853a1-67e7-4152-aea1-f92c9c25d7eb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ca4853a1-67e7-4152-aea1-f92c9c25d7eb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 1dZ5DQuXRZ_muLHF379zGJiX2mI9lqee
X-Proofpoint-GUID: 1dZ5DQuXRZ_muLHF379zGJiX2mI9lqee
X-Authority-Analysis: v=2.4 cv=f+5FxeyM c=1 sm=1 tr=0 ts=68f6222e cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=WRDRb4xdkbWPci3HNeAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfX4lvZ1Wd+PvRU
 YrPL1nbd9HsVfBfCO07vgIq8AEarqmiYMDIVpGmt0+WzavkYFSnJu/RWUlGFMT+s44ZIk1qXr6V
 6N43IERCDzgxTVfzFBbYj0k/DDWgUBAbeePprCPpX7OwS2IPxEn3ivWBL9NR/br1K775JLBMbQd
 GmzfTLz6bwpbhzUsEBp5XWGFg5NhAjRNIeBp5KyyoB09OYr6d1vD4wpghnCTHHKcYTCOf7NnvbF
 AtCXbpavLnklEJR8PfI6uhJEjj2godCo6aBxDFkJVPmba6vaUhhrnR5PdZiAgi8kx7VM/4D+vDd
 adyQ85KYbAvn1K3u4pTXqodEolkmPHL+JIPg+ZFkh/Lq2lrEm4aINZai8MBIyRxuQrSZKS62Zzl
 u6bJAkfCG1ABw5Q3t/fd/POXZ2gWZg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180023

On 10/9/25 12:43 PM, Sibi Sankar wrote:
> 
> On 9/25/2025 3:59 PM, Konrad Dybcio wrote:
>> On 9/25/25 8:32 AM, Pankaj Patil wrote:
>>> From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>>>
>>> Enable pdp0 mailbox node on Glymur SoCs.
>>>
>>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/glymur.dtsi | 8 ++++++++
>>>   1 file changed, 8 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
>>> index 66a548400c720474cde8a8b82ee686be507a795f..ae013c64e096b7c90c0aa4cfc50f078a85518acb 100644
>>> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
>>> @@ -4065,6 +4065,14 @@ watchdog@17600000 {
>>>               interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
>>>           };
>>>   +        pdp0_mbox: mailbox@17610000 {
>>> +            compatible = "qcom,glymur-cpucp-mbox", "qcom,x1e80100-cpucp-mbox";
>>> +            reg = <0 0x17610000 0 0x8000>, <0 0x19980000 0 0x8000>;
>> 1 a line, please
> 
> Hey Konrad,
> 
> Thanks for taking time to review the series :)
> 
> Will fix it in the next re-spin.
> 
>>> +            interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
>> I see this has 3 channels, with 3 separate IRQs (but one pair of address
>> spaces) - should we extend this description?
> 
> It has a single IRQ and each bit corresponds to a channel.  The mbox theoretically
> 
> hold as many channel as the number of bits. The third channel here is used for
> 
> logging and is disabled on devices out in the wild.

Your mailing client injects two '\n's every time you press enter
Try setting mailnews.wraplength = 0 in your presumably thunderbird config


Is the logging channel useful for us, on internal devices? We can still
describe it if so


> 
>>
>>> +            #mbox-cells = <1>;
>>> +            qcom,rx-chans = <0x7>;
>> This further seems to confirm what I found (BIT(0) | BIT(1) | BIT(2) == 0x7)
>> however this property doesn't exist upstream..
> 
> Ack, this seems to have picked up erroneously and isn't needed upstream and
> 
> can be dropped safely. This was needed downstream because they share the
> 
> same rx register space across multiple instances. This wouldn't be possible
> 
> upstream and we would be exposing all mailboxes that uses the rx space in
> 
> the same instance and extend mbox cells to 2 to support this in case when
> 
> it is needed in the future.

This won't fly, as you're essentially saying you're introducing knowingly
incomplete bindings, which are supposed to stay immutable..

Konrad

