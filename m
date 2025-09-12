Return-Path: <devicetree+bounces-216389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EB254B549F2
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:35:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F14C171D18
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:35:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D028F2EC09C;
	Fri, 12 Sep 2025 10:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iAaTSjso"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A232EACEF
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757673334; cv=none; b=T5wFYWB8nfHo9JtihJPRdanqoORHxIYSe8jn3vguLvDZY4wFC/RKYLc/2F6+y6zfCI5GdQor2aVl/yPqw9/afrFzqFDnVj4jCJYd6SN9LGjuUp40hFLbvh5QzpgvcjNRpoKWh41Sc5p/tM5qglVHfXaShp/jKRrDZJQThsjLPlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757673334; c=relaxed/simple;
	bh=F2J/WOMUIDKt0odwsujIr9y4bdRgOyT0k3wbiJ4PmnE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NF7+mzLHbseoOS421eeIptP3506x5kbu5TGhPiy78MYkftl9ql77BtXwIH9EgJKyj+8mjPeUst1JDpmlyAN93SnBThZIICDGVingB2ltv3q+Jc/8Nyaha2e94dUGXPnE6GtnYV1cmc1dD51s6EEDIcGtasHrkegtpLefZjbKOBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iAaTSjso; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fDqf017429
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:35:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eO/e+l/CKShPfSEcMaT0/WcOzQwZszBr5+oyAnsYffU=; b=iAaTSjsoQl2M7MbT
	x+OZy9YORdZ1DTrBo7kMyQVQUDWHAsM9D64LbmKYdQb5E2K8f7lUG3B8YTzBeJ8E
	lpAfzaS7TvnFIGSOcco6XSPUaZ7d2lgH1ApIJiuoRmyZt4nC+Ijz/NYNJBEEB9zH
	fncLyDnSSsgYr7ADor3XpDr/6e/EvhXap6SYT4xKNyOu+5XlerV+qHDhy+e8Uoyh
	tpfgmx4cQ+YQyAeKxR//RPBFL7Mv7CWXX7V9bGP8WLgLEfu1hS6FFpfe8Q51QOvN
	BDhhZT8L9vToyfTywV+abR844WnI9Qnr86BslZSgEpTzWEr5lD8hvJjUAhEma0dw
	2Fa9Wg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8u8r7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:35:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-813dff9671fso47930885a.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 03:35:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757673330; x=1758278130;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eO/e+l/CKShPfSEcMaT0/WcOzQwZszBr5+oyAnsYffU=;
        b=iZem40MojKFoBcZjXaNE2YHDkBe3i7bK9JXPavNsbSOKm+arntSdE8sx8EANuTBhHm
         WDozGZOfaazrt7Z2h/cSL7k+aerZoTteTGKvTXvYe8IhJ5XAc+cfpULHO5NBOWdwT+d8
         z9J2XAan0Y/rdmDphDXN8mruXSaWL1QKZPLQLXW1OktQBp1bK43tsQF8PL7Zumw0KelC
         qj5KdektPrgJ97WcQ/DBIuVxJ/k/dC0z5mjm4qSkSd2aadznrj5Q3XZ9VQcOdfomjkjj
         ZqbM1qsdZG4Gxr1/iAbPdxsb3aMWdk3R0en3X5S1za9/f4YQYcC7dO9RQ/lkdl12x71E
         4cag==
X-Forwarded-Encrypted: i=1; AJvYcCXFeXkto1YTUTwCMN0iFq/GM1KQneE8ftzrz+630uppIX+iZl1D50DL+/kJPp1ahD9PBepfh3gD3Tuf@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3Q8mMS4J9RXleYQyUWiMwi/Xo0TzqbhE+HOvrTGIhYLaUrYiM
	XP2zdPklk0MHg6ColI91c8OU9zYDvZdOX/Uy3paxGxQ1urDDx1loiy6rUtmmXWUfYAwMri3rlbn
	iW2Z7vAXuTHmkBC2QRL8wb3yPl26N0d1r9JIE96cgRRUEWlHkPTNf7MWjIIeNf1GC4mSOFduL
