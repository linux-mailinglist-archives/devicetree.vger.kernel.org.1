Return-Path: <devicetree+bounces-224508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 643F3BC498D
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 13:42:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EEF834E6B5A
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 11:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D18D72F658E;
	Wed,  8 Oct 2025 11:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bhzBFOzV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0495F2EBDF2
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 11:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759923745; cv=none; b=uhMe3Cg4Tim2d+BCvEUgf/2spLQ6LqhoqjIvh9fcNZj/6iVuXKpmP3cat6Z5Q4a8LTfKdePQjzDu0l7HHhAUC1NxfBLJt1c8QpZ7qviCIvYSSmL1UgTlxcgNeEsRz/NugSiggZao1FU46QkESjBU80SCzIoc4cMMi4q6uQzybjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759923745; c=relaxed/simple;
	bh=s7SEgye855zXbbpuWtQy+NnH5Q+pFMFELBrPJUGIIvY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=efArUjx+SUMfmogx/W6jFAQDFM508/+50/M5qCO/1dG5WAex1kbyy8awkJHTlAQtEiXZk0GYkkp7kAcuc6aMzUC4quGA960ZjSw5bB82z/9z3rt9VPO1JXlGw9H9R1PbgGbd8/3UWoItpzoyXtGnDtkxNVhcCmUB8BLG51Pgv1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bhzBFOzV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890SjI014237
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 11:42:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SHkPm8aScPZvSAoKwrnc6klTQFWh7D38xmzfJy3VMyc=; b=bhzBFOzVvPyboPgP
	vYsgGpaK4boPYFD5rN3I9okI15m5N2yXeKyyYjKS69rCUH2xXUL6RKBhhsrSfHSA
	UPMA0eOjyAIjAst89OfmI9p9++ZfEQuDPp1EEH7PoywzwpqfdhO24L+M0tZrEx8J
	mwCETJMyV5Hxmz5o+FIBh3XSNXP1z1eTfwLy7cgclhJJgQjUBPsnYXi0AE3Ls3aZ
	1O6ttG+F9v2G2KN0ScXpoTvvH3/yE09rLrTyg+Ps4Z0jik6ExfmIgzee3xMLWBoP
	NLW7Cf92ceI+cxk1dCgVDbYK3Mws2TDtHbGPgskV/jEK+8PcKkVGF6+WfYo5u88P
	m/X/XQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mgd0p02j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:42:22 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2681623f927so69347845ad.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 04:42:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759923741; x=1760528541;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SHkPm8aScPZvSAoKwrnc6klTQFWh7D38xmzfJy3VMyc=;
        b=O6WuPFnr4/luD3BIDRlfmKbFsE5zhYwMwj5hKTynHT7+DiO3qj5I6Rc/jOsvGLDGIe
         pWXD3NivFnSTruS/47RhAWxoEGB4qoOdHOtO05t8gzeESMj233G1rTezB6ZOwI3xFDFg
         AxZ8n1SDalwlxozK4UFrri5Ybw5/kwOCREG2E//bphZYeavxJTS+WyFsboqQVDTEaATE
         uVpa+PO8X+MxYc9r3+iwl38CJevQ8mIqTaAkU6pCPHXMs7fx6ENSOLkgLknhTF+D4sfv
         7+dV83KPniZ9edlcc3ZpqXOcDwMs6eqvkjkX97P8GKQUWo+3bHpihLYdXaALWpg1XeM+
         VvKw==
X-Forwarded-Encrypted: i=1; AJvYcCX6v7qqMgU9XdBQQSBnGZBCZuZE4dhwxv/h8Pce54AKjmf6rvZAjgva2zBQuows0y4BVbKk4sB5zykY@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7EOpRLAFPYJrRIuImqqQ0CzjPGA4pz6Q/t4IMMD3fhlxRWTo0
	4TuuZfAIWbeU/wA2YR7r876f6pSVRV11wJaGnO5hyiLuCFPafeujXXxAqDWML/2gWYbva45K8/5
	U+MBDW5tuMNajEid/kJ0+buSOhdi83xVruyo93/bwUdM0z+AnivgJwuahurBcvRsS
