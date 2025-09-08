Return-Path: <devicetree+bounces-214166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D474B484E7
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 09:17:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CEAA9171A2F
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 07:17:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CCC52E2DCB;
	Mon,  8 Sep 2025 07:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CGswnwMY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279CF1A262A
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 07:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757315848; cv=none; b=swybIfEJlmz8c8/0f694g123sWxJOVR1aFbFNG/cFHd5vJJnzAzM+ixpbRH2G8VVOVAX43/nX3SkLIGWLd7y/KyVwbFai7uvQ8cUlg5kn8W66eyBqwU86lTNKJG/f7tYLAmIOE7vvKIMG5Wf6Mtik6PmsmjLwfbfilqsuxasWw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757315848; c=relaxed/simple;
	bh=n+aaWyQRYIu1MksN7mzgmu/sMhs7wreA4Hz4TnVNjRk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OeQ/vYK1OmWeyfCP22v2IlZeNjvET3d3E4g5sgoecBD6p69/a107WJkiCBaoy7wc/VBqwAFnaKYXVje/bCIrS447F6TDzht4kzd9L2gD2HrD+YDae2rHEH64rLevlv9Caa1h3w1G7idwX1ualApxejOVU/YMsH/WvgcWQCikg+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CGswnwMY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5883lONe013554
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 07:17:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GvkSbj34UnoKQWHt/fvkvc/27oZE/6107qizJVFFrps=; b=CGswnwMYlYbkOmkz
	qSixhdi9F0RQA8Bkp08rMOqS12FzgoXt849zIok/XJ/wnMrDJ7BOHZ2pwNXHmRrm
	GHBL0B7u+wtmsgQlPT18RxJg6vyn9ZsMVoAqLAOFCXpZPyVWo7k3fv5Y0Hbryga/
	YeIjp8kIzM/astALJQfbMoBN+vvnE+A34rjDCuWC1Ve4YKK+ACvL9kzqQwR6ujs6
	VMfEHL8iDK6/JwPVvBrk1DNakvJ0tG8gxGp9HCPMXLyl4dl5kwDyoCZSUMyOJ789
	9l7nVCFYaHA8yH6lggruU3f02SXsugJZiFeKhwxo9CW0VmJx/t07JIV8nUog+CWl
	MRLang==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491qhdreu7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 07:17:26 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5f92a6936so8493071cf.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 00:17:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757315844; x=1757920644;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GvkSbj34UnoKQWHt/fvkvc/27oZE/6107qizJVFFrps=;
        b=f+SSFTT36QOi52Ge2vAOqmx6LUF8Zjd4SoO3pQqpOpt6Tr1df7yrI/sql3eQq3V5nE
         22SnHJ2VIf52tlY932AF2qZBGVEoLIRwKBIlBqYuExbRKqWdyU5x+TQaWlr/VO9YTQDp
         QaHIpFq3iKWd9YNEN9qBKPIPlguLMlRvvhaIrRCXaARfoQ1tZGrv44Yh8eEEugDJDLnm
         QuEGNzzgCZTRolfQNX8nMn2ik+A5gn0JVX0BT1ZjIaoOt9i/xFidkIVHwJr6KxmwkTsG
         2g5WfN11hNcf24TE8KpDqcredXvs5iKIKxfNCMQn4eYGoaU0Bh6G0p/3Di6v1JvP277V
         xH+A==
X-Forwarded-Encrypted: i=1; AJvYcCXeWzQKczi4S19kaHj8ZwjQ3UrPlh4DT11/N4JD+CKjSSlyFKVcWF2Yjgzcu9qTRLZSsak44YImeNGA@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5QABWzX0b7dfT2j94n0FdjBTPC6JBRAkn23CtVPLA5ZI5hdX9
	gLDp8BKCaEffRnOeux6/gvlEr1UnFp10MU1j4eyzM3NLwPI1RrILwRwk1FzAdxM5Gv+r0poQktA
	fpeBKGVEGhIC5Z+a+/fL7RUw4p0ecmqHoK6Ei34aSukzmQ73PFVlh5m8H7hxDiUJG
