Return-Path: <devicetree+bounces-234342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E2BC2B866
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 12:53:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 132573A80E1
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 11:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01120303C8E;
	Mon,  3 Nov 2025 11:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dpSmMOr2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Mlcc8Jiz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92FE23016F1
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 11:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762170572; cv=none; b=p2vO6YrZEMPDN2Rg/g5CHQuFmyW3z2yHrPhchl+++l0ABwBpOV8+9DAJJDBDYP6gmZm+qgMNIT+2caIhvFvrSxLLeCae+/BbqpjD09OaVN0M8dZFgJn5Y9ABzAjSdcqRcj0PrqYQhjFM2nOV7w8jwFijGCbYu/7JUdhM+uckMn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762170572; c=relaxed/simple;
	bh=z6imvB2DV113EZpnJ6O9yrdIZvQTR5LA7M3rS0SBWfA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WbRWQMrwIVaRdkxIKDRFlJSVpkT07SfwkHbgedK3yb3jAq+XzDKFXoSQadTsr0EVjyQbouqohVkuyEh0AIfTZFKxlWwyPCxmUKuxyKqwUmhJJCo4GZPz0Z/RVl0ljsSHh6ONswp3OkzXtqML8HdOQe4TcZi3JELbB2NyoV6vmyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dpSmMOr2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Mlcc8Jiz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3B61CP2907691
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 11:49:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JkPTcU3mDcuoSLztjAvoj6OMoqsfRN22xx/qlMYINVI=; b=dpSmMOr22vJJno/q
	GYpFa4jPUNT1xaFy5mLtKri5DWvomcW15KuGMM4OuFk/PA7i17nnHcw1LUH7Srko
	mAev1N15ySGJmtfc6fVURpeWGKnPtf82VnqavtW34Ac2p4Lg43rFAvRKFBF8NbNn
	xgmHEZBSmhwYfo6La4El0LwnMhol7i1mb+uU//4oUkHR05+FspzQpLsJxBlyAar+
	xhfAl7SRen71++iriWaqvp5G5Fi3bXLRaEZGr0f7kkWS4IFv7GDjCi+I3ja/EcmH
	D7qviJVwKDAgWzUOPg71LdyHFL+pDpHY+1ZAyaJj6wh8aHoUtzm5VKXLo45PB6uY
	vcXRiw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6u7kr39w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:49:30 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8804372387fso10678486d6.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 03:49:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762170570; x=1762775370; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JkPTcU3mDcuoSLztjAvoj6OMoqsfRN22xx/qlMYINVI=;
        b=Mlcc8Jizd8UGulNDSgClDLhiwiHQH+XAT4/hyexAvl70R6zwcTfzdx2hxII7B4TUtP
         4irx9jw6hkdr2raFSeS4kBKpkB66rLoZspIzyi/kOx7EPXMi5ZejsG48+v0Pay8p28CB
         e5udP0rGh3tLH58P3/eiB2p6IV5Wd50fbDqyAtxmBxjTTEzDKp1y9RzVxcesRf775/uP
         plXyLnNfEFiDV9JknVLyzdzOuf9K5xSEwUZciB9s2biA13mROLszxF9/xzEEriD+ooh4
         ny87hYeKVANqDodpkNQ3d5TaLXvnajg7S4XJpPaW0n12BfRXptgDkVjphtQAfR+6Qm0g
         0+tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762170570; x=1762775370;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JkPTcU3mDcuoSLztjAvoj6OMoqsfRN22xx/qlMYINVI=;
        b=MQVIoR3VGhcYo2Cx7TTPkqdC9x7xT1thr8m16jHSZ+rcFMfgI3ruQ1A9wwetKBn4NF
         AC5tRC8Gy8HFzf7MKcFLRt0jPePKxI0pybVqvs+l0Nccd9eCklIq/leVJYucl1w3bYhQ
         8uF3z9XHrh9TUkOqQDMYfRwRHntEJ4981qY+gq2w1OqIRt2e3FmpWf0qCGNuCXQDEBbb
         5EB9QKalum58QINIBjfSRNpdYhfzJqJoqeNLYI9sN5wDvorpgKQLzgZkCnnETJ7kiFiW
         sLAAKcuu2n/aFrHgyIzEXOXWYvbWXFDjC1u/wFHWP+PHAxdsjWG2h+XCZFisznvTSfyX
         eF5A==
X-Forwarded-Encrypted: i=1; AJvYcCVdLZCQ0AqivNAhKs+2u/0QoO0ZZbtLgTDhWYDK/f3XPqZCqkx9rvNaT/VMg9VJw8I8qu8FxPIIcm1V@vger.kernel.org
X-Gm-Message-State: AOJu0YyGYbM/kylNUWhIJKAWeObFlz/sbsUXdLhbR5YiTep+ODQQ9IL7
	pkrncVgDLhsMdN7gQ90PNy2adKnsXtqTzHJxymLQe0SSNiBYW2888PuYpM9joBeyF4CYP0wMeib
	XRaKm90EOPTlpYUXrPKz+K0TxsNcbA89rn83oxDwwZ6GShMtoaMmMqOTASNEms2YYGpr/pgcC
