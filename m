Return-Path: <devicetree+bounces-133012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 621409F8FDA
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:09:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A9EDA1886554
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 10:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D4B21C54AF;
	Fri, 20 Dec 2024 10:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DCbTUp/u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D7311C463F
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 10:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734689231; cv=none; b=Pv75izsA2Q/QPmO9/p9cgk71oehzK7nJl1heVyz660gXWDWk/ck30ocUEg358ANVvfy3gef7VbFkboXXDkJ2Vs3M3gMRImpFEIZykfhD9jOMVGFPoV9Q5WCSMcO847JwUOpz93+R4q4VvtPDjXEZPiHeezMw8kfgdOloIsteHn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734689231; c=relaxed/simple;
	bh=bdCnZapLnQMMFKxvcjWFtHmbGkFtuKZCUpn1e1yJGPw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p+oCc65Li+PO9Y168+yVndGM/9OVGGzLjLCVCJJn4GrvrngSfy/YtACs277/Et/a/xxJWKJYD9J1+F9Ec7lxIa8jkkJVBGHN113LwInkMFKcpWW610M+WCDKk9TAYTxV6+u51nKv2cB9tsf3t/WD3MBA970QwkUDN8xYvHZ0xAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DCbTUp/u; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK5evSx005261
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 10:07:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AhznmIQ872euCVjX9PvCB/YRGxvmR1KRYBeJuZw1uek=; b=DCbTUp/u0UzUE86j
	U1AProRVEFOS3v5q00J6fMRNyuEYaPdl8FppQ3D1J8iUwSAF1dDGJQoHQQ2QyMMH
	In2RwZLDyqX8LED2z6LYksKsxiedZVDrLC66awmZ2Jsojq91gCCDfhOUU4DADOBC
	BuVhm3mHZpucAzigMmiDOTrTEUuDooGaQ9++q2XPmVytCyucOoR+iXPUEKfAnC5M
	e2lRR1ZyJ/jr3t0uEV7hyi7U3/xR48SkAI3j3kegiQ9AHpkvISoA4+zpWSjDGzvN
	P8j7e/oGveCGzNEFWfxO+cRODaza1ei/y/6Vx/dBAhupnXsqf/x+xi9wqj1wvAs8
	9Awd+g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n2n5rpsh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 10:07:08 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-46792962c90so2796771cf.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 02:07:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734689227; x=1735294027;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AhznmIQ872euCVjX9PvCB/YRGxvmR1KRYBeJuZw1uek=;
        b=a9rCp5mnOe13I1B+h+UFzOqeHZKNBtPtRKhmCxYpBlGDwIn+t/pxjqwlfQxdy7tCyL
         GzIbNw71XHlrA6Ddo2DmubpzVhHkwX4dN5ModUjbDDtuuk8CH37nQqwDb14aLoDagVGD
         /Z8RccHvjYjhBt+7aRFecnctwFXr2io2VNKQ0w9Uve6IvwJDsPUVBw34YpZDh5qMivmZ
         ynBiqQBcbMe9Opml8h4wEB4FbPx0bEW42bE31Wp+SQ9oEzxUM4q/5AP/vt3Bp04euaEb
         zRZrPaaBILznwseMa4QE1+BGA/waFNdEm9uHwhl9zmSKCqIvU08E7+bGLjq3scAYUPNz
         +DIg==
X-Forwarded-Encrypted: i=1; AJvYcCVECbT9j5OOlv9A4j5Z3+PvhNsVspY3GEQcb4RlTx54da4VV5KYCVC/Hs30Kg98zqKMKZLc2fQ6YMlo@vger.kernel.org
X-Gm-Message-State: AOJu0YxjInE7x+VqvK/wg3xBx5yCyEvmB0E5Ad7V0aFkIX6mS3mxPMeL
	Sfrzx84Bop7UAmkojYpo4FpEtd25GN6u3HBftBc/T/Vmy8/kRlwZiLtqM1YaZ7BhR/FUuxOtF/8
	/s7x//Ii4nFrwuBCCuOdDu6YaIx1rsivYVtj/cbLoPUIkrMqlvfbpitYFSw5f
X-Gm-Gg: ASbGncuwrzTyDkT1mg3uoz5Jc04q8jn6ahRaZwGInJ6PeHu4Pi1ARtFqHPR1Ri63Lnk
	ZqOx1i1wzESOL7Rf4Joj3uv140zRsYcorJRPxwrPH/NVJi28AY/6NucfVB4N6OGzK11IkhcZ0rP
	whfUaVHWi1urXyTww//TXLPtB56K2bPCtWOj+a1PXjkeDOxLdRjBAw01N3EqJM0Zim6N9zyXFks
	XvYfFaCYFnFlh+mGMprFbAJ/uhjV56Cdnowgg8tqKXuatF3wruHByFIQ9AqKFH4qiu0TzsIZyWJ
	uy7YvETNk+KQFQcwoy6HKk5InWCftMtH9B0=
X-Received: by 2002:ac8:5810:0:b0:467:613d:c9bb with SMTP id d75a77b69052e-46a4a8eb7e3mr14253251cf.8.1734689227324;
        Fri, 20 Dec 2024 02:07:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHFKrcZjN32LPENOthA5U++U9QRPl9Tet46R8uTtYFYSo6edNTPeFrDGQJlNVn7Sygo724ong==
X-Received: by 2002:ac8:5810:0:b0:467:613d:c9bb with SMTP id d75a77b69052e-46a4a8eb7e3mr14253101cf.8.1734689226948;
        Fri, 20 Dec 2024 02:07:06 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d806fed723sm1638648a12.64.2024.12.20.02.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 02:07:06 -0800 (PST)