X-Gm-Gg: ASbGncvpVkjob7BAXBsDyFpeyw/98oyvMS9RlKWvkjsgj1+JGo9mh0HaesRGlnFJDJp
	9obBAwpLtXRBkojb8GXlQ9dqNkdiPQ98RoSrWw2R5rZN8JAKnr0P3VfkKe0CEJdRjIDFSRHDNkm
	TVkz3T6cFbSyTIxncffbN/2hbze8z5HicyLIY5G2U4tdJ2FG8SvQkv7v/oZw3UNc0s/aO1ZkrJK
	cAbpqqGKWt2h8C8NiAx4RQZ+wAOH6Nsm0/bYCP2iNz2jPTUw883uuTnTgS0TDS1kVFc0EQ0b9Im
	iEKvKtF3XQYlUQ9V+ssgD4KNw+3cJ8hp7yYZlmuHdRXGOJPUHgoZAXaAYwHYUbmuv+N7MQ/mXl4
	kQ51piYq5GtrHit5/yk7LiQ==
X-Received: by 2002:a05:622a:24f:b0:4b5:f066:13d0 with SMTP id d75a77b69052e-4b5f83da97fmr52185531cf.6.1757315844104;
        Mon, 08 Sep 2025 00:17:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEcOPchr9S1m9Rz4KxpIgTUicCH7autfYrV7AOUqW7HOqK6Yy6+QlEA3QyM4wlHT62r+3EMIg==
X-Received: by 2002:a05:622a:24f:b0:4b5:f066:13d0 with SMTP id d75a77b69052e-4b5f83da97fmr52185381cf.6.1757315843423;
        Mon, 08 Sep 2025 00:17:23 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62343271613sm5088615a12.23.2025.09.08.00.17.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 00:17:22 -0700 (PDT)
Message-ID: <9923f086-9deb-4d3f-813c-7d9b94c7dfdb@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 09:17:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
To: Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
 <c66fe361-74c9-4471-b371-353ca582bb3b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c66fe361-74c9-4471-b371-353ca582bb3b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Vo7jtD3LxFIIepiVYm4uMKahog5q1wCH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDAzNCBTYWx0ZWRfX2yIq+oY1k4sg
 2MgwqDfbbgU030gXr0pAPOv8LkC3HFTRhLvm3d2CJ0YcADSQnHmP6biT3l90VH+l7+lgRWncSEo
 ovq8m5+0aThoM01YqEoh72Mmm9542IGGqbxR84kQrvwv3Zu0pUZazHL9t6SkQE/+MF38FZbaEf6
 VPAo6TjZ1sF04qBVKLSSTYC11lgevPm0TWuiCcfeP3Ihr4oddXRUqokT6RPFfq2hA9QtzRhEIYY
 EoTwtNHdlr3CKZRvYQY86XpUm89AH4/5RIl6DyjD8dWEd5RO+4D5nxdtjSc3iEiE84VK3xJq7Rz
 SFbpuvfZRtnrC5DiXJ3sLZ9k/LUPbtis5qhtfdCVImhoz34MScdJgJi27S6/L7QGNB9/sOqZ7ok
 slOKNKLq
X-Authority-Analysis: v=2.4 cv=YOCfyQGx c=1 sm=1 tr=0 ts=68be8306 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=4LzuJVVA2EB8z9vYX0EA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Vo7jtD3LxFIIepiVYm4uMKahog5q1wCH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080034

On 9/8/25 9:16 AM, Konrad Dybcio wrote:
> On 9/6/25 10:41 AM, Jens Glathe wrote:
>> On 21.08.25 15:53, Neil Armstrong wrote:
>>> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
>>> connected to the third QMP Combo PHY 4 lanes.
>>>
>> [...]
>>>   .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
>>>   1 file changed, 44 insertions(+)
>> [...]
>>> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>>> index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
>>> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>> [...]
>>> +&mdss_dp2 {
>>> +    status = "okay";
>>> +};
>>> +
>>> +&mdss_dp2_out {
>>> +    data-lanes = <0 1 2 3>;
>>> +};
>>> +
>>
>> Hi Neil,
>>
>> shouldn't mdss_dp2_out also have the link-frequencies property?
>>
>> +    link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
>>
>> Or is it something the bridge already negotiates?
> 
> No, it seems like our driver falls back to HBR2 (54xx) ever since the
> driver has been made aware of this property:
> 
> commit 381518a1677c49742a85f51e8f0e89f4b9b7d297
> Author: Kuogee Hsieh <quic_khsieh@quicinc.com>
> Date:   Tue Dec 27 09:45:02 2022 -0800
> 
>     drm/msm/dp: Add capability to parser and retrieve max DP link supported rate from link-frequencies property of dp_out endpoint
> 
> Dmitry, is there any reason not to allow HBR3 by default? Is our dp
> controller/driver not smart enough not to advertise rates it can't
> support, during negotiation?

I suppose if I want an answer from Dmitry, it would be fair to add
him to the recipient list.. fixing that

Konrad