X-Gm-Gg: ASbGncvS75V26lQFDKLdBTRDl5W2XSanFVHv65Rlnb2EvarLMC/aKsmtVhFb00BbhNl
	xF+FRnLx6CtFlYFRmEqYnwaIZWcEPQD/RBl0I/0R3ve7t/wQuzBeJwYwK/hTFTjmIDFuoMwDkFP
	d6N/Rt8xDr6Rao4A5p7k3hqvfSbpwO5A7ADp4OfVt1pl4FkSNRnon3i/Q5SOqXB9FGKCa8Zclry
	6MTE1Zt+xljGMxqEoc1Ujijq4azP3qZetArZ5DLRcpymB7EVzJSMAumvhy5MLilXFUO7+TDeTny
	NTkKyWugOg6BYLY0XJd+LzWx+ZCjrBxXD4ExChadHExTJgtngZZpMcwI23QGmTgAc7COn08y3zj
	FzdU3XCxYewjHxuPZMlMaw4XErANP8CUg7pPsJG4n3t3iOWXc7y2RKXDM
X-Received: by 2002:ad4:5de3:0:b0:880:4bab:466f with SMTP id 6a1803df08f44-8804bab486emr55344886d6.0.1762170569845;
        Mon, 03 Nov 2025 03:49:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGvQ7U98yLv28zxti/3uxODPFzxqcKCyA6e3QUrxMfllY1U3qCcZkVdtnh6u/I2Br4lrHf7UQ==
X-Received: by 2002:ad4:5de3:0:b0:880:4bab:466f with SMTP id 6a1803df08f44-8804bab486emr55344676d6.0.1762170569129;
        Mon, 03 Nov 2025 03:49:29 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7077c3add2sm999166166b.37.2025.11.03.03.49.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 03:49:28 -0800 (PST)
Message-ID: <21430004-b186-4f28-be59-bcb3851237b8@oss.qualcomm.com>
Date: Mon, 3 Nov 2025 12:49:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8650-hdk: Add support for the
 Rear Camera Card overlay
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251023025913.2421822-1-vladimir.zapolskiy@linaro.org>
 <20251023025913.2421822-4-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251023025913.2421822-4-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDEwNyBTYWx0ZWRfXyeIGhx4gOrm2
 uEISSh6lSKF8d+1znx4l+bYHFF7iJqB+Hi+g9WX4KUzbmAntRMnxsERoFqB+orHglP/DdiVtVDX
 WrHyh8lHRClDv1BI2LqopXkpgV0xM3LF7iD5Lb6EGAXu7LqPrhZUsnFs1hQZTk2JNk3jiTkA/k9
 J5wJBdw3mma9s9UfprrD0/oxMTsO3ACVVJUFKysZStMxMtmbIfz3WAv6yxlgZYqdZoaO+RL/uJc
 qSvt5BmahxSwUo1zG06TavIcOviyt5BWGigc5XXahM8j/jsliZGkvG9TA51Am/Gn54mrt2uGQxr
 yoJvb/4oU+b4EHMQoZV+X/uTNtYRSXnXbKibxiPKLp8vxCRu0BCA1HCyYWS+P02IkTLDvHJxpZf
 3ser8sdcoIEPLk3F52+6J/FTlzxszw==
X-Proofpoint-ORIG-GUID: _-rj0NOywr-1ewvppAq6GL4xgykhTF4u
X-Proofpoint-GUID: _-rj0NOywr-1ewvppAq6GL4xgykhTF4u
X-Authority-Analysis: v=2.4 cv=Q9HfIo2a c=1 sm=1 tr=0 ts=690896ca cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=ALpaD-JCGMKI6II3ft0A:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=zZCYzV9kfG8A:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_01,2025-11-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511030107

On 10/23/25 4:59 AM, Vladimir Zapolskiy wrote:
> To provide access to camera sensors a Rear Camera Card can be connected
> to SM8650-HDK board, the camera sensors are:
> * Samsung S5K33D ToF camera sensor, connected to CSI0 over MIPI D-PHY,
> * Sony IMX766 Wide camera sensor, connected to CSI1 over MIPI C-PHY,
> * Omnivision OV64B Ultrawide camera sensor, connected to CSI2 over MIPI C-PHY,
> * Samsung S5KJN1 Tele camera sensor, connected to CSI3 over MIPI D-PHY).
> 
> Get the initial support of Samsung S5KJN1 camera sensor and two flash leds
> on the Rear Camera Card board by adding a board overlay.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

This and the sister patch look good, please just move status to be
the last property

Konrad