Message-ID: <fb81ecb7-1ae8-4ace-9d6a-5954136d9142@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 11:07:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/5] arm64: dts: qcom: Update IPQ9574 xo_board_clk to
 use fixed factor clock
To: Jie Luo <quic_luoj@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, quic_kkumarcs@quicinc.com,
        quic_suruchia@quicinc.com, quic_pavir@quicinc.com,
        quic_linchen@quicinc.com, quic_leiwei@quicinc.com,
        bartosz.golaszewski@linaro.org, srinivas.kandagatla@linaro.org
References: <20241107-qcom_ipq_cmnpll-v6-0-a5cfe09de485@quicinc.com>
 <20241107-qcom_ipq_cmnpll-v6-5-a5cfe09de485@quicinc.com>
 <0776a26e-56cd-4838-9b52-210ae9a1f281@oss.qualcomm.com>
 <8063460d-18ad-4e54-8232-716bad9d37c3@quicinc.com>
 <2456ab36-f48e-4aa3-88e1-aeb7895c9816@quicinc.com>
 <fb9d117e-77bd-4a01-a738-f72d07f6b84c@oss.qualcomm.com>
 <f6930a4c-6d31-4cd9-a9ba-d6ff50e274e2@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f6930a4c-6d31-4cd9-a9ba-d6ff50e274e2@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: X9SgfDLxFHNkiL53ouJOaiD15C92LEWR
X-Proofpoint-GUID: X9SgfDLxFHNkiL53ouJOaiD15C92LEWR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 mlxscore=0 mlxlogscore=999 adultscore=0 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200083

On 20.12.2024 7:43 AM, Jie Luo wrote:
> 
> 
> On 12/20/2024 5:28 AM, Konrad Dybcio wrote:
>> On 18.12.2024 12:17 PM, Jie Luo wrote:
>>>
>>>
>>> On 12/13/2024 6:30 PM, Jie Luo wrote:
>>>>
>>>>
>>>> On 12/13/2024 2:33 AM, Konrad Dybcio wrote:
>>>>> On 7.11.2024 10:50 AM, Luo Jie wrote:
>>>>>> xo_board_clk is fixed to 24 MHZ, which is routed from WiFi output clock
>>>>>> 48 MHZ (also being the reference clock of CMN PLL) divided 2 by analog
>>>>>> block routing channel.
>>>>>>
>>>>>> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
>>>>>> ---
>>>>>>    arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi | 7 ++++++-
>>>>>>    arch/arm64/boot/dts/qcom/ipq9574.dtsi            | 3 ++-
>>>>>>    2 files changed, 8 insertions(+), 2 deletions(-)
>>>>>>
>>>>>> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/ arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
>>>>>> index 78f6a2e053d5..9a8692377176 100644
>>>>>> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
>>>>>> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
>>>>>> @@ -174,8 +174,13 @@ &ref_48mhz_clk {
>>>>>>        clock-mult = <1>;
>>>>>>    };
>>>>>> +/*
>>>>>> + * The frequency of xo_board_clk is fixed to 24 MHZ, which is routed
>>>>>> + * from WiFi output clock 48 MHZ divided by 2.
>>>>>> + */
>>>>>>    &xo_board_clk {
>>>>>> -    clock-frequency = <24000000>;
>>>>>> +    clock-div = <2>;
>>>>>> +    clock-mult = <1>;
>>>>>>    };
>>>>>>    &xo_clk {
>>>>>> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/ dts/qcom/ipq9574.dtsi
>>>>>> index 8246a00a3e3e..25aed33e9358 100644
>>>>>> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>>>>>> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>>>>>> @@ -32,7 +32,8 @@ sleep_clk: sleep-clk {
>>>>>>            };
>>>>>>            xo_board_clk: xo-board-clk {
>>>>>> -            compatible = "fixed-clock";
>>>>>> +            compatible = "fixed-factor-clock";
>>>>>> +            clocks = <&ref_48mhz_clk>;
>>>>>
>>>>> This must be squashed with the previous patch, you can't introduce
>>>>> code and replace it immediately afterwards.
>>>>>
>>>>> Konrad
>>>
>>> Hi Konrad,
>>>
>>> Looking at this comment again, there may have been some
>>> misunderstanding. We are not introducing xo_board_clk in patch 4 of this
>>> series. xo_board_clk is a pre-existing node.
>>>
>>> As part of this additional patch 5, we wanted to address Dmitry's
>>> comment earlier in v5 (reference to comment below), by converting the
>>> xo_board_clk as well to a fixed-factor clock. So it is better to keep
>>> this change as a separate patch in my view. Hope this is OK.
>>
>> Oh okay..
>>
>> What's the difference between xo_board_clk and xo_clk then, if the
>> divider is accounted for in xo_board_clk?
>>
>> Konrad
> 
> Here is the clock chain for the relationship between the clocks:
> xo_clk (48 MHZ or 96 MHZ)-->WiFi (mul/div)--> 48 MHZ-->CMN PLL
>                                |
>                            +-->fixed factor(div by 2) --> xo_board_clk (24 MHZ)
> 
> So there are two dividers (fixed factor clocks): first for generating
> the 48 MHZ clock (ref-48mhz-clk) from the fixed clock source 'xo_clk',
> and a second for generating the 24 MHZ 'xo_board_clk' from the 48 MHZ
> ref clock.

Ok, thanks for the explanation

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

