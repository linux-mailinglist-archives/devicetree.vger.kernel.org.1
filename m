Return-Path: <devicetree+bounces-193003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ED1AF8D2F
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 11:02:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8DA94A3CCF
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 09:00:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8BCD2C08C1;
	Fri,  4 Jul 2025 08:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mOD8v4Zo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326802BE7CF
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 08:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751619283; cv=none; b=cni4GQUd2/JrOAS0TL6dlJ/5XSX2u+AU9gwHbDTzO+wSYeNJc1qYfy4+2IZ86M4DvtZSaZI31DOIt9UjGOic2T3VdxCMBAwctnjJzNLFh3Mn/zz8Wpry0Ds8mU+5zFF1JCv0iJSxGiOsxPh5RX0IC0mtN1mFkdzCQT3AIwPMJug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751619283; c=relaxed/simple;
	bh=zaaxoxNgjPUuxdMxeFXrTVZNMlPBYMs/ecrVcRQNRoE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K1Ge1bWOsSZGdUwjiXoM4YtHpS9V/XVpGdWazIl1V0ZVMHEYEsw8LEoIKEHVd5KQj4yTXZndos4RaKP+wUJX2jjXlPO5unCdROXhj0UUZTWXL7fsTv6CwEs6+rEvw8C4ipyVxUlBiO/YmX1AyfCVdnYfUwgYUglVPtrtwKeNLQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mOD8v4Zo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5644MDOE001541
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 08:54:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RNlmPCpy3Uf3D/WdjoT5ezCikZt8RI8Mo7y6vQzht5Y=; b=mOD8v4ZoNJRcLV8M
	7qpQDjxhqpFVdRZj4J06qCa/pnKaTaF7dvp4PyGf3SOQB7d8oqU3ZQuRsBEUw+4y
	hC/BznZUQ8xrAKL90JdHFywlFKUPh0M5p83gJUxML8hLx1BlKhotXJVVGhkKpenY
	6u88maKXg0G0PRTHlUtkzDBNIpR23irXhOglna/+lZ0ioAEeP0ijD+7qL7oG504y
	YPgrFWbOSsndWUG3s3BhWkI1ruw6ppEi6hlG2Gwyn1BJUEQHjOZUPLpTMIcLjJBb
	rVSivOBz1KlU3ITqN1U0GDpzh8DIQgjkGR9Yvm5vn0jeALn8THGmZYRPyp5HgECz
	RCC0Pg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47p7ut0ru3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 08:54:41 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-31327b2f8e4so877669a91.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 01:54:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751619280; x=1752224080;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RNlmPCpy3Uf3D/WdjoT5ezCikZt8RI8Mo7y6vQzht5Y=;
        b=ZB5pP40yvzmZrcFL7+55vfjYfbTpLcERsPvuokChk47PLNHRQ5RUYq27oGGxkBM1Ko
         c9gcpeOq0UE69YA1nboDMxbg5/+uzkXJJNc5Wgeo2jamHbIv1eEaNdnydgvultg9ndum
         JFlv/FeJOlT5w74YgJv10FF4WcFTjiB6iuavlZUqifDWe01gRYnwILkiIWhoJnV1W1Hp
         wgDuqwX+Ty6FWaYfCtGXSDfkH517nucy0eaRQmc4u+Zfy/Fzw5vIW0Uc72bx30hDloiB
         oQv/RTglGTld//37BTp/xNQnHIF2tGZOuILJYrA9AiC6SITyhHT5Pc5HwbV582iutXRi
         H0+A==
X-Forwarded-Encrypted: i=1; AJvYcCXG1KTirBgGrcCKZVGRrn0LPGGCuWX6dwkNEMmyAEu5Fm2tqhh06lP++5Q9dzcE7+LHm7Brr0a3b0RY@vger.kernel.org
X-Gm-Message-State: AOJu0Yxbq9wvhGwt5S9fdxX1cqiD0owEMIogQk7Z4lkS71Qlsl+VfZ73
	1mEri1AYEwu391mLDlr/vSuVsQ8VsWsXDLvS+dz4Puaz8LojnRMrfiDO0iJFuFTNre9xmbn9/ZI
	g9U2I8ZyVNS9sR2/YppbvIyM32cz+rEEIre3P7/a6D13VdDY4sMT+/JqPBASh5tLS
