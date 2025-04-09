Return-Path: <devicetree+bounces-164966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 435B1A83095
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 21:31:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A85174A1998
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 19:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A6241C5F23;
	Wed,  9 Apr 2025 19:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ik/xfEBw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A13CA1F8743
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 19:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744227074; cv=none; b=NoarHK6O2gd8SjcfCAOCN1cmV5VbezdYqQZqJNHCzkEhuQc1ta7KIf59SgRYUeJg8PDj15uSp2NjcsF+XMJp7gOoXP/rviqmfaT42oyLV3vT03gAsk4p+u8bkWLWquX/xauE0lJpyeN6spJh7J2rKRQJcw4vyJ/453Oo9yBVG2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744227074; c=relaxed/simple;
	bh=3h2o48w0QjOK4ZeGT9FMMoj4ho63MyVRsU5z0hBWp/o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dgjM70O1WmZSNfN8rKKc1k2kvMEqdEtti5Zicq8u5otrI7dEkZ9vcEvJJjR5+6UiG02EPNu71S7SQUL45qBLak0Mo6jazidOc+q0YGzEs6xfwD60JKXtLH4UZVY/9Deh9WAbMrTGyXD8H7HGrikbjd45AX1ljPHGEi+JDOdv5fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ik/xfEBw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539IBnDM015752
	for <devicetree@vger.kernel.org>; Wed, 9 Apr 2025 19:31:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	10ynH9XRCJ86PYB1I7aS6LqVmbsLmtnJe9E3XkJ/SOw=; b=Ik/xfEBw6FirLzxm
	2ll0LrlaShaPzjzPACGOnomHswT9nQ593DQ8CddiJMhrUecvhHHwRRNflKyD9Wd8
	Iyr2umpXrFSbN6OH0UdouTlisTA/UaGzN99rr33ZpTfeMhQi8hjhncShba2tObFK
	ZT3dHj3JTO6XGboJqlMVAPg+slroAl4JQChb7UuzyQuTOlyM35HJZTDf/Y/q+YHY
	cAwY62S760IWTdoXFQyOCGbdGSq7R9d3IVOrWwbJGipFfEnQi6Grwp+Q3xWCm3hn
	sCNSe/C+cy8Gz6e37FG1kFQETYJu6llxsqUstosIO8RFQ+uggd8EtDivb1cq8iLK
	dGoHTg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd2vh69-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 19:31:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c54788bdf7so1156285a.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 12:31:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744227069; x=1744831869;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=10ynH9XRCJ86PYB1I7aS6LqVmbsLmtnJe9E3XkJ/SOw=;
        b=glVHQxJd3d8rrIANuSk/zfg+bOmlwZTXIrigtMNuTCq4Ec2C2GwFDRipqOpDRpNSyf
         TQi+HlGhRXRls2XOG1mEzH7Ao17dnfZLc+Sg/sjF9hY2HlIp7PaOeApxJfDdosOxRTLF
         NscuqggoTOl8ohAycUdiY9J6nsMCoL4uGZmVpwDZETciS+0Sr8QI3HQI8zi0HIJk5+LL
         Ee+5qq3qHUhbEaj8ZgjIjdVdwJ9kyyp/LSEUOmfDgHSs/YuVoUu45vn5aVgBFmfZ832l
         ZJc5YVgaQou6GXfAj1h3/KZ//lMCFBklb/TGdEfsvPnl8CErH8r5lyTYVaiK+kXO7Wmz
         la2A==
X-Forwarded-Encrypted: i=1; AJvYcCV7rRIttUNyj8Yg7TQIJZC/QGEmGvJMkbnPmjzfqLChpRHrvv8yDyFgw60o5NxJXonz3B0kPFELQSkS@vger.kernel.org
X-Gm-Message-State: AOJu0YyrIHtgsqhQoA5xNiPHrLxxanKLel6q+zKl57obMIZLQWaI7ipG
	EWon/yODpFGO8xSewpYU/CHqRVDwLgJ65uc2kOYruOf8z3+PP6tF3ZXBrbs+PHb4QbjFKUcXM8w
	DlSU6r5Nf5mhY8J+MWOvq8o7lhxruvbSukGnFLaE0sgIzTW6JIktaxgMLa7DqSQx0AV9n
