Return-Path: <devicetree+bounces-221813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B619BA31B5
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:18:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 268C13B926D
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:18:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C43FF28C85B;
	Fri, 26 Sep 2025 09:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cmaCLpTk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C3127AC3A
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758878325; cv=none; b=BSi94eJn5LG3PKf3VRVw3HQ1cB889bU4ulNIZATGw2Mtg3V04+FSSZ51yCPuiUd8mZQ77dmJaoh+D8SK3h4PuQDVJRsrCZNm2cEyUMyrkrlj/lcoYTRy1YcjlvuXMzWp2IOJ6H1zVlZIeiUQVQ96C0UFlXA/uFyyROgnb2H2bnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758878325; c=relaxed/simple;
	bh=rvO3y3/5JAXHInb4ycTcmOW2bVUrrDYIJ2o+IzNAf0s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bFr4Q7HDidFG7IvVf9Uo0QmcBxtMH0gxpvQ99kKwDwWZ0AhRfN4gLR8n1Zuy0hx3dJNimUWJsSzxhN6dc4kbR6/IDP9d+4dWu75MWHHFE9DLKbO2u/QO+4cKAvuwyE99QTRxlcmfySDcROQ+6If7I8ERp2CJm0trE/DaSOotDD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cmaCLpTk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vc4U002645
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:18:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rOinGqMz0tMy8RVDVP13kAvHKKpdZ8bA0MN36ekzJAk=; b=cmaCLpTkhocavNRl
	lPz/e9Qigm1zvnFtNb/NJtYqx/wMYenNj+jJi+YcsX/La+4w7bAKF7bkrLUR/a5a
	a8Vjknvg5SkbRuUcIwsjPFd/KvlzTxJXkPSfcGpAD3sLo4TJveXvEGUbecmJkyCZ
	iF5xQNnXaYul98pS6gzFLsurGrfuXQNx0YMNcFAQpLNMhkcUX2nygeuVorxCoroc
	UUQgTGyP1YfrZaAGWSrGutqwJU5jC/XSaGwm4pF21obGc0si4y0vQvL/AuDVw2WI
	HY38CSMCMH2n4vMAz3OCHywSuWRpamI7LrNEUnhQipnI+z5WJWFKrBuFKNuDfimG
	jTie4g==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u293x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:18:42 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4f93fe3831so2602293a12.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:18:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758878321; x=1759483121;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rOinGqMz0tMy8RVDVP13kAvHKKpdZ8bA0MN36ekzJAk=;
        b=i36fO3t6euFk2Er/BO/2FAYsyfOK1lNjA2EhncdDyLBYsOPtMqglaIa4dzJHQ6YRX5
         CYIi9FFJwpyrevS4D7vw/a/5+piaCt8pDxlbydpfccWsZCaBKS9sl6r/kARIccttoknE
         ff52tBjMoyK6gbouZbJE1Zw3v/Kpcuk/RMvpzG/V9g6RQPStJbwHi8mkaH2jFFKTlPUB
         NMWv0K+x/lyz2YAMuSsscMAICK5r0WQTSsE1udm6gp4LfeeXxr31TjlfdZZ9fGKJeOJw
         JM9WHwrkINJIQexGsqWLNKjNlR2WWc75kHK5Xt8GiU65ZqYaDnxpEcFYzOJEHJT37UnT
         v0GA==
X-Forwarded-Encrypted: i=1; AJvYcCXAA8xLirZhaheyaVUb8bH4irYwGjOnm0SqgzDxAPS3TGtFX8x3mol0+CNCYOlyXk0HLUztlqv4nwSz@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ3Zi8yhZ8EbP86RloNO86o+a/L6AO0BMslKWsZ8nfvUgly2C6
	L0axE+15/Yke49rFW+qZSoQa8FUIKW/in6YdLglNK7g+/zbxOTdPplJNP3gRWAXVMAAC0qw7TrB
	szC3V39etmLgfNByN5osBgQGIdaxg5bZZdoam4rgj5B2igzxlhMXmDO835M++jH4jiYChNfwd
X-Gm-Gg: ASbGncuO4gG67csNsTFbErmMx7iPO1iYbLXocnitISfWauYCT9Pr8sj2mT4XzDVuLIr
	ks6tt3/8PhnVOKVkISGZDlMyg4x4l19rrQ1GiSbA6Mz5hDQfxg8fMIjpwUf4uiOarHjEo5Y9V+n
	+qeLQCre99JYJO9KzJoRB/k/19IzAn0VvjwJy+HmP11ifREkNYYjMUh7K19TtbmGDIilQKKx5x0
	pcWMTpJ5Mvh/4ShCO1tjG5Pph2tQrxemYNYr2Qdd+vnTHOrHs6sfmjq9YlrnV2+ySsfUCP39Q1O
	UZ+y4qwDxFejjtwrctZKK7eR4FgaWkz/51p2Oe8x2AVdGs5kUT/8Gosdv7WgSgzkebhC
