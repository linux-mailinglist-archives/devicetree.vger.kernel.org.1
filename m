Return-Path: <devicetree+bounces-132992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9905E9F8F3C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 10:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1ABA1897761
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 09:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FF0E1BDAA0;
	Fri, 20 Dec 2024 09:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Yffz7OE5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9512E1BD9CE
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 09:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734687915; cv=none; b=BwTWnkTLFMueBO4JW1epi9OSibBXU/A8ddOufEUSRqrhHXKEZpvzO9B68durE5oIGFpk6Z8ftx2iiBqiPfgMa0yXpcousmtrJnmE6spAPI5d/uevlCe30bnePbFoXCtkKPllEUwWvFxWXFa+XVQHsfffcSwML1RPduDSrjIul3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734687915; c=relaxed/simple;
	bh=rgbIsEXKrNUTh9N1VFln1ZCjKPm8rV2hssaSdAVAMN0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VD35BNmzEM8J5pkMXaDVFrKfDmqbIIhuiijt46xXeceP1beb5ovbSHlLEGoL6Gp5wAvyl6cf55Ng3gagjjAt8sWig6l502GYkfO4ApMz8mHEkMCFF73xs1rlIxv/+OXNvPEq0nnHnm9SBFpPn4rR7QGlizjIFt7szwtnsJkgKB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Yffz7OE5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK6lnEs001789
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 09:45:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9t8ArwAGrpS//NdxnvpTo28cKSL+hVeeidKueQ14eto=; b=Yffz7OE5C6rf+ELc
	w4FCEAy5QTkziXKW6QlLDxjRKfL+7d0QVKliwiyr7RIz3mAOB8bkiF+9P2Jw6xqP
	nyhUW1TyCd37ffTWNw7xRurr/z4p+6m5B/gyBxu8IqjIxaXHAHDXgLnh107Rdgf8
	n8S0Whi8V0Y4ytEuQkje9ePv8+W0DeFsSc86if9CT/W1pXjCfoNUDCzTCyVYI3jH
	iyYOkTIy7fYNX3/aWBlg0wq9q6+r12LiTdg4tIeb5ZeyojLvaQF8u7BonK2U0/TW
	jIzrCi17SvkxjJkfvsT0yaR0uRX2OCHB/4yHZuTUBHnCxLn2M6FkiZencYotVrUQ
	1pfFoQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n3mfrfwn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 09:45:11 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467a437e5feso4057511cf.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 01:45:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734687910; x=1735292710;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9t8ArwAGrpS//NdxnvpTo28cKSL+hVeeidKueQ14eto=;
        b=wAvqI3l7nQV153Hy7TnSmLdyw9MU4H7o384zl7GisH63HAiHuNo0LAi4pSF7Ix4Tkz
         plbFQuJXebQqY6NngxkN5O/zSnXlFOY+343VBgQQCNnnpyFig6e7+r7aGKGhWdKVAk4N
         GjBBTtCOlwRwIZ4FOFX1wPajDhfVDxAwoUFx/4iNqRFIznYjZGxMesIyNxEfa4t1aAZs
         /IGoHVNwQuQOcLAhTy9mO+eS/R2h7sYQKA6I4MFLf8AmWBEcK/IbdiCA9HN95xGtIIzA
         Tu737V0zR+Z6dAQ5sBz7ANVCz2IYhhUK+bAzTKaoj3BIvpq6bn2+by9o/7rghoWX4qm+
         wiOg==
X-Forwarded-Encrypted: i=1; AJvYcCXSEoqoZopSeL8GPGZuFnCNZaXrxDhPCq5ppXu5g4XHpCBJ2R2sOth6BczZQJyG3Z+/y1Kbh4LxDW0O@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/Mpn4oHkJvdPGCe3QNoxjmBZdIL4LQ+us95hEhqP9eEOIZrMc
	bmlv4v8jb7x3NgXhl5bzEv1L22l2dQiyYdBVG+4a3s6DOGevPuDO7Gka6o0E0fj7WHKfa3O4pKO
	aNRcWSpFfazDsyz9QoWkh5HEiSfcLXRZitOJ8FsHckdPI/U20G9YDOKAVobHS
