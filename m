Return-Path: <devicetree+bounces-253297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25099D0A600
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 14:21:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EA2193000534
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 13:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 198C1338F45;
	Fri,  9 Jan 2026 13:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KgoWrSH1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cj0C6FLD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A382DEA6F
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 13:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767964237; cv=none; b=RSaWwj2ntxEtSr/E7vDlvg5XotdphE4fbasLgXaWaYmapwnBOK+gKocEmzNhSPklPpL2NpgqhZkOmvuvW14l4D74GM01kV2nwwoGOXSs5pG5KXVWpk37lvT2Pl1BhotAUlh0TUk4IONYMIKg5j5Ps2ZgPap5Dd+qUb0xPR2wgQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767964237; c=relaxed/simple;
	bh=niAPPiQQQPX1D5kNh+Jjyf6MXYDSDaZSYDRJGQC5eJo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UZcTMkxqwbnV3acx2DZXfNGvC1ZI6NJ5Kzx+5X+o4kWUGZH0Xl7qHi/ErbhkCSg9jdG7RLYmsfizUOjqArL1ZVOSSMCI412lbjdB/6rWItV62hhzRTBVFZ0U+iN8Fx752S1b0rgw5uHuuqNakCoBhlxTz9qG/YenqQ9XydFBatQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KgoWrSH1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cj0C6FLD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6098T25F3729572
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 13:10:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jl3U4fYvP7BjbY7tR3WG+iIwGmMIyHgCmvFUBV6UyrQ=; b=KgoWrSH15VfHWdKm
	clYQA0cALEbOxYBeTqOR3dmLQ4zIp7enOHYYtADswN1lgMCVfO4fxxixLsTgeqKN
	fPVBu3u6XxrbRuDicmrsiyV/MfjyEWLgZEBtrrDKSAG6nLeaJtzu0vTpQGYurSUt
	27qPVjr6WtecXVNYTdr7VJN4ze7hba023oDUPDNfAiBNm7ho3hTWvZNcBO83Smnx
	BCz67MPqHebdQyGEjWdf6kI1SCkfYlbfsMUiCWORnFIrJl73R54bzOpJKMlh+2qF
	FYZ2IkdYRf9Swy+RcniHw7r1ky1hXcw8vk0CvjkyZYiqhyPHqNtLYUAPFtkoIRI2
	Dn3/nA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjpmkj4s9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 13:10:35 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f25a008dbso32756765ad.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 05:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767964234; x=1768569034; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jl3U4fYvP7BjbY7tR3WG+iIwGmMIyHgCmvFUBV6UyrQ=;
        b=cj0C6FLD4NOuxEIX6tPDJcbH+lnpn9LNKOX687RGUQdrP6+R7J+eJP44ctVp9lLQGI
         pQHzRcTcGd6PXJNAFbpm0NTrL9CHOZBCGbinRx5RiHWqsHQhXrB7thAslU9dAc1SSJnT
         asMWeETUMnZgsLX+aagQrhvzQOiY1RKldGGanoTcAPGOSK8Aux4cdX91aqBmcohqqCMZ
         tl6NLgiFKVHh4y1Ro5w5uwAjwtpA9ybNdCSsitd/Oyzj2Oz1Y25gjzfNYFu4KRtv8CiP
         AAbqYQn2gqYiqEUzem0zOjXJnzRqy2dZ5zGcf580DQC1ZgfoHALrR35pPviKkwJmxu6p
         FJZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767964234; x=1768569034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jl3U4fYvP7BjbY7tR3WG+iIwGmMIyHgCmvFUBV6UyrQ=;
        b=BDH4t9UVNV9AKI7JY64z7poH0ogY9vU25mH3e1E13Zl6XLcVZwz3FLZ/CVxuULXRjF
         iaGSNHW/VP7g5q7faMrV6wrsgcr8ui3DlM2Lo+D4pshDAvsM1qZudoiySt+kfk0RFSmE
         9yV9+bxyiGpD6KTtD1d6TRLRB8+K4gCnccC2u1q7NTq+Gr358ahVskXgn5ap++0uTiFp
         RPb4joS3QpzppA9sHmTKLlN0b5yCA02B+JET/W3xnXZBL9ZV8wfFVJS3F8HGBa/u+K4x
         e0osibsgkpDrQlMuuJ62Y0b3hhRO5op9baBQVYHvhrJbZNw+EQkvpANg8Y/7fUIvJnY6
         DFUw==
