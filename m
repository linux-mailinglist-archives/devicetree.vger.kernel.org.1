Return-Path: <devicetree+bounces-240219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A9DC6EDF7
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:27:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D763A344110
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 13:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91EF035BDD0;
	Wed, 19 Nov 2025 13:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dW1E7pra";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DCrkhpUP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0BCB3596EC
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 13:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763557841; cv=none; b=tTsD54n4smxvV7FB7cW+CgV+5uTDWJ/CCvsgseomAZO9daSxUakDlgvWgnmAtfA27dU2RuAAbW8skaCzdkC4lddlre/8gUxIGLvNiRqCvKqwXxjG6DToxjK7z8GA9weET4RoO3VwLDZeKZnHVPF13lRtzxK5LtZamhjpHWPU15I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763557841; c=relaxed/simple;
	bh=XrDLVF0hdBkV83ksSO/kiDKCKfNYl8BcFLfDLZf0ALk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i9ygleePe9QE2eriLkkdDoWeMvgaz3CImAH8kxaHaZG330fkge9kGbKRGkMojdU/I8NEvl1erA4tUZTDiacDa7sq3Dr0uUeCj8GnSkZwM/zK01h2Wfs1sO+k3oF/1c/T40/2Hllx0RZmGs3XLpXhZgBQt+P1viherZVMZSodiyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dW1E7pra; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DCrkhpUP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AJB6Gws1982214
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 13:10:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	82wMIqlPGNNgih/lMY0DCJQqqS6YcUhjEj+rPxqlHpA=; b=dW1E7prav8zuTRjn
	h7SiYUoEwxnZ8RUsEdRdhahiDnMp1eM0lWbQ8TENAmlDL3d8otU5NEkFM/7Vs/rQ
	VH+3wWPqKW/9aTxsYwet1+z1/1CzrNUgpIg+jd0xyZlt8CfxRzSK3jnKuiLWZjCR
	8IK5K2f5CvrpZdV/Uiq4k8hJ8brQL6vQLWNhxgCXqaGXNlcOneD7Gvsw8hya+b9D
	pge8e4mDxouQIXCtmASP8DIvNUJn8XnhEMF83sQEVHhp4PUyVBLpNjfIXyobDA/I
	LHX39R/kInmmUXXlUj6rAWC4LKrzmtV5kfHElP1/rGIlsMItwwJFbEWATf7fGPby
	BdhR1g==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ahcqnga50-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 13:10:38 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-bc169af24cfso5358011a12.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 05:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763557837; x=1764162637; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=82wMIqlPGNNgih/lMY0DCJQqqS6YcUhjEj+rPxqlHpA=;
        b=DCrkhpUPvWqbIxhr9HG2vS09KjLuiTkcYIAD8uD6rZuzSLqeJ5zuNtsmYxR6YWKrhU
         2A7LTsyWzvIoDj2o3RoK4GLhuvaIHIWft/VV/0FfNY96dcIeObfj8dA0YCJ0mmJN8IZK
         2IRj83/F2K2Mt+XOIHC38qNA72NVfNqylob2UIyU8TFydisUJ7PfFb8sccq5gC7Vuvbk
         okB13gT2F4vHRhKIDjueu7tFR63kWMBnfeg0GE6ypVeYw/H44WaqMb5OoBRjTBTL6mmi
         EbUfhJtyIRVJUjTx3R98r5wr+udOlzfn259J2p+/rPtPPCrKzvo0K716xt88p3ei6h+T
         mt0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763557837; x=1764162637;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=82wMIqlPGNNgih/lMY0DCJQqqS6YcUhjEj+rPxqlHpA=;
        b=TiMZlZTiOvzfiZmhurQeJj9G4AKDIaPtwIygCE1cmjPwGwfZUWVJkPG9NrGoW4Weqk
         dwQhUC7UbbNbtEV/jXlw+ObtnkSa+Ubg0rUWv00WsGdE40daVz450WSirZG9LsvoJ42u
         /arlYmSgMnuahLWDZQxzlNpcciI1SS/qFb1NXSYPRSMwATCBPF9iaR+i+lRIRgGfoOww
         nGSDCKi6B4ztjUEUyYoZG0G1ztTdlRMxn5cQILoQ5r03K5CDdwM5HiyVKwGQHqKWUQ53
         /hiov8xEtp2ipq2wpTsXtfC/KVp4nCSh8pF4gl7x38zq6TVK7Pq/Gr5RAS1lTb77ZtsX
         VJhg==
