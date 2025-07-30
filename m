Return-Path: <devicetree+bounces-200660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F915B15A15
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 09:57:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7A9677A73B0
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 07:56:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 589EF291C23;
	Wed, 30 Jul 2025 07:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P2OvjWKo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32F12629D
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 07:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753862272; cv=none; b=IKCHd0cvX2+erPc+R6lBmKr1fdLMoU/ehNnBKYDaSHtUwcfk2Z76W3RVR1kxapmDf+ZrOKBOvgMRFE8dMu+VgwWXQuklOQzv/J8E+VyVZK045ndTgWlktdO3kICd8ASd2TuxwHpQgJzpG0SN3zQnjr7HIBQkLd/GX9EfEye9Hvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753862272; c=relaxed/simple;
	bh=XZ2PvbCqPh4TDubyP5ZkSEFWcWBI13qEuuuSTP3h0AM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W738lP6yNpC773P0pvjw8X6T0aG4FJQJwKZK+AOuQnvbWaHEHLWn3QmsSBjjFRdhKj2OhH4/upMTPE6PEEy9ruyrq1Ld9M2bvVjeoYEqTUW35EHk86FCi6MQyF15MfGn6EcGDjYHvaqdJutBvhMcd6q1pTab2C4iJKovLwNuNao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P2OvjWKo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U5RpcT005230
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 07:57:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bep9w9BnXdrMmlin8Bi4VGFbGPSSxR11L24CVQ4ky8o=; b=P2OvjWKoPkLJEqWV
	HVfKaydYguKXVsjrq0QaF+thRZQuyqit/G7Rvo8n23YBBhnVDHvvi6azm6nvfXt/
	SlEb/KHudejGJY6TkQzxOLXuPPeo2m8SAZnsub1koynuaWiekzHnf3OkV9rAKoya
	9q9JCgxz1xJd4+bsCtjiibQLh3XB2L8ECsnuSd9vG+/D/WMAuh2WhykVbQFqLDo8
	OTZIhpeKPEhBPX8i0tpSmeCwgcJF61SzIxSqhqz6HwZfvJXZ2tR8eArfMhRM3JAx
	/g+F76rl7CVK15CkRyLFDi8tS7oiCzMxe6MnACzpa5cpu/JMNeA0aZUp3JjE7aL1
	utbmRQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484nyu376h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 07:57:50 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ab65611676so23137801cf.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 00:57:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753862269; x=1754467069;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bep9w9BnXdrMmlin8Bi4VGFbGPSSxR11L24CVQ4ky8o=;
        b=DPPyPQXvEdII4ViJx7mYmw+kciN6WiLjDTCa/23iUV/QQIOGmkZ2AYg8gn1zlw+WFc
         qFQ0NZ92VkBtI65eCnvVaZWNV11wUPbor8PQA96Y8SkjH7R5n9wCnUekFbJX1j6Xfhoc
         lk//Xhi6aBTjG5XOhiQg4UNrm9BD3X89q7b8eWPmPXr7/yLJ4HshnLSAkzgZ5U/NX6c8
         i9uidEdx24X90hm6UqTShAZvvJuf7yV/MA4xymLvDz2rB3TYsPV/YAUdjX51hYRKdLbS
         +w9/TuLjbqbgtFiDN5lxuuWCdtYb4UXMiTS585NHB27sKrduSVZ12rqOLuXmPS3bKd+D
         FMxA==
X-Forwarded-Encrypted: i=1; AJvYcCXrPjBznpSm4EFdh1GAi5E6n8yktF6Equf9W7T7MJ1P+6W0EsupoIYVURb+zDZRvz3XfXHGMpHzVG3t@vger.kernel.org
X-Gm-Message-State: AOJu0YzcipdKYRan7m37C7NbMlGQmOv+ycpahQl5HL+qWqYJp3lO2/h3
	5EoCb3Kf1Z/IiyFU2vvIGi2rkOaG9Cj+3/yiSUlHLsN8KR4byxOb8eXXMaq2HKWxc8vQoA1Zrb1
	a+/X3T1UwNMF7GMSKm2rv7CnWEVbH8nNbIE83gI7xlYeL5YG2xfpQwXGYr4sXAmUG
