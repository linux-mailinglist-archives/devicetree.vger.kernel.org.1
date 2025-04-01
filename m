Return-Path: <devicetree+bounces-162352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B82A77FBF
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 18:01:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7FD516D202
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 16:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77EAC207E17;
	Tue,  1 Apr 2025 16:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XJCV28WY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF640205502
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 16:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743523246; cv=none; b=JR1AJ1TgbjciWdaUmM58hAni5dhoLkZd3XZeaSwdZWdz2+cyIpoojMTMxi6AYzr+A5toK1PjqhGezsa06vksx3qXXAaXr17d2WjUCVonzBue/3Nhpd3M0x/2KriamCjfXItbwzeN5tVNEQS/c5LmR6gxpuLbZnS9rULVqvDNBZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743523246; c=relaxed/simple;
	bh=/LM8H4ISofW5iS4fWCpEdxbc5ynRsTwY7+ZDFXlYDrk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q5BWySG/1IxPrDryH4qDpdyF8eJkTYOhB7q6d8d7X9/Nq5wiCdpRwzd342OInIgruKbi3ifRqh5G4qfnv0svpIdbOt4XYw/gdY6wpsxDsA4AjNpX0VaaIWmRTFrOflP7DSedhxU4CzwCGSga2uzHeS7nXWKUWps53rb7tPnjcN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XJCV28WY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531Bj7V7027578
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 16:00:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E8fTZlY2FTPTBgviWZBS2FnhOavhB0dACv9PHWteTzI=; b=XJCV28WYrpJNw0H+
	oY+GbBzeQ8IPoprH9H9wPa7KJpZG9x/jxDO46ZLxeTUhA8QhKs+rD2U+YdBmsxRo
	V4m2iMxmYzqDnu2ty58u894gXzZlghfu8ScMlLt3rxPPtLJDQia7Rm7oJkcJjLdD
	VERNKx37U+Io8h9rdGgTqvGpUW0Zq9/pXy979WcdtgyOnnZnZb/JmNRxsKf1cMKe
	LQ1TffmKnLzqaAguzZiF6yOI4SO8s7ZsL4WESTJ9eYaKEOW9a+yOi58qcgWL0F0w
	ZGYkqobtoRyfgQ1+pTWvmUshLOoiFX+t95ReyV69rb/NyzHj+TBQcZfnD3/skgSN
	cUTAdA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p6jhrr47-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 16:00:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5466ca3e9so34180685a.2
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 09:00:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743523229; x=1744128029;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E8fTZlY2FTPTBgviWZBS2FnhOavhB0dACv9PHWteTzI=;
        b=fJKRBJvvHvlhoJrsA2BVkFq5F3gVhxOy6WM+Mfv+FAcn4LRS2Jf61BdJDdVkJWkXYQ
         aXa0JjXkLEvJC+QOTh6r2BHwz21nSWfGGqbNI04/GrXewfTGdP6s3NU8WKjdTKcBAPnq
         AOX78Mp4xs661JW1Unx+CNSB2e9j4qmjQAzkQjj1IyNxOdyRJ9z4pLOq/bpaEo9d0OtQ
         RN/zdKZevvoktN3mxSrjkkrLvmFJyARHt5FPy0b5EDGINiA9ILW/PZd1XMQKIQTLrw2P
         LPjy6Hq+A7mTjSFoiY7m/4A2QIn/TmHjaxHXnxT+W42DFSHMVj9DFRQOI+vJSyra/tXG
         sHow==
X-Forwarded-Encrypted: i=1; AJvYcCWxB6G5Jh8y50FLGaApHc2b/LxHpyjvAcYGf5RjYujHTNc+S1dgWTBdmR1kIx5w+cx0fY5+iQUZzsA0@vger.kernel.org
X-Gm-Message-State: AOJu0YwFQ/rt0o2XKtq2l8JqTMVU8s24sxv2kbONC24CYVwoFhur+Drt
	Lel9jf8W5Z6kGo4pyLcJPoIx02vTli7i4rKkQZsEP5nqJjdTpaRoFZk1b5pbG85nNcXdgTnTBzv
	jgAPaDFDUeflSih6NEmXtESPYw5IOf//P9WjSnL8hWkj6uiQnxNdopWplR8Ey