X-Gm-Gg: ASbGnctipD4CPs4V/86FMCK+a6pBPYfvRy/6h/ASl42OG3OrnLRMzX5ewm+zTaA1iF0
	ukMGbbs0Ox4/viGl2ZGU3B98wa3KxiqBL7EUe07H1srsy3ssGHi0Ae7K65Kiv8DLY9rlPRbDalI
	2S2J+3TBeFNua1bZKQ8usScmqsG9QLSUAeaZ9sboT05U/3exLgmFis04zyc/m5ee0ND982Jw5cU
	rY7C1GmEoiaW/yhtyTq2ucG/anOxtGPqPpc/9SOn7i640LItET1KaZWMpVjPdlGbQ06aTTuZ/8Q
	/Oq8uTjXv/tOwTPDhn144GIv/hf+wBB299E=
X-Received: by 2002:a05:622a:5cc:b0:460:7929:3575 with SMTP id d75a77b69052e-46a4a9daba6mr14655311cf.16.1734687910162;
        Fri, 20 Dec 2024 01:45:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGf+tTYMFgzn7IzxK2YYOAOa+4TPDlGAcKmLrdpJ7UTEWxIiYZqZsZRaQjTIPUanMegHW11Qg==
X-Received: by 2002:a05:622a:5cc:b0:460:7929:3575 with SMTP id d75a77b69052e-46a4a9daba6mr14655141cf.16.1734687909794;
        Fri, 20 Dec 2024 01:45:09 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe41a6sm159635166b.102.2024.12.20.01.45.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 01:45:09 -0800 (PST)
Message-ID: <17ff74d9-2336-446e-95bf-be8d70d20a07@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 10:45:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: ipq5424: add spi0 node
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, quic_srichara@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_varada@quicinc.com
References: <20241217091308.3253897-1-quic_mmanikan@quicinc.com>
 <20241217091308.3253897-4-quic_mmanikan@quicinc.com>
 <ca0ecc07-fd45-4116-9927-8eb3e737505f@oss.qualcomm.com>
 <f51b7196-1774-45b0-a63b-1070091441dc@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f51b7196-1774-45b0-a63b-1070091441dc@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: A7JTKw__mQZyBviB1pFSsUBi0G-Uf4ih
X-Proofpoint-ORIG-GUID: A7JTKw__mQZyBviB1pFSsUBi0G-Uf4ih
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 malwarescore=0 phishscore=0
 adultscore=0 mlxlogscore=999 impostorscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200079

On 20.12.2024 8:25 AM, Manikanta Mylavarapu wrote:
> 
> 
> On 12/20/2024 2:06 AM, Konrad Dybcio wrote:
>> On 17.12.2024 10:13 AM, Manikanta Mylavarapu wrote:
>>> Add SPI0 node for IPQ5424 SoC.
>>>
>>> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
>>> ---
>>> Changes in V2:
>>> 	- No change
>>>
>>>  arch/arm64/boot/dts/qcom/ipq5424.dtsi | 11 +++++++++++
>>>  1 file changed, 11 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>>> index 5e219f900412..b4d736cd8610 100644
>>> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>>> @@ -201,6 +201,17 @@ uart1: serial@1a84000 {
>>>  				clock-names = "se";
>>>  				interrupts = <GIC_SPI 340 IRQ_TYPE_LEVEL_HIGH>;
>>>  			};
>>> +
>>> +			spi0: spi@1a90000 {
>>> +				compatible = "qcom,geni-spi";
>>> +				reg = <0 0x01a90000 0 0x4000>;
>>> +				clocks = <&gcc GCC_QUPV3_SPI0_CLK>;
>>
>> This register base suggests SPI4 for both the name and clock
>>
> 
> Hi Konrad,
> 
> Thank you for reviewing the patch.
> 
> The IPQ5424 doesn't have SPI4, and according to the Qualcomm IPQ5424 register catalog,
> the register base maps to SPI0.

I'm looking at that register catalog and what you added here is
called SE4

> 
>> The existing UART1 similarly should be UART0
> 
> I didn't understand your comment. UART0 not yet posted.
> In IPQ5424, UART1 is the main UART used for console
> and UART0 is HS-UART used for some debugging purpose.

Here it's my mistake, 0x01a84000 is SE1 indeed

Konrad