X-Gm-Gg: ASbGncts85eOkRGggv7uOOvKy19YqJMnnpNHPXpoV+XbTY7syqWs/n62rGRuu3AXeJm
	5Rt3L+QkO5KGJgHGueazhOS6GXOfvYgkXTtAb1oPnTotv56v7r3d/FHvVeq/zL4qHA0I7nrPEZU
	nePi4IdtR0nIcbJKg76ucVy7lFO2JXSW1a1GMhzFXP//Hb+7RqY3Afd20F25DPD08TezwhzGaZr
	sMyLeQ0WeLcIEyZMCOnCcrYTW1tKSulrQUkOO0gz4ayQ1/MhJcF2NfOCImibZErv1nR+KMgTsG9
	i3TU7P0nCxIYRBUAT3E8KLUHJnhEgPQ6t902a//L1y2HBj+j4wPfoN14EvkXUJg=
X-Received: by 2002:a17:90a:d88c:b0:311:c939:c851 with SMTP id 98e67ed59e1d1-31aac43865fmr2897325a91.4.1751619280456;
        Fri, 04 Jul 2025 01:54:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH43RXiz/iv6OSVtPRo6JR4bRRzwFOrl87rAT3TwkUaSHbMeQVe+/sFB7ICmDNNgjDen93Xyw==
X-Received: by 2002:a17:90a:d88c:b0:311:c939:c851 with SMTP id 98e67ed59e1d1-31aac43865fmr2897300a91.4.1751619280056;
        Fri, 04 Jul 2025 01:54:40 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23c84446c4dsm15030975ad.80.2025.07.04.01.54.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jul 2025 01:54:39 -0700 (PDT)
Message-ID: <d4e7dcb1-5a6e-458b-9b1f-28298fefcbd7@oss.qualcomm.com>
Date: Fri, 4 Jul 2025 14:24:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] arm64: dts: qcom: ipq6018: Add the IMEM node
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com>
 <20250702-imem-v1-3-12d49b1ceff0@oss.qualcomm.com>
 <96073931-644c-4d77-9c61-45ec65adf928@oss.qualcomm.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <96073931-644c-4d77-9c61-45ec65adf928@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDA2OCBTYWx0ZWRfXzoEcD3/GRkIM
 1yRW9EpkIxXZCA3PRSf8LmwwxUNrPP4/m8UpENB2KRe5GoPaJWiLpjUo/MUUnz9w4RRH+gmsEH0
 ZCCGNEmZM4wgBFLufT0Evu84IiVhfaaC8pKAg6iJ85yHmTJIpJ07fk1LOVd5x5Y92Lr6rmiRi0Q
 pGLSj3RGWwa/MKOQfkCpWy3KhfvpXbjA9Rg5cOXK9RNU2cfPe2R1gMhzj4qhUH8dkUJtlMUkmog
 u/r7Iqd+k1fvFN61MpAAO3+SJkYJg/bhP/nJH7Y4adBpGqdUPp0xQrKqB70oPnasxGcP3BK7eVd
 PZCfK9QrF0whDC7CICTgBlNWsu+Ub9YpWjLZXekzeSnTOb2kfOn5qXLLXVvR9iHMXu6oeTjAPQt
 KQfc9vQjinVU+3Sm2+2YGGObemI8FHBtJatI4mfguP9+YYbKenDd779KaFop+sQAzrDNyU3c
X-Proofpoint-GUID: iiDX2HOqdzMEP9n3ngKefAz80mNf8_mD
X-Authority-Analysis: v=2.4 cv=Ncfm13D4 c=1 sm=1 tr=0 ts=686796d1 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=jZhe5MNW9S75RuEgyRIA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: iiDX2HOqdzMEP9n3ngKefAz80mNf8_mD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 mlxlogscore=999 spamscore=0 malwarescore=0
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507040068


On 7/2/2025 6:29 PM, Konrad Dybcio wrote:
> On 7/2/25 12:17 PM, Kathiravan Thirumoorthy wrote:
>> Add the IMEM node to the device tree to extract debugging information
>> like system restart reason, which is populated via IMEM. Define the
>> IMEM region to enable this functionality.
>>
>> As described, overall IMEM region is approximately 32KB but only initial
>> 4KB is accessible by all masters in the SoC.
>>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/ipq6018.dtsi | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>> index bfe59b0208415902c69fd0c0c7565d97997d4207..7eca5ba416c2ef5ef1c4e0eb4f58f1ca94fc92f0 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>> @@ -659,6 +659,15 @@ qpic_nand: nand-controller@79b0000 {
>>   			status = "disabled";
>>   		};
>>   
>> +		sram@8600000 {
>> +			compatible = "qcom,ipq6018-imem", "syscon", "simple-mfd";
>> +			reg = <0 0x08600000 0 0x7fff>;
>> +			ranges = <0 0 0x08600000 0x7fff>;
> I firmly believe there's an off-by-one in the docs and there
> isn't an odd number of bytes reserved in the hw
Thanks, I cross checked this in the SoC and I'm able to access the full 
4 byte at the end. Let me fix this up in the V2.
>
> Konrad

