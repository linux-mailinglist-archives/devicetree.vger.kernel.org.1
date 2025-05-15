Return-Path: <devicetree+bounces-177718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2BCAB8B16
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:43:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C29A1639DE
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 15:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D48B21882B;
	Thu, 15 May 2025 15:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WWYwKoDu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD35218E8B
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747323707; cv=none; b=ikJWWGDf9CBjejRhwruAdSrCESJqubIHitdkpbQq6dEgZoDhI2hQhMhTTUHVkcaAAeeO1rVtxfRUEdsnU7StR+OT20NYtD26Tn9SmmRCnHVoWPKKeTRUDXI5Fa4G69VBhxSPsBbv9RXVXHrEEWc2Uv8GqvXbYprFw3mX0mitOos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747323707; c=relaxed/simple;
	bh=7ywYiiKNLO9A8nztS2XTnBGliTV98wcv1CVo9aAO7eA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i3ACay+6YbtUZ86pRXIvBsSnwsHmm9NGKUx20sol5LlqKnqu/S0u5/+nBKo5K+kARmhEJEeJWqwyGd79/W7VN8RHBu1AoRrKAqYcrjEnCLeN7wwqrIDwnoFf2Uk+MHzzXNCtAzpK4dvmnx5DWIcG9fkdN7wXRMxPaouI5yWc1kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WWYwKoDu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFHhh024409
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:41:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5/0ojRnSWXvRmL/NeRTFyIUoU4Q+EzsHrqsYsCOLaMc=; b=WWYwKoDuM723eE8r
	LElS6tFxfrFg9Mew4iYi4haIng1XDIaRkspLqfu1IXDkZdOveJyJNoI2OEK+Mj19
	uqRpJ6+mhCgQwqU5ngvMESTCDHq+0Z5D1Ldeg0JAohFtmW/fPuJwrvrjF33vzCQj
	OsEY90lgwMTefvNv/tDQP9P9htinKTnZsvcnKA8CF60yGMCPVf3hKdssbQ9DsXaW
	LL3ZN1DytBp60rRCjQp1uEHd55PFFSg7MQPQIZtre/JPDOKoeYpNKO53jDmGYsqj
	WTb6wM9oX6SrkKiFqqXLr657ZzB87hbPReDatFpKFexYEtkzfA1ThhwYfgnxOG2M
	vW0nYw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcmxv6a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:41:45 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f899c646afso3524296d6.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:41:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747323701; x=1747928501;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5/0ojRnSWXvRmL/NeRTFyIUoU4Q+EzsHrqsYsCOLaMc=;
        b=MN3MDQVky9JBl0QQuwuqto3PYZXZ5EI1+rnYq/r8ux9bd3mwz6AmahtNHYt5YM6LN8
         uRqhd7u/GDRv/X1DkPR1hZUZ6swVVyyLWoxuNqKbyexoRm/TFvjXt6KGgHf6ZpYrKET7
         p6qNhCeRccBqBkjjJGMbIhiy0S3iTHQXJ1aFPkVfB/efxAKQ0DfLRxcvPKZ4RifgtoOb
         kW4QxY/CYLG8kRHSPSuIEgNOJG9v1N0JH/qHLfJqlV8GEL7Qw1ov2L+hFu0mlO9cTbYX
         xK6ifRaUlV0RlxnIeB3yip2FhDmQuOnEmo/jiWqTB53fFt1GotS1zj2gWqmK5UxwkqFh
         4q5g==
X-Forwarded-Encrypted: i=1; AJvYcCX+PAjXcttkvp8G2cWGe9QmEyAQxgp6qt7f85BvsdOLCcsoJzaJ5bFOsdc62TctzT5ZwLZJ31mjOw09@vger.kernel.org
X-Gm-Message-State: AOJu0YzMM6xOFBmO5NJnlYo2cWvj339X5poBT5dwPngrmYyRJxbA1+d1
	9e+nla9AS8Cfb7V2CIBBOtl9LXcI3fUaPNcd4VCj7lb5hhovhDNBQpizwroQTt0AXwZZ8zzmMZf
	adnQGqr4lw8vHC2bOABvugUBq8ZAjill7TREueUjSCIbDjwhcLOMf9rtNEroGfQOk
