Return-Path: <devicetree+bounces-178134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E60ABAB52
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 19:22:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF28717A1AF
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 17:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE14F20D4E2;
	Sat, 17 May 2025 17:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ufi16zhk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C03F20CCC9
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 17:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747502528; cv=none; b=Ek+KjYOPEgdevrwrJ3tKqB/HRAo9EV03v7XOTy842j5lL3VHE8IHcQnkf3CsaDrpmYtozkXfO4vGb796DssIzA413uiwVciQF6xAsfq3bEQnT5eExBjwXF0484u/KQIRAcdCvyZ+nOO2CIn3ifNAdoTxOmZC6fmnr76saVt0Qmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747502528; c=relaxed/simple;
	bh=+l9GamYZn3f+jD1UlHjWd9HA650YDn1py2CabjsIfXk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VX1x3VGBRCbgNLzZcVSiBVkwLUjHFaJfxXjWwlD4bYxOV9VWOw+tCntmPzz5AceBXD/KdMtZIG7Werp51GB//b0/Ra8Ae2UJh8ATrctOo4MqwkksgANEeLPA4OMmsIlMmmax2zqkR9wgJUz4EZRUDFx/RcIa78x/3H8bV0OEweY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ufi16zhk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54HCGEI2020612
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 17:22:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JaYvBTUOPMm3NmMw/KYknJOJxfamN5XhveQqTP05DK4=; b=Ufi16zhkHsdDq9kM
	293hX3xiDnBMQnxSWbYch9Ycyq1evBnBC0HqpoNBXxfO9ogvvFT72SHuNWdwUXlc
	3ldfADVZ5sos4yfaYmhabNJdGPmjFoT+U9/dOkQz3RUfijKNIjlIacYdIcyndN9n
	+WyNzZGQZnbyZLprZ0HK+Lw5SJn5xoGhmxgp4AvQPzZFxhvHd7s4dvI6P+t/WzD9
	pnNI0iIudhAzPNiqNp6I0f7J3OTvN46BLjXBvSiabkE6gPGG7veRXQcFpXqdaL3q
	+p6BybiEKRSX/1fWh7bL8TAEH+97YMNktsVRNefLMmKTiXNWlC3ro472zf23sDSc
	fHzuiQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjm4gwrh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 17:22:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-47ae9ed8511so5672341cf.3
        for <devicetree@vger.kernel.org>; Sat, 17 May 2025 10:22:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747502525; x=1748107325;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JaYvBTUOPMm3NmMw/KYknJOJxfamN5XhveQqTP05DK4=;
        b=uv5Pu6vY83GMJRq9s69OhjxxKOwRwBKgLEsb+BPJYk864NoeWBcX7POQr+icWpWJ+C
         ugWI7h5D320+VZpz4JiOTj9Pn4Qhxycc5VgsTk6ArCc/qJiWNk1egdHZzjRblQmwgaQP
         oUm9Z8KPKE8dlPipkbBHNaNIiLkTqyoDuLu6fh5QA8joCftMfdM0tPhHuaIdEhw/nZ1f
         VCMuiOokFoVRlF5ZFQWQfdT3TpLoHNsubYSTI8Lg9GIVNv8tjwwPJ5fRSyCMJf6Xt9vi
         d13F5+E0dGBHGwaTCNS4fyfm/L2EjAjLPK6lRip1M03+5Agrdgr6WwQ/3scbyU2oV51z
         5vmg==
X-Forwarded-Encrypted: i=1; AJvYcCWniF1N27dkvNw7i1j/sEGCDwmp7cWdPGbvXHclFVLkK/5xWKQ4A2PDwLAQrZJyllj2wYavpXzwAdhc@vger.kernel.org
X-Gm-Message-State: AOJu0YwNN4pfsy00BB5bRLu0Y7ht5D3r3QUF6fC9gFxIWI5DfTapC61r
	GrG83s7VNw4AHV1oVncCEGzemafijrRtTHxCqYC7q4crVIJzVeRQF5N5RjleCV6clf3a4BB92tZ
	gRznSF6Fb0DK/5w30HMcO4X9KIQ0jqRV4LDN0L26PAk2UogHR2lJaeaLldi09yBT9
