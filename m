Return-Path: <devicetree+bounces-131131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCB69F2146
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 23:33:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 411AB164C17
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 22:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C62691B218E;
	Sat, 14 Dec 2024 22:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fsYB7avh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F88843166
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 22:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734215596; cv=none; b=QYw5AHfnKw15OAWLhMaI2C3T6NP70pUh+NDNdd+k5nhQ50+qxiXJOEsoqJ9qnR68glxUyk1IeFNAd1sqO+cXc8kLwwONjw+KV56vjGkQX00TXO1uzuaSPRsCkr5XPVjExWD5Pu1aqszhUQ9fDWYdQRFvsfXGwv74iLTu7qXZcNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734215596; c=relaxed/simple;
	bh=BlHpWGGf4r4JONh6CygaCzqeXiO/02tsNy6cd3qV3Hw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N4ZWM8Bj4iTTDqzQP6ba247TwsHmkqCj7U86wjtWE5Pua/2FWLFvcwBXbDlmYEsO/RAjaPwgEufaEzpraWNnX4ZCYDRejBkqLLP37nk9NzONjMCeWFVIohijHQ3jPRnMrqo4+4b1c89Cu1xHsS60d7Z5s2Ihubn2Iha87Yv3zqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fsYB7avh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BEM5sOV026632
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 22:33:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oatQbi3O3tD9RBjaYUsTiiz1j1ogTPu6wPVGCfsPV+4=; b=fsYB7avhBKZ2LSkU
	W/Q6jPFZLHUQAr4ReInUAdIrmD6MPmSBh985PSaq8rjEmPg9yPNW2pBupBwbmw/d
	B6grEZypEVZGvvQuqsA06k8QVluZfGYvQLKpR/QlfF+Kx5ODoM1AGCM4mYJvUMXw
	4FKMQbCxB76drvyZ1DS687xKxPigXrwZPFSbKY0QnDUVVxFvSaly+WfMJasPT6sL
	YI7FJrbes7KBQvOJfozXYVjU9qoitx2sni0tj59MaML7lk+ef/1M9iOhBvJhQNGw
	WJcaWCmZNSI9tCKrgvmVvPBbxBRcMNDOtVt4mY5r+bf4/oq04C792s9+fnfKt9UE
	SIXd4Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43hbft8g1n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 22:33:14 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8824c96cdso9431996d6.2
        for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 14:33:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734215593; x=1734820393;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oatQbi3O3tD9RBjaYUsTiiz1j1ogTPu6wPVGCfsPV+4=;
        b=OEiaHmBf5xM7MXhR1CT+t5IiZSxtQnjX3rNIAkH0Sus+DXXpbI5HXRxjMZ2A2wNLak
         MVGipFzHRfDEGTr4gPG/akn49YJv9K7g4OLCdGNaOuioN2fDKmkapVNp5Lv1MiBdsvvg
         yEWktPr2lMXGNzoe9Yv+w77WrwlwfgjIDzSW6l8anrQb4njVdc8GK0KrsumnsuTByHVy
         NdmbE0gceamhehBe5Ite9Mmwk+CorgSIecTT3TK5C8mmcZM5z9E7tl/Ys6mqCoM18J4f
         msg3SMOO+B8jf3v08SWoTIrsIZVqfA+qcLQjs6X2kwDsenq7MxkVmI/WVACt632MSxZW
         Wsyw==
X-Forwarded-Encrypted: i=1; AJvYcCVS+UbgdBrGu+IoUMqYoul6H1dH1TjVTUQFNnYLLyvVUG0ZS6mPfp61za2eprnnaOvEt+2+obF5ar6G@vger.kernel.org
X-Gm-Message-State: AOJu0YxyC/gzqsuwE6n6YV3S8TlbNQW6xWPqPgjsoDtXVwXTPQ/E+j5r
	DOXA5i9eyPsJhM9lEpoHacYDsALJYK+0zstHUciJkhq7sAP3rN/zdypU1db1f0SSLqDkmbDAzQg
	z14m5oICCvUDbmijgckM6V4s6yIQD/VO+JKG2Wb/xLx66eGu6yMiJAm/Cs5Ua
X-Gm-Gg: ASbGncuEL2CL2Y0+U03+0asDeIwd2/0jnqEsa1XdKfhoAU052+/mAohEvodhwQ75Wgc
	VxX4lqLPYbH3slEdZPkblJJwKu+AwJ8odVOKnhw9DyqJGT3/zgGF5bkWCCpc85WROLdRaJ/8Jgn
	sDG9zNoJrvaqVUJXG5+noQsxRtfWCj6SluKSvN2qmcLWe4h6uZ/Lrn2Ak0j4kmNK520Le7iBHnX
	irgVpJ05Z4GpAvCWn/JEyAuWkgZJI6+9+rhhvI/hFuK/lGysmrudGEwDGdaIKPzUkW7BtvFfYpg
	LddYD0kQ6u6c4b1xijP2u2UOcXpKFlmKDlo=