X-Gm-Gg: ASbGncuaGjoc1BYDhu+76VGbXM/WGbkDATXJ56Ynm2R4okQto1VuDnFshubVCLm0Abn
	Wg1C/avItXXXuFy9VTzYq/5/BRPV2glSCzO0DhH1tEXOe+2NbYSxBq4vqKt3stAPBmlc4LJrvcP
	FlV1wfQzBbTaQ6/eKy27wxFcWSiHleLktN/utZ5gwba9a7Y2tJnmgRP8gRNzhghcANDY3HuIWf2
	3LX9tQYiFQ0V23K8vl7hBSeiexDR7atwHVi9tF+ZQIDcvv5YkWruDAVs2OKGbCNN7d6vzxBuwLD
	DkkVnPlheZrcDTLza6/DfdXtk9m6jjZ717RJ5WeVCBX+Jo8CKvRI8F6VsiwqOik1qQ==
X-Received: by 2002:ad4:5aa3:0:b0:6f8:a978:d32 with SMTP id 6a1803df08f44-6f8b08811b3mr1101116d6.5.1747323701170;
        Thu, 15 May 2025 08:41:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG3C7W2ioUB8m6KAq++Aglw4cWZcPp6NjrXNXBkMScIXWVKR+28o/8L6hATFVney/nMPPQLlw==
X-Received: by 2002:ad4:5aa3:0:b0:6f8:a978:d32 with SMTP id 6a1803df08f44-6f8b08811b3mr1100906d6.5.1747323700776;
        Thu, 15 May 2025 08:41:40 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6004d502ec0sm15772a12.31.2025.05.15.08.41.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 08:41:40 -0700 (PDT)
Message-ID: <12bdd004-c2f5-4246-b103-f94d239e9f91@oss.qualcomm.com>
Date: Thu, 15 May 2025 17:41:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/18] clk: qcom: camcc-sm8650: Move PLL & clk
 configuration to really probe
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
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
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-11-571c63297d01@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-11-571c63297d01@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Kp2a27yhkO08xr74LLxBgKpE12mzHOYV
X-Authority-Analysis: v=2.4 cv=HZ4UTjE8 c=1 sm=1 tr=0 ts=68260b39 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=R-MJ-YjwOO2PQHfhffwA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Kp2a27yhkO08xr74LLxBgKpE12mzHOYV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE1NiBTYWx0ZWRfXzywbGRTQSIkd
 Vs4VGzSuXpVwf9qTEtos8YObQjAYjaDYRHhgGk1FW6QYHsPnwq3WS+4YQ/dO7TQFfg08oCWNmjy
 zSpnPpZay9CR8ehQhU7KnH4FoomnTqQf2qkCfUZiUaMc3pULCHAdTVT5GrnvX1yvevM73G8iT2c
 441mJWW3zwk4mXDZJCa8uIuLmBqE5VSCVRgk6XZlWNvfZWUAIeXxFd6w2eetzHnmjL8fWMy8stk
 IYqK7gSnaKy+b+n4KhuorWgAOjjN1IKBptSE3IWcczlS5cqud0waY+vOK//SD/cqlPKnBKzXEkn
 NO+pzOQnU2kEg3ylkpFGyVNTxdC0Ogh7/MGSI+bBm4tjrmV3HiZOeh5WymqHFm53l9pTOQTlotN
 4z8GTC2YLth/rtcRugpkC/f8MufhtjODFAR22eTRX4Lrq/65aRZXEvUNtOkXTpMf8ImdwDsG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_06,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 mlxscore=0 mlxlogscore=999 lowpriorityscore=0 malwarescore=0
 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505150156

On 5/14/25 9:08 PM, Jagadeesh Kona wrote:
> Camera PLLs on SM8650 require both MMCX and MXC rails to be kept ON
> to configure the PLLs properly. Hence move runtime power management,
> PLL configuration and enabling critical clocks to qcom_cc_really_probe()
> which ensures all required power domains are in enabled state before
> configuring the PLLs or enabling the clocks.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

