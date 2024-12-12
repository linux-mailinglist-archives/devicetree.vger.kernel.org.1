Return-Path: <devicetree+bounces-130439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9639EFBED
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:58:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0EDCB188FD4F
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17F091DA314;
	Thu, 12 Dec 2024 18:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a2WpEYE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911DF1D9353
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734029737; cv=none; b=gy27Yl1dT14uraTd2VCuiGktYDIjZjbHbfq4M8Lwact8mwBakHdmb+b99Pp2Y409RC5JWY/CX46x/Bd5/L0Y5IqpPmbDT8X+4oQ0pvpL7jCzKZ4lL8kzE5P2N3knnpFDGWLtG7PybDN4UFrxyZEp8n5bQ1t+AdTCDM+SurziCf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734029737; c=relaxed/simple;
	bh=6Ykd4LXZc/kByKynylSQh3A2HAOdlX7jGwrQ/D7Gu/w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WP28WqYRK9+iW7ZdzbGKz10/GckpPUARCAnPqd1cPjBjGzi+8ku3HrePkvG9sN0R7PLgYI+UygmKekQkylUnkhNG/pYIPGAN2vafgsliN8TCEilDVeaJ6otYP4DI0sQxAY/zKv9m/1zR+MKUe0DEwl35CPh3yfnzMGGXfxFCYhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a2WpEYE0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCICfiN022799
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:55:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zI72/iwp++JOMDiSSOOOuPR56P6EMEm6GaLozzp9c4A=; b=a2WpEYE0cl20+RAf
	UXqg25+GsO49TBrUKDH+nX8dRa7DGQTlPf0La7TqVs7JyH96aLu+jl+OOfmIZ3Ea
	nsanIhGMZYGORwwA+vf5BilmoXXabtttelPCuHMGX/osVsabHCwYTCko0S+8ono2
	oa4TSVow2l1kRK54HsDpFla5MIa9pBhjByzhlIFGMt2UEpznVDxQ0+g5SJEJaiID
	ujNpK02FrT64efJR9shiKIxnc6NGhZp60qatxwEJ+CAf7l7oFwTlY3paJ5K9ec84
	I6OBDFS12HrdUhYMuaLoPx3MGcle+Em82ZN8Y2djkEMGGHLw5uVhZHY42ifRHpJH
	JnRQTw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43g4wn839t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:55:34 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8a3cb9dbfso2191886d6.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:55:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734029733; x=1734634533;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zI72/iwp++JOMDiSSOOOuPR56P6EMEm6GaLozzp9c4A=;
        b=KuzEqDuTT56CFvSAdsZQkK1xTm4PkgnM0XcQ3SVAd6ARjuPZCTLXZM8jkwyH0nnIe2
         t8bRvKuRBuA+b3PUUPAyCHJDuz7HPrOIyUq475nRhEt6BmnFmcbGWSsODpl+wQmkEZq9
         kbdHcJYRVz3Zjz5eRHhVLIBNxjXujDioTHUR6shCTm+v4G+Xq6JtTXPNItQqPJSPGNSt
         GLvj5V2/GDYW5i+Fb9Nue+wiJo584slOtOqP5/hgkGM+d7PEgfJfMIzT1Vhpo1YDSPie
         0VzNDSUri+ruHswyZFwObkILVHDRxtO2tT2T4E1PNbt2b4eQVffD84c54BILfsIYEu4d
         sEFA==
X-Forwarded-Encrypted: i=1; AJvYcCV2JGhOuiVCvgA5tiboGoWwGiHlvYo6t8pqpw++zU8dlEgEAVdtHjNKdw3RKkFuSRB62eC1FvS1bEUT@vger.kernel.org
X-Gm-Message-State: AOJu0YyjNuHZyA9JifvmzHHGx6XdWFhiFf8u3JveKyZhc6FUAMdwp0sY
	nhPsN5bT5t0XsH0pBDNSzC32a5s3FsFTax/lIMYBMoYZyCUct2zmlrEqKN52+RTn4nXmAaJGNUB
	TBizBtPkLHu1U/ox3H2WblbZIHuTjAr5WbxMBeCJdRlRvNUeKG9tSeG+wVdMy
X-Gm-Gg: ASbGncvyeMLuUVtewW1GP4RY4RhS6y7Cr+hQf1Frnre0KYlasTkeQW8Bw7iSwnlTo7E
	o+XgTZJvXaznhZHEDk39II1/Qml+8s1Vl9yBCQK+Df1yLc6WK3PE3AkFtxvD+FztWKwXf7DGzqm
	lbt461KDBJUg9SnhckIovnQIW6OjFUuXIO6vKS2Su0YSv4EM+9qlG9oNoUW0RCqtwidEQEmUkJl
	tFkOtbYkoy/K/5lzn/+Jjb67RZh9/eoTjtzYSjxcauQlsuys24ncMP1aWZfoyWU2TZxZQz+LEEm
	4hoHp25s26lB/FlKQbl9r9jvlSdHRwOG/UtS8A==
X-Received: by 2002:ac8:5d0b:0:b0:467:5462:4a14 with SMTP id d75a77b69052e-467a13bcb81mr9719111cf.0.1734029733539;
        Thu, 12 Dec 2024 10:55:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHh+6GqlSEppTRVHfwFh6/LFI4/HjserV6YHyLGu2Tmb1xxtvWO18Oqsh69zRHwYho2dvwIyw==
X-Received: by 2002:ac8:5d0b:0:b0:467:5462:4a14 with SMTP id d75a77b69052e-467a13bcb81mr9718891cf.0.1734029733124;
        Thu, 12 Dec 2024 10:55:33 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa653a95e90sm836436566b.173.2024.12.12.10.55.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 10:55:32 -0800 (PST)
Message-ID: <5cbcb8a5-f39b-4416-8317-15d56f932915@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 19:55:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 16/19] arm64: dts: qcom: sm6350: Fix MPSS memory length
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa
 <abel.vesa@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
 <20241209-dts-qcom-cdsp-mpss-base-address-v2-16-d85a3bd5cced@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241209-dts-qcom-cdsp-mpss-base-address-v2-16-d85a3bd5cced@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: tr1JO5nGKoWTsY_744Dj_e145oUMbrHp
X-Proofpoint-GUID: tr1JO5nGKoWTsY_744Dj_e145oUMbrHp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 mlxlogscore=889 spamscore=0
 mlxscore=0 clxscore=1015 adultscore=0 phishscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412120136

On 9.12.2024 12:02 PM, Krzysztof Kozlowski wrote:
> The address space in MPSS/Modem PAS (Peripheral Authentication Service)
> remoteproc node should point to the QDSP PUB address space
> (QDSP6...SS_PUB) which has a length of 0x10000.  Value of 0x4040 was
> copied from older DTS, but it grew since then.
> 
> This should have no functional impact on Linux users, because PAS loader
> does not use this address space at all.
> 
> Cc: stable@vger.kernel.org
> Tested-by: Luca Weiss <luca.weiss@fairphone.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

