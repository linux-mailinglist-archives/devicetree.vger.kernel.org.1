Return-Path: <devicetree+bounces-199945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A5BB12F2A
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 12:14:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 45D2A7A4D5C
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 10:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7785B202998;
	Sun, 27 Jul 2025 10:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Uw+RTg8Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F43C1DDC23
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 10:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753611268; cv=none; b=AoMEQYwTRX5Ph/Tc4037XX1PphEprzmrb0qB+EN+T6AvqicZNTYuF4pIvcXwm8jBXDNlai5tBhXuJSpW2aGuHMJek70/s92F+b+x9Us369hR8k5ie8n0ImulbsmbHeo7cc1D74FIlEkTbLdKsgYdfkRcOF0AtQE0ISJMYu5PPPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753611268; c=relaxed/simple;
	bh=8qsXtxH+kgZ5916SUbXCu8QlLNqivyV04aJIMMPtIWs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=salxpKbeIsivehJbCubXWTUMdMEjhInl2zYegEiCWdP8OblHQnU27GpEVCquwZq/7vEeUUBKJXMxiqcnUAc9+Zm28fS1dRH4Nnlu2DNSZNBVqTW7iGxVXJYr+KqRR3OhefSeKXsZg+oyIz25FyuI0bYsgNrIwPP3kQjc2/L1cAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Uw+RTg8Z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56R1xcv2018055
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 10:14:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lwjb0BHg6EfDOouDDm1cybRLuxEXfs9odZ3SmDOgc1U=; b=Uw+RTg8ZDBuO/gTY
	SBrRo3cR6k2ilnI+qWly3feuj+Ore1psvzEOgWm4phJSQAbG9imZKcLgF3Muso93
	0YaRq00TRzpYu1w3xDGCJCkay5SOi+sW6YRgf1NE19k1Mhq4ge1vB3zuO6te/ghw
	weJeCIQTeVI/uhk/EBNsnyERKW8NwUWG00FCrUZnMsje2bfPkcdi5vVg64nVzLzt
	AkiwDXT7CfNx8ZMjI6HsHc4nes2M+81p+Xy575y2WmoAxefINxudt20ktgmhF6Ly
	FCZOJCT03tGU00oF6zxtqx2frQECNkrl0cOb2jmakXktConyIDH/KULlJY8jydJU
	zGmJ/w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484q85sya3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 10:14:25 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7640573c32aso2189185b3a.3
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 03:14:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753611264; x=1754216064;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lwjb0BHg6EfDOouDDm1cybRLuxEXfs9odZ3SmDOgc1U=;
        b=rWFuq/tQ8GYXvTDgVpFTgkmJEcaBdzUjnJMR4rd3/E3BJ9dBHGJnWgxapHo16WUOl3
         +ymtltBMJLtcBwndEksMQ4V7f4QxHSIbwZ7tcJzY1W3NxVcn2kCjN9UGQ5cZgY4np5xr
         d+h2GqjhocbDxRa/10jLtdObtm9myvQU6vu+h0Cz2h1SAjLDw6iKXJGmktGGAvYjKON5
         L9b3gL2qr43Dt8+AzXwHLe+MxASp9U2TUVbxX2Efd+nZxa2dIcerjG+HGXCzxVUvxuZo
         y+YYD+A/wEd9i8jFfX55A2beGrXGkDj7YWrE5RtxXaokDhotzPZzSKGxsaMsqXgFq1XP
         9TPA==
X-Forwarded-Encrypted: i=1; AJvYcCXxHuAKKVl6l1iuUbE2dNFWmHCne0mIuwz5Mr7Rs93jkPnE0Now0XMER++S9tgs+nK/kRNf9xK+1Odb@vger.kernel.org
X-Gm-Message-State: AOJu0YxruI6fUEWm+Nwh8JwebylEQ0CRtswgiigFCpL6Ky/TqMqdVUG3
	ynx5KrpMhDzenmhU6/XYWAQiitYXOXS+j3A/MWUX6w3CYGvaxhMHJwpfObSfV5VCZ/pNlh6JvWw
	yV2jUbJhhXTpxTbusDa8FbcvjEsD77cgQPgpD/2viNcK2Dw1tknOtvkBZA3keblcjUUE6/5xy
X-Gm-Gg: ASbGncsSQLi26s//WHz1AxCTJI0IW9atLPSwkLO/zypEjy5LK7H3wTmSuIKhfFG7DHV
	HtQ67O3Gvf7fkBVfHUNYm4onjZDIp7R+dp31utgh08BE3RtbxWZJ5wWGqu+He5XyNNpPgvAnog2
	aBuu/W8Aea1xhTIRmUD930DAHaLoTiGLmN1rNKTv75mK2NKtAPq1YJftE3anJSPDYAmqmXHDGLK
	KN/LcDSxODsubZZOBXAPEugAZpv2Dh/yxGMg47nAa0YgKio4tDA7XgMh7thjmDn0zfeeadkfn2s
	sZKsDvX0wLrT/uzfVHelMJZFcE2CWDXmtjvBp+oDYRG1mqIxcOCgii+Y2pY0szSVoyhts/ufjQA
	XjjQThj8LM8CazNGKkw==
