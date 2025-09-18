Return-Path: <devicetree+bounces-218848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B00B9B84A44
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 14:46:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEBAE5244B6
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 12:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED6ED3043AC;
	Thu, 18 Sep 2025 12:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IkOm8Zlt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606E519047A
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758199551; cv=none; b=cfImI/2wj8A9R95A2Lt4nKY3UAJi2biV6IFAQiB4300RL3kzcYSpyCD4KD2GCC/TuTkeDRCK10t9Go6UV7spUQBnUN4flwrqASNsaJCgmX+o0KzY7W4NMHETRWPgP/R9JQ6YakO0eXrdXEvAtcGpiElgoHVLLdYXGLNIQifo+pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758199551; c=relaxed/simple;
	bh=LoAKVvtag7GjmWOFgtJXkf32NvYSH1bkz1YunveXkr4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lSu1v8RI4MyGBadDIKkiKl7jsLfnC77mltpHMyZPJXPgsu0xezDkVXzBFQwBLjgT+iulTheJvSDt9O5Vy+gT08mEv5B8t8Ozp7zWHNgObH5RZl31jPlXGikguRXc8hm1vcHkEHzZaVg7QZo70yXBu9shJw06FR8w8G6Sr4obqH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IkOm8Zlt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58IB2sKh010820
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:45:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/GOz+PCs7jp3F7RKfOrvc7eml2rNmKhLmgtLqz9c8L4=; b=IkOm8ZltqbwueZb7
	sSImWx1JWPiNMWGcgN22ZieLjsg40Y7L5OAtj468z7nFNw5Avcpz1lHcCdfIloV6
	0epkJdPEcPQo1t36w44vpzvSNePqiokTI3UofnudaqqPTUZfKfRorQ4/m24qDe/J
	E1CNvPR0a0fnBOfdDWtJDHQDFREGszA6GkN0evT9Q8FIsTeiENueajZbcY6xYpD8
	sVxYIkpa7peruBwHulq6Ci08PV2zWSJTX529UiUtjNSGNjqVpOZjeSFNHa0vW8Qa
	aA1P+bIlTc8mF65Js3NRNhIK3mmElei5BuNw1a/wz1gb+i9oc+j1Rm0Ip/b99BSX
	Slv2zQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxxxbcj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:45:49 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b600d0a59bso4528251cf.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 05:45:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758199548; x=1758804348;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/GOz+PCs7jp3F7RKfOrvc7eml2rNmKhLmgtLqz9c8L4=;
        b=fiST6GPnJcWLy9Kdj7Z93gExLFV0ClLCAA7eLsog8YJCd65V7GPMvOiIGSENTElwia
         jeQw/rO1jUrBjkFgucyaYESCN5YJQBxf2ZpEn+JxpogRLYiK+A4WR3k/CfnhBse5KUDc
         ON2+FM4QOUyELeXBa8Ti8GaB5qHKRDum1Hgp/+C5cNMhGPBDuB83KXmZxFUI8mhfbvk3
         UNKw0wjr64415M/+TGuBYNWBeAUmZAxnFfCi91bEPXIv/obfAmkaaZa72vA0WCWzieSR
         Vrzfmi2WMzjaEHSJSRo0ak7ECazLPHeGauVlVYGOSJ/s1jPqsuIQeVIAdDSe//izRBM/
         AFfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcwpju+S17qNWKxaPvn79kb/GMzii5VccCn6BpnB4Twk1/HErQx/aoQKaK4MCVQ4YRlgb3QE6WWkZ4@vger.kernel.org
X-Gm-Message-State: AOJu0YyxePVDz8O95m8LUR8THbDfjkOTkbdBQEsuzFTV5IDuj+NO2NNT
	TPYcTF9315MlAgbdqfnWoWWcJMabW4ofklr6GrSmL6YLdYlFUYJU9ie34UR7z26OTqK2XVp7JnE
	pVN1k1nVa2KIdEysmyoeoZXk4uPxSSeuQdh+rUbSUalUaQ10BwRhr9fmiXYqrjUvG