X-Gm-Gg: ASbGncvNMWZIyQylaNXsA6Kma5LUAHFFQ2w9FLoMXAl59UeI+POj3mKen4ri3IwrFO4
	Oi7PBSKTZFiVAPhcbUvvT/B0CJguseyEw1jJfQ9ve8ECHSXo2HX0UAjz3DhhgRKOyNvH6vLUsAR
	jsDtBQwnVxoZtBe2C08BV1a/ZFVwWIImvtxXkBM2UymMtR3p7vFuPNrMHX1ctacK4u6DFV/70s3
	IW7NXDfo6xwBgC5hzHj13XRCcAvuMBPmo2LRp4CkXbHWelE90H5vxk+eQFe5aDYsGKG5SSVvck8
	//zmMW7UQgMRFkzGwIAoqiNH7vp/nb9tqQ3p/uKUrjlzAKhM6B7d+gfgAqmsKjotxMLJouQoJZu
	dnMvn70R6SytzJoa60neKcA==
X-Received: by 2002:ac8:5f8f:0:b0:4b4:907a:f4dc with SMTP id d75a77b69052e-4b77d0663admr18554411cf.8.1757673329618;
        Fri, 12 Sep 2025 03:35:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfE9aSX5jRYmSD+qAkDx8+iMqyOs0HY4gOzw34wCBSpdGtsMNfwQNLGwNQ2O+3yFtZ66JIKQ==
X-Received: by 2002:ac8:5f8f:0:b0:4b4:907a:f4dc with SMTP id d75a77b69052e-4b77d0663admr18554201cf.8.1757673329103;
        Fri, 12 Sep 2025 03:35:29 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b30da388sm344070166b.22.2025.09.12.03.35.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 03:35:28 -0700 (PDT)
Message-ID: <0f8caa5e-7d3e-43cc-9ada-612f5839b407@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 12:35:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sdm845-starqltechn: remove
 (address|size)-cells
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20250909-starqltechn-correct_max77705_nodes-v2-0-e4174d374074@gmail.com>
 <20250909-starqltechn-correct_max77705_nodes-v2-2-e4174d374074@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250909-starqltechn-correct_max77705_nodes-v2-2-e4174d374074@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfXzPdkJ3xumxFG
 9ZcWrlXTi1qLHXSwSYccazIjllVo+ixmSTgUNswu4TH8IMqav141SyCM9R7QViey6QA6AeAMsIH
 vsiDSuJiI5QbuwSyNchH/wBFDNs7gzrRf3FMCfHwZNkahgtHoO521Jia4JMO4vytE35CVX6Yetp
 YcaCuHuP2uokuF3xszPuSeKuPS0uq+5nCdxUKbQLA6ziMJr/cNlaBszCHzBmYUHF5quUXFAeDwv
 sqihoDZ9rAN1Xttl0Mt8RuLPU0/BLFtoy5y+tZ8knXT+1ytxEW8kNVs3N9g0lfA+8U0v6xFGS1/
 1QhgQeFK9WaLl8v5xTarB3PNWAL4AXQvPXS1YHzAT0pDvivvmyZYj2qTqA3us04G7tGqa7qpOq3
 frpiPDqX
X-Proofpoint-ORIG-GUID: YlNmjjshuiVkIDPVS0JKyymWO50uj55U
X-Proofpoint-GUID: YlNmjjshuiVkIDPVS0JKyymWO50uj55U
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c3f772 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=v0bTi9dDIlVGPmSQrtoA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

On 9/9/25 9:22 PM, Dzmitry Sankouski wrote:
> Remove address-cells and size-cells because unused.

"""
Drop the unused address/size-cells properties to silence the DT
checker warning:

pmic@66 (maxim,max77705): '#address-cells', '#size-cells' do not
match any of the regexes: '^pinctrl-[0-9]+$'
"""

Konrad

> 
> Fixes: 7a88a931d095 ("arm64: dts: qcom: sdm845-starqltechn: add max77705 PMIC")
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> index 9eeb4b807465..8a1e4c76914c 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> @@ -591,8 +591,6 @@ pmic@66 {
>  		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-0 = <&pmic_int_default>;
>  		pinctrl-names = "default";
> -		#address-cells = <1>;
> -		#size-cells = <0>;
>  
>  		leds {
>  			compatible = "maxim,max77705-rgb";
> 

