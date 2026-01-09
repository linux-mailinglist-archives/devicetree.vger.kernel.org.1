Return-Path: <devicetree+bounces-253295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B441D0A5CD
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 14:19:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 27EE5306DAB0
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 12:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A6E83596FC;
	Fri,  9 Jan 2026 12:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RkncIn2U";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Lp0ve6UP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87A031A069
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 12:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767963357; cv=none; b=AKVFVDgTysOC4lhLYBXnHhSWwWkJPcY4/ShpHuV50gjtvwioEa9mMSVkhEK4Yykm1cZgf2hA6iE+pqMzAvRKD07SkJDf5npcn9xW8Sx6xslnoJj5ZgT01SCE8NIW0hC9XtH/a5vhYPhYj2RsNBQR7za7a9Z4t7O3IBC18usNpOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767963357; c=relaxed/simple;
	bh=Ug4/iKld1hZF0G/aMDskAl/jEyBcg7VXYNJFY3DRVGY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LzmCElKwNnOoivQ1cVtoCTjZ5LJH1ZcEWTQvb7SsMeiKFiZP8ot/kFGNC1L1T1z0NA99r/f67wTElutju2ehWcQ7siIHBhA+xHVA+A4Qo4AJbNHMaM7HIwQ5Sc66j72MgkDSDqp4csisleULLUqq9Xerfx1Y/QC0/N5k1/7HNK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RkncIn2U; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Lp0ve6UP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6099I6iV3324802
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 12:55:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4y7QZR0Y9/fOdrnWjQpdxPYv0mAMnGM70MwSvMlGLYs=; b=RkncIn2UTruWCupw
	clCSKllpY7yTzEhrAdWwoVw8weNkIeUOlcUnLzU+gMt6ag5H/GlFLvAcBzHd4FsU
	9M1YVSBOPTZBNSaTPzdr65Dg1BxDHKhWiTYTxpO+d1NmNxdudPyAZtY587Xhk66m
	UIM9NGptQITosuCkjgSSjTun9RUmaaqioXJFpnD3cz83nLGkkFBXn/TBZbMm83In
	YcoZIg7MvVgGIca8Te0tY0CntMROR0nSWt4iXgjNw4KNNMCNrWnC/xBZs/IcKwbi
	h5Jesg4Bvggihay0ZUGl4LKVHUqQv/TW7eE5U76uQVJJkyEiZQX+wcHeo+xSqfE5
	9biG/w==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjrd6hue0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 12:55:55 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f13989cd3so96762935ad.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 04:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767963355; x=1768568155; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4y7QZR0Y9/fOdrnWjQpdxPYv0mAMnGM70MwSvMlGLYs=;
        b=Lp0ve6UPzdMSHUDU8uM7hAJBsQmzDLVp/NHzNyQjiujpLEhIoeGpqu41BnNbSgQq1E
         noXQ8V0/xibmOaUF2eC1qLJkID8400hECedUZSxf/ph8SD/q7nwqIM0AQ16Ke8pL3aAF
         Ea0kCGGgwAs/+p90x+J5nXBH/j7pLaNDDz4B7lAX5lB87DHzNri9oHnOqc1vKOMrU/Gu
         ZIj1U01Oz6+Anhm77W80egyUwqvWXzAB4u3ISIH+ZZrl0CM6Q5wKrTSl3plIkHQ2A3mS
         L0iIvOTVARraz6k4/qzQkRy/xPzrE8lhjC57EY5aFkN6Mwm7EWZSp1E4bjwrFR2Xj05d
         fg3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767963355; x=1768568155;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4y7QZR0Y9/fOdrnWjQpdxPYv0mAMnGM70MwSvMlGLYs=;
        b=AaoWP+qc6x58o5JswfA32fhX8l+SAn+9bEeLiNGleE3CHwIJw0bm8MMeYJScdeDoot
         gO4Ixbptc0tWib0lTv4mdJWiki3qb8GFnOQyzMbVYrtJ+AQD7o8sl29hu7lXv9Zn6ZOg
         02RKksdqrnYq9KlEr8fd5T4Sgv48fYiW9KsR9CvVDzYLsukr+85qrVYmZxxFpjESDZLh
         /ZxN0rQ6DovmiARKea73I66/8agrnmqjrXUy3mIZODm9s+pAY6vC9Ly02Giu98k6n0tf
         vX1MGPBEyIrILe4kyJsFnnawXvlyAHsu60y6ODTYVma/oSso3o53zmVHIs2kEyva5e/w
         Y6hQ==
X-Forwarded-Encrypted: i=1; AJvYcCVldP4ZuyKJyGxkdiz2OJzbfjGAj+jZ+P78S1rpAznDRvhHPijgFiuUcc07pYqW3UXm2NIEuHmQk9tL@vger.kernel.org
X-Gm-Message-State: AOJu0YyrJedvMSnMmoHs0vOWUhFHqDArxrM9tWbbgJWRru0tB12UIskA
	/KAUIKNVDcALb7+rRH2Tesh5J5h/URitTI19BKTdqROHhH5cN3TSLeRCJHQRYx9zBH9Q0+DOvZ9
	1Diuo1bTZbEnMwWGKK3gQItxSk4kU+LUChIk2CUggKnfurIAhmmAw162U5kutvAak