X-Received: by 2002:a05:6a20:4309:b0:21f:5598:4c2c with SMTP id adf61e73a8af0-23d7005288amr13839133637.13.1753611264441;
        Sun, 27 Jul 2025 03:14:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8LNyK4aRWVrXyDFBP0wxYJ0pw+PA18v3/Xqj1UNu4XPeuS2DNvEXb+2BJjw1zfbwOcwCGEg==
X-Received: by 2002:a05:6a20:4309:b0:21f:5598:4c2c with SMTP id adf61e73a8af0-23d7005288amr13839095637.13.1753611263986;
        Sun, 27 Jul 2025 03:14:23 -0700 (PDT)
Received: from [10.110.115.111] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3f7f6b54e8sm2802688a12.57.2025.07.27.03.14.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Jul 2025 03:14:23 -0700 (PDT)
Message-ID: <0cbecd24-fb1c-441a-8921-ff1651503577@oss.qualcomm.com>
Date: Sun, 27 Jul 2025 18:14:16 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: qcs615-ride: Enable WiFi/BT
 nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250726-615-v6-0-42b8150bcdd6@oss.qualcomm.com>
 <20250726-615-v6-2-42b8150bcdd6@oss.qualcomm.com>
 <ad5d7zx3ztuouvqediihpj6ukmy7dvl4eampuirp5r6ftr4lh2@6fkebmfj25yj>
Content-Language: en-US
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
In-Reply-To: <ad5d7zx3ztuouvqediihpj6ukmy7dvl4eampuirp5r6ftr4lh2@6fkebmfj25yj>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI3MDA5MCBTYWx0ZWRfX2akCso6KPz7t
 sqTj+x/vWJJViwKZ4tXzDlK61gnsNIvQaeTor7L3fPF026PvvGEvjxwpaSu0D1zqZEuXuLUvuy8
 1UzyiaATsmYFANZxVkIugJpFXK2H1ylb4TuafIgnREkCJbBgKZd+4KZk6VLy+EEi6tvip5Jntbt
 plxkZDCBF/6ml2mnbru66xd+Ty2hTTMzd0XaGWrmIqms4nD2Gb9w27srPUXoMMizX7euvsfKIEZ
 u1T6YjCOMhmuxOmUo//5iVTRuu2WDwOxskXAcXzvM2vl2inCrk//N/dijpq4x2Usqa6dqn0HG32
 tvr0p2jafn1oEJ9WQleq4zm9Ji2CCd9+B6ryr/+p4sgSUdcBv288M8M6VtnrHBbYlBpyrp1xmbv
 FXBHeEM1GmmgbGUBS+bV60LdwYrgQWvO/ahlYuWx27HJALL/nOe+Fygrl7SVkdClSVVA93kC
X-Authority-Analysis: v=2.4 cv=TqLmhCXh c=1 sm=1 tr=0 ts=6885fc01 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=rhgo8q8DuPZwM0GwmL0A:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: 5YlnQwvnjbBeWU63zttyu3RLN7uAvCRL
X-Proofpoint-GUID: 5YlnQwvnjbBeWU63zttyu3RLN7uAvCRL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-27_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 adultscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507270090



On 7/26/2025 9:19 PM, Dmitry Baryshkov wrote:
> On Sat, Jul 26, 2025 at 11:31:31AM +0800, Yu Zhang(Yuriy) wrote:
>> Enable WiFi/BT on qcs615-ride by adding a node for the PMU module of the
>> WCN6855 and assigning its LDO power outputs to the existing WiFi/BT
>> module.
>>
>> Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135 +++++++++++++++++++++++++++++++
>>   1 file changed, 135 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> index 011f8ae077c256f079ce1b07720374a9bf721488..f6df6a88adc8cdc416a57d38b8eaabd53fbe3fcd 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> @@ -18,6 +18,7 @@ aliases {
>>   		mmc0 = &sdhc_1;
>>   		mmc1 = &sdhc_2;
>>   		serial0 = &uart0;
>> +		serial1 = &uart7;
>>   	};
>>   
>>   	chosen {
>> @@ -47,6 +48,85 @@ regulator-usb2-vbus {
>>   		enable-active-high;
>>   		regulator-always-on;
>>   	};
>> +
>> +	vreg_conn_1p8: regulator-conn-1p8 {
> 
> regulator-conn-1p8 < regulator-usb2-vbus
> 
> Please keep DT sorted
> 
I'll fix the formatting issue accordingly. I really appreciate your 
continued patience and guidance.

>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vreg_conn_1p8";
>> +		startup-delay-us = <4000>;
>> +		enable-active-high;
>> +		gpio = <&pm8150_gpios 1 GPIO_ACTIVE_HIGH>;
>> +	};
>> +
> 


