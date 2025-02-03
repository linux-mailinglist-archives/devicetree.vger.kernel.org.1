Return-Path: <devicetree+bounces-142567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD93A25BEB
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 15:10:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C7D33A2AA0
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:09:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 471BA2063C9;
	Mon,  3 Feb 2025 14:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="buA43dyd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C399205AC4
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 14:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738591780; cv=none; b=mfvqAHQCtTXacrnnG+HNS4POUhzQaRG7G9E14CS2HMi5JAVUjAowsBlEeYWevr9kep9K2YkMxICXY4W/VNBQK3mxXpWmWM4nM5+00uXz2KaUBLQLJZyZNd28rwhBKzWDE1TkkYiPoGs4awCDIb3wT0ZGbmmOAdjmbhkVcslrABo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738591780; c=relaxed/simple;
	bh=RfFcPj5QxP/ejR0yEfiE/70GcM+UNqCa42M8GZsasiU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Kya05s6UesG1yq2mJcftqbnYWrk2aV/BZc0pwKpOjEoSyYWxAddbUPpB+4fL1CHLd3p56JCEczscEuFFC6kHdBRkQ7kixRMeDtF3jTVhUv5WY/23fNGuxwbKuiNkW6CfYVrHBcOfPiodVT6jd2xgg7kCX/R7z/HUmERvCxSvPc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=buA43dyd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5135O250000397
	for <devicetree@vger.kernel.org>; Mon, 3 Feb 2025 14:09:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tgGefRCvIvqK61jfsaRPeTSfVrFB34EBcPuk1FzsiMY=; b=buA43dydqh/htKmM
	nesjdkfHwqOEbtX+Z36gZU/ZerZNZ0E7HGZWc7xv2wJRChDUPmAlsHEHgTeMqQo3
	xrkjgxrhsC6l5SqAX/RYsIXEln7GCrLX/66OGcWQPfgcEF2NQY7tGIKOKzpLryiL
	XSBMUzNk6hg+SH2KB1vxUrwbZVFLgpWMNZ+RkWbg9hsPUefgOgmIiczRVp7eFgU+
	XF55dORABf+wjLT5RviuY8CpE+er6uKLqa4ldgr0JzXpE/7BpkmdNedml6dIv5ud
	fbuqSNAxdNIfE/Sf+8+HvjKmaJebfveQ0KX8aKyZ0InsOXwEDTI9AEa9u9wiHPKs
	8NvDew==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44jqm41ake-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 14:09:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6ea8fc9acso43676585a.2
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 06:09:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738591776; x=1739196576;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tgGefRCvIvqK61jfsaRPeTSfVrFB34EBcPuk1FzsiMY=;
        b=l4gTie62DcgbSwFAWJZXJLyL07fBwx7NlqkLp7vZa6IXB7aLfYb8U0h/HIpEZOWrPY
         1dXmR1WsRG6PKkFdQrlpLOL2Q8Blr6ErR6GFYztbBtANyJZFuV/ixTTtsUCUI1DsM/B/
         9DEfDO3LFf1ZFFDHRX7HeGpONNHiUdpX5QanNcREuomnU2xBxluIZIBz2rDUW4MVGzsr
         DRrGXk7GpoimaFsE178M8XXAOlS14xDruPDpJvfHG5uuR1RCRQIh6h6Xpquak+vnyo6o
         1BtZZgesAjI/N2ejl73qrw0PJl2N+PHxZARORnqtzHi4iotmP3KJiKSgWDqxbEuq8KcW
         e/VQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6dIooQotKk6X2lVIbG+Aafd4Pax+d/Rm0sokFbnPkW8lw5NHQIl3RfJRwmcDUic9C41A3IG4piHBz@vger.kernel.org
X-Gm-Message-State: AOJu0YwmnfciFzaD2SFHSgs4PoNA+InWYLbvQI+LTHG8PMAe/v/Eedee
	9DTvg2KiJsQNPKgmETxLBjlnJD9rTS2TKuXH3Qkeqp95jirkOoz0Ix+QlDtYNJXBJyRVR4otp1t
	cHh8CaDxBbCSA+og/AyA8sDEWCtyxa2Ht5TAx1Ayi7nb0/ZSmxaTHrZTpvVtg
X-Gm-Gg: ASbGnctEIc7BlB3SVdZXVaewRubo/6BnntdACTktdwvc6J4/IVUT36GJqzsApX5cqrN
	58K3dwEwof5E85Xm9bewwaPw+fpOF2gvZW8cxqEu/ml7eJ90YbfwmZqSiS1l/auxjWU4vhZxCUN
	pJ0NRWTvkrGJUY/BOpAriNmhzFhB2UuPuvIJnfgL9Jx9H1Xixxovlt+GkGBGZSB6/3t5J/RxPp1
	+bIOSzuLlkGKHX1MoG4FpcajaEEJTIrPF+truN5b7yj+uHFS7MQqZqJxDwA593teG8loVRQrnRh
	DGpwC5un6n1vc+Apd92ivSDJ8XvBNZE5p9mcgilQ/qLs+wXK0xDyCyil87Q=
X-Received: by 2002:a05:620a:d94:b0:7ac:b95b:7079 with SMTP id af79cd13be357-7bffcd77f1bmr1161232485a.10.1738591776094;
        Mon, 03 Feb 2025 06:09:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCZIYQLN5x500cDbnoXO+DyGcYS80dtXLyv2/M5i9RTIULyYRtcE8ycdrxeI08t76/D1sSaQ==
X-Received: by 2002:a05:620a:d94:b0:7ac:b95b:7079 with SMTP id af79cd13be357-7bffcd77f1bmr1161230385a.10.1738591775685;
        Mon, 03 Feb 2025 06:09:35 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc724043b7sm7761212a12.40.2025.02.03.06.09.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 06:09:34 -0800 (PST)
Message-ID: <2b07b8ea-9c7c-4f37-8d01-d14d1e82aff9@oss.qualcomm.com>
Date: Mon, 3 Feb 2025 15:09:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sa8775p: Partially revert "arm64:
 dts: qcom: sa8775p: add QCrypto nodes"
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>
References: <20250128115333.95021-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250128115333.95021-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: GlWB7Rz3EHvKQrhwY9IElQyKsdLeaJjf
X-Proofpoint-ORIG-GUID: GlWB7Rz3EHvKQrhwY9IElQyKsdLeaJjf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-03_06,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 spamscore=0 malwarescore=0 priorityscore=1501 suspectscore=0 adultscore=0
 clxscore=1015 impostorscore=0 mlxscore=0 lowpriorityscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502030104

On 28.01.2025 12:53 PM, Krzysztof Kozlowski wrote:
> Partially revert commit 7ff3da43ef44 ("arm64: dts: qcom: sa8775p: add
> QCrypto nodes") by dropping the untested QCE device node.  Devicetree
> bindings test failures were reported on mailing list on 16th of January
> and after two weeks still no fixes:
> 
>   sa8775p-ride.dtb: crypto@1dfa000: compatible: 'oneOf' conditional failed, one must be fixed:
>     ...
>     'qcom,sa8775p-qce' is not one of ['qcom,ipq4019-qce', 'qcom,sm8150-qce']
> 
> Reported-by: Rob Herring <robh@kernel.org>
> Closes: https://lore.kernel.org/all/CAL_JsqJG_w9jyWjVR=QnPuJganG4uj9+9cEXZ__UAiCw2ZYZZA@mail.gmail.com/
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

+Yuvaraj Ranganathan, please resubmit your original series with the
required fixes, or this patch will need to avoid build warnings

Konrad

