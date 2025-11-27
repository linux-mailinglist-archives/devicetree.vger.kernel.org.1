Return-Path: <devicetree+bounces-242675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E589BC8DC9B
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 11:34:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D520A4E6B20
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 10:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89B932C337;
	Thu, 27 Nov 2025 10:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZttGB2ie";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cIpphmRu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0192732BF5D
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764239630; cv=none; b=RRL1DDpdo5nVDK8Qgzqzw/ZMuGB0wfTsFflxxcMqAuSQ96ZNiACilhChojDQsirGEa91FnCaUuk+wNxnMMT54RODJMP9RVK4TTmyXhswK/2EMwZsi/3rsDnlBG4JCS5za2uttXq03EHz7SrDMb76uhLR0bGOmGVts/g8MscAxeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764239630; c=relaxed/simple;
	bh=XzC3a3C4R33fBBmDNjVhR7TgoZfSi9FXszBwbv8ToTg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q5+qQtimLHHbJpzOjn0zLPY5pm8I/i9pVZ0qj1o/UmTMDyu7lYU4+9dQGM8ezipk/eSuorX1EEc1LwJwE5iaIqKZVqTBfRiBGA7f9H+PrKKpA6nkQtthEv53zckPFZyx/BLqfqjW3ery/qUOfsxYsBZTc8/ltbWCEyUMArJcSLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZttGB2ie; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cIpphmRu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ARA3TZd642801
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:33:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CokDp5tVfSWP9BVDb0GsLQqjB/Kyd5QN+NkNGa5QMi0=; b=ZttGB2ieuwdSbx6t
	agpInf3Ip++k+NZ8Jtt3QXajDbYv5XY3MuHIyO3GoaE8itF5BNEyDfClU4G4OieS
	fRojmqDnLmO2xu3P2AmUYesCqIRo0LSHFzf0OtLcjQr+FVeLwAU29HAKX3ZNnhR8
	VBvcNaoj5Xv58kUvl6VDKaAvLQiz7JykEwT+mQ4uz2scw3b4ktMoV2TfuWVm/mp4
	VsLmLR4Q87IClXjJrS2PZryzcVyxLBqvDtXd96HX/kBOh9tCaafHK+BATS+gQZWT
	PiSeeG2KgPoM8+kPKvoKbxuJQjgwE6MobOMKG4tHA4U6mhjBz8dXy/91VotBBmCp
	3USCPg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apmja82xy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:33:44 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b29f90f9fdso19122085a.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 02:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764239624; x=1764844424; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CokDp5tVfSWP9BVDb0GsLQqjB/Kyd5QN+NkNGa5QMi0=;
        b=cIpphmRuoHbO1yZsrAaxEOxHTFw5lfbdrTRUb226dr6SWCZw6l6WCuW6xlU164xdQH
         VwNZV+Tbwjhp2QhdsIXnVEmlEOAGn/itCvbEty6Kfg2iZNe+f0JlwNBlcqRDCmo8W00j
         VV13njW12sjYi8EaJq6gCCSypL47LYdEF7TeiOMObmDS5bFFsNzHOfgH92HuL6SUIO96
         J2F+8w6hu8/eyiL6pkh+aJUQopRdMl2sJMs+mYeGFrRw2TUmeM6indinzW9PCUAAd/Db
         UqduxbjSj5C7PuE9NbZYrQWGwFuItS46q0tpCR3zI65lUu1TY6v/riujxqZtsRzTQ6+3
         ecqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764239624; x=1764844424;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CokDp5tVfSWP9BVDb0GsLQqjB/Kyd5QN+NkNGa5QMi0=;
        b=JeSQ4Fxkc50pQPRUPddjk65OWmIGqqdLudfaIb/F0ux/NYPHc5xS5xhvPR4NObpT5A
         UCbBIoSe8bD0l5HZeWKwHLNOX6aBLHRqJNVWCgYV2Eaa4oh9BKzkD/siKJjc0TCe1kn1
         8hy5UQ6J9pvhTQnLOu2UiqmONmATIvYCZBwbIMqD1/LXdB2S0srADln4zVU36OSmIcCd
         BX1OKKza3h+bGfnaRTRhT6qQI2NP0RKjga9KgTffkm4paZENrHCE2cdGsWAyWeHIPWTq
         9+/0MO12PEC9CiIuw+t1rUyRYv/JzjnFw+gtDOpvvwtO/BbW7+pQvTIlIRxXSRDoa8TI
         bW6A==
X-Forwarded-Encrypted: i=1; AJvYcCWYE//wkJcwpBMlnLIwklYgp1DXrb6o90WIbo82013Ud2A7N32qOojD5BTOce1AvdWuGRymxchT9XAC@vger.kernel.org
X-Gm-Message-State: AOJu0YxSXV1kyT2iKMNG3V/wUdYs6Ewmq0qiR5QZXb2+/B3SFM3jdn0F
	uCRakf06zQ42twrPsTvMOqCA54YuUkoQoSjTKFC9L1QvExST7lwpV7FM4E+KbLkNS/+6HkZypPz
	l74JRO5+P9ckHFMSmiPVFjHH3+lIxEDH01gkEfaxRbn5t8IelSQLT8FTJZmIZWC3+