X-Gm-Gg: ASbGncuQO4qx0bMz+mCj6ysDqzC7uMTP5XAUqLzKY0CW7YKsMJ8HZpPDAwT7sjkItYj
	R9kRB0Q/V39oOlO+rvAdIqJ8DP9JQ2/J8gk7mgitEspReEX+tims7CSvceG9wlZAFUkMRNj4TKh
	BcXaARZ7vvs8/A5ox3DvV9S0LZFStrhiXHeFCtZhUzijI/6wWP3l/402ll1liaFnQ+k3yjSIyia
	x7HyTqhvmE39Ls03baXudeU9qIjrFt+0UuSKhBF8JxMpKqvh89wCs4imwWySchkckRvps1YVZ53
	NF5AWuSPyhUvz3NrXQDf8fPJAZDE1MudE5+ZU/NCKHGJ8VYp4w7lZ5qflf8rUIWrqetidqj0AL0
	xXK+SE0nSs8F95+PHmg==
X-Received: by 2002:ac8:7fc4:0:b0:4ab:6d02:c061 with SMTP id d75a77b69052e-4aedb96a9a1mr7229971cf.6.1753862268912;
        Wed, 30 Jul 2025 00:57:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/sjv/KirXnu+zAbo+zcVKQUFU7/xftsd5QFNM57kgr4gJGSFZUGgA+3QYMDJuoSGOBbDkLg==
X-Received: by 2002:ac8:7fc4:0:b0:4ab:6d02:c061 with SMTP id d75a77b69052e-4aedb96a9a1mr7229781cf.6.1753862268489;
        Wed, 30 Jul 2025 00:57:48 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635a65fffsm697780266b.76.2025.07.30.00.57.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 00:57:48 -0700 (PDT)
Message-ID: <0d267f8e-ab1a-4239-8966-5ac2d5d40787@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 09:57:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8650: Flatten the USB nodes
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250729-topic-sm8x50-usb-flatten-v1-0-4be74a629136@linaro.org>
 <20250729-topic-sm8x50-usb-flatten-v1-2-4be74a629136@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250729-topic-sm8x50-usb-flatten-v1-2-4be74a629136@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: iJop3B6UnEHM6wyJxnYiCWe4H3i4oPTM
X-Proofpoint-ORIG-GUID: iJop3B6UnEHM6wyJxnYiCWe4H3i4oPTM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA1NSBTYWx0ZWRfX9PJgUZOITyhc
 /n3vemDuMOvA8OnrtRKc6Zhdsj0ckc6JYaiNszpAAPgMiaO3o5TRakCNco88z6QFYNmkoVFwsfu
 YJH+vhQQ4+NsRT2rQjlTtug3ZvFRBp42nymFlByhGuFi2kjADdn3LndWFi++WwqsC2hIt9aIF0N
 lDFTY1e54OMPwRo0k2qgb5G7ObPScDINejXi7UmSxOb3Au+247w21DCOQPfwPLxrYO2wxOGo+cG
 NlDaslkgzmHEQQKOmzgxe85n9YYegUinksOVhxC2gM8ipW191bVkUQFAuMwkFmb8PtkazxtLv6P
 15r859BEl0ujJkfCJokpt9awwBWD4Z5YZIZgebndsoazsrYNCshGbCc8Lg35coKF9K/KGyGdcPw
 0l5ZWW/xdgl0wrzN8L7ueP3u6RDUbmWCxUBJb5SnbWyY687gDcfX5gpRSw9Ox6nm4vzKV52P
X-Authority-Analysis: v=2.4 cv=CLoqXQrD c=1 sm=1 tr=0 ts=6889d07e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=cHqI4RTSPJW5vXGIaXYA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_03,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0 suspectscore=0 mlxlogscore=847 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300055

On 7/29/25 4:58 PM, Neil Armstrong wrote:
> Transition the USB controllers found in the SM8650 SoC to the newly
> introduced, flattened representation of the Qualcomm USB block, i.e.
> qcom,snps-dwc3, to show the end result.
> 
> The reg and interrupts properties from the usb child node are merged
> with their counterpart in the outer node, remaining properties and child
> nodes are simply moved.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

[...]

> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index e14d3d778b71bbbd0c8fcc851eebc9df9ac09c31..0120b9c7432a945a204ed76a461a6d0f13875537 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -5651,16 +5651,18 @@ usb_dp_qmpphy_dp_in: endpoint {
>  			};
>  		};
>  
> -		usb_1: usb@a6f8800 {
> -			compatible = "qcom,sm8650-dwc3", "qcom,dwc3";
> -			reg = <0 0x0a6f8800 0 0x400>;
> +		usb_1: usb@a600000 {
> +			compatible = "qcom,sm8650-dwc3", "qcom,snps-dwc3";
> +			reg = <0 0x0a600000 0 0x10000>;

sz = 0xfc_100 as well

Konrad