X-Forwarded-Encrypted: i=1; AJvYcCUbfctsYoa8LeoACJID+5DBhocIglZ5ykrhOOokLZJdirVdxIXf+sadv9bxB5TwPuQeppyZQgM95V6T@vger.kernel.org
X-Gm-Message-State: AOJu0YxaiX8SROQohJl+S1zd6WerLNzQW89s5+mZB7HI8ynU9KIVx/nz
	8dAACnMgmfvfqf49Gd21ZVfXakQTzmVHv0SUOMR/1Xr6aGdj4TL3l37UoPuvCPIS4LHuG7i+B0w
	Ic8+hJvPat6GS4gd0oTHNUEAogIqsW6I6keiFz2FnJ7zoD34SOK87ZqFxj33WexZK
X-Gm-Gg: AY/fxX7mkT6aDioAv+IYRs/xST1VbnFHHAHudTtj08t0tboiDtCNkoQzh+hQVezj3l6
	3Cy1Xoh4QMvilWhW9yMkOXWmkTysVJtjQAR9mgiu02mvQPQ25mV5vuE9HPDYYkCYNF3tVHcYHhd
	As+WzBpuOpPqsMp8QxSkDeiZKi0vQsOZCVxSoDXCQ1/97QgUO95qkqzO4uKT/KLgXcUAJ4MYUKD
	Jq7v0jG/rCl//WnoaG9/z6/l2g2Tbyv3uS4QEEzjpbR8TvkMfYA/t5CfkLZIltt1dgSEKfwUEUG
	k+ySv+vwr18IE/+JYxHTIZ+4eYsB7JiA4fn4QDWzQYI8BabtTDou9nS3nolhiV1tZO5FeXbXUie
	RVRFiwITcUFqC4psgO+8XKdk/TatzNQKu3WPV621nUg==
X-Received: by 2002:a17:902:daca:b0:2a0:da38:96d8 with SMTP id d9443c01a7336-2a3ee443bf0mr100105315ad.25.1767964234127;
        Fri, 09 Jan 2026 05:10:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGrtGRjsnFeOWIo+8GBd5wdKaNe0W+5SXLW8YyqmBR006Uahe80W9Y7w4vCN+q28MK4q8OVgA==
X-Received: by 2002:a17:902:daca:b0:2a0:da38:96d8 with SMTP id d9443c01a7336-2a3ee443bf0mr100104825ad.25.1767964233610;
        Fri, 09 Jan 2026 05:10:33 -0800 (PST)
Received: from [10.218.4.221] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2b4dsm108346675ad.54.2026.01.09.05.10.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 05:10:32 -0800 (PST)
Message-ID: <6ebf45af-2236-4335-a2b4-6c75142bbd5e@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 18:40:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: qcs6490-rb3gen2: Enable CAN bus
 controller
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: mani@kernel.org, thomas.kopp@microchip.com, mailhol@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
References: <20260108125200.2803112-1-viken.dadhaniya@oss.qualcomm.com>
 <20260108125200.2803112-3-viken.dadhaniya@oss.qualcomm.com>
 <20260109-agile-bear-of-fascination-cc4680-mkl@pengutronix.de>
