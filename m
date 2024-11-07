Return-Path: <devicetree+bounces-119998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 073FF9C10CF
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 22:15:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B23B01F2111C
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 21:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81888217F2B;
	Thu,  7 Nov 2024 21:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bedw1BaL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97392170A0
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 21:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731014139; cv=none; b=ZOFTY54RXRwNGAi/6GD0yC3vjG+CWSBEBGzQg2yKFUwUVFxDJqeKoQ/hcSOGutseFPwt7DXRRYG90G9d8p1lu3OSts0ULVwCwpN6To8AliWq8GYw4lEeBJ6cGsVM0JapL/LHmO6W1jq68s19VKfaIQdQl+5CiU1Po741B5tnC34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731014139; c=relaxed/simple;
	bh=XRu5QlW1DxXfBAH4Som7tZVhSGLNAuYFwG4msSvv/QA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rb4bzYAXYb5VBUd3HZqP0FXZOMWeLp1EnKSVS5OxBy2G2Ri1Wugnv22IiARQDHEyIP5fM3ubxQM1w7/OsZ/1ZZ0vOP32CaIbAxfQmvgB1D7Xf2XspX4/gg4XEFfmXaAkxAnlDL97UICK4qAthUB75K6zPo3QZEBOcwHJ3uvbpXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bedw1BaL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A7HLfRd010293
	for <devicetree@vger.kernel.org>; Thu, 7 Nov 2024 21:15:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VKM1zK2ii29FqvPvJzM5Gan04RXe51wyQtnnHJkFK6U=; b=bedw1BaLo/eKt8zo
	IJZAQaStYpiEEPbaXAR67LDF1p/mpgMhwjxpzmH16CEpU+xjRIVe02uQCghpMVbP
	ShhmY78xuk03gNn9h+TYZmcFJV9n3des9Hkw1+ydtm0YXibAyoNGkl0dccEislx9
	s4vtKZdqYHKU3cU3NHrNI4f0cG5GrdIWGV0ZqQlGEeyq5bJccqaaTLvZshQ+qDO/
	Uag5rslad0ueBLgbK6fUnZ0kPbMUYNwvzY7GQRrXVtfdO3yA+R0/eVf3TEPI7WUH
	xPNtnqoVdJ32qN9Cfh40AUdTfecn0C5TewmqtB+qCak+1W5WtcmxovbFu/j1TBB+
	6f047A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42qfdx8we9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 07 Nov 2024 21:15:37 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4608a761cb2so2992721cf.3
        for <devicetree@vger.kernel.org>; Thu, 07 Nov 2024 13:15:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731014136; x=1731618936;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VKM1zK2ii29FqvPvJzM5Gan04RXe51wyQtnnHJkFK6U=;
        b=qOX/XubQnhma4sOxcwFI2t49676Lo5bl4ttvH94qiSS24UvaaAr12l3eF1zcH1URTI
         cbjHiGvGy/44DFOJ9pGfGAFoAwVjXblY1FP4kTSyvFCX4V5ZtHlkfGpyCn1HipfnGojJ
         OO7RNHSQPLFOGzRxK6LlqxU0gWizZuv2UXL300s8wSTzOwpI+0Ra/ZVXfl0/nbvg7c6L
         DcjvdXLj6/mSCu9cFw7BMkVv0KmTSHOWRrBWqHjdIpxoCvc7/u3X5yvxzPZ08yeYK1hp
         tJ7mpIUPogjA9eQVIwzfImvlPGaVWz/22hZtImEuu4HuE6hOgxdqimZQ8rGIgYYm0we+
         6HEw==
X-Forwarded-Encrypted: i=1; AJvYcCXFzYid+bRWa8CiHPtK2YpI7pj2HRSA8gcDnzEA/COKk5W4iTQ6dBSJ9Uv0lN8Tz1kFOS0I7sRkW45p@vger.kernel.org
X-Gm-Message-State: AOJu0Yzoic1ONkOaavJWAUJMPFYwRfD4NC8BETf7Zk2g/Y0+4GCi2huH
	0AKQOiITwmoPXwbfoQPkT61B39k0pTYRZllty65ivefkLjPKHisJncbKKtx1H3F4NUTo10PeThX
	5NanTToG9dHKL+pR0FRAchyK0QHocDVTwqGTUloOmnOz5zClT9WX4gr/yWL2N
X-Received: by 2002:a05:620a:4050:b0:7af:cb6b:b506 with SMTP id af79cd13be357-7b331e514ecmr30196585a.10.1731014135743;
        Thu, 07 Nov 2024 13:15:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGXWaiqCqToM/gEdPuTJSOYLz+MK8lggTS50jQjGZS4x6LJIGT2Jt5i514hJvZ3bh+d6tN12w==
X-Received: by 2002:a05:620a:4050:b0:7af:cb6b:b506 with SMTP id af79cd13be357-7b331e514ecmr30195585a.10.1731014135319;
        Thu, 07 Nov 2024 13:15:35 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0e2f4a6sm144093766b.199.2024.11.07.13.15.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2024 13:15:34 -0800 (PST)
Message-ID: <b22836bb-4fa2-4605-86ca-c3cb83560292@oss.qualcomm.com>
Date: Thu, 7 Nov 2024 22:15:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: Use valid node names for GPI
 DMAs
To: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Viken Dadhaniya <quic_vdadhani@quicinc.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        kernel test robot <lkp@intel.com>
References: <20241107-topic-sa8775_dma-v1-1-eb633e07b007@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241107-topic-sa8775_dma-v1-1-eb633e07b007@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: g7KqxEfuRcTRVoq-3RgE6WCQDCtnI0Zg
X-Proofpoint-ORIG-GUID: g7KqxEfuRcTRVoq-3RgE6WCQDCtnI0Zg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 mlxscore=0 bulkscore=0 spamscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411070166

On 7.11.2024 10:14 PM, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> As pointed out by Intel's robot, the node name doesn't adhere to
> dt-bindings.
> 
> Fix errors like this one:
> 
> qcs9100-ride.dtb: qcom,gpi-dma@800000: $nodename:0: 'qcom,gpi-dma@800000' does not match '^dma-controller(@.*)?$'
> 
> Fixes: 34d17ccb5db8 ("arm64: dts: qcom: sa8775p: Add GPI configuration")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202411080206.vFLRjIBZ-lkp@intel.com/
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 9f315a51a7c14cd4116ec5a66a60285361d343f1..ebfa049515c63a0f1a333315dd370e6f78501129 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -854,7 +854,7 @@ ipcc: mailbox@408000 {
>  			#mbox-cells = <2>;
>  		};
>  
> -		gpi_dma2: qcom,gpi-dma@800000  {
> +		gpi_dma2: dma-controller@800000  {
>  			compatible = "qcom,sm6350-gpi-dma";

Now that I sent it, this also doesn't look right..

Konrad