X-Gm-Gg: ASbGncvj5Ac1Cxiz7kLUk458diDqJQPZof+55kSITPpYAbLR1d8c52nVuvYKy9iKtsC
	YiKd+LOAYCAfqFiN78Wfpkyudos1qZ/Zksencd9gd12xGkxuxr1L1Fftc2H5lso3bGbnr73ZtBW
	reCplGVDOgpczrjoZMlyuxN4QIsUTz+ZCY1FK8H+0DicIeMyyXRXNBY7aLGtYk0EZLikchADSO+
	a8oGBo8MmwvYpCUWxSQmrMYKkNcHNmuBDXseOPjMyFD5XeInu6FsOkPJ9gB+llHWpwo+btyIeGe
	WS3voI7U7NFylr7ynXhpl5jTFf5YINXfYp67Bz+4q0OSih4DAaGRuBjHRzcmTpMgkqtTjASJrI8
	4rAWP9HRIHEPOVnYBf7yiqM99E+qurh2f2vxSFZUy4c6lnCN4KmykHZqzQIctopE=
X-Received: by 2002:a17:903:ac7:b0:269:9a8f:a4ab with SMTP id d9443c01a7336-29027321d6fmr33683525ad.60.1759923741177;
        Wed, 08 Oct 2025 04:42:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHDbzkRHrqKCyveZQtPNu5wXH0yE1gBYipeED5okPBiPa0eoGrKFdbydLB9JugV0DEq9NabyA==
X-Received: by 2002:a17:903:ac7:b0:269:9a8f:a4ab with SMTP id d9443c01a7336-29027321d6fmr33683245ad.60.1759923740625;
        Wed, 08 Oct 2025 04:42:20 -0700 (PDT)
Received: from [10.79.195.127] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b51113776sm3135676a91.14.2025.10.08.04.42.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 04:42:20 -0700 (PDT)
Message-ID: <cb3df04f-dbd3-4419-b96c-b0d4707d1f3a@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 17:12:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/24] arm64: dts: qcom: glymur-crd: Add RPMH regulator
 rails
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-9-24b601bbecc0@oss.qualcomm.com>
 <pqulydlgdjrbgv2l2wgienn6bdzvmf7lafriwt6d3aqabkolkj@5jrjv4jnqyyz>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <pqulydlgdjrbgv2l2wgienn6bdzvmf7lafriwt6d3aqabkolkj@5jrjv4jnqyyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 7Q6NfpQt9x4g58erfmEwRACgUJctIsLc
X-Authority-Analysis: v=2.4 cv=T8aBjvKQ c=1 sm=1 tr=0 ts=68e64e1e cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=hjE_L7AN1m7pM4vJYlgA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 7Q6NfpQt9x4g58erfmEwRACgUJctIsLc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMyBTYWx0ZWRfX/4tv4sDDfxNh
 KOMZSdBmlMZwUbjcMnyS9TrkC3RoU9N109SiRCVmvSN3oP9OBS3bnEVP2cFBALGUl2bUjeWW5Zn
 0LaYYp2yOaHCybp+DSuc8Sf2fffFDhSPMMEgaSmYgo98+iPM4ZJUdTfDahTwLbPnHXisN1ID11G
 OMviOrF7sbDHk1SmSBEU3Sy/bZ98c1sKg0u4cjN3+FcutTNm4H4NcgzLGaGtymn1DLp7yJddGFt
 kHEFOCI9fd0WGsaKj++Gws0UXmKv7pJTVLk6psl0WumaBpRQkrH+jHY5fCjUT+EoGceRguz0nKg
 0DwKCT2MVukatu0JGPZOm5s3n0MzP9j/Hhz4kVh6LnDZitClA6JbrD+SyU6ky4K4ms+pTxO+zW5
 rcUFIYTg7h9/kdfcceNGVr0sudygUA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060123

On 9/25/2025 10:39 PM, Bjorn Andersson wrote:
> On Thu, Sep 25, 2025 at 12:02:17PM +0530, Pankaj Patil wrote:
>> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>>
>> Add RPMH regulator rails for Glymur CRD.
>>
> Please don't sprinkle board-specific changes throughout the series.
>
> It's useful to introduce the dts early on, so that any dtsi changes gets
> compiled, but you can then group the board-specific changes at the end
> of the series; and squash them into one.
>
> Regards,
> Bjorn