Content-Language: en-US
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <20260109-agile-bear-of-fascination-cc4680-mkl@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=YNiSCBGx c=1 sm=1 tr=0 ts=6960fe4b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=2KV3BzIYt2orMVJPxDMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: 3PYCWdmGNaEXXE6pIbB8YabxsHvgiAYK
X-Proofpoint-ORIG-GUID: 3PYCWdmGNaEXXE6pIbB8YabxsHvgiAYK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA5OCBTYWx0ZWRfX18uQKMrq71kO
 qgKsMEFYZjHe4kSTUCuU5RJPijVWouKAF5io9vHWPbDl4v52gpjtOcNX8rQJ5Tu9fHD2bZOiOn5
 RYzYQdJCCG9oZYPU07b7Xzk6pLkEcVP+skPoBFVLbKsjEBDZ5IuJGjCGk4f3PjoRpgl8aNTQA9r
 m+wyxOgev5wcAAyU5ZA09q+MaQjQABivefg505ur17Wnc0lYU14ylE9JMVJTNd1H/HVSETVKpYR
 nOnK+1YV1OjpU1waCfGrf896j/5u8GV/CX7MbaFLTs7LPKjcoL1glowDxFM6ykLcDBaIaUZqmSy
 WGicbEi20iXWm8DhrpJrxlTZoiwhHlII2C+r2QgZ3a5O1iFQX62ntFrGcB0Bbur+UCuxuoVEcO9
 d8FrlZVvWxTqglLe0px1Kz7UvrzoNhCHHIYZfTBMOW7ANRqqghpzR6XKnfNDEwimDwBZK4/BPp6
 MWksjTunwveJEBnv4lw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_04,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 impostorscore=0 adultscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090098



On 1/9/2026 2:22 PM, Marc Kleine-Budde wrote:
> On 08.01.2026 18:22:00, Viken Dadhaniya wrote:
>> Enable the MCP2518FD CAN controller on the QCS6490 RB3 Gen2 platform.
>> The controller is connected via SPI3 and uses a 40 MHz oscillator.
>> A GPIO hog for GPIO0 is included to configure the CAN transceiver in
>> Normal mode during boot.
>>
>> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 30 ++++++++++++++++++++
>>  1 file changed, 30 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>> index e3d2f01881ae..f2f2925e645a 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>> @@ -44,6 +44,14 @@ chosen {
>>  		stdout-path = "serial0:115200n8";
>>  	};
>>
>> +	clocks {
>> +		mcp2518fd_osc: can-clk {
>> +			compatible = "fixed-clock";
>> +			clock-frequency = <40000000>;
>> +			#clock-cells = <0>;
> 
> Is the #clock-cells property needed?

Yes, #clock-cells is required for all clock providers, including
fixed-clock. For fixed-clock, it must be <0> since there are no arguments.
Omitting it will lead to schema validation errors and may break consumers
expecting a proper clock provider node.

> 
>> +		};
>> +	};
>> +
>>  	dp-connector {
>>  		compatible = "dp-connector";
>>  		label = "DP";
>> @@ -1151,6 +1159,28 @@ platform {
>>  	};
>>  };
>>
>> +&spi3 {
>> +	status = "okay";
>> +
>> +	can@0 {
>> +		compatible = "microchip,mcp2518fd";
>> +		reg = <0>;
>> +		interrupts-extended = <&tlmm 7 IRQ_TYPE_LEVEL_LOW>;
>> +		clocks = <&mcp2518fd_osc>;
>> +		spi-max-frequency = <10000000>;
>> +		vdd-supply = <&vreg_l11c_2p8>;
>> +		gpio-controller;
>> +		#gpio-cells = <2>;
>> +
>> +		gpio0-hog {
>> +			gpio-hog;
>> +			gpios = <0 GPIO_ACTIVE_LOW>;
>> +			output-high;
>> +			line-name = "mcp251xfd-gpio0";
> 
> If the CAN transceiver is connected to GPIO0, why not reflect that in
> the name of the line?

Ack, will update the GPIO line name in v2 to reflect the CAN transceiver
connection.

> 
> Marc
> 

