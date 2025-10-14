Return-Path: <devicetree+bounces-226446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFEDBD8B8E
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:20:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F6DF18A74E8
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 309962F49FE;
	Tue, 14 Oct 2025 10:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HfvTtqIY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA1B02BFC8F
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760437226; cv=none; b=FjB790RCVE+GkdTJR+iOTlZzhZgU+msg2wqeB6FKTyFcnqTm0ToaTkjHXj5sgyCN3MYnsp07bzMQrWiXWlZb3p2B0aYqHI4Y2ITKnuC1znZEryi9z1TcdVjK5W2pEqTTw52UqglzmYX0ddAywhyR3HkfcbxyPpSKkyDJF1vqnM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760437226; c=relaxed/simple;
	bh=Qvhh7mhFr0661zRDew/ivjX1TO3y1BkBL/5uZJKd22E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RUx7R3VVZhPYrmsjKJ4Gsi/hdGrJ1UnY9Zr3JltgkYKSxr+cj/jvTQB0p6a0JpqQ/R//xvB2QUuKljIJnk3Uql+lK6SzCjw8W58PZyf6dNyG881T85Qt0s7xexd/5CpxvFZmcVWdLlugmFlQyvZ/m+BpBOXQlXvBvP+Cu7l+Tfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HfvTtqIY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87FxZ018068
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:20:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qg1zK5JAFJjGuIOCOazR3tLH7idR/RgyyF0X8S0PXM0=; b=HfvTtqIYxmwEbRRU
	DkJMj1y8g7FU14nI1ruXY73WzyhEgelY1d9kCDbMXZiQ/bKqUzRh9Wqjiajn4uUr
	k2G3b0r9MhwwOtyfATSvSzuf7AzS+W6N/SgLLJi3QfKAU54a2BEViFR783mIBma7
	ntiapDPxlXl9XX2TZ7B3uadM7Nv60X0DgtLk+18HNypjmhmrLVcTAnv7eua71s16
	o7ZOrt7RAbplLI1ZAN0dPbc2hqiXIMMnHsC/3LlJZPxz+2kSRSRJQbA0wi3Bl6lM
	9kriClDZdMJO4ueIxcjiuTov4NyN+WlnGfk3RkfeWU87mOhVqR9srYmtwyEKnwNR
	0MHSYg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfes033p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:20:23 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8703ba5a635so256032485a.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:20:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760437223; x=1761042023;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qg1zK5JAFJjGuIOCOazR3tLH7idR/RgyyF0X8S0PXM0=;
        b=CpoM7sOWdhxn/cUKaFRkvn66tVfE/VrZctCZx6BkYWabXwUkVGCrZMngtCB/yggcsy
         X70Al4DXHxGnQywuXtcvwM0+NlnHJgu1nrluchtfvLeVuV8roxH8Aq/60GE2tiA0xlRZ
         crUtTmnkIl088mR/TW2ledf7+MHDTI8zoPJKPIMNkfo5v6T6Tt2TKBWnDmsTe+cca/6X
         /cwDO7RKfWYbfql1VDKwNMHku7IkY5JYxwPLqlJWrzblUKcVncMewC9rgvZH7kWzrrH1
         FWjC/0VN2JpsPrAuie5mGaO3LoLW9YzAMLE7+spYTW/f/hhBrAr6wJAKoZsjXROiz9f5
         ecow==
X-Forwarded-Encrypted: i=1; AJvYcCXbjdH+cDqd8g9J+DtCsav/3pTs2ep1Ubgww7+WxLWC5TY+JDz3IWWtzWhdPwZKCr5J6jt/O1cg7h0D@vger.kernel.org
X-Gm-Message-State: AOJu0YydjPH9sq/d5hCXuzamxkZtmbznXGSMQS81yd8YRgiqTK2jCEfL
	0vGqzodkIgvZkWXyhgqEQ+N3SAMDJg0383t7IwSdso7V5OEubCntFNwA6XosSPDCAmg8N993UZW
	SAr2Qaun4kMvUCCmplltz7FlWJZlZJwF0Xnb/gxCL+xOG/5hRZBOoFA8Te9+iwyIE
