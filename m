Return-Path: <devicetree+bounces-190321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFC3AEB71E
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:08:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B959F172708
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 12:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2509C2C032C;
	Fri, 27 Jun 2025 12:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B5YmCzrY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D5319F461
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751026077; cv=none; b=iSLIdW5tW8704w17t+5b39kO8dPsuNhD+K1oa3uVy0xOTUO42+rJZDd9IgwvwsvoBDoQ16tZNkeK6Gm0wHPQywPYHAyQ2FcC933gBumLGz9BhYLtZ4XBVJZRC9oy5kz4/RLtbJC4ogGGE2QzwKl+rcsn7SNPWE/n0JV1F4pUEIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751026077; c=relaxed/simple;
	bh=/n2G8Yx3oIqTFv20NCOsVU0asgOTN34z0VyAQXVjk9g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kyO0er1InIM6u5TTq37WZM+FwpSM4APPkqAbxrlbzd09opWgsbw8jTIZ2J7W7qV09dICM0WxoEq1Lq37MkkodEAeKpcYCiDxUDCyrShY7so4wpnPHldMDGuhnONZnoelVQcpOVNo52EjwZXRPRTkJ5+yyxbB2nI8y/7CbZKtp1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B5YmCzrY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55R4DiXI008776
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:07:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h2yWQ9J19kL/m2rbPpNvQn+2HXbMCNu1FXmidWthmd4=; b=B5YmCzrYNHAax83l
	om0Qnlc0arp5anrD3FvCm+j0fJsB40sVFi3eGUlD3/Z4aUvPRZ+3N8Njno2FONBh
	Ovl7nHV/RS4BMR1cHmeDHe39Y1pJGidiXVKEbJN8V1f/SZxkBFGyqSCE02nr8NnP
	ScUVFWGitOueSz6vpWzr3l7kqlWZNO194IjAITRWE1M2yn68JdWNKpAdiWm/Q25q
	6uzjj7F0fJKkbC1F055Swk2xxTlpmFRpUSIzugl3Af1BByazQJlk00/DqZgxC55b
	AtbRYSEINu6McMNCm7oCQX0k5dQFp8vVeGMm5HnukhEvQLHADR8RpJTvJ6ee+bnh
	p4Pzbg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbhqw4mh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:07:53 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a804126ed6so695921cf.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 05:07:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751026072; x=1751630872;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h2yWQ9J19kL/m2rbPpNvQn+2HXbMCNu1FXmidWthmd4=;
        b=cbpSLkuESM5MoPnZAFREEfOotpIm9Jzxkd/HwUJbBRkE42jtNJFip/r0cLb+0MhL0m
         hsoFVdkMKWnV8y/NY6rnnDrM29ybf6pvZVGGCjKsio/pn4R7ai6n7OeolpqtFX14EtZt
         lsfyrH7FEeckKESHwYcHzo9wMMyjYz1YV4ANaD1CpCX3X4tz51dfjbEir3U48+JM7LTY
         6ZPj/fBVlmUl7AIqyydoIIqdXdR0/fi6zDarE/8geQOSxJJxjLW8sRAMR1+e+Bgm/CNW
         EinpMDJoJ7A/+ry9wRGuVk9ri23raIlupNJ17EvZPmSgHDW1Fw1Zbqk5JSHKUntbUBYc
         84rg==
X-Forwarded-Encrypted: i=1; AJvYcCVz/2gXFiRpYO5WTkwobVol6v1T5pWoUXhJZnjUg72hiC2MugL8+vE7t2qSvhX6aPWUScO6UMifohjz@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu2CnHhafCIEQcud+wsfGV75PvIT7AFvmFE7iYGoJdBXPJsGE6
	aId/JrZqxwWZOF3nJonKl/MueFI16rNTpGIgASIkJShD1h7rfIb3nJ5Ucvt6Z1gw6OXT79OEYR2
	FWsMBV0XJNcZ13wY4BkiauJm8aIIrHAsYOvdLdbTIQLaUlHVATiztXdhmOsaUueLH
X-Gm-Gg: ASbGncvB51PtjZ7jAE4E0c5uAe4XjUj5ZSfAR27aQIY/AXTYMeM1Xpxb3DHN4ZRvLpB
	guU6jRq3TR4C1wDxNwUHioupU24pK7e+8oumE5OGaHTkjet5d6RUG+5Fi2FDxSR0tQl2xE308V2
	fboj0gbXXddm6/g9H6pu/yuuOgcUwAOQfZfxaI60OVzrwcJmWR42hJ7K+PkV0t1a5rP7xz25E4S
	7u5Y/xll9yY1JjtlT+YnZlfnAyyem03XrZu5RS5Wdp4zZuIx8dfQFyfg/PW92AtaPvlUjbO1RhR
	xbXYpHRB+KeUIK93xPmw2OWI+pBHBSB/4X++eqnxHdACYPLj7K9F4fZ00/OEi80Zqy9Dbnk7yvz
	7D5k=