X-Gm-Gg: AY/fxX5ZRVWxMyFOCwlOLTAyXMfrLnajwj9qRANDSJMZQpvMugJj1SpdsbrmSHhUbTf
	4cAhlpSc7tVqURDszspCqTiIq1eZ5WdWqpA3vLR/C4y9b5+ZSyzOQSSoYcW+epk2qH2mcetUGdx
	B9tIKrhdpRQzxC/TpUyw1KMuVF6PfVWcd4IWEXPGKAwrwh/+eFnGDm3LPPKJSP6hz1639b/X4yT
	ZdcRzmN7EzVxzwEtj4VGpisqY9hnVYaHWpbGcZYrDCEpJ7VFhIvKoYlZ4A3ZS2s/SKr2/ab0+m1
	kGx4mK7pl9JsZgcMvSDe2qIQDCMy2GIWuXFCTLYF8Hp4MG21aGXFEG/6PzeByd6lraxBlZa/HrH
	cKP0AQY9r54oH654Gb8zJm9Bl58RHHdqq6SlXiICi/g==
X-Received: by 2002:a17:902:da90:b0:2a3:e7b6:ab53 with SMTP id d9443c01a7336-2a3ee429ad9mr96438855ad.22.1767963354522;
        Fri, 09 Jan 2026 04:55:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGRvPFaCk3aiZqPxKoB2BhMRvNe5PxgAssVJoc1Z/IpEWtlXCJngS5jtmKYMCSdRK/RKZ6LhQ==
X-Received: by 2002:a17:902:da90:b0:2a3:e7b6:ab53 with SMTP id d9443c01a7336-2a3ee429ad9mr96438575ad.22.1767963354104;
        Fri, 09 Jan 2026 04:55:54 -0800 (PST)
Received: from [10.218.4.221] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2eabsm104022635ad.49.2026.01.09.04.55.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 04:55:53 -0800 (PST)
Message-ID: <76ef0674-ba19-4d91-b243-bb338d5f9d59@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 18:25:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: qcs6490-rb3gen2: Enable CAN bus
 controller
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: mkl@pengutronix.de, thomas.kopp@microchip.com, mailhol@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
References: <20260108125200.2803112-1-viken.dadhaniya@oss.qualcomm.com>
 <20260108125200.2803112-3-viken.dadhaniya@oss.qualcomm.com>
 <jlynppc5lspzcc2pkz7y6jgd6h2l7e6cparntvxnyx5rnfp54n@tymil62yg4go>
Content-Language: en-US
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <jlynppc5lspzcc2pkz7y6jgd6h2l7e6cparntvxnyx5rnfp54n@tymil62yg4go>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA5NSBTYWx0ZWRfX5iD8M7MZXu16
 0aiLHCnOLut1zV/bHD/clre2yk4PFZiZAbQFkv1LgY4zpq7h7VRjXKpbYk2P5/IbqiZF/c/QNuf
 YjoQsSEUDdGZup+mWQ0P4W6fgVl9oJROT6s5m4++X1Z2jciajzTn93mhkMSq2qajdyhzomsThBh
 3TR8c8itM5d9dWV72ge88HNpWZ8rcyEW4qjY+2eQInlPa/zBVvK+RRj33eLxcBjBiLWW9FdhsaO
 bf8/lRsU65+2lw2WLE2sA/94oz4bviJLMWAjLHPmqaLcrXdfzCPmKqgb0A20jDH7HSEb2Xb188O
 dMMpissFiNyfCctgoNlX0qJZ5xZuC9bf502jdK3MF0rsjnt+Lc9SjA1vac5oT7xP14S48+UbK8C
 1rx6PjE4AJ40xwuKwJMboMtsP3Vs51Nh9tx+q65UFQnDrtESukxFDSS9fDzUs9OA6/O3GXxs3cq
 mr3OyrLPGQTlV7htqkQ==
X-Proofpoint-GUID: sHsFuCKfaBqqHRnPf0JIwCCZQlOdZLyq
X-Proofpoint-ORIG-GUID: sHsFuCKfaBqqHRnPf0JIwCCZQlOdZLyq
X-Authority-Analysis: v=2.4 cv=Xtf3+FF9 c=1 sm=1 tr=0 ts=6960fadb cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=nFdRy7DZwwtMklkiA8EA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_04,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 malwarescore=0 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090095



On 1/8/2026 10:16 PM, Manivannan Sadhasivam wrote:
> On Thu, Jan 08, 2026 at 06:22:00PM +0530, Viken Dadhaniya wrote:
>> Enable the MCP2518FD CAN controller on the QCS6490 RB3 Gen2 platform.
>> The controller is connected via SPI3 and uses a 40 MHz oscillator.
>> A GPIO hog for GPIO0 is included to configure the CAN transceiver in
>> Normal mode during boot.
>>
> 
> It'd be worth mentioning how you tested the controller.

Sure, I will include the testing details in v2. Thanks for the suggestion.

> 
> - Mani
> 
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
>> +		};
>> +	};
>> +};
>> +
>>  &swr2 {
>>  	status = "okay";
>>  
>> -- 
>> 2.34.1
>>
> 

