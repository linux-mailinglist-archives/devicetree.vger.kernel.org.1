Return-Path: <devicetree+bounces-200659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E581B15A0F
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 09:57:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4C60542272
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 07:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6AA12629D;
	Wed, 30 Jul 2025 07:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cfhLaWSM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B72B290092
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 07:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753862234; cv=none; b=ZDxXFo60At+ToDS8CKMGoUOHppXTx6V7OdczcZw3MBPg9r54hgd3x6R7UraIEompZEtdcqg3mrZYmY+58/slCmLM+gKsDSdqOxdf/78ag97kv3LXhaEyfwW4WWJ0ZcaDU8tAj5zHvAREE0J3L150BOGBAzFDq7pjqAxtfQzV3yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753862234; c=relaxed/simple;
	bh=z52KxAF+x/O97zHRKFQXAXRIscKfMnmx9oJ2kW0Bv68=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rtgq2+PxkSxGDxyRopXzbEpkEPv4KVISbt/4/WxkaZJsmK/1slTswJE5JOXHiivt66v6+sONzHsXI57mLKwNcwMuRK3jJ8RlzRhv8gg1TTqbxppwOjFMIOLFUyC49PRXjNgpRCBPtQYG5fqCi822npRI5q12tgGlOLhu/JJMsUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cfhLaWSM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U4rOko031277
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 07:57:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/d5OINw4fMoJHAcwLcaP255ojHaBfh12PcSlb1H4jtQ=; b=cfhLaWSMQ1qBlJ6E
	2d5EvDhTExK8gBvCqnM0aaaH2bdbrh90wcKTGccXX4kNHYKJtbi4woowU7ePd1+G
	eQ8f2MdXRaNTZ5THqTHeTovWsdHepZh6soP3mMMcw0DRPZLuBWe1866vBY3UrG+n
	dkS29QgYCHJUsegWgdJnmKp7VIn9lLCGAiej483Era9kFl0HfhqjXNihqQTC1d75
	LGOb1W4yz1DFgdceT8CXTLQ/6xMP9kMl2BM37J+3uUyr161xnqi3Ddd9NNT2h2lk
	oBpHaXw1uEatL9UUwtR+hpMe+nHlnvZtx5y+cB/oSfPRXcccyT4SuR9R90TPN2yD
	lpmnkw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 485v1xgaxw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 07:57:12 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ab7406bfa1so16774241cf.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 00:57:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753862231; x=1754467031;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/d5OINw4fMoJHAcwLcaP255ojHaBfh12PcSlb1H4jtQ=;
        b=EZPwwC9s1AxnWNpmlo8jk6iJZFh9v2KfTvYQfH6dUvij+Mb+D6xDUC42ImqO0RgLNU
         ij6ftL1BsM3ZQyBQ9bYc77oVEUjy0ERrhwojDFf+EOH8gO8MHHC5zp/O+VEqv8sw3wGH
         PZa7R8JMSTpoDmiL4d8HSdVlFaJNr19khPaukJxAnvTJ7ojLZL5Q7/amWPpG3fT+3EZa
         COtxyguYKOi4MLiZkkVh9/ybKppfr4I2oJMhsuHFc3ct/5b5V3/VXHUbIsZU3CSbXk8h
         NCPZgOfEwaAr4jLU+64G1x9iH0dsP2JnaMCkL4/OB/TGije5N4z32ic9ZsG28BqXkXWT
         DZsQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7w/CzIX2cUfNTAFnkAZqmC3UiLbfQP1Fu4B8TKDiXRSZ1gmymKu+d9AwYkux7e1WuNmLTGvpUvjE0@vger.kernel.org
X-Gm-Message-State: AOJu0YzWrSDbAL0jXejOwnk4hFiGIAgpOxX5+19cxmiZhJItp/Jx8UJD
	oZkM5Ln9hUnvoxzmFFq8N84y0iIe/fYqAC++0t6xMviMTvwqAGwtjGkZVIt+e6fEDRqo5zbOOft
	j0753wx6vTSL1Gdg4epjDw2PmUl8rwBHdcVY0mSQZTToABXXqvDjGnNe7jk+Vsfff