X-Forwarded-Encrypted: i=1; AJvYcCXqOJ3dhJRu+qJWIXnA14LTqg0+L72UVcqtrIvDc4Wo11NyGvfJZ1G1fexuBIwB+r2ai5f2mX06M0kh@vger.kernel.org
X-Gm-Message-State: AOJu0YyxudcSEisphWAh6DlZb6qctYMl7V7nyyR1qSBQQqlYBjpWs/t8
	UimLYL++uWsIc9gKohU8JnlaReDHbD83GbeaZYrUbSNS7CmxtdaL5qmzMrqbUYV/Wrd5cXnFVm7
	UYQyy5+sesmb46fWGS0b4dPzTc6g/vesafi8ksGTnbUjDqTYTz5zAk2Agz3nSJip+XqUivQFqEX
	c=
X-Gm-Gg: ASbGncsRS95HtqzCcGKbzhpQCksG1OhrNgyOrb4Ix1Qz6qhjrbAD+N8qsuYpantNniR
	BQrRetO9/Dkww1fBDvptoCuTuC2dzLhggFwBf34/yJjoAkJajSL3NLGnUE5T8A6A/IDnulG4Kpn
	EOVnk+t03FgzM9MZbFhQaKqmEMYXSqbzUgP9Q/+PCIRM54B+/dPNRcKcaqqtUXcma80osjZB40E
	luD5nm6iDnkEwv5Ptrqy7HmMv5GxZA1wR7ms7xkdFPCr1TesUXVRxSjs7XlQA7+A7GU8vI4M0h+
	n/Ij4qPBKR9KlKEboOKG8ElM/9RoLMjX/6LRyTtR7ou8XfosCmMwbXUJIAeCpRLjiGX6af37/uD
	/oM5yYdxTFCPYAHyMZHsInerO4PMOMDZSd1BOSmUgiTR99Q==
X-Received: by 2002:a17:90b:43:b0:321:9366:5865 with SMTP id 98e67ed59e1d1-343fa74be1fmr20991254a91.33.1763557837199;
        Wed, 19 Nov 2025 05:10:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEfLnU9udBZsj27CHa3Apm+yWyXzude/KlvIWUon4gLSj1GOLNmMt3duV3KJHFp8HIDrx3baQ==
X-Received: by 2002:a17:90b:43:b0:321:9366:5865 with SMTP id 98e67ed59e1d1-343fa74be1fmr20991223a91.33.1763557836591;
        Wed, 19 Nov 2025 05:10:36 -0800 (PST)
Received: from [10.217.198.130] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b9251ca3e9sm19787700b3a.29.2025.11.19.05.10.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 05:10:36 -0800 (PST)
Message-ID: <c2d66f05-d6a6-4838-bda8-7acf910e8600@oss.qualcomm.com>
Date: Wed, 19 Nov 2025 18:40:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 21/24] arm64: dts: qcom: glymur: Enable tsens and thermal
 zone nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-21-24b601bbecc0@oss.qualcomm.com>
 <86492536-c14d-422c-add1-a6c60a7cb2e0@oss.qualcomm.com>
Content-Language: en-US
From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
In-Reply-To: <86492536-c14d-422c-add1-a6c60a7cb2e0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE5MDEwNCBTYWx0ZWRfXzFUZu5Q9mIaD
 GAlMEKvQVuZIUfYVPzRSm73SP4j+WHHpISbont6QY9lzqnmd/TbeWY5FIX0zVvWrun1xSctgH9U
 vOfNukCAm705Gvinmd6HIIrB5GB5ixG3J+gaWh3rpU4nfarfmQfCnSu9CdIgmb2Zo52nYjNv7nR
 0BCx8B0bZV4mCTMKXsDG8dxCgac0RWTISb+ByCC5xt98BrHmSUXJsLWD8t2J47bej20VeeINhLZ
 ZRXVtfgLc7ywZiurBsratnoyQ5a6zM5nPukPpgBpsxqqU9LT6dXifYCCkR7/o8vZiXUeq+PUX6i
 hQ9Z+breFJcyUP4bTamCrv6ol6jP3Az5p4Ooxu/fIeueslhFHp3/bCSiqpTDPZ7BQW3ctZHZM97
 bsGtrASmRJYrgo1At6KkmjTO3i2t4A==