X-Received: by 2002:a17:90a:a783:b0:330:6c5a:4af4 with SMTP id 98e67ed59e1d1-3342a2df0e7mr5798175a91.35.1758878321216;
        Fri, 26 Sep 2025 02:18:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFE2VmbA3V5xKxzDOD6PkH2qKlTH1jNQO9LGj1hh8V7XSD/77IMu25QlmTn9kHgwhzPfubZyA==
X-Received: by 2002:a17:90a:a783:b0:330:6c5a:4af4 with SMTP id 98e67ed59e1d1-3342a2df0e7mr5798146a91.35.1758878320750;
        Fri, 26 Sep 2025 02:18:40 -0700 (PDT)
Received: from [10.217.216.188] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53db8d2sm4185722a12.24.2025.09.26.02.18.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 02:18:40 -0700 (PDT)
Message-ID: <555039f9-a168-4a9c-b45c-d4583c553bc9@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 14:48:34 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: clock: qcom: Add SM8750 video clock
 controller
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250829-sm8750-videocc-v2-v2-0-4517a5300e41@oss.qualcomm.com>
 <EAIobHjo8rM1e0LwqDqaUllC0qjV5ElMMhk6KgT1oNnFt_-k7ctM2_6kym9OjEtse5o4pOFM7yCkXgrSGRZhuw==@protonmail.internalid>
 <20250829-sm8750-videocc-v2-v2-2-4517a5300e41@oss.qualcomm.com>
 <d965949c-a7a0-43df-9bf1-c1232fc7e38e@linaro.org>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <d965949c-a7a0-43df-9bf1-c1232fc7e38e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: FFGXUQ5lRvCEzlMz4H1YZ96GXTN5eTLn
X-Authority-Analysis: v=2.4 cv=PYXyRyhd c=1 sm=1 tr=0 ts=68d65a72 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=iWq2tNaQHCMtPVGnXkoA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXyKVShe854PGO
 LOxNUkVghKItcYBFVH5Tjvd8dqVFaKPKwsStHr1jU5kDKlgmGpF7psd5MZ2uVGGpV2tqXGFXl5S
 nkLPHpIeEgQzx0ZHDUaJf6J+Q2uuyigIYCFVvBHRhPXRSiz+vHum0wqGdTapQp2d3Gts2M5rSGd
 4KtzX7v2+Ftkx/ORWFJeXj7B9wtWTx7cYdopE+fP4gFSdD+0U7Q9iJBy1LzkrOvvZt8sM9Utyj9
 pZjsuoUSY0Bog4eAinDtVa/HI0NYa4BAcVhseBWsqKYbc08UFtgLAoVLFUANq5D/iKDz8E1ErBH
 00mrdtVbRZQU5OuE7+6zLsAeYtxQdl4sVinTIHOnrRJGNjfZgbWnA/ZA4CTodwjvQptGdqAz3re
 50sbbBLKgaF3eNykJHCnXE4EBX7FYg==
X-Proofpoint-ORIG-GUID: FFGXUQ5lRvCEzlMz4H1YZ96GXTN5eTLn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 phishscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171



On 9/15/2025 4:28 PM, Bryan O'Donoghue wrote:
> On 29/08/2025 11:15, Taniya Das wrote:
>> Add compatible string for SM8750 video clock controller and the bindings
>> for SM8750 Qualcomm SoC.
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>> ---
>>   .../bindings/clock/qcom,sm8450-videocc.yaml        |  5 ++-
>>   include/dt-bindings/clock/qcom,sm8750-videocc.h    | 40 ++++++++++++
>> ++++++++++
>>   2 files changed, 44 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-
>> videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-
>> videocc.yaml
>> index
>> fcd2727dae46711650fc8fe71221a06630040026..b31bd833552937fa896f69966cfe5c79d9cfdd21 100644
>> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
>> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
>> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>>   title: Qualcomm Video Clock & Reset Controller on SM8450
>>
>>   maintainers:
>> -  - Taniya Das <quic_tdas@quicinc.com>
>> +  - Taniya Das <taniya.das@oss.qualcomm.com>
>>     - Jagadeesh Kona <quic_jkona@quicinc.com>
>>
>>   description: |
>> @@ -17,6 +17,7 @@ description: |
>>     See also:
>>       include/dt-bindings/clock/qcom,sm8450-videocc.h
>>       include/dt-bindings/clock/qcom,sm8650-videocc.h
>> +    include/dt-bindings/clock/qcom,sm8750-videocc.h
>>
>>   properties:
>>     compatible:
>> @@ -25,6 +26,7 @@ properties:
>>         - qcom,sm8475-videocc
>>         - qcom,sm8550-videocc
>>         - qcom,sm8650-videocc
>> +      - qcom,sm8750-videocc
> 
> Shouldn't this be qcom,pakala-videocc now ?
> 

As of now, Bryan, all of Pakala is using the SM8750. We can migrate
everything together to maintain consistency.


-- 
Thanks,
Taniya Das


