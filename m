Return-Path: <devicetree+bounces-192104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA05AF1644
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 14:59:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EAD8D1C233A0
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 12:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0740275115;
	Wed,  2 Jul 2025 12:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CdepuzD0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E7623D29A
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 12:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751461155; cv=none; b=Bi02/s0awr5QlHCRxG6hUy6IqRNuvKICMLsV+jTaE8qU3f30doap+mxZ7nX9KEUoxXeyuBWld5s6JCJIZx5TMSuZkXgio9DmbXKHuohCrqRL7ZmjeL+1YS3NqFrsVU1nT6VURBjyoYJFisGY/sILIXATkw82UNyemVTmfOUzpqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751461155; c=relaxed/simple;
	bh=7a3eTrGr9XfRQUpiwBbwOSAQkr2uzzC+oxMaTb753jc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N/GV2BXir1VGqurL+ySArAvd3XPM1dOzQNYHLdbZHMMvPNs+i+hmn0BP1ka87mS2kWTUHiwEE1+v8ALIR1HfmUejP9sy+PNhzWRqwNdYP+ahNJwdnonJ/VanGSv4gMWJVbDzXxOgCu9LjjTjA3G/W5LkDv0c6b+K6gHA6fix3OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CdepuzD0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5627jAnB025172
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 12:59:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LsKpkDLAMavfVkGA4EX5ge2UPkqSdTkl1bx/vsyr4qs=; b=CdepuzD0byKoJmDV
	pl2GibA1mRSngF9CVs3fau2Pt4xbGnNo2fip5ojgp5OQ61e6WJttPFYiT59O2dzX
	wGLgMKBmTOHNtrp0ERosgG6qtCcXkgKYYscesGp8KZSyJlY3get3/1pDz4f1ccOC
	28mn6ltYHS5XiIVZfrd5oK256FzNC8T9qg+tvuWtnRuQEk2EBmO3odabv603gOYw
	b0yhUFwh57ylupC0IaGZ+vtraY6SJWPV2XQCErHqNzXviwjYZz22pSILm6mGF7hM
	lni3Y5S7A5j7H0bAtR556aYGCzEjqEmQ1tp1IhvPuJcMnAAL9SnTb6w1WhcXLku/
	NBmuyw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47kd64sv3x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 12:59:13 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d094e04aa4so202152385a.1
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 05:59:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751461152; x=1752065952;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LsKpkDLAMavfVkGA4EX5ge2UPkqSdTkl1bx/vsyr4qs=;
        b=FKL8DGYZJqS8EaW5lH9x8Eek6zZqId9vOcdSroLTo8xDMqMToOS1L92YwcZZ2cwDuM
         SGmTOHBaTQu4nZKXYIiy0Mh2eNK5aYnTpwfcjBFnJpw+7EItmr6xbw/CGPBNrzT1mqCq
         v3/LqvLH/lnQwc5LJZT1dyENShN+bhoqV7y8k5DpFgmg+VtRefqVlRyvsF7tuFx0vreI
         Q6I9X8GvTYRbpXHzX9XV0uwdpR06CtFL6I4wd/PHbnDg6tU/2K60dWjva69Ozqx2mqYW
         KyQLlVL2S/JYlKsnP1pAVbncqkBVleBV9lOjpMVgJ5YsHUbifjRrdJ+Tda+a1EMZy4m5
         Ca+g==
X-Forwarded-Encrypted: i=1; AJvYcCULxBa7Whu1w6Hm9EdzBKE+Lq0/N2ntvv/qes1PYWvUKdnb3v3GDu3Owb2fWfdir/VYrf5+sJrGCJt4@vger.kernel.org
X-Gm-Message-State: AOJu0YzKG5001BEWSGuUO2/pIC8mEM8WTmY5x36HpogSosI4ayvIsdca
	lUMwr2pIDr4nxJL00TwUjAIMg/fn6uu7TEColE+6CWiB1FBfDo4pPrw6GKzqBxPJkTW2ay6+e9H
	C+M+V05V2HTZTH1k4IvI2lRPoV4Snl4h+3E6Rct9OMEtXnryZjfj+oVlEYTaGt7RN