X-Gm-Gg: ASbGncu1sRFAGWRzFBfREM6/mD+iShWMoY0CaI/5Luir+hDcbE3Lg17WcND7d/+mFEu
	hDHH0shBJAhpr6uc11aaDR6KgCwq2mkHJ02Kb67DZONISnzmMfHItp1by3PqW1ScGSfuEF6X0oA
	52V/OfBk+FlNR4wXL53h9UA3KOaZ+J9u5xfb581y3yr0vOCXarNLZndHdSjYrslTgr/GVV/KpRn
	vkIwQ6hhiF1PbMCs5yZqWJuz6IBiNuJEJDjD72D5IRgFHChNVGq6r0JX313LA3rjVWwvzTB5VfY
	hLqu4/we/8VVugoDNuMiWMfto2ZvlOc1rWSdPzUYk/JD9z+Ea9445dkzqPCJ258LTA==
X-Received: by 2002:a05:620a:430e:b0:7c5:e283:7d0f with SMTP id af79cd13be357-7c79cbec03dmr237798885a.8.1744227069295;
        Wed, 09 Apr 2025 12:31:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGdZkJ3uyM1k6il1QQ4tZzm6Kb6iei6rLgcgi9hbyDE+GWGGvqjoDJjonneM8n5/WqFQGtLg==
X-Received: by 2002:a05:620a:430e:b0:7c5:e283:7d0f with SMTP id af79cd13be357-7c79cbec03dmr237796685a.8.1744227068851;
        Wed, 09 Apr 2025 12:31:08 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1bea588sm142930566b.67.2025.04.09.12.31.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 12:31:08 -0700 (PDT)
Message-ID: <2124b898-2676-4002-8688-d3e19e55e368@oss.qualcomm.com>
Date: Wed, 9 Apr 2025 21:31:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs8300-ride: enable WLAN on
 qcs8300-ride
To: Stone Zhang <quic_stonez@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_miaoqing@quicinc.com,
        quic_zhichen@quicinc.com, quic_yuzha@quicinc.com
References: <20250325075331.1662306-1-quic_stonez@quicinc.com>
 <20250325075331.1662306-3-quic_stonez@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250325075331.1662306-3-quic_stonez@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Xv7rmIWu-UjsGDyt8-o-WHx83aGlMWXd
X-Proofpoint-GUID: Xv7rmIWu-UjsGDyt8-o-WHx83aGlMWXd
X-Authority-Analysis: v=2.4 cv=NaLm13D4 c=1 sm=1 tr=0 ts=67f6cafe cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=DgEYNLXXC2yaUqHi_YcA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090130

On 3/25/25 8:53 AM, Stone Zhang wrote:
> Enable WLAN on qcs8300-ride by adding a node for the PMU module
> of the WCN6855 and assigning its LDO power outputs to the existing
> WiFi module.
> 
> On the qcs8300-ride platform, the corresponding firmware and BDF
> are QCA6698AQ instead of WCN6855, which have been added in the
> 20250211 release.
> 
> Signed-off-by: Stone Zhang <quic_stonez@quicinc.com>
> ---

[...]


> +
> +	wcn6855-pmu {
> +		compatible = "qcom,wcn6855-pmu";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wlan_en_state>;

property-n
property-names

please

>  };
> @@ -406,6 +507,13 @@ ethernet0_mdio: ethernet0-mdio-pins {
>  			bias-pull-up;
>  		};
>  	};
> +
> +	wlan_en_state: wlan-en-state {
> +		pins = "gpio54";
> +		function = "gpio";
> +		output-low;
> +		bias-pull-up;

Please flip the bias and output property order to keep it consistent

Konrad

