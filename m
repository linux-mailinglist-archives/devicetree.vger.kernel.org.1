Return-Path: <devicetree+bounces-180776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE0BAC4D0B
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:19:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4D3F3BFC02
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 11:19:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 851D02571DF;
	Tue, 27 May 2025 11:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IJUp31k+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51BE24DCF8
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748344774; cv=none; b=s5FWrDCo8L3vE8Mv8cReoXzrgRQqbEr1BL/3gkXypAtoe5a+Ij58IOMh2KxBmFRu3rf8vcTEnPV5oC3ZM9UBN6fjmO3tGI6ivsLozcjfPPbp/buO+mATWZdPkanQb7gV5YoGEIeBCZ2JEcE2amZe46azWrloqtULjbZ9/6VDt5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748344774; c=relaxed/simple;
	bh=19feJZZTbb+km5oSmqKqxCaJrNvkXHMQEj7v3RsRCgE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K3KCcXmwoTFzcoOzRwsNcpKQ7NrZf5P+jQ3NqpFGnY9WQKbvhn0rc9d0TrM4UjSLPGu/9wLfO/fNEIIrpZCgeV+zoEwZSIa51Zn81b9hVTQ7dbZKfKULgngEL+BpD6lR4vHcH9NBnbyIKQMtQL2d1k3b8Vkn5WnAPj9NU9Jdoa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IJUp31k+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RAVR3F025597
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:19:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sGGnr2Cf6uz/5zgl9H9llVxN13njxFiPARnslx3OyQY=; b=IJUp31k+8iZ8fZ75
	0IwkgnNKcfWG8ZX6uBxvXyY1Pmba9MTgMyJ9hqR/1Gcp+7OmWHv9LA8JhHQdA7i3
	0aP3cvkaobNyLO6lUXfZI/r5rOmMnNC/Kk4VIT7VLVcFNxBQNaWwqTUs1p6XoQXu
	IkRafdp2EyegDVWCus8pQ8A/XQAfHuBaonnhptNyzYVipO5H13DaAsEqum0kSqCE
	S9gCjy/EmPKtHuvimd1LZxt4GPWzAXaZ8NGenBMk9FQtlRDoAVv8iw9IKr4P63V0
	0KwSVQQfRuSO+4HlfdQGBD5BkolkRSTbb8/iuv3xdX0bX/NX11e5MtPohfZTLmUE
	AS6T4g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46vmgcu3rs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:19:31 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5466ca3e9so44636885a.2
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 04:19:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748344771; x=1748949571;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sGGnr2Cf6uz/5zgl9H9llVxN13njxFiPARnslx3OyQY=;
        b=jyhElSI4Jqc8K88ApzTGKnxzdQpmSz6HHNOGATfhvUYj6Zt/LOSK+AbhvAh68S1WQp
         GGzN5A4kyoT8iGF0itq/YGR14tWoXSPA2TQckhInWm53sMN8b81HQLpluNLkiGzPqVzV
         ew6RLUyFC2+vlthlZ26Isu+mxiHqaYs7atfjfy0Y7rLAAnSxZiy4eRtavcVyQsdvnAJH
         YmLYDcYGqGcjNk9jI5ugNzJuc+f+JqyOxu+cySS5vbGIXKmMHchbMHbpskXqbamxEocr
         sPVWYdED/AIanxV8B5RyD1Jl2EisdN4tB9N9PNW5xHBnS0SFjaA4pKUTvMbTc3GnlQa2
         UkyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVe6mTAG/y3G1+BVIHLAtbWLjnkxcRLntVe+Y9ymj3wOgW1vq57EeAdpbm3npWD9MghIa0RFuaTJPLw@vger.kernel.org
X-Gm-Message-State: AOJu0YwEoKjb5xNkrMx5RS6K5t8NXo7aUIy61obckfwUQS9j54L1+5kL
	nMUHrybpLa5m3RZyrnH4Zj0nwS0h0zDdg2Y1f4IgS0cOWWec9KCjM4qwUz1jod03QBSA85+NmbN
	3IafbOYmv4mZRLHgi6VeCPzOgEQVBzQzyCEjhcVnZu7d4hBTHbQYKuiPCanrCjKzi
X-Gm-Gg: ASbGncsRmp/EGJHnqubNvHLWsbIRIyXgOmcNas/cqTxs5iwXwYSgtk5Hd2xB6ws91uY
	/SE6DBlmcUF2HHFzhc2cX4osREmP1x4pKImUYTp5Ibnq9djSfVhLxM1CvkywRb9bUSTok7WzdLK
	H4/0YbfI6hVEe6D+2W0q38Xm/JvSImY57jIZuCmCIrPh44IaB9pNKqoo9FmaCh9g2WqN7gVH5OI
	pEaKjDVg+Q6LesQRJ6qDC3Tdyk8cvBkiRvX1VfkE0oL0Bv/hHIJythn6b6Iqs3AAvJQDgXiFCaS
	cHlGcMthXoUpnXL4h6KK/qa1EqbarnJl2OsJs7Sc2DuVGaeiXvZec/yCPHsB1I+2Qg==
X-Received: by 2002:a05:6214:2124:b0:6f8:e438:6a31 with SMTP id 6a1803df08f44-6fa9d38a281mr84868806d6.9.1748344770682;
        Tue, 27 May 2025 04:19:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVX0YQa52wzPt5zotLH02+4Oq1iIQcnbNqEa0aCHbsQCwGP7XhMmeQ5L88JOR1OO1b3BhmMA==