X-Received: by 2002:a05:620a:171e:b0:7c3:c814:591d with SMTP id af79cd13be357-7d44390dcb6mr170408285a.1.1751026072279;
        Fri, 27 Jun 2025 05:07:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMLbX89yS7binC4ZEteCTwbRLHqglPFzMinVrITkQaw35tFAgbD6c9NqROZJoQZf/mf/bbSA==
X-Received: by 2002:a05:620a:171e:b0:7c3:c814:591d with SMTP id af79cd13be357-7d44390dcb6mr170404785a.1.1751026071627;
        Fri, 27 Jun 2025 05:07:51 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c6bea1sm114084166b.146.2025.06.27.05.07.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 05:07:50 -0700 (PDT)
Message-ID: <263139f2-f149-4615-82ff-584fe44ead2f@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 14:07:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs615: Add CPU scaling clock
 node
To: Taniya Das <quic_tdas@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250625-qcs615-mm-cpu-dt-v4-v4-0-9ca880c53560@quicinc.com>
 <20250625-qcs615-mm-cpu-dt-v4-v4-2-9ca880c53560@quicinc.com>
 <xkvn3r7yphlccurdqzncz5qegs7xc254xc2ou2dzuilatk5f5j@eq5ynce4aepg>
 <2b29ae78-e4a0-4d25-a694-abb10883086d@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <2b29ae78-e4a0-4d25-a694-abb10883086d@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: KKH6KMv44WRVUqBgLulrSk0zRtQiROy_
X-Authority-Analysis: v=2.4 cv=Id+HWXqa c=1 sm=1 tr=0 ts=685e8999 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=Od_Csnso_M7n8_Iv6A0A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: KKH6KMv44WRVUqBgLulrSk0zRtQiROy_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEwMCBTYWx0ZWRfX7mDc1tT+YZm3
 /FdLmofjZZRhASzy5yZiogXRascJuSzoV3ka1vhKok4I77bMTVmC9k5cImFKKGti0VmxU8zDbiD
 ij/AHImQYW/eaiXKkR/JKE2gaDDWhRdwG6IUGxnEl8jGeoZeysciLbKQ84B/EaqlkyGwGLMakP3
 xjJf1n4te+W+PiWP6eCZTil47M9Cy69iH3ZIdelHqfBlJPzWNXLp5bC2rFI0cZ+FLW4gqU3CuoE
 Bgie3QYScZ32f9sfCkQpsnn1c6eoj+eWGXE3zFDc7/SvtwP5VHDCsClXP7W/Eu3ZR9fe1w3Rrcx
 vNk7BVdUCCuKBEYxNo718GAXKAl7Lzl8VvZDU18rPU13l7qXdlKHXJaxdBThYS6Tp4sre+8ihVH
 JN6SRYnAeSW5C+2+RuKmlBXjY7MBCW+cM2WrQfzzuFgQg0RXs4dcMj8mpQHi9EJJPAsrglzm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 mlxlogscore=886 phishscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270100

On 6/27/25 5:52 AM, Taniya Das wrote:
> 
> 
> On 6/25/2025 5:06 PM, Dmitry Baryshkov wrote:
>> On Wed, Jun 25, 2025 at 04:44:01PM +0530, Taniya Das wrote:
>>> Add cpufreq-hw node to support CPU frequency scaling.
>>>
>>> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 29 +++++++++++++++++++++++++++++
>>>  1 file changed, 29 insertions(+)
>>>
>>> @@ -3891,6 +3907,19 @@ glink_edge: glink-edge {
>>>  				qcom,remote-pid = <2>;
>>>  			};
>>>  		};
>>> +
>>> +		cpufreq_hw: cpufreq@18323000 {
>>> +			compatible = "qcom,sc7180-cpufreq-hw", "qcom,cpufreq-hw";
>>
>> Why? Other platforms use a true SoC as the first entry.
>>
> Dmitry, from cpufreq-hw perspective SC7180 is a exact match for QCS615
> and that was the reason to use the same.

The only compatible consumed by the driver is the last one in this case,
meaning sc7180 is only there so that if we discover quirks very specific
to sc7180 down the line, we can add some exceptions in code

Reusing sc7180 would remove the ability to address any quirks that would
concern qcs615 specifically, which can happen due to hw design, fw
quirks etc.

Konrad