X-Gm-Gg: ASbGnctzdHR4ZgqVZZzbufce9/JJCBIBubaAQEyln2RcG3lErb3t22SyMAOUs0Av9i+
	jFGb++tzDFnNOuwo8WXD2fggujvAsFgB9vbToxya6SPOcxkEB+VIK//OHaYvYWlLERWlMiFACRl
	hGfwmfSUIuv+zVbubJm039Pv/ilbujmXFv5JTBfoDHOree4zXm32cSI8/0/JSxUK7Um/jY/hEfU
	eC3NlvsZUo7hV/qqgPdMVu0Q5FsmYNHifrWKg4k/qtdPoeosO3axMWpUEUrIEsBVuY9EiFlmXMo
	X8TDbAv+7cfj1/eD/yJ8B/Qy7F50UCM/I2ohjGiGU/t0YG7TGPrDjwyWGa9LULl03slze91CDFj
	OVOo=
X-Received: by 2002:a05:620a:27d3:b0:7d4:4a59:6e8f with SMTP id af79cd13be357-7d5c47c0546mr131566785a.15.1751461152335;
        Wed, 02 Jul 2025 05:59:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsX/0Bu7XtnAsaaKViVrxiXzcVHQFpim64YsBpD1vejdKhImPsxlIZwN+Qtm3R+kpBL59M9Q==
X-Received: by 2002:a05:620a:27d3:b0:7d4:4a59:6e8f with SMTP id af79cd13be357-7d5c47c0546mr131565385a.15.1751461151853;
        Wed, 02 Jul 2025 05:59:11 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c6bb5csm1067844166b.112.2025.07.02.05.59.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 05:59:11 -0700 (PDT)
Message-ID: <96073931-644c-4d77-9c61-45ec65adf928@oss.qualcomm.com>
Date: Wed, 2 Jul 2025 14:59:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] arm64: dts: qcom: ipq6018: Add the IMEM node
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com>
 <20250702-imem-v1-3-12d49b1ceff0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250702-imem-v1-3-12d49b1ceff0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Z+PsHGRA c=1 sm=1 tr=0 ts=68652d21 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=o4o9nyK-Q1O9M6IKefoA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDEwNCBTYWx0ZWRfX5BwkRIXAJmQv
 wiKmRNjUfiZSYoCEuXOPb+eRvWNLxrSDx9qLfJJVin6l8wp3sthBeT2RGoqhRt9Pr4fPu8YEN+c
 mjdzp3adYYCioZfKRgJZ50F3QEAQGmL1y2LB7t8QFHs0etqadtnXrir4O+5F1uhHAdmirx1useY
 XomPnvICqSAKe/ENucd5g/vjyT5ygwYSZPU1gPMnDzdw8dPeHfxm0blSg+8ymUcdltf0SaNP+K+
 YLL4t62cg1pRW68SXB9SISp2mGPsFzlBAi6YyuaN4E9KXb0/ZAEJMzUGURN+JKMVCcx8CEQWONy
 ZpJP449IGPfrsYOcdMmqGDwsbzr91pd6p6nIQvrWEGUvxb4+A9Cat7lpnt+OQnRXQjWCm6a3PlK
 +CPQ0Zo3w07rojNXFdD1eea/qH00zK+kgP2nxj24Keyx2ucv15WG0oW4X72C3kHpV/LNmdM1
X-Proofpoint-GUID: dstNBIWhyX-1-XeuKqWvFVlUvelaB7UW
X-Proofpoint-ORIG-GUID: dstNBIWhyX-1-XeuKqWvFVlUvelaB7UW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_01,2025-07-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 mlxlogscore=843
 spamscore=0 adultscore=0 mlxscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507020104

On 7/2/25 12:17 PM, Kathiravan Thirumoorthy wrote:
> Add the IMEM node to the device tree to extract debugging information
> like system restart reason, which is populated via IMEM. Define the
> IMEM region to enable this functionality.
> 
> As described, overall IMEM region is approximately 32KB but only initial
> 4KB is accessible by all masters in the SoC.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> index bfe59b0208415902c69fd0c0c7565d97997d4207..7eca5ba416c2ef5ef1c4e0eb4f58f1ca94fc92f0 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -659,6 +659,15 @@ qpic_nand: nand-controller@79b0000 {
>  			status = "disabled";
>  		};
>  
> +		sram@8600000 {
> +			compatible = "qcom,ipq6018-imem", "syscon", "simple-mfd";
> +			reg = <0 0x08600000 0 0x7fff>;
> +			ranges = <0 0 0x08600000 0x7fff>;

I firmly believe there's an off-by-one in the docs and there
isn't an odd number of bytes reserved in the hw

Konrad