X-Received: by 2002:a05:6214:2124:b0:6f8:e438:6a31 with SMTP id 6a1803df08f44-6fa9d38a281mr84868616d6.9.1748344770315;
        Tue, 27 May 2025 04:19:30 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6049fe0e94fsm3125097a12.26.2025.05.27.04.19.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 04:19:29 -0700 (PDT)
Message-ID: <99fd4103-97e0-486d-9e6c-66c8adb70b3b@oss.qualcomm.com>
Date: Tue, 27 May 2025 13:19:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] clk: qcom: gcc-ipq5018: fix GE PHY reset
To: George Moussalem <george.moussalem@outlook.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Andrew Lunn
 <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        "David S. Miller"
 <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20250525-ipq5018-ge-phy-v1-0-ddab8854e253@outlook.com>
 <20250525-ipq5018-ge-phy-v1-2-ddab8854e253@outlook.com>
 <337068fa-adc2-478e-8f3f-ec93af0bb1c6@oss.qualcomm.com>
 <DS7PR19MB8883BE13166F7CD5DCA777DB9D64A@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DS7PR19MB8883BE13166F7CD5DCA777DB9D64A@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: It_w1Ekb_u2nUUoINE-5DSS0gWPpJmuR
X-Proofpoint-GUID: It_w1Ekb_u2nUUoINE-5DSS0gWPpJmuR
X-Authority-Analysis: v=2.4 cv=Ws4rMcfv c=1 sm=1 tr=0 ts=68359fc3 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=qC_FGOx9AAAA:8 a=UqCG9HQmAAAA:8
 a=2jJET5DcvFRXXXsR3agA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA5MyBTYWx0ZWRfX+S7Mz7rQHwmE
 ghHre/0m1HrvCMFbYYOE8YxHaj2WkHxZfDDamlhpvdPRlfB1ki1SCe5twhccrGaJdFGV8r5eOwR
 y7lkjZBWlvtcMxXabcinkEgFJnl5OOmHN06ZiKFCep2ULhC0OsW5ZfN/fEFHViI1ZWOvVS2g7iT
 EaB86pH4yBbBS5zRIr8xMpt7FwyMDIrWEGtOrxICrGOWlrd5sj5AYbrDa+VcDFbPMuhJ4UzShIV
 g2Ii4wM8qKzNfX/NaORajk56ouriuFVX/fW+h7bhotLXj+bo5ZW6PY5TEvZyi+iD8yM8qyFXpMJ
 rlDb8Q4WLEfHG6eDb7/x0XherWIoUJE/C2cqbpbEMWxCzC4cEiXQfHUPxVmEvZG8IQ/BHE915Rh
 6kd3WFQtWrD7kkZtkEZPEhI7A+D4LbIXWtX7H1BQdIH35ZWoPlT18FzgYYKnog5fmWdMxFpH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 mlxlogscore=999 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270093

On 5/27/25 1:14 PM, George Moussalem wrote:
> Hi Konrad,
> 
> On 5/27/25 15:00, Konrad Dybcio wrote:
>> On 5/25/25 7:56 PM, George Moussalem via B4 Relay wrote:
>>> From: George Moussalem <george.moussalem@outlook.com>
>>>
>>> The MISC reset is supposed to trigger a resets across the MDC, DSP, and
>>> RX & TX clocks of the IPQ5018 internal GE PHY. So let's set the bitmask
>>> of the reset definition accordingly in the GCC as per the downstream
>>> driver.
>>>
>>> Link: https://git.codelinaro.org/clo/qsdk/oss/kernel/linux-ipq-5.4/-/commit/00743c3e82fa87cba4460e7a2ba32f473a9ce932
>>>
>>> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
>>> ---
>>>   drivers/clk/qcom/gcc-ipq5018.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/clk/qcom/gcc-ipq5018.c b/drivers/clk/qcom/gcc-ipq5018.c
>>> index 70f5dcb96700f55da1fb19fc893d22350a7e63bf..02d6f08f389f24eccc961b9a4271288c6b635bbc 100644
>>> --- a/drivers/clk/qcom/gcc-ipq5018.c
>>> +++ b/drivers/clk/qcom/gcc-ipq5018.c
>>> @@ -3660,7 +3660,7 @@ static const struct qcom_reset_map gcc_ipq5018_resets[] = {
>>>       [GCC_WCSS_AXI_S_ARES] = { 0x59008, 6 },
>>>       [GCC_WCSS_Q6_BCR] = { 0x18004, 0 },
>>>       [GCC_WCSSAON_RESET] = { 0x59010, 0},
>>> -    [GCC_GEPHY_MISC_ARES] = { 0x56004, 0 },
>>> +    [GCC_GEPHY_MISC_ARES] = { 0x56004, .bitmask = 0xf },
>>
>> The computer tells me there aren't any bits beyond this mask..
>>
>> Does this actually fix anything?
> 
> The mask is documented in the referenced downstream driver and allows for consolidating:
> 
> resets = <&gcc GCC_GEPHY_MDC_SW_ARES>,
>      <&gcc GCC_GEPHY_DSP_HW_ARES>,
>      <&gcc GCC_GEPHY_RX_ARES>,
>      <&gcc GCC_GEPHY_TX_ARES>;
> to:
> 
> resets = <&gcc GCC_MISC_ARES>;
> 
> to conform to this bindings restriction in ethernet-phy.yaml
> 
>   resets:
>     maxItems: 1
> 
> Effectively, there's no functional change. So we can also list all the resets in the device tree, whatever is preferred.

+ Kathiravan

are there any recommendations from the hw team on which one to use?
As far as I can tell, the _MISC one simply pulls all the aforementioned
resets, like George described.. it seems weird that it would be designed
like this

Konrad