X-Gm-Gg: ASbGncuIhQnHBAJaFoH/AAjV3P+yckbaAtwyM5QgvcLNQo0tZR01CcvS5Ats0MIeA+Y
	FJYoMexYiOsXAj1xBJ1UU8H+YTherBByJ68QHaTZkaBFSrL6sk9OwoTWAlo8Eb8LbhGqa025GG0
	Br85QAH4xFdRPLG0j3MJAwZ8yd0MPZ5gRq9meOn/GtxP2Au0voIL/cMdGjmejY9E7W36pbdi5cT
	xaXShg2jj/H1lWQSGyHhoFI8AhbCYJuJFf/EpJcaweG5nQELGXn59hdesK7wE/GHe5agIsgc1ly
	5IEv737/WPVMuVqa+EBhkSmGdBe7vsvGtLxPzgkrHfty0yedYZFjkr6JNb4co3UxrEDkYCsUtcY
	DAvcxrsovN4UVjOAeUQ==
X-Received: by 2002:a05:620a:2546:b0:7e6:3c48:408e with SMTP id af79cd13be357-7e66eec65e9mr183086785a.0.1753862231175;
        Wed, 30 Jul 2025 00:57:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTh6KlTg3RtXH/aC2W37tAq3ilcec3EinBeFv9QXPB8EzzWwkhtulFrBTpAUaqxGi2vde4Lw==
X-Received: by 2002:a05:620a:2546:b0:7e6:3c48:408e with SMTP id af79cd13be357-7e66eec65e9mr183085485a.0.1753862230722;
        Wed, 30 Jul 2025 00:57:10 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af6358a1aa1sm696596666b.36.2025.07.30.00.57.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 00:57:10 -0700 (PDT)
Message-ID: <0919ba36-27e5-43c7-bf03-46991704974a@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 09:57:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8550: Flatten the USB nodes
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250729-topic-sm8x50-usb-flatten-v1-0-4be74a629136@linaro.org>
 <20250729-topic-sm8x50-usb-flatten-v1-1-4be74a629136@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250729-topic-sm8x50-usb-flatten-v1-1-4be74a629136@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA1NCBTYWx0ZWRfXxyw0k/Y33nXP
 aVN9I0uNAFU7evqjXBsOykz1dXpWIP6fhxXpLI9x5mn0gFUc+sMq577tnKETmwsSPNrX+WhjXt1
 xqQMRkCKR0bMBAkn52TgVQAy1cJEjueLSfDhOr31SvfNHkHZp3n6cVAv1GkarHCl3zwrlA03GaO
 3NVPiWkGhpVq3K5+8rVauV0HlPMUERwfbGEFLc4Dil4BFgPl49x+K4ndHmaYjazwnf7psUZPzKq
 U5fYpFk+2TA58bE8RAxT6tEuowrbhWAW5BTRldpLS2hKoeG4/iSQ06X+8/artLkfwTazU7BRURk
 kiACIek7EYADdCm0wYuhXdT1aCUZEbCfgR5NrfJRiWxASDJujqXBYg3sxB6gr2ud9OQQRn2oAqc
 AlFRSjMsoLJtzVlsM1isukjR93mU67YltPeiQqvh0DmnVuq7yHHyu98hQB356zP4kfuJi6F9
X-Authority-Analysis: v=2.4 cv=JKw7s9Kb c=1 sm=1 tr=0 ts=6889d058 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=cHqI4RTSPJW5vXGIaXYA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: qoFcdlDRklo1nXvFsuGqXrIC3DvwO2Vl
X-Proofpoint-GUID: qoFcdlDRklo1nXvFsuGqXrIC3DvwO2Vl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_03,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300054

On 7/29/25 4:58 PM, Neil Armstrong wrote:
> Transition the USB controllers found in the SM8550 SoC to the newly
> introduced, flattened representation of the Qualcomm USB block, i.e.
> qcom,snps-dwc3, to show the end result.
> 
> The reg and interrupts properties from the usb child node are merged
> with their counterpart in the outer node, remaining properties and child
> nodes are simply moved.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 84 ++++++++++++++++++------------------
>  1 file changed, 42 insertions(+), 42 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 45713d46f3c52487d2638b7ab194c111f58679ce..1e67b1cbdbfd1ac5478af23bf45ba45bb756ef29 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -4084,12 +4084,11 @@ usb_dp_qmpphy_dp_in: endpoint {
>  			};
>  		};
>  
> -		usb_1: usb@a6f8800 {
> -			compatible = "qcom,sm8550-dwc3", "qcom,dwc3";
> -			reg = <0x0 0x0a6f8800 0x0 0x400>;
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +		usb_1: usb@a600000 {
> +			compatible = "qcom,sm8550-dwc3", "qcom,snps-dwc3";
> +			reg = <0x0 0x0a600000 0x0 0x10000>;

sz = 0xfc_100

Konrad

