Return-Path: <devicetree+bounces-200846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95156B1640A
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 18:04:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD48E179EEF
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 16:04:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4624B2DCF63;
	Wed, 30 Jul 2025 16:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JwoG9EM1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9762151022
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 16:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753891456; cv=none; b=uj/TclRRENMMvdU2k7waic6GOOoHnWeMIO5F/IsPkiGGvbMM3R03QIAFE3QZjnaJmzWPcwCKBusGHyzkiqsqIYM9IqTMeHvWQ9S/COAIe5/lJ+54LN2ixCfLwprQ1R85lvC6g0X5JFdMcW7Y2gTdaXf7OZWDNimkaD2qSti9zrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753891456; c=relaxed/simple;
	bh=sr3vr86B1WN6egX5ufe1jMCAJdnTsepBNRthFxntilc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dZsBUs4pqfyfaTUVLh8uHdKnStHPA+Ofy2msWO9X/g0xI4hrN07TbPlKu/VZvWBPikt+AEHO4oPcZ89gJswaoTYDpB4euUvsUWk8hsBPrMYBV7v0kHrQTOJ6MkSXxn0VarJpM9SqQD/eHGkTn1wPP4epjVUVqWn8ve404kABuPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JwoG9EM1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCbGcq030419
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 16:04:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vEvv3sPokNm+5Tvls5hoRKnz9U+q/8E6FLS31sVCUzQ=; b=JwoG9EM1tZr7rcRP
	xTKJq7md72xo2IERlDEm+qAODSt59eUv5uetLd2vxYsJ0MyZrTiZl8baDLpgTW7i
	9qntRXzozf7YWEMDcz7RlN0CoqqiK0fxLge5TBRqkQdPKVjyNN/+T1liswLfU2IR
	KkPHINTmv7GRsR8HSYknlNwcZtiMBEDrZmSfNwfMkIcLG6HdJIbk4UgVOz3VN5u5
	0Oo6Xx3yUdFSmK0sP13O2grYEseeCGVRatBnj9c8SWBHL4j/iYtKnfPFxHrLtEkI
	FSgBnr09kYrFmsKsPMAE3iZn3C/+96BrjIbFX27g39X30mqO1W9YzT6J2RwTfTux
	8M+bPw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 487jwersv5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 16:04:13 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b34fa832869so911390a12.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 09:04:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753891452; x=1754496252;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vEvv3sPokNm+5Tvls5hoRKnz9U+q/8E6FLS31sVCUzQ=;
        b=RF5MI+k06numwOOSptSoFiSXXK+3xh4R86YRAg8GV33tTe0MntBgnCSkF8YaG+D368
         toahUNCnGCoV/23aHpMFh0EXF5cCR4DtAmxqWFuFgpMdCZyK5sFzDLvGjAIX63JkEp76
         k5FiJYz0awDX7P6OmGy8j9aHAFXxuF0kfR/avDnNOesMGPyic6dsWkZKF3io6QCTYv0T
         EJmz42ZofzDe2Qn9t1pqI4946IpjGTZVr5ZnOKsUuxCfSFyoWVTrprN+zcAmcBXPmwbW
         jTYfCVsKiQS1NH3o+oq9fxJEhtBIvtFYJLfJbJJJuGipg5DPvFRfOMhxjpRQo5k6/Tfs
         vMkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiIWb6UrFADbHIdHfW/9xT0bIoSyX4YK+r78VLhZy7rmVXrOrg52IsCgB7rz44+tRnG9e8F8yICgWq@vger.kernel.org
X-Gm-Message-State: AOJu0YwNvuoLTZADpdE/xVWUR27OctHZVxYlO9W7LAkA4af85OBNWcjP
	zCw5yVTNz+hEkdqAjUQJFwO7Pk8w+bX2ib7lw0/qLZmaziNfz5BMFjEKWQ+FeBAf26h8AKrXlMf
	r0+qpu0gdwn4d0LvctfsQF8jGKgN7y+VD7IwPa8KfThNIpAZ2ljAahKyaA8qibG8B
X-Gm-Gg: ASbGnctHAA/zFHKf8AynF6oZXuTzAjjiU7miiaMfFE3nYAoF8VEt2pHtLGOdPXEwFP2
	G4KIli07x1MUSBiFhozirY56oKGNntTFIfMVmvv3oZbGTVOk6kh0uKWR7owON5XipwSxO2SR76i
	QGrFbfzNkC1Tcjz9InqU2dIGloiSEoDf6eCbinyBxcLFlm8piVcugloe7LFpeLOZ/KuvyW5DKoh
	/SPbz2vJOolZ6DKBKxJ2DtrNSxQQlqBzyhztCQEYtJYLq3qyHmUoe4iVVXPdNI2iQ7JwqC3yJSq
	V3dloOgJE4kjWzZMz4cDPZTnvBEbGpdu7MiCSEMcHFkVNeGaxiCvgFLC0jV3SzgR
X-Received: by 2002:a17:903:22cf:b0:240:86b2:ae9c with SMTP id d9443c01a7336-24096884152mr66915995ad.14.1753891451962;
        Wed, 30 Jul 2025 09:04:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8Yb95xSZJkf9AVMlWP7JbQuzQGC5knnubldONN4jD2EOrvcArH9iLv1igJvYIL1fbR7bDCw==
X-Received: by 2002:a17:903:22cf:b0:240:86b2:ae9c with SMTP id d9443c01a7336-24096884152mr66915295ad.14.1753891451165;
        Wed, 30 Jul 2025 09:04:11 -0700 (PDT)
