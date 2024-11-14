Return-Path: <devicetree+bounces-121914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CE39D9C8DD4
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 16:23:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5ECE01F251B1
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 15:23:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E1AA149C53;
	Thu, 14 Nov 2024 15:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M7wqZW/x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C363D5674D
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 15:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731597792; cv=none; b=fNy9hshlMSJMA5GyDvMztnGWZHN7V1dRLN2rZXPq1CESB9ynF+cU1Nmss1t9zNQAdgEybGi2EoqE5dbKxLKfP4t8A7wHfEgXm1O9Ra/dpwSdYBXzJXUQ3I/lkRMbpK+uedRrUFCeb07UnOX+5b21w/RZy9DSFKz9E0Bzq62sxU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731597792; c=relaxed/simple;
	bh=LmhEbL/qMDKSCnT56dTopAlO031T8h0eQ0V5tMuReq4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FG2R7qX/o9aV9PJ4lt0ivDov/EvNCI5AU9eQo8jRsRwZYaMRzSZNTu4cHaVoM9w458z8g7GKU1n8BAFI7vGOg08kNIJJhYrLY5sM2WFUVEA1aIxeteghIWFAxtZwQ8jzWcL2z+H/1ATELvYREhJ9b6RRC5gmi91tLF+g2TVdGP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M7wqZW/x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AEE8ple014904
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 15:23:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rQnMjp8mxV+2OTdSesPlve3lN9AEYsRk6wA4G5TWLRA=; b=M7wqZW/xXNSADYQ0
	plqH9OHT6gUXHt4xNYeIHBPF4QJZGognAykag4SyQ1uSyGspso+j1xEJw/ywf8JH
	AlpszdIP0FSH29NXzHsoc740jmsrXkTjocOAilkWfI9b8xj+7NwEQ2Hd9hCpPydJ
	/g2IGkfM3MkzreWNHSFn76ZdHBusfPqHQ7YMskynnAaJTyZSDPSBxT12sBagKcvI
	nRxmyfpcI5oYFabWRj/TWxf2o3YjTsXTrLUojPpLNDWhTHomCCWSk6CTJZaef5bf
	iByyCgGv3mbzmIwI4EXPsWmhFRrJ9V+7h+/XZZN+iOFriIYBenZuj/eFfbQ1uyvb
	RA7bjw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42wjqag5t0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 15:23:09 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-46086de3a40so1685661cf.3
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 07:23:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731597789; x=1732202589;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rQnMjp8mxV+2OTdSesPlve3lN9AEYsRk6wA4G5TWLRA=;
        b=WA8g/ZGet3LzfcQs/KqVVwSX05qSjKvEKwENXkFOJ+9J/igmvWFm/UJ+zx/MdHvJF1
         5Oz1RtdbJrJQqdu/q1zOw0YiejRClNGHmtBOrXezR70l4j1UlhlY+rA0Etot2dBYvEwd
         IAvUqBbkbpk4D38CK/ILshGjU94KCZqSwYcGBO3Pg6hBh6+EeUSGteIQswVP3i26osQC
         Vw27P/JEz5M0YrP/3ii3zl6fH/Gz/ZIbZKjDnfOqBp1ZMcvqrXT+6dZ8zybSQopOUG54
         mdFqm+zLILvuVmsxHSZ5FiKdgCF1rkXT/i7vCJLryJ+pMKGuWMijspLUjFqqdBLZFXSU
         B67A==
X-Forwarded-Encrypted: i=1; AJvYcCVOmq2ZsdLoEYmEXViavs1ccdmsMiY6PgfxNV35p3Lnm/yn4cu4b07b+m0AJpdjh7aQjQoosBJWIyhj@vger.kernel.org
X-Gm-Message-State: AOJu0Yz06xaWEyHihlBGZN8+ZknPDVWyHTkra6gi1qjR+DphtVq+/nfp
	KE5PmYT7m9U55GrPtwG6RRj338IdigbH6oucKuBBbpGsp+aA30TAO//6GFhaN6ltsFJJ7xwIJcB
	L/dm0pBtw94e4t0d19YtxypJEFKRWqja1UwZO0UXAX+wAeuA1mWzAts5F0PZS
X-Gm-Gg: ASbGncvVxDCkWPyPkOAsBxxBNoiiGuI7WPCJpp4oBs7Tq148VeAU0u5fZ88emMy0Ke6
	khtOWB2RN4YvhK1ofWnBzRF0EReil4NU2RhfcM9c8NWY7xwzJGwdmlidz+apAjsF/jmcrHwOJDG
	aahhCjz0NYwUpkAmFOu7J/ZUG9gAJvjMhl9WLK57cp8v26LBH0QN6mFwo55YoTjngwIiSrILp0H
	G0QTZPfVQTIvjes8+PJpA5cOXqqQQj0igDF3/r5wlUwwhPmnCO6IyHtKvdJ4oHYYdFthJWprZys
	ZmNgd299Jrbx0a5FW/Y5+JWTe2Hplik=
X-Received: by 2002:a05:622a:1a1e:b0:461:416c:9016 with SMTP id d75a77b69052e-4630932c520mr151011941cf.4.1731597788850;
        Thu, 14 Nov 2024 07:23:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGExCHAAbEs7PoNio0JBCDv2d20HCqDgw/0DntQ4M27C3Gx1snBWeoq54RgVmVKhcnv+y31yw==
X-Received: by 2002:a05:622a:1a1e:b0:461:416c:9016 with SMTP id d75a77b69052e-4630932c520mr151011681cf.4.1731597788414;
        Thu, 14 Nov 2024 07:23:08 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20e046891sm72766366b.171.2024.11.14.07.23.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 07:23:08 -0800 (PST)
Message-ID: <8499070c-311b-4e05-abb1-43f3dafa3cee@oss.qualcomm.com>
Date: Thu, 14 Nov 2024 16:23:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs8300: enable the inline crypto
 engine
To: Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241113043351.2889027-1-quic_yrangana@quicinc.com>
 <20241113043351.2889027-3-quic_yrangana@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241113043351.2889027-3-quic_yrangana@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: AnOVqYHodGqORBHz3n18jZXL_lA8bpYh
X-Proofpoint-ORIG-GUID: AnOVqYHodGqORBHz3n18jZXL_lA8bpYh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 adultscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 mlxscore=0 mlxlogscore=937 bulkscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411140120

On 13.11.2024 5:33 AM, Yuvaraj Ranganathan wrote:
> Add an ICE node to qcs8300 SoC description and enable it by adding a
> phandle to the UFS node.
> 
> Signed-off-by: Yuvaraj Ranganathan <quic_yrangana@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 2c35f96c3f28..2d6ce6014329 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -685,6 +685,7 @@ &mc_virt SLAVE_EBI1 0>,
>  					<0 0>,
>  					<0 0>,
>  					<0 0>;
> +			qcom,ice = <&ice>;
>  			status = "disabled";
>  		};
>  
> @@ -710,6 +711,13 @@ ufs_mem_phy: phy@1d87000 {
>  			status = "disabled";
>  		};
>  
> +		ice: crypto@1d88000 {
> +			compatible = "qcom,qcs8300-inline-crypto-engine",
> +				     "qcom,inline-crypto-engine";
> +			reg = <0x0 0x01d88000 0x0 0x8000>;

This should be a big longer

Konrad

