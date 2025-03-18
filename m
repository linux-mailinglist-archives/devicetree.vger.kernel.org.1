Return-Path: <devicetree+bounces-158625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60808A67846
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 16:49:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C8FF3A6A42
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 15:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 700BE20E03F;
	Tue, 18 Mar 2025 15:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fhFLBSaf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E309F18E25
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 15:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742312942; cv=none; b=PdDedvGb+ypkgFxpCFeElTW8F4RNJbSq7XW1Uh/7uI8/bOq5Yl9hJrmtsadan9NyPlTBanG5f/DQOCGAwWM53YTBCre5suIn8JCixYO3w4trnU+JcswctO1GxfDto/lYpvOfetDEkLbGuwotlGY/2DZWACfz0YfgzWWNhnwJ6Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742312942; c=relaxed/simple;
	bh=h1jenkXf95esZ6QqVx1F1ZIu5hxsS3kZ7mb+dqJgPw8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s3/Oe8z8p/aS4tYEDcyyvTtSvvUpEpIA+anKlNZfDYn722X9SO+J+n78vHLGo1jXEJbn6cZ8/gUVWuEHDNd1+a3MXWBNpbGWBy04Jfxx57fvAYYSku8Khy4Mj5FYPdItrEl7fae8JA9uZ7R4HUQGbeSBH3x/s8AcIKZDJknXm5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fhFLBSaf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52I96gE9028438
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 15:48:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IKMVTPENSng762yHHJs+xfYo/tESVLxHfoN7MYRQ4G4=; b=fhFLBSafPMXWAzjl
	wewrWxUNqqW8OVqcl9loJv3CH18a0G4JSnOVC4jnY/gxzz2xUNggWaF8azNolue1
	hBSWEAXVoPWPHrfmKDEQ5G07jO+cm1Rh0IJy537G1Rj7KsBKQCwkuJYvsxoxrGsx
	A3Gk+HTelEi/t7GUjc1J16nmJ2Y/kEAKCe4xW/+40j38kjsQfBW0IbmBlh75FNXR
	/nYeBEqbt+4dNqKlr0RHsfR/CGiqcoWWitJtJ2SagAOjp/pEbjNEyHnfAkFkFMC8
	HLfLj/SEhtZZZ4H6HlPC0Wf6yyy2ay59Sp1voa2wdi/ulJOJy8yLhs/qlKg/ST3C
	7HqoNw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1uu0qct-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 15:48:59 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4766ce9a08cso12412111cf.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 08:48:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742312939; x=1742917739;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IKMVTPENSng762yHHJs+xfYo/tESVLxHfoN7MYRQ4G4=;
        b=TV494Ce7uGcYH5uPAAJ6F5fuq1ExTq7tb/PCgFqs/SmkSgUYhOvhFw1Qs4Scmz8m/1
         vUq2PVp6f3wkOfm0qogdkI157i2noAUD+EfgY1/gtBjfJPBde5wumfiF6Wd0Ez9FoJco
         dgG3vKFrYTpuHWeE9hpVRJP9gg+8BiPYUhUXZLhGpn/eaOJo3FMJ3l658V9aBQUkxQSo
         BBHTnBqE+AHUKqHBEMxWguynEtRUiZmBjOZTRM1ICIPJ9YMsmoIwCFa7ZzqJt8pZg9e9
         r3TxiWO9ZrYNm/9NJtTiKah77f2dq7EC4ZX425saZLKiGSHw80IvJ07rUmedxVijPEQ/
         vJbA==
X-Forwarded-Encrypted: i=1; AJvYcCXlnAasQS81ekSKkzhpoLYxVawyWnxZn/tXkusBDoB7LuKvt5Q7Sp0GYblv7e+wVrniOYsjIy9tYxh0@vger.kernel.org
X-Gm-Message-State: AOJu0YxHaEfXkSPo0j6cJezl4aTftsWGIRfXma/a+z/WGJiuJvz2lHd2
	oLnzllKIm38vZrKZM86XIxsTnouQifib/3KpSAROa9YIt//zfYmj0tCYvkZ5DcJiM5ffDXW+b4U
	mtkakne29li0xdHIev665OaapppF18dgHfKHoZukas0Y3COjSkZuqrdqX8huw
X-Gm-Gg: ASbGncvbezAiJDKXb+ZKb/f+Dc9RbJ/x9FT+yFkWKyX55JrqWMylcNwz6XiplmkSlTN
	Iu8VmiNBObXCzuPQ1nVjJxenHtUHao3mmP2CvlgTIiAvCJ0l2rHpQ0iD+Op0xKX/9Xecp8svYEo
	oUxmDBTWS8zUnz2D0Gy0ivPjjG+ME2k7u7TeWZncNLcOn5cx+M1nHchZNQ2I1xqtP0TXKvh/bo0
	c7il9ddE4j0u1Kxa3vrs3F7Qbjd8t4h5ELPQq+Lpt7lnUkaAUXgNFwnQqa3DLTypPyEhP9eixHV
	usPRdEvEfnTgFEwrCPXaeRGgB2czGNtGfeHmB3fnujpKz5m927X2uzw3yxHfwqQOEhfvkA==
X-Received: by 2002:a05:622a:41ca:b0:475:1c59:1748 with SMTP id d75a77b69052e-476c81d1a3dmr73974891cf.11.1742312938930;
        Tue, 18 Mar 2025 08:48:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7ZfeqpEEqqpJKymon80A8Jodw7OTnAYGkfESIKvkTrqcTvQIaFphy9Tjh6D1xxnTVZ928xw==
X-Received: by 2002:a05:622a:41ca:b0:475:1c59:1748 with SMTP id d75a77b69052e-476c81d1a3dmr73974761cf.11.1742312938601;
        Tue, 18 Mar 2025 08:48:58 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac314a49c37sm866723066b.158.2025.03.18.08.48.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 08:48:58 -0700 (PDT)
Message-ID: <a70f8807-510d-4677-8210-3b283c00a52a@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 16:48:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: qcs8300: add a PCIe port for
 WLAN
To: Stone Zhang <quic_stonez@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_miaoqing@quicinc.com,
        quic_zhichen@quicinc.com, quic_yuzha@quicinc.com
References: <20250318093350.2682132-1-quic_stonez@quicinc.com>
 <20250318093350.2682132-2-quic_stonez@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250318093350.2682132-2-quic_stonez@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H8Pbw/Yi c=1 sm=1 tr=0 ts=67d995eb cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=TBYT5JYlgfXD-NVwRcIA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: TPCeufywOq8L4hGL5L0AxrboBz3xOiS0
X-Proofpoint-ORIG-GUID: TPCeufywOq8L4hGL5L0AxrboBz3xOiS0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0 priorityscore=1501
 mlxscore=0 suspectscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180116

On 3/18/25 10:33 AM, Stone Zhang wrote:
> Add an original PCIe port for WLAN. This port will be
> referenced and supplemented by specific WLAN devices.
> 
> Signed-off-by: Stone Zhang <quic_stonez@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 8c141f0b414c..e25223d5be5e 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -2091,6 +2091,15 @@ opp-32000000 {
>  					opp-peak-kBps = <3938000 1>;
>  				};
>  			};
> +
> +			pcieport0: pcie@0 {

Because there's two PCIe hosts on this platform, please rename this global
symbol to pcie0_port0.

Konrad