X-Gm-Gg: ASbGncsu5/fTcdgF7tUcA5mvOuCxeMG8AlOCY/IhON0FobwhnUx1OlSF0oMjxyQDWnF
	6dWVqLpyCj1Xl3Q5zD87MA3ffMcO61BEuxagfOe83yrABcW57DKwCyjBoeLm8Iwv8xJUtdF8E1g
	LHOpb/0/nV5rrfVaD37D+o/TCioEBhKcw6c+t6OUWh/RpdiTpd0X1NMaknHnuxWrVyCasSTnvcm
	l6Xr1CGgMYMsnh3dJFw2vgwzG0dgLImAPsEHAiiFStl6RYHyiZVnilWQoFmEIaK3UAADMZmU+ju
	r2q18JulWolC+9An/Hhs4zqZ//Jf9d2fdvl53H6FDahcrxPDmXStCLH5jncSyXSqpk4xFExwEbM
	j7gNMODjQLZZWUgO2VYJidA==
X-Received: by 2002:ac8:5d08:0:b0:4b7:a71f:582e with SMTP id d75a77b69052e-4ba6ae98bcamr50054871cf.9.1758199547938;
        Thu, 18 Sep 2025 05:45:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6WYPa0ZzSzMXT9Gf43YxOU+vRKLAQ2MENxshhRg41bayczaicmdHGOqcldRH6M/5nmSv61Q==
X-Received: by 2002:ac8:5d08:0:b0:4b7:a71f:582e with SMTP id d75a77b69052e-4ba6ae98bcamr50054551cf.9.1758199547332;
        Thu, 18 Sep 2025 05:45:47 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62fa5f42f1esm1407927a12.53.2025.09.18.05.45.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 05:45:46 -0700 (PDT)
Message-ID: <c1d7ac51-2e5f-4b36-bbfe-c56b510aea4f@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 14:45:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs615-ride: Set drive strength for
 wlan-en-state pin
To: "Yu(Yuriy) Zhang" <yu.zhang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250918112729.3512516-1-yu.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250918112729.3512516-1-yu.zhang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX+i7Zig55fKrn
 HQTJOyMxIot2fZj60tiOTHjyd6czmjBwvThd/OFcjnC5gYc58C4Wa6MtsSTPmwhezuesZKlsSiT
 rKdXb8Dh5lx6w1N81mS1MotSB2Gf61pSZ+0ugpvm3PY+y/pGkP79+5a9AY72oyCDN3/2kVWaDMS
 q+mss+FbduXQW2aCDrWfhRC3IRXzQ6/PcLV8s30VQiTHaZUDfZZibwjYnHrpxAvnk7oso1Gz+jF
 UGiV12CmQ42QPloVkjXULslDSD5z8TAyfX10AzQE/4sj+Y8TdbmUtbFdZzQS4yD99nXNv1mT0qA
 IuDr5LMl/iUKiQyk6mWRYJrnUpPVOlpByyGx4OSlIhdzhJWpZJaG51wtxr8RRi/GLDP33TsGYhc
 QkfiAZs5
X-Proofpoint-ORIG-GUID: FlprTHzbHgND9UQHL6mG2NEL_CzDoHnc
X-Authority-Analysis: v=2.4 cv=KJZaDEFo c=1 sm=1 tr=0 ts=68cbfefd cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=4-aev5clkuGwqZtU_tIA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: FlprTHzbHgND9UQHL6mG2NEL_CzDoHnc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On 9/18/25 1:27 PM, Yu(Yuriy) Zhang wrote:
> From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
> 
> Set the drive-strength to 16mA for gpio98 used as wlan-en-state in the
> QCS615 ride platform device tree. This ensures sufficient output
> strength for controlling the WLAN enable signal reliably.
> 
> Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