X-Received: by 2002:ac8:5dc7:0:b0:467:885e:2c6e with SMTP id d75a77b69052e-467a573441bmr53093721cf.1.1734215593424;
        Sat, 14 Dec 2024 14:33:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IENLCVvnwGOg/eVAJIwA38T4KTTRcSsV4U16aVEQULVqYttcjIrmj+Qh4yUFcSMppLXkCVpYA==
X-Received: by 2002:ac8:5dc7:0:b0:467:885e:2c6e with SMTP id d75a77b69052e-467a573441bmr53093551cf.1.1734215593099;
        Sat, 14 Dec 2024 14:33:13 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab96067de5sm140124066b.55.2024.12.14.14.33.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Dec 2024 14:33:12 -0800 (PST)
Message-ID: <ac88ba7b-0b14-4302-9074-ec4fcee223d7@oss.qualcomm.com>
Date: Sat, 14 Dec 2024 23:33:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT 4/4] arm64: dts: qcom: msm8994: Describe USB
 interrupts
To: Petr Vorel <pvorel@suse.cz>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        =?UTF-8?B?S3J5xaF0b2YgxIxlcm7DvQ==?= <cleverline1mc@gmail.com>,
        Alexander Reimelt <alexander.reimelt@posteo.de>,
        Dominik Kobinski <dominikkobinski314@gmail.com>,
        Harry Austen <hpausten@protonmail.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20241129-topic-qcom_usb_dtb_fixup-v1-0-cba24120c058@oss.qualcomm.com>
 <20241129-topic-qcom_usb_dtb_fixup-v1-4-cba24120c058@oss.qualcomm.com>
 <20241206220252.GA138783@pevik>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241206220252.GA138783@pevik>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: DpZ_ihUGzeP5p_Uwz6ao4Kiy6R9YsWHz
X-Proofpoint-ORIG-GUID: DpZ_ihUGzeP5p_Uwz6ao4Kiy6R9YsWHz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0
 suspectscore=0 mlxlogscore=802 phishscore=0 mlxscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412140186

On 6.12.2024 11:02 PM, Petr Vorel wrote:
> Hi Konrad, all,
> 
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
>> Previously the interrupt lanes were not described, fix that.
> 
>> Fixes: d9be0bc95f25 ("arm64: dts: qcom: msm8994: Add USB support")
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/msm8994.dtsi | 9 +++++++++
>>  1 file changed, 9 insertions(+)
> 
>> diff --git a/arch/arm64/boot/dts/qcom/msm8994.dtsi b/arch/arm64/boot/dts/qcom/msm8994.dtsi
>> index 1acb0f159511996db07bc7543cf4f194a4ebd0fa..8c0b1e3a99a767e7c28bcaf3b9687501cc15cd58 100644
>> --- a/arch/arm64/boot/dts/qcom/msm8994.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/msm8994.dtsi
>> @@ -437,6 +437,15 @@ usb3: usb@f92f8800 {
>>  			#size-cells = <1>;
>>  			ranges;
> 
>> +			interrupts = <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 311 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 310 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "pwr_event",
>> +					  "qusb2_phy",
>> +					  "hs_phy_irq",
>> +					  "ss_phy_irq";
>> +
> 
> Tested-by: Petr Vorel <petr.vorel@gmail.com>
> 
> Well, I tested this on msm8994 Huawei Nexus 6P. It did not break anything,
> but obviously it's not enough for phone to get USB working. IMHO none of
> msm899[24] has working USB.

It did work for me on both libra and on the Sony phones.. On the Lumias
it worked when I booted through lk2nd, and I tracked it down to one of
the writes that I never implemented.. and then I removed the repo
where I had it tracked down

I took a quick peek (but don't have the time right now to make sure it's
this one) and if my memory doesn't fail me, you may need to

// the second address in qcom,usb-dwc3-msm in downstream
void __iomem *foo = ioremap(0xFD4AB000, 0x4);
u32 val = readl(foo);
val |= BIT(0);
writel(val, foo);

> msm8996 has usb3phy, hsusb_phy[12] labels, I suppose USB will not be working
> until this is set. Below is a snippet of a downstream device tree. I might
> be able to transform it to the mainline tree, but feel free to post a patch
> (probably obvious for you).

So long as the PHY is not reset, it should be working as well as it
did in the bootloader.. which depending on whether your BL set it up
may mean "well" or "not at all".. Give the above a shot, put it in
some early init code.

Konrad

