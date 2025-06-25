Return-Path: <devicetree+bounces-189268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EA28CAE7689
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 07:56:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C2891BC432A
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 05:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 623831E8345;
	Wed, 25 Jun 2025 05:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jek3nG9B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B031E47CC
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 05:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750830961; cv=none; b=S3AhkOSgMet33ZJOgA79jD6Zi/iNIDxa4Rngs8MMYi0/jEh8blcDt7QQXN6oBugw628a7+EVQ4SVg+8LvrbMJdnBiKR1jckvPvGk4oJtHYvWx11Uu5dvCul3AH/lUjS2u7XTpL/ZkPXsQmtjsibDUSeQ/abxtrP5RCl679M7wNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750830961; c=relaxed/simple;
	bh=5mHx2qp52LHFAY1+WNQ1++R00CeBYRXlVI+r6bb6muY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S/eg/sjnRMjGjjPkAeUFTinxeggVJrXcAQFHGAUT1zlFs3Zhnn6oyaTCJ4lP3rN56NcIcVoLrD2RMipxylIjvV0ImTiKSu0+Izc0N1tIsYMrKRlBVYRsWarXZZ+Y2w6ZnpQdVLXTGfz2sVVi2SaGnNqyJNzT+MNWvkCXPrW3xso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jek3nG9B; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P1rrRI000866
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 05:55:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	urXTHU4eOYr5vlGF47ojq1bQ+A2luNE9+0Af7fyCoyM=; b=jek3nG9BJu/p1dTR
	Dy5Pea2Iebt9lqtuBwPqU1DLnTgLsZCvnwhVPRwMEJuO6rnnZbJ6Ox3gmnIoLosJ
	igKPzQaoXiLHiI4DSx+o/GMpFPm17WlWvSqwV3o5ufegdCjxhh/R7rerr0RASSi/
	X6H1BaPORYUMoEb7Ae1gu4wW2ryoQhSh5YQdkzIgiS6ArAUPm6J/+ncKKbx1NdxG
	x0bYD/nBJomM/+XU40KD/laMxRFkhio9bUeP9xewFP1W1jcfYeDFXmN0l/o/tjk+
	jyA6ySKOzfpE1CbBaaELqPgPxwjrGJC6MGQqBqrWq27hpc1+E+oRyXdLoApZyPly
	J3XISQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47emcmr9be-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 05:55:59 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-23824a9bc29so9168085ad.3
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:55:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750830957; x=1751435757;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=urXTHU4eOYr5vlGF47ojq1bQ+A2luNE9+0Af7fyCoyM=;
        b=eI3pdQYJQKZUaFD6WFP98o+2v1ZdpLHe2oSNzgFRco10SGb3AxVMmysS9FNoWnTwcs
         6bipJtziAKZihN2h1IwENtUvMfnkMvdda31Yh0EEc0FBkIwN1s73nujnpkkPLxwwa7lh
         89+K/lor15367fW3y9IgcQZv8/HAV2tcKLsz2b4Pi5OICtD3u+MxpLXhDbz2nAmvNJ6G
         9Vu7m9KIFE+d0ziTG3SWoaNLmMXo5pxylydjKmbKMk4FBWjE45fPbl6KIEYhtYBtg+bV
         v4hWuAxu47LLttsipj1WHjmN31bbN0OrJf6Mkqv7OwCTNOvpmGw8/Tc7Dk8f3UtaEo6V
         6clQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYCs4D/e1I9uS3SjOytlrWDQ9bprA12WTuT0Mtq+hsW/EtEdzjzQmVyMTJaUU53vTEF/IXOgGOqlmu@vger.kernel.org
X-Gm-Message-State: AOJu0YzVXWM/PBXPAJjfpOx77D0TZzclMvzEwoeCZn9RP8TzxKG/ngIV
	23rnCCfwQ4Q8JZzi7GEPkUbx6A4tDAaNg1odrcYjFDJVK4/jqWbEaTbtTnBNpqT879DlDflryt9
	ibqAmceo0LDQU70kMOvV3RPaN9Jw1VYC79OAcnJNmoJpfyoKBz8vrM+yX1vKtBMMnEsdhKlxg
X-Gm-Gg: ASbGncvi5hvmaUE6YFtSEb6zE8S9GfteJ8GNHxcDONXWbc0VD3luS0jD2GRTFu0yAqF
	QicDtGBO7PKpYBI/i3cxbzg9MmPoffocGXIMfYZsCF0wmE+e0R4jz3mD6NUou++w+NNl21dXJpZ
	SjbIgesMyWtYWwDrMAB2C30UEpBgLP11D7GUSFj6YLFsqJWh9JZFvrSBIKEN4ifUmeClgPRmbzz
	ACNxmcwNba5VDdaZ6pdkHi6J1XS0ORV6QlwmdE2jmTbPK0tZtGdecEBHYCX51hmUkEmuwCaRTPh
	5oNjeKCPx+FzP0SviDI6KCgasT3e0GZaRjxdimaa6SKhOKju5uQrCTI8KK6llnE=