Received: from [192.168.1.5] ([106.222.235.239])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2403c96e4cfsm67345655ad.25.2025.07.30.09.04.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 09:04:10 -0700 (PDT)
Message-ID: <54b36b37-c1a6-4e1b-842d-a1d4872da180@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 21:34:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: Add ACD levels for GPU
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250729-topic-sm8650-upstream-gpu-acd-level-v1-1-258090038a41@linaro.org>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20250729-topic-sm8650-upstream-gpu-acd-level-v1-1-258090038a41@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: xDzxWLTJRpuBkDgSN_yyjBKunVf5SfqH
X-Authority-Analysis: v=2.4 cv=Wv0rMcfv c=1 sm=1 tr=0 ts=688a427d cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=HRpvt/FSzHA3SJMKks594A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=S8knCjkmKkfcu8I3GasA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: xDzxWLTJRpuBkDgSN_yyjBKunVf5SfqH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDExMyBTYWx0ZWRfX9oj5sTtvXsLl
 pKv707Xek+xNrUBD4PEDizOYynjt0ukjazvp2NT9VFXbCe3J7EYBcQN1C3l7V9aY/HTfPTfBUu2
 emR9xMgBCMadyvT3SSkzZFD0ItzoDs7YEhQQW/PHLcwAT+YjgS8szNuZ/9Il27HhihP09eJUnTl
 tR19WHTZ5enrIv/sQPOQdM9iQYGDOYcrEFyMkvWb3ACpjoZLjD2FqZStudMq87uzSKm39Gx0LBY
 p3ZuWHmxXtEmrCO6dllIEZFSAkVPeWCifoj+1XGxQLxj0wa2YMlWH5Qbqf0GaL3048TDQv9HEs1
 31sAHQvbVJDCLj5vXAblHLdaYbjlTlAvgtYvjrRjTkXuJRSN9gVNqP4wmkcUzq3sbKvM9+ASQvI
 Ec7r2LzulD/LoEvsfJZMtSVys4M2OPUpsqG6MlW4L2BmBGmBcVjNfALKsK7ihjEO+PefPltp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_05,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 mlxscore=0 adultscore=0 impostorscore=0
 phishscore=0 mlxlogscore=884 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300113

On 7/29/2025 8:10 PM, Neil Armstrong wrote:
> Update GPU node to include acd level values.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>

-Akhil.

> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 495ea9bfd008500dd2c9f46ceca94cf5f972beca..4cd933219ce008bd1c603c87778e210b6332e29c 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -4127,72 +4127,84 @@ zap-shader {
>  
>  			/* Speedbin needs more work on A740+, keep only lower freqs */
>  			gpu_opp_table: opp-table {
> -				compatible = "operating-points-v2";
> +				compatible = "operating-points-v2-adreno",
> +					     "operating-points-v2";
>  
>  				opp-231000000 {
>  					opp-hz = /bits/ 64 <231000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
>  					opp-peak-kBps = <2136718>;
> +					qcom,opp-acd-level = <0xc82f5ffd>;
>  				};
>  
>  				opp-310000000 {
>  					opp-hz = /bits/ 64 <310000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
>  					opp-peak-kBps = <2136718>;
> +					qcom,opp-acd-level = <0xc82c5ffd>;
>  				};
>  
>  				opp-366000000 {
>  					opp-hz = /bits/ 64 <366000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D0>;
>  					opp-peak-kBps = <6074218>;
> +					qcom,opp-acd-level = <0xc02e5ffd>;
>  				};
>  
>  				opp-422000000 {
>  					opp-hz = /bits/ 64 <422000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
>  					opp-peak-kBps = <8171875>;
> +					qcom,opp-acd-level = <0xc02d5ffd>;
>  				};
>  
>  				opp-500000000 {
>  					opp-hz = /bits/ 64 <500000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_L1>;
>  					opp-peak-kBps = <8171875>;
> +					qcom,opp-acd-level = <0xc02a5ffd>;
>  				};
>  
>  				opp-578000000 {
>  					opp-hz = /bits/ 64 <578000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
>  					opp-peak-kBps = <8171875>;
> +					qcom,opp-acd-level = <0x882c5ffd>;
>  				};
>  
>  				opp-629000000 {
>  					opp-hz = /bits/ 64 <629000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L0>;
>  					opp-peak-kBps = <10687500>;
> +					qcom,opp-acd-level = <0x882a5ffd>;
>  				};
>  
>  				opp-680000000 {
>  					opp-hz = /bits/ 64 <680000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
>  					opp-peak-kBps = <12449218>;
> +					qcom,opp-acd-level = <0x882a5ffd>;
>  				};
>  
>  				opp-720000000 {
>  					opp-hz = /bits/ 64 <720000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L2>;
>  					opp-peak-kBps = <12449218>;
> +					qcom,opp-acd-level = <0x882a5ffd>;
>  				};
>  
>  				opp-770000000 {
>  					opp-hz = /bits/ 64 <770000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
>  					opp-peak-kBps = <12449218>;
> +					qcom,opp-acd-level = <0x882a5ffd>;
>  				};
>  
>  				opp-834000000 {
>  					opp-hz = /bits/ 64 <834000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_NOM_L1>;
>  					opp-peak-kBps = <14398437>;
> +					qcom,opp-acd-level = <0x882a5ffd>;
>  				};
>  			};
>  		};
> 
> ---
> base-commit: 038d61fd642278bab63ee8ef722c50d10ab01e8f
> change-id: 20250729-topic-sm8650-upstream-gpu-acd-level-1c430e7f158f
> 
> Best regards,