X-Gm-Gg: ASbGnct1fDdAn0/csZYvckXPIVFUFZtR6Ij/PpiAKRk7RH3p463tTWIFjDIqS/ppaEH
	8RqUCdkc6VPsfJFjeUR1POWBnW1KB+Cqix6nYcREwFb5JS9sYpamBqzkbi9jCsLgXW5U6evyohJ
	M1yxWA5fq58MWEXfl+bAfdov5AOzqLq7jQJoqNno4avdCjwymD7ExSP/CAiumSvnXM1jvvyEEPa
	UmalHkcI9VrgZ+bjzQ1GPWEv0HIaLN7SCqfUVmD3tKYbTlNPRf7q1wfiWq4OSZEJLHC54j40ToY
	4O/c8OIQn7l0utO4nKf0NRbvYATQw1vCBwcIIA158hqwI1MAOHyYQQS5Oj/JFq9KHcX3StpTCBa
	iaOOUMh9liydhZMHf9yfz1Q==
X-Received: by 2002:a05:620a:1a95:b0:842:88b9:7b79 with SMTP id af79cd13be357-88354304c1fmr1911799885a.11.1760437222912;
        Tue, 14 Oct 2025 03:20:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhACPoRGOSBddWY7B1Zhb1PqL/65a/EZxkxDjzvajJ/izAyHXkGL6T59GOfpPRrXCVWq3PbA==
X-Received: by 2002:a05:620a:1a95:b0:842:88b9:7b79 with SMTP id af79cd13be357-88354304c1fmr1911798185a.11.1760437222462;
        Tue, 14 Oct 2025 03:20:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d5cad80bsm1095409966b.16.2025.10.14.03.20.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 03:20:21 -0700 (PDT)
Message-ID: <0e1ee660-e620-45ea-b1f5-b1608099abba@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 12:20:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8550-hdk: Add SM8550-HDK Rear
 Camera Card overlay
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251013235500.1883847-1-vladimir.zapolskiy@linaro.org>
 <20251013235500.1883847-4-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251013235500.1883847-4-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=R64O2NRX c=1 sm=1 tr=0 ts=68ee23e7 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=bWvAVwea9cAggUMJ640A:9 a=QEXdDO2ut3YA:10
 a=zgiPjhLxNE0A:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: Rv_5jDpz5NRnfhohbhAQ2oMZRrBuRqg1
X-Proofpoint-ORIG-GUID: Rv_5jDpz5NRnfhohbhAQ2oMZRrBuRqg1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXzG5Fi/BJj9IJ
 64AxY5k+adUqg18PQJFAKIMevWiIFqdXKt+Lyv3v1dQMF+fnFzEBywmnXEquv0cuGUWD9cp8woM
 c2ogrRBd58R3uisX3ZA5s6XeR63919154KByCfeUvGznGJ4K2UX/nelbkDrXsUUeEmCRgnB00N7
 f86QlJZZ1KU50otGyImjGpmR65gk207cx6vHNbyHseE1E2MeQCiIpsijAt1AF1vzr9wrCGJ4dzi
 d8LlsHMeQJHy0nwlace6FDbtu27GrOFSqwqi8BW68kWzOJ5v8p/kBdztTT2xr/t0RZkExW/JW9q
 oOyo62RzP84COAEcfeTJ9PhThmAt8UbUujuzrMEN//S1g4b2wqzJy1KgqripNb91g5fW90Rv9YF
 aO7sgvl11zvMbyQ6HHir1rI3B0XY+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018

On 10/14/25 1:55 AM, Vladimir Zapolskiy wrote:
> Lantronix SM8550-HDK board may be equipped with a Rear Camera Card PCB
> which contains:
> * Samsung S3K33D time-of-fligt image sensor connected to CSIPHY0 (TOF),
> * Omnivision OV64B40 image sensor connected to CSIPHY1 (uWide),
> * Sony IMX766 image sensor connected to CSIPHY2 (Wide),
> * Samsung S5K3M5 image sensor connected to CSIPHY3 (Tele),
> * two flash leds.
> 
> The change adds support of a Samsung S5K3M5 camera image sensor and
> two flash leds on the external camera card module.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