X-Authority-Analysis: v=2.4 cv=ApfjHe9P c=1 sm=1 tr=0 ts=691dc1ce cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=1UUbX536_rBP94QpSC8A:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: YTC9s0ocNNLqGC08svxiGh08wmNHTBo8
X-Proofpoint-ORIG-GUID: YTC9s0ocNNLqGC08svxiGh08wmNHTBo8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_04,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 lowpriorityscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511190104

Hi Konrad,


On 9/25/2025 4:45 PM, Konrad Dybcio wrote:
> On 9/25/25 8:32 AM, Pankaj Patil wrote:
>> From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>>
>> Add tsens and thermal zones nodes for Glymur SoC.
>>
>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/glymur.dtsi | 1998 ++++++++++++++++++++++++++++++++++
>>   1 file changed, 1998 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
>> index 17a07d33b9396dba00e61a3b4260fa1a535600f2..986dc385200029071136068ab79ff8dd66d5284a 100644
>> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
>> @@ -2790,6 +2790,134 @@ pdc: interrupt-controller@b220000 {
>>   			interrupt-controller;
>>   		};
>>   
>> +		tsens0: thermal-sensor@c22c000 {
>> +			compatible = "qcom,glymur-tsens", "qcom,tsens-v2";
>> +			reg = <0 0x0c22c000 0 0x1000>, /* TM */
>> +			      <0 0x0c222000 0 0x1000>; /* SROT */
> These comments are not useful
>
> I noticed that some patches use reg = <0x0, while others use reg = <0
>
> please unify them for the former
I will update in next revision
>
>> +
>> +			interrupts = <GIC_SPI 771 IRQ_TYPE_LEVEL_HIGH>,
> pdc 26
We don't have any usecase to enable it as pdc interrupt and don't want 
to wake up from sleep as it is already in lowest power mode.
>
>> +				     <GIC_SPI 861 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			interrupt-names = "uplow",
>> +					  "critical";
>> +
>> +			#qcom,sensors = <13>;
>> +
>> +			#thermal-sensor-cells = <1>;
>> +		};
>> +
>> +		tsens1: thermal-sensor@c22d000 {
>> +			compatible = "qcom,glymur-tsens", "qcom,tsens-v2";
>> +			reg = <0 0x0c22d000 0 0x1000>, /* TM */
>> +			      <0 0x0c223000 0 0x1000>; /* SROT */
>> +
>> +			interrupts = <GIC_SPI 772 IRQ_TYPE_LEVEL_HIGH>,
> pdc 27
>
>> +				     <GIC_SPI 862 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			interrupt-names = "uplow",
>> +					  "critical";
>> +
>> +			#qcom,sensors = <9>;
>> +
>> +			#thermal-sensor-cells = <1>;
>> +		};
>> +
>> +		tsens2: thermal-sensor@c22e000 {
>> +			compatible = "qcom,glymur-tsens", "qcom,tsens-v2";
>> +			reg = <0 0x0c22e000 0 0x1000>, /* TM */
>> +			      <0 0x0c224000 0 0x1000>; /* SROT */
>> +
>> +			interrupts = <GIC_SPI 773 IRQ_TYPE_LEVEL_HIGH>,
> pdc 28
>
>> +				     <GIC_SPI 863 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			interrupt-names = "uplow",
>> +					  "critical";
>> +
>> +			#qcom,sensors = <13>;
>> +
>> +			#thermal-sensor-cells = <1>;
>> +		};
>> +
>> +		tsens3: thermal-sensor@c22f000 {
>> +			compatible = "qcom,glymur-tsens", "qcom,tsens-v2";
>> +			reg = <0 0x0c22f000 0 0x1000>, /* TM */
>> +			      <0 0x0c225000 0 0x1000>; /* SROT */
>> +
>> +			interrupts = <GIC_SPI 774 IRQ_TYPE_LEVEL_HIGH>,
> pdc 29
>
>> +				     <GIC_SPI 864 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			interrupt-names = "uplow",
>> +					  "critical";
>> +
>> +			#qcom,sensors = <8>;
>> +
>> +			#thermal-sensor-cells = <1>;
>> +		};
>> +
>> +		tsens4: thermal-sensor@c230000 {
>> +			compatible = "qcom,glymur-tsens", "qcom,tsens-v2";
>> +			reg = <0 0x0c230000 0 0x1000>, /* TM */
>> +			      <0 0x0c226000 0 0x1000>; /* SROT */
>> +
>> +			interrupts = <GIC_SPI 791 IRQ_TYPE_LEVEL_HIGH>,
> pdc 46
>
>> +				     <GIC_SPI 865 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			interrupt-names = "uplow",
>> +					  "critical";
>> +
>> +			#qcom,sensors = <13>;
>> +
>> +			#thermal-sensor-cells = <1>;
>> +		};
>> +
>> +		tsens5: thermal-sensor@c231000 {
>> +			compatible = "qcom,glymur-tsens", "qcom,tsens-v2";
>> +			reg = <0 0x0c231000 0 0x1000>, /* TM */
>> +			      <0 0x0c227000 0 0x1000>; /* SROT */
>> +
>> +			interrupts = <GIC_SPI 619 IRQ_TYPE_LEVEL_HIGH>,
> pdc 108
>
>> +				     <GIC_SPI 814 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			interrupt-names = "uplow",
>> +					  "critical";
>> +
>> +			#qcom,sensors = <8>;
>> +
>> +			#thermal-sensor-cells = <1>;
>> +		};
>> +
>> +		tsens6: thermal-sensor@c232000 {
>> +			compatible = "qcom,glymur-tsens", "qcom,tsens-v2";
>> +			reg = <0 0x0c232000 0 0x1000>, /* TM */
>> +			      <0 0x0c228000 0 0x1000>; /* SROT */
>> +
>> +			interrupts = <GIC_SPI 620 IRQ_TYPE_LEVEL_HIGH>,
> pdc 109
>
>> +				     <GIC_SPI 815 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			interrupt-names = "uplow",
>> +					  "critical";
>> +
>> +			#qcom,sensors = <13>;
>> +
>> +			#thermal-sensor-cells = <1>;
>> +		};
>> +
>> +		tsens7: thermal-sensor@c233000 {
>> +			compatible = "qcom,glymur-tsens", "qcom,tsens-v2";
>> +			reg = <0 0x0c233000 0 0x1000>, /* TM */
>> +			      <0 0x0c229000 0 0x1000>; /* SROT */
>> +
>> +			interrupts = <GIC_SPI 621 IRQ_TYPE_LEVEL_HIGH>,
> pdc 110
>
>> +				     <GIC_SPI 816 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			interrupt-names = "uplow",
>> +					  "critical";
>> +
>> +			#qcom,sensors = <15>;
>> +
>> +			#thermal-sensor-cells = <1>;
>> +		};
>> +
>>   		aoss_qmp: power-management@c300000 {
>>   			compatible = "qcom,glymur-aoss-qmp", "qcom,aoss-qmp";
>>   			reg = <0 0x0c300000 0 0x400>;
>> @@ -4611,4 +4739,1874 @@ timer {
>>   			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
>>   			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
>>   	};
>> +
>> +	thermal_zones: thermal-zones {
>> +		aoss-0-thermal {
>> +		thermal-sensors = <&tsens0 0>;
> You need one more \t here
>
>> +			trips {
>> +				trip-point0 {
>> +					temperature = <90000>;
>> +					hysteresis = <5000>;
>> +					type = "hot";
>> +				};
>> +				aoss-0-critical {
> Please keep a \n between subnodes and between the last property and
> following subnodes
I will update in next revision
>
>
>> +					temperature = <110000>;
>> +					hysteresis = <0>;
>> +					type = "critical";
>> +				};
>> +			};
>> +		};
>> +
>> +		cpu-0-0-0-thermal {
>> +			thermal-sensors = <&tsens0 1>;
>> +
>> +			trips {
>> +				trip-point0 {
>> +					temperature = <90000>;
>> +					hysteresis = <5000>;
>> +					type = "passive";
>> +				};
>> +
>> +				trip-point1 {
>> +					temperature = <95000>;
>> +					hysteresis = <5000>;
>> +					type = "passive";
>> +				};
> See:
>
> 06eadce93697 ("arm64: dts: qcom: x1e80100: Drop unused passive thermal trip points for CPU")
>
> It also only makes sense to keep "hot" trips for devices where we
> can actually apply some cooling (e.g. the GPU)

I will update in next revision

Thank you

Manaf

>
> Konrad