X-Gm-Gg: ASbGnct4VNaORZAVSXA9h0XqFRUC7t/lmi1RT3PBId9UueRd1hITKMf1K7fhc6GWr5y
	TqJ4h+QKF16EqEM5pZcO7b7SCVbGqF8p/7HbFTJD/AQwlMGaJKmi74KAE1lqtem2ust5H4Sy2WK
	TngJlYvZQSZCvOFCt/kU6PUVYV1/mfTGjq/Ac62m6Qs40VAjGjTyAXxt9RyCGEQn/JabMCRM89N
	suecNrgRdhIiJOujNOSPxbOH/U/EJHNAZCstvH7cwDvxI2FfT++6cUlQKvXfeHRWVlO3FNtEtGl
	kWap4ZznlkgCTg4nHKRXs4b+p1ZkHo5PtVUJbN7KjqBxiHlbLCZPSCqS7a/jfj+AvkgBkJCKklL
	4k3u+qWBupz0eXI1ilFHGg65+Ywcf8Cs321vRefZgtSiweG4xMYVpcJPHgy/LtYFc8XA=
X-Received: by 2002:a05:620a:40ca:b0:8b2:f090:b165 with SMTP id af79cd13be357-8b33d1e2ec6mr2312806885a.4.1764239623681;
        Thu, 27 Nov 2025 02:33:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHifeZrYTwgAFAMOt+YXtO95UYll55NxTNDQ6fJKo8PEXgJiioUmfQnYzjjkQSYnHETB1t/Wg==
X-Received: by 2002:a05:620a:40ca:b0:8b2:f090:b165 with SMTP id af79cd13be357-8b33d1e2ec6mr2312804185a.4.1764239623268;
        Thu, 27 Nov 2025 02:33:43 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f59aecbdsm117793666b.38.2025.11.27.02.33.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 02:33:42 -0800 (PST)
Message-ID: <f7bfaec8-cb98-4254-9779-dc48a9409bb5@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 11:33:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm845-xiaomi-beryllium: Add
 placeholders and sort
To: longnoserob@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251126-slpi-v1-0-c101d08beaf2@gmail.com>
 <20251126-slpi-v1-2-c101d08beaf2@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251126-slpi-v1-2-c101d08beaf2@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDA3NyBTYWx0ZWRfXy2o5Zx/lz5HY
 Sy7lcHlKNGRXqMulwxnNp2YcgyvO20qAR+Iy7FTonn/IquVR2vAlQfB5Q8Ce4SgRo3S+M0GE4Oq
 wuK0c1FWvYrYgkTWb2kiBv1Yz7/Tifw89vuLHhzHa1JIZTpPd9fkvkBoHknfTa6si1p41hhFUWW
 AF2Qq6ounE5dYgrG2TRL98lgTIsgjDUwFfR2N+dhhApgHb56NaEWXDmWizj3qVBmbHLgufMLN/5
 YDCFHaYtbL10wg0vRMWbrxWeLtXETAK1hNhSqbuzKg0KsCiXjdYVm6ksd4OrM2CBzKRr700bZMu
 5nei3qi2dLOw/qO6A/25CI0NGWvpebDkYd9BbUzT3gG0e+w5F3ycgibJMB0tMXqxCehMWESBmb9
 kcjfUpt+AimNf48X0DulK8LPkfVwuw==
X-Authority-Analysis: v=2.4 cv=KbvfcAYD c=1 sm=1 tr=0 ts=69282908 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=2_5gyxQJgtZ_QaTgg6kA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: icnZ-UkJ3vaMSKZx57pWaSeM_Jk8Y5d4
X-Proofpoint-GUID: icnZ-UkJ3vaMSKZx57pWaSeM_Jk8Y5d4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270077

On 11/26/25 1:08 PM, Robert Eckelmann via B4 Relay wrote:
> From: Robert Eckelmann <longnoserob@gmail.com>
> 
> We know these devices are present, most of them are supported by
> downstream and close to the mainline kernels.
> 
> This is very handy when rebasing the integration tree with the support.
> 
> No functional changes.
> 
> Signed-off-by: Robert Eckelmann <longnoserob@gmail.com>
> ---
>  .../dts/qcom/sdm845-xiaomi-beryllium-common.dtsi   | 23 +++++++++++++++-------
>  1 file changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> index 0fb1d7e724c4..0b219d0ff451 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> @@ -227,6 +227,10 @@ vreg_l26a_1p2: ldo26 {
>  	};
>  };
>  
> +&cci_i2c0 {
> +	/* IMX363 @ 10 */

It may be useful for you to add 'status = "okay"' here, so that the busses
are accessible, and you can poke at the device with e.g. i2c-tools

Konrad