Sure, will organize the next revision in the same manner.

>> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 332 ++++++++++++++++++++++++++++++++
>>  1 file changed, 332 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>> index 4561c0b87b017cba0a1db8814123a070b37fd434..e89b81dcb4f47b78307fa3ab6831657cf6491c89 100644
>> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
>> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>> @@ -6,6 +6,7 @@
>>  /dts-v1/;
>>  
>>  #include "glymur.dtsi"
>> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>  
>>  / {
>>  	model = "Qualcomm Technologies, Inc. Glymur CRD";
>> @@ -66,3 +67,334 @@ chosen {
>>  &tlmm {
>>  	gpio-reserved-ranges = <4 4>, <10 2>, <44 4>; /*Security SPI (TPM)*/
>>  };
>> +
>> +&apps_rsc {
>> +
>> +	vph_pwr: vph-pwr-regulator {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vph_pwr";
>> +		regulator-min-microvolt = <3700000>;
>> +		regulator-max-microvolt = <3700000>;
>> +	};
>> +
>> +	regulators-0 {
>> +		compatible = "qcom,pmh0101-rpmh-regulators";
>> +		qcom,pmic-id = "B_E0";
>> +
>> +		vdd-bob1-supply = <&vph_pwr>;
>> +		vdd-bob2-supply = <&vph_pwr>;
>> +		vdd-l1-l10-l15-supply = <&vreg_s9f_e0_1p9>;
>> +		vdd-l2-l7-l8-l9-l16-supply = <&vreg_bob1_e0>;
>> +		vdd-l11-l12-l18-supply = <&vreg_s7f_e0_1p32>;
>> +		vdd-l17-supply = <&vreg_bob2_e0>;
>> +
>> +		vreg_bob1_e0: bob1 {
>> +			regulator-name = "vreg_bob1_e0";
>> +			regulator-min-microvolt = <2200000>;
>> +			regulator-max-microvolt = <4224000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_AUTO>;
>> +		};
>> +
>> +		vreg_bob2_e0: bob2 {
>> +			regulator-name = "vreg_bob2_e0";
>> +			regulator-min-microvolt = <2540000>;
>> +			regulator-max-microvolt = <3600000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_AUTO>;
>> +		};
>> +
>> +		vreg_l1b_e0_1p8: ldo1 {
>> +			regulator-name = "vreg_l1b_e0_1p8";
>> +			regulator-min-microvolt = <1800000>;
>> +			regulator-max-microvolt = <1800000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l2b_e0_2p9: ldo2 {
>> +			regulator-name = "vreg_l2b_e0_2p9";
>> +			regulator-min-microvolt = <2900000>;
>> +			regulator-max-microvolt = <3300000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l7b_e0_2p79: ldo7 {
>> +			regulator-name = "vreg_l7b_e0_2p79";
>> +			regulator-min-microvolt = <2790000>;
>> +			regulator-max-microvolt = <3300000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l8b_e0_1p50: ldo8 {
>> +			regulator-name = "vreg_l8b_e0_1p50";
>> +			regulator-min-microvolt = <1504000>;
>> +			regulator-max-microvolt = <3544000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l9b_e0_2p7: ldo9 {
>> +			regulator-name = "vreg_l9b_e0_2p7";
>> +			regulator-min-microvolt = <2700000>;
>> +			regulator-max-microvolt = <3300000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l10b_e0_1p8: ldo10 {
>> +			regulator-name = "vreg_l10b_e0_1p8";
>> +			regulator-min-microvolt = <1800000>;
>> +			regulator-max-microvolt = <1800000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l11b_e0_1p2: ldo11 {
>> +			regulator-name = "vreg_l11b_e0_1p2";
>> +			regulator-min-microvolt = <1200000>;
>> +			regulator-max-microvolt = <1200000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l12b_e0_1p14: ldo12 {
>> +			regulator-name = "vreg_l12b_e0_1p14";
>> +			regulator-min-microvolt = <1140000>;
>> +			regulator-max-microvolt = <1260000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l15b_e0_1p8: ldo15 {
>> +			regulator-name = "vreg_l15b_e0_1p8";
>> +			regulator-min-microvolt = <1800000>;
>> +			regulator-max-microvolt = <1800000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l17b_e0_2p4: ldo17 {
>> +			regulator-name = "vreg_l17b_e0_2p4";
>> +			regulator-min-microvolt = <2400000>;
>> +			regulator-max-microvolt = <2700000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l18b_e0_1p2: ldo18 {
>> +			regulator-name = "vreg_l18b_e0_1p2";
>> +			regulator-min-microvolt = <1200000>;
>> +			regulator-max-microvolt = <1200000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +	};
>> +
>> +	regulators-1 {
>> +		compatible = "qcom,pmcx0102-rpmh-regulators";
>> +		qcom,pmic-id = "C_E0";
>> +		vdd-s1-supply = <&vph_pwr>;
>> +		vdd-s8-supply = <&vph_pwr>;
>> +
>> +		vreg_s1c_e0_0p3: smps1 {
>> +			regulator-name = "vreg_s1c_e0_0p3";
>> +			regulator-min-microvolt = <300000>;
>> +			regulator-max-microvolt = <1200000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_s8c_e0_0p3: smps8 {
>> +			regulator-name = "vreg_s8c_e0_0p3";
>> +			regulator-min-microvolt = <300000>;
>> +			regulator-max-microvolt = <1200000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +	};
>> +
>> +	regulators-2 {
>> +		compatible = "qcom,pmcx0102-rpmh-regulators";
>> +		qcom,pmic-id = "C_E1";
>> +
>> +		vdd-l2-supply = <&vreg_s7f_e0_1p32>;
>> +		vdd-l1-l3-l4-supply = <&vreg_s8f_e0_0p95>;
>> +
>> +		vreg_l1c_e1_0p82: ldo1 {
>> +			regulator-name = "vreg_l1c_e1_0p82";
>> +			regulator-min-microvolt = <825000>;
>> +			regulator-max-microvolt = <958000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l2c_e1_1p14: ldo2 {
>> +			regulator-name = "vreg_l2c_e1_1p14";
>> +			regulator-min-microvolt = <1140000>;
>> +			regulator-max-microvolt = <1300000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l3c_e1_0p89: ldo3 {
>> +			regulator-name = "vreg_l3c_e1_0p89";
>> +			regulator-min-microvolt = <890000>;
>> +			regulator-max-microvolt = <980000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l4c_e1_0p72: ldo4 {
>> +			regulator-name = "vreg_l4c_e1_0p72";
>> +			regulator-min-microvolt = <720000>;
>> +			regulator-max-microvolt = <980000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +	};
>> +
>> +	regulators-3 {
>> +		compatible = "qcom,pmh0110-rpmh-regulators";
>> +		qcom,pmic-id = "F_E0";
>> +		vdd-s7-supply = <&vph_pwr>;
>> +		vdd-s8-supply = <&vph_pwr>;
>> +		vdd-s9-supply = <&vph_pwr>;
>> +		vdd-s10-supply = <&vph_pwr>;
>> +		vdd-l2-supply = <&vreg_s8f_e0_0p95>;
>> +		vdd-l3-supply = <&vreg_s8f_e0_0p95>;
>> +		vdd-l4-supply = <&vreg_s8f_e0_0p95>;
>> +
>> +		vreg_s7f_e0_1p32: smps7 {
>> +			regulator-name = "vreg_s7f_e0_1p32";
>> +			regulator-min-microvolt = <1320000>;
>> +			regulator-max-microvolt = <1352000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_s8f_e0_0p95: smps8 {
>> +			regulator-name = "vreg_s8f_e0_0p95";
>> +			regulator-min-microvolt = <952000>;
>> +			regulator-max-microvolt = <1200000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_s9f_e0_1p9: smps9 {
>> +			regulator-name = "vreg_s9f_e0_1p9";
>> +			regulator-min-microvolt = <1900000>;
>> +			regulator-max-microvolt = <2000000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_s10f_e0_0p3: smps10 {
>> +			regulator-name = "vreg_s10f_e0_0p3";
>> +			regulator-min-microvolt = <300000>;
>> +			regulator-max-microvolt = <1200000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l2f_e0_0p82: ldo2 {
>> +			regulator-name = "vreg_l2f_e0_0p82";
>> +			regulator-min-microvolt = <825000>;
>> +			regulator-max-microvolt = <980000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l3f_e0_0p72: ldo3 {
>> +			regulator-name = "vreg_l3f_e0_0p72";
>> +			regulator-min-microvolt = <720000>;
>> +			regulator-max-microvolt = <980000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l4f_e0_0p3: ldo4 {
>> +			regulator-name = "vreg_l4f_e0_0p3";
>> +			regulator-min-microvolt = <300000>;
>> +			regulator-max-microvolt = <1200000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +	};
>> +
>> +	regulators-4 {
>> +		compatible = "qcom,pmh0110-rpmh-regulators";
>> +		qcom,pmic-id = "F_E1";
>> +		vdd-s1-supply = <&vph_pwr>;
>> +		vdd-s3-supply = <&vph_pwr>;
>> +		vdd-s5-supply = <&vph_pwr>;
>> +		vdd-s6-supply = <&vph_pwr>;
>> +		vdd-s7-supply = <&vph_pwr>;
>> +		vdd-l1-supply = <&vreg_s8f_e0_0p95>;
>> +		vdd-l2-supply = <&vreg_s8f_e0_0p95>;
>> +		vdd-l4-supply = <&vreg_s8f_e0_0p95>;
>> +
>> +		vreg_s1f_e1_0p3: smps1 {
>> +			regulator-name = "vreg_s1f_e1_0p3";
>> +			regulator-min-microvolt = <300000>;
>> +			regulator-max-microvolt = <1200000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_s5f_e1_0p3: smps5 {
>> +			regulator-name = "vreg_s5f_e1_0p3";
>> +			regulator-min-microvolt = <300000>;
>> +			regulator-max-microvolt = <1200000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_s6f_e1_0p3: smps6 {
>> +			regulator-name = "vreg_s6f_e1_0p3";
>> +			regulator-min-microvolt = <300000>;
>> +			regulator-max-microvolt = <1200000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_s7f_e1_0p3: smps7 {
>> +			regulator-name = "vreg_s7f_e1_0p3";
>> +			regulator-min-microvolt = <300000>;
>> +			regulator-max-microvolt = <1200000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l1f_e1_0p82: ldo1 {
>> +			regulator-name = "vreg_l1f_e1_0p82";
>> +			regulator-min-microvolt = <825000>;
>> +			regulator-max-microvolt = <950000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l2f_e1_0p83: ldo2 {
>> +			regulator-name = "vreg_l2f_e1_0p83";
>> +			regulator-min-microvolt = <830000>;
>> +			regulator-max-microvolt = <920000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l4f_e1_1p08: ldo4 {
>> +			regulator-name = "vreg_l4f_e1_1p08";
>> +			regulator-min-microvolt = <1080000>;
>> +			regulator-max-microvolt = <1320000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +	};
>> +
>> +	regulators-5 {
>> +		compatible = "qcom,pmh0110-rpmh-regulators";
>> +		qcom,pmic-id = "H_E0";
>> +
>> +		vdd-l1-supply = <&vreg_s8f_e0_0p95>;
>> +		vdd-l2-supply = <&vreg_s8f_e0_0p95>;
>> +		vdd-l3-supply = <&vreg_s9f_e0_1p9>;
>> +		vdd-l4-supply = <&vreg_s7f_e0_1p32>;
>> +
>> +		vreg_l1h_e0_0p89: ldo1 {
>> +			regulator-name = "vreg_l1h_e0_0p89";
>> +			regulator-min-microvolt = <825000>;
>> +			regulator-max-microvolt = <950000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l2h_e0_0p72: ldo2 {
>> +			regulator-name = "vreg_l2h_e0_0p72";
>> +			regulator-min-microvolt = <830000>;
>> +			regulator-max-microvolt = <920000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l3h_e0_0p32: ldo3 {
>> +			regulator-name = "vreg_l3h_e0_0p32";
>> +			regulator-min-microvolt = <320000>;
>> +			regulator-max-microvolt = <2000000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +
>> +		vreg_l4h_e0_1p2: ldo4 {
>> +			regulator-name = "vreg_l4h_e0_1p2";
>> +			regulator-min-microvolt = <1080000>;
>> +			regulator-max-microvolt = <1320000>;
>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +		};
>> +	};
>> +};
>>
>> -- 
>> 2.34.1
>>