X-Gm-Gg: ASbGncuenGhKZJFYT9ilNhKa2wIlgOHmL87fsUyu1m5C7hRcIaWY8YgabJc5vrr4Oua
	dpmS399DwA7LLpCxgETVCbhgiiQ9pAN7Kr97IqM0UWKoDVgvDm7XbTZhgLeGyagIChGYeiLITxu
	eYYJpBkqNce6TE9gnWWfQ42UUOxAtXKWi09EfJaM3r/zqiiN0l9QzgO+NH5xj/7EgUbUGUqsQyl
	1AYMLa9axbHWvqR3RSHc1Tv2Aqpk1HRay3v0pDbmIAahJcAL1fciSAvXpiJyEA4AkBJf9PQFamj
	qLl+kEKb0Uvvik36YAgf0Cv2kIyg17JJw/aIl/FFQiFBF8/2qxOO0sgZYsENhtxC3A==
X-Received: by 2002:ac8:5fd6:0:b0:471:f437:2973 with SMTP id d75a77b69052e-494ae420597mr38013161cf.14.1747502525104;
        Sat, 17 May 2025 10:22:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF3TScCxrWI7lostxcvHuzawFN0pYwILhsszzZBg0GnufstHIE77GpV2aqiUIY/NZ9NCydikg==
X-Received: by 2002:ac8:5fd6:0:b0:471:f437:2973 with SMTP id d75a77b69052e-494ae420597mr38012971cf.14.1747502524744;
        Sat, 17 May 2025 10:22:04 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d06eac2sm328191166b.63.2025.05.17.10.22.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 May 2025 10:22:04 -0700 (PDT)
Message-ID: <e67f1ba9-ef46-4d8a-bafa-90b793a3c05d@oss.qualcomm.com>
Date: Sat, 17 May 2025 19:22:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] arm64: dts: ipq5018: Add CMN PLL node
To: george.moussalem@outlook.com, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Lee Jones <lee@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250516-ipq5018-cmn-pll-v4-0-389a6b30e504@outlook.com>
 <20250516-ipq5018-cmn-pll-v4-4-389a6b30e504@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250516-ipq5018-cmn-pll-v4-4-389a6b30e504@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: jQ7linhYowtq2CZ15YZxeObR6NqKMxE4
X-Authority-Analysis: v=2.4 cv=C4bpyRP+ c=1 sm=1 tr=0 ts=6828c5bd cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8
 a=tOIPKxuczE_Drth-FjcA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: jQ7linhYowtq2CZ15YZxeObR6NqKMxE4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE3MDE3MCBTYWx0ZWRfX6ixD0T3mSjPz
 qasQXOt9nHWF4OojGiUR4iq3xLL4vwCgqOGGt/jFES0nvxGHlbUE54Vqg9iDXoZTviGQFU9hzo0
 6jf8AdxyB2ZH3Zv7GQD/7Sqb2D1yN+WpNsHWJBTRZxNoZJm2Kp1xRhG3xZdJpOotT7ZfSShdKhc
 e778jdIAZDzERemSIuBy32fY5MBc01x4ldeXtOQDfVm7bA7fc3DwVZASg3FT+dNz3sAfBZwQyh6
 A9JhBswgALT0xWLeGH7hbodZ11ka3WGdwpBUlCnBKJ3X+GTIrTVrC07jJkBFAz15PqsBr16vs0j
 a1jo3A6cSx1uNiGTPh6JA6IcjJaSrRrdZlnQDvfUCWvQOmOEQQ0TMzLpRmX8uMnHRtnqthhIX1r
 IlII6VwP7MnJVasJklDYyo1YjsItZDEI4twIroBxkMCrDVEC2vK6CN9tlmweOWduCzXMlrYb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-17_08,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0 adultscore=0
 mlxlogscore=723 spamscore=0 lowpriorityscore=0 phishscore=0 mlxscore=0
 bulkscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505170170

On 5/16/25 2:36 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Add CMN PLL node for enabling output clocks to the networking
> hardware blocks on IPQ5018 devices.
> 
> The reference clock of CMN PLL is routed from XO to the CMN PLL
> through the internal WiFi block.
> .XO (48 MHZ) --> WiFi (multiplier/divider)--> 96 MHZ to CMN PLL.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Modulo the clock rates which I can't find a reference for

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