X-Gm-Gg: ASbGnctfbzOHoYxeAJspB2iEGjyx8ET5rXlYoRTprkYdUawZSCR0fv4SfWfgL7PytM5
	CA5v1TKT0110cm5SsUIDkNo9Wf0sBjXGWw6nMyWx+3114JKYxuIzABaID6fIuu+DmnTc/6PgMqf
	ZxpenLr8SU84fIi98BYtAh/He2yOBKiht0e6L0NmyxKEaU5n7QUdO1IohLFOAtjqOUTA53ukHUy
	CpPhubRW7JzWOkfxFimD3M1M6H8kSRJAOT3WudeOxCyGwUQ+DErySRKeCH9M+FDrkgAwTBE0FEo
	OtLEakWKXcVuMxPi2CPPjJ5q+P4EGspC2kpFBUNlob4+P3IgouAU1DSAaYANA6p9ta/McA==
X-Received: by 2002:a05:620a:4491:b0:7c0:c2ec:e560 with SMTP id af79cd13be357-7c75cbf574cmr160052285a.15.1743523227105;
        Tue, 01 Apr 2025 09:00:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWPKkqXsYoXi+SD/mNf0LhMLx5EF89OKxRG79X0GRYasz/yOgGPHK/1puUyPh6CDB3BzPe6Q==
X-Received: by 2002:a05:620a:4491:b0:7c0:c2ec:e560 with SMTP id af79cd13be357-7c75cbf574cmr160043085a.15.1743523225210;
        Tue, 01 Apr 2025 09:00:25 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc17dff0bsm7187903a12.70.2025.04.01.09.00.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 09:00:24 -0700 (PDT)
Message-ID: <4d23b54e-93eb-4c1c-86d9-a70f29c23ec4@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 18:00:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 15/18] arm64: dts: qcom: Add MXC power domain to
 videocc node on SM8650
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20250327-videocc-pll-multi-pd-voting-v3-0-895fafd62627@quicinc.com>
 <20250327-videocc-pll-multi-pd-voting-v3-15-895fafd62627@quicinc.com>
 <12986cda-99eb-4a1b-a97b-544ea01e2dbb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <12986cda-99eb-4a1b-a97b-544ea01e2dbb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: jgBjrTXTuWVqcvSCeNu7TikBCsll_LFl
X-Proofpoint-ORIG-GUID: jgBjrTXTuWVqcvSCeNu7TikBCsll_LFl
X-Authority-Analysis: v=2.4 cv=bZZrUPPB c=1 sm=1 tr=0 ts=67ec0dab cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=unI4K08xUKBPFJxB_jMA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_06,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0 mlxscore=0
 impostorscore=0 mlxlogscore=913 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504010099

On 4/1/25 5:27 PM, Konrad Dybcio wrote:
> On 3/27/25 10:52 AM, Jagadeesh Kona wrote:
>> Videocc requires both MMCX and MXC rails to be powered ON to configure
>> the video PLLs on SM8650 platform. Hence add MXC power domain to videocc
>> node on SM8650.
>>
>> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> ---
>>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> index 818db6ba3b3be99c187512ea4acf2004422f6a18..ad60596b71d25bb0198b26660dc41195a1210a23 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> @@ -4959,7 +4959,8 @@ videocc: clock-controller@aaf0000 {
>>  			reg = <0 0x0aaf0000 0 0x10000>;
>>  			clocks = <&bi_tcxo_div2>,
>>  				 <&gcc GCC_VIDEO_AHB_CLK>;
>> -			power-domains = <&rpmhpd RPMHPD_MMCX>;
>> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
>> +					<&rpmhpd RPMHPD_MXC>;
> 
> So all other DTs touched in this series reference low_svs in required-opps

actually "all" is wrong on my side, please also consider and if necessary apply
the same change to patch 18

Konrad

> 
> Is that an actual requirement? Otherwise since Commit e3e56c050ab6
> ("soc: qcom: rpmhpd: Make power_on actually enable the domain") we get the
> first nonzero state, which can be something like low_svs_d2
> 
> Konrad