X-Received: by 2002:a17:902:e802:b0:235:ea29:28e9 with SMTP id d9443c01a7336-23824079460mr38374035ad.38.1750830957488;
        Tue, 24 Jun 2025 22:55:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtjS5jkmUSESvPLbkb/0K3dNNixBLe3xQT54FHebYS6/RcOU67fQTGoknssxa7pA1gZwWyBw==
X-Received: by 2002:a17:902:e802:b0:235:ea29:28e9 with SMTP id d9443c01a7336-23824079460mr38373755ad.38.1750830957077;
        Tue, 24 Jun 2025 22:55:57 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d860a8d5sm120184275ad.104.2025.06.24.22.55.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 22:55:56 -0700 (PDT)
Message-ID: <3514a3af-ab7d-41e6-9e59-95defe9105b4@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 11:25:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: ipq5424: Describe the 4-wire UART SE
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250624-ipq5424_hsuart-v2-1-6566dabfe4a6@oss.qualcomm.com>
 <bdf7e3e4-f1d1-4f3f-aebe-ded7b8091884@oss.qualcomm.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <bdf7e3e4-f1d1-4f3f-aebe-ded7b8091884@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: FMRBRGq3cU_ojtSTDXPnKztvwqxEvpN7
X-Proofpoint-ORIG-GUID: FMRBRGq3cU_ojtSTDXPnKztvwqxEvpN7
X-Authority-Analysis: v=2.4 cv=J+eq7BnS c=1 sm=1 tr=0 ts=685b8f6f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=WdiEhHOlSmYA5aSgIJUA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA0MyBTYWx0ZWRfX2DsdgF5w9z56
 NHKO/asNtFw3L4w6TEV7bCUcq6uyWXusctHN15jBlKZW/RaDfLukxK68Y8vAAmUXtfI1x0ITQ4e
 tVeVvfY+R0LMEUSSwPfBO/BznVOjJHEVrVRCx5fzaTnw54PJF3USJFqbDO9+pJBlFJcQaZwUcOY
 a4FVdfNe8Ct81B12s2bTNGKohMJflh1+K3hyn6mcTlIEeQnobN27ZVTL5S+qZKjgotVeUEmnH+o
 U6AVO0Y93Fsy1xBw/MQShNxfiA+64l+o+xi/1n56FCtoq7NI2c8C/t1IC1O/k/1GJ4wTT2VpTEb
 VmjvnEu19UEpitjKqui5zivqDkHQrm7Ut1OUhadvIlDVrJgFxSvzQaDO2jgVlgMG52DhBZ1cwrD
 iRfyW4sJmcaKGvCkl07kMGis7ildLrTKEuQYvF03rbQE7QCmPZ61+rVxFjKSZVFGpmyOMtCB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_01,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxlogscore=989 adultscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506250043


On 6/24/2025 8:08 PM, Konrad Dybcio wrote:
> On 6/24/25 11:00 AM, Kathiravan Thirumoorthy wrote:
>> QUPv3 in IPQ5424 consists of six Serial Engines (SEs). Describe the
>> first SE, which supports a 4-wire UART configuration suitable for
>> applications such as HS-UART.
>>
>> Note that the required initialization for this SE is not handled by the
>> bootloader. Therefore, add the SE node in the device tree but keep it
>> disabled. Enable it once Linux gains support for configuring the SE,
>> allowing to use in relevant RDPs.
> Do you mean fw loading support?

SE0 is minicore, so we don't need to load the FW. But apart from FW , 
protocol specific configurations to be done in the SE's Image 
Configuration registers, which is taken care in the patch[1]

[1] [PATCH v5 0/5] Add support to load QUP SE firmware from 
<https://lore.kernel.org/linux-arm-msm/20250624095102.1587580-1-viken.dadhaniya@oss.qualcomm.com/T/#m37a6b739c66040cde5b6b0121a03da7ea6715842>

>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>> Changes in v2:
>> - Correct the interrupt number
>> - Link to v1: https://lore.kernel.org/r/20250624-ipq5424_hsuart-v1-1-a4e71d00fc05@oss.qualcomm.com
>> ---
>>   arch/arm64/boot/dts/qcom/ipq5424.dtsi | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>> index 66bd2261eb25d79051adddef604c55f5b01e6e8b..2b8499422a8a9a2f63e1af9ae8c189bafe690514 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>> @@ -417,6 +417,15 @@ qupv3: geniqup@1ac0000 {
>>   			#address-cells = <2>;
>>   			#size-cells = <2>;
>>   
>> +			uart0: serial@1a80000 {
>> +				compatible = "qcom,geni-uart";
>> +				reg = <0 0x01a80000 0 0x4000>;
>> +				clocks = <&gcc GCC_QUPV3_UART0_CLK>;
>> +				clock-names = "se";
>> +				interrupts = <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>;
>> +				status = "disabled";
>> +			};
> I'd normally expect to see a pin configuration here as well,
> especially since you mention the bootloader doesn't configure
> the interface

Ack.

>
> Konrad

