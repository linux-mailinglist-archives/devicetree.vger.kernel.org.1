Return-Path: <devicetree+bounces-144826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C229A2F626
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 18:58:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 588FE160CDF
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 17:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 836D82500DA;
	Mon, 10 Feb 2025 17:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W9MCy/FP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058A524BD06
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 17:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739210261; cv=none; b=XP0Y7OB+TP1AIOOm/lo9uiZh5ko6hNPgf3gpXbHtCatrivdW0X4chvtSfPfyqovhA6YKAe46LCTD0BccUsr5s52Wt9sTrFODiV7UiNhQtYLd4160VRdA/H8KKIgfH/bVtrKGGGqeApyGHG6gCAyvtGXWCnz6DNHieV0KlPP2yf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739210261; c=relaxed/simple;
	bh=zFAs1svrsFHe6quOtlp+VDvqJe/2P3nPX7t8jWFy9uA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wb3HwMEpEYqh0wILmIsrhqljrjQ1LwNf1yJrc4R1gGbnMHSmTQCJJh6GmT0ly+Up9RbnQDTUYVgFHR54pOxhcNlk3M7sHofwaXSQI0dIdPMmusiQYEZTwsCTVU1J0tC7ZQISuxLp9Y/esGqKF4F+nCCv5Bh5oEu5SLkJKsDP3c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W9MCy/FP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51A9Vo2w008247
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 17:57:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZoBM0xt2esw7qc4beiqqn/f/AmDRb3BhJo7cr1bIBo8=; b=W9MCy/FPU+e4ARsl
	cXJ5l9zTokouLCvg6wC7UAhgIv9A0gfXBDOrum6mCiBwTTfy1c8U4Y5dWQA8uaoE
	x8YFGyonYrFjxY+SLWyDngjmVNyzBuNUczAHDu2OoGtI96mFEPKiMDyJ4VAvKww3
	ekBLjd/kXPhN6rF8RNnQ2SedhxjpsYWaWHklcZVC7GvcX6uYmaLefr6AqLIaWcDt
	3Hm5PiJBWCDtBhB92KI5QNUOarJzaYh3+anuQiYC1MhWlXnvRZeENWCUWzY/mnxI
	nEJpTDqUymmCIRK4WX3ykxgKgFTPY6AJ/xDdo4nTfS/pDva/2Xsw3Q8TLCoBA1/h
	w8xTDQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qewh1cht-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 17:57:39 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c05239c607so37907985a.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:57:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739210257; x=1739815057;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZoBM0xt2esw7qc4beiqqn/f/AmDRb3BhJo7cr1bIBo8=;
        b=jB3/2+zvjRXjW6yPm531B50Ny+Q0Rh/Iw5kO9aq/Dzd7EpxReKJzQBhY5xVAFs8aLa
         fohuKccfgRnyJLOrpYo1dIZdARrAzkjU/Gu4/Er1T7SHBuOINye07XVuYti6kczzgmq4
         DxtLQbWYQzaoiCJQTkvbkjkR+dePtGv66+4cMdbHPFZQfAFU/eA40FVfI8iTNA7d9Mhg
         Uuh4hS4mxWbqhxQIH7hk1LdqBEgyN8vnRnrDfhsXE3+2UkU7J+aubxQKKSaNmE5unkUM
         dbf6kHhgpk3icx0G0fEloNAIXiqJXD0Pz/x2dc9RJU89sXjHzCH+O4n4d8MG8R8zfqih
         ifTg==
X-Forwarded-Encrypted: i=1; AJvYcCVYQebTRU/h0huffv8V+P8PU1LXzKRFTh8VwMJtZsnTijHt/Xe4UBCFHVA+cnuHQ0e9jnnuPcyzb2tl@vger.kernel.org
X-Gm-Message-State: AOJu0YwbBXkd4i4f9vCiG/z5U2X0s2hMMQafNA74HlthUOuXjMj8Rkuw
	N109YYkadSao4yLEo1AAopMiobcjId5yAaa1MQHoGkotyncwlseG1SkvPOyksnV0Pwm9jWby5MC
	OTYmkbe/hu7zfCg2hIRvR+JJBdHFUV6WuVjhzEwjKqsMPCcrhS9oS7e7Tlg3SGwO4aGFa
X-Gm-Gg: ASbGnctMqypCs6au2O0WZnzL73Pf5xiLEtdH9Km4ajxMg2LPUppF3FHrZe8tc968Lwi
	ajHWDy7YNpjVf+rC/f7C4ZsZ3ljOxEyQSdszgTCC9RB7zSDQc2axOk4eH2NgFDc5GDsq1rYwwzV
	qonhHOnd+4z9ksdo5aO+P8iKnSL3IoOYUwnweN2xPFN9OTuifMXRmF9/GOeXRXG5S+dZ3PlvdR3
	yXZa3/eFWsCziMd9bLIZXcfpew9xVk23WbXPbSiz9cnJp3/jptiML1S0r3jv3e7kBWR0Tsdko0F
	zefD1TAL7M9gH/uO7AmlAy9M6QefxcBw6b1GTcOm5beud4Txj8Bj1m1+fCM=
X-Received: by 2002:a05:622a:44a:b0:467:885e:2c6e with SMTP id d75a77b69052e-4716798b651mr67711351cf.1.1739210257542;
        Mon, 10 Feb 2025 09:57:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE7DeNsTh1CNfVirsfKlW9PrWVuIz+r8cJvvKVifTpK5b9AMONLPYgEGR0MpSwUzhNbJHeA4g==
X-Received: by 2002:a05:622a:44a:b0:467:885e:2c6e with SMTP id d75a77b69052e-4716798b651mr67711231cf.1.1739210257120;
        Mon, 10 Feb 2025 09:57:37 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5de4f4f4daesm6393175a12.21.2025.02.10.09.57.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 09:57:35 -0800 (PST)
Message-ID: <55a2ddf7-8d38-4dc9-8cd9-80fa90eafa6d@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 18:57:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 3/3] arm64: dts: qcom: sdm670: add camss and cci
To: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20250205035013.206890-5-mailingradian@gmail.com>
 <20250205035013.206890-8-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250205035013.206890-8-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: rm_QqSOYyDoGH3y7ZLtkWAiklZd7ib5h
X-Proofpoint-GUID: rm_QqSOYyDoGH3y7ZLtkWAiklZd7ib5h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_09,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 impostorscore=0 mlxlogscore=742 phishscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502100146

On 5.02.2025 4:50 AM, Richard Acayan wrote:
> Add the camera subsystem and CCI used to interface with cameras on the
> Snapdragon 670.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

