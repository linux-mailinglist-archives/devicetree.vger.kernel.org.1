Return-Path: <devicetree+bounces-250816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEEECEBFDF
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 13:39:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 284C73008FAE
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AF5E2609C5;
	Wed, 31 Dec 2025 12:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WbRba3N6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IowXsizc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5803A1E82
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767184780; cv=none; b=WGncCmZ/V3ws+ew9EMclmxF+VToFZCxqUdvfHLts/9GHJpqyyywv2wPbQfEMZeHGgqj8eoae1Gdu3QLjlCxubkF3BQyFrBcBWwxHMTZXEmfyTxWG8RrRfO5oKvnC7AQj1lEEXGOkRCDclYneZ0TS6PFeQkRI943tYUFvVWk/AS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767184780; c=relaxed/simple;
	bh=Wlrlfu2YTdD8PQ/c2tTQBlsYkTuPM0FJ3svYOahlrVM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m+vrsRBaZeHPPDxaW49H5MegjOiElFENGyO13ElOxTDdueVv5SGxODP+916kGIVbFqd4obbrMiNPVbfeWG5s5yPDdN1lb2cDJ8B8e3J+elL0FgxEbLmGiXc8KU98+oNRr6Nsw+TBLE6QxFdCLnULIBgX6LyTEo/SAye2SsKfR88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WbRba3N6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IowXsizc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV4ppkg1431464
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:39:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	47O5xcRNENwAOvhXbRu1HtwDpL1j8cM/FYt+5+oZE5Y=; b=WbRba3N6Vpuo9L9S
	hKPWFvsJ6wJKW3y7k1TfiwusBIsSddo0gT86Q7kVoIlqKpOv5WxeW0/IalDa0/V+
	TaNHOyGxgjkAnfqAiF4b1md8YqqPqfHUlm6vEsNuWMFlI2FY5RS56MNyS1VDEvTc
	4+7qBHBh4oOG1kVCDU4nJYnAP0cPF5Jq5t1VY9ixeLtYwB1ZQCOJz9efpe/PkCfP
	nuU39cV5+8GvI6K/WiLhwzToFd/eYDu5CfzmmeJ57/zzMzIzSThUjeowCzx7w/Yc
	29zkZnVDGdL6zLnBv1HGpDWbrA4tYIQ7S4WnwpRTMnwtZKaMhOxYWb/hBLh/fEqM
	8ztk4w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcw5e0s21-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:39:38 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee23b6b6fdso27790591cf.0
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767184778; x=1767789578; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=47O5xcRNENwAOvhXbRu1HtwDpL1j8cM/FYt+5+oZE5Y=;
        b=IowXsizcZU3g81NpcnFi8JWUST+H//kvtPnBRwHMZgqQasVT/pCV6cgovfP1ynSxm1
         I+2tW7WSBXlLqb/CWuGza/ErlxpQJ49eZNeR3vcxMWRKzCp6wIZcxpEenNHQ3bbAP9R+
         gjCLP/WDXoqkKVAJD7UaDAHC820Exwa/vAIwNIaSw8HCETbG+yJ4uu+DbyKxZCMC6qcb
         ydQFbKMfBj5X703X5OiIq84rHuMqS/AegYMRS5HOOh5a9ZcvTiOC0wrXboP5pBszzZwp
         DRWBDwnniIMxZfLedyiTJ4EtNdxUXv0rOWRRhyv/ImxgQWLoMn1qzWuSHXzu4UqCq9vV
         76Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767184778; x=1767789578;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=47O5xcRNENwAOvhXbRu1HtwDpL1j8cM/FYt+5+oZE5Y=;
        b=k8L/jngt2qrjUp8nI9wNnBEJjMUXrr4Si6KN+m9D3TLeDItf3lA6yrGY1YfbCPYZjm
         5NnFB02/SKKtR5WCXrrwZk2Sh680aB1v58GfXIQWC+Hm3zTQ690ib64IzMMSsV9F7LMl
         qoI8ogeLZDx3pyfOc7EgT/kx7YfMJeA6S1Olj5GzDQHChSveFOqp2ieoTlr3sm8X1/9e
         cI6kNQTgbVkz6e62IMsmJYg0PMKSQ84djNjS3TXV7dIQJoMLIFLgLzI2B0jX6AopXpJ9
         YV8jfRS0QDWIWnFkqPWXvl4x4xjT4PsOYfhfeBBAjrVkFUW5/8oUDjM/94hdsULZGg8m
         ht8w==
X-Forwarded-Encrypted: i=1; AJvYcCXKl2kgMZJEE0v59RA+DFAcyuCVEEkn6hfHU4/PPN0wA8oXKE0BFBeN/AKQWFZKsFEyAX4+aQok1MQc@vger.kernel.org
X-Gm-Message-State: AOJu0Yzqb4ib+2n3GSWV/M1kqFzj7lhMjQ3qnYq7lrZxMg3S0BbffO3P
	iGx2uNwgA2nBMD0UIAZDc/6hDXyrrKKSHqr3IqZnM7uQBdC7++ZY+u6EA0YJ/oMCGlBkzbKr05c
	3l6VlQDjHOpvfblo3cin21xeDnkKs9tmXqnVPXM35d4oiX4tgT3AA8SY5xBIbX0Nh
X-Gm-Gg: AY/fxX5YABdvSVwH21v5xCOwhfQGbKxb7BzBkC3aVmxU0XDNL86UbhXtiE3IDDyHbRw
	hK+D25iyGYAABx7jqY9pDUO5a7KLlaDCS3RoX0EiA6ohE49HVSwXI0xp3VzJOsCCkSoD6ItEAqo
	A/jiOvj0aqB4r57KN/ClPrV0XzdPqsZC6O1kQSNRzzf1CCRKeJauIbMAyicNt4Aomf4ckyPvUdw
	g3+ai6enOJvsYGNveDEJO1c+LgRmtT66Fn1QnOMNwWQ9bA2f9KtprGs2XD3QdhhKN/DjXH8M3vM
	GyR3oBmK+ZlB70A0hVZZ1lJ4mGplkRgyWCK3xwHDjhZ0swa84k8kIuJkTtn7wWmBn0ERIeEy0ST
	DviGKvrNNrTJ1hZYgGa42UebHi4x602yXK9N+nqSWGJVTvSiul2mBliRHLGGtdzY2iQ==
X-Received: by 2002:a05:622a:1646:b0:4f1:96c5:b592 with SMTP id d75a77b69052e-4f4abdfa25amr415081531cf.10.1767184777990;
        Wed, 31 Dec 2025 04:39:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFHjVdYJnT0HRGh9oRatSQOBcjo6QGysu+6XQ2ucO8k216zp4Y/XHei4Vt3/Qm/DIWf32pYSQ==
X-Received: by 2002:a05:622a:1646:b0:4f1:96c5:b592 with SMTP id d75a77b69052e-4f4abdfa25amr415081351cf.10.1767184777632;
        Wed, 31 Dec 2025 04:39:37 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916b3b35sm38527531a12.30.2025.12.31.04.39.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 04:39:37 -0800 (PST)
Message-ID: <a8d4c77e-6155-45af-9ed3-30c796354fa7@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 13:39:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: sm8650: Add description of MCLK
 pins
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251204041505.131891-1-vladimir.zapolskiy@linaro.org>
 <20251204041505.131891-3-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251204041505.131891-3-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDExMCBTYWx0ZWRfXzHHszVXUyF8V
 UUup4QWPELvfotT8xQZlH59WeYKnKmeZm1OtQKxSiK9OvajAM99W15iEvL6Dh8umU0NsrmPrhB8
 eXoaQhcGfN654TtwWuPAjPwYweqtWI4FpfUt+DYUHkjrnlIR2Pt+KhlQ+EXcXVoMg1ydt8izgc+
 zFaiTyzo0LsarXtGr6sCvUr1HP2HmyPa6O2FCZiH5UAQGoQHZY/EKdfe0iLWAl906US/484IWqx
 iJOlet7ewXEcET7EqkNVJM2KZqYQUFIFuCfciohGob3v+BrthY0TOIbs+a4+FDJELdRCwg6p7Ho
 syNGyRy0A+mTZGjfRcWxhlOV59rtawOrrtVuUjazZunGQ/vJxfsF7h1r/blEGciC5ZnBEkNZOwa
 Fyalbb5rB8qV+aY5hVVaeBHGTNSkbYqIHSq+zwZJ2HDfbGa6YCFFTA38CH6wAghVZk2fIVb4eZn
 gU0X0sy8pfLVFMfzntA==
X-Proofpoint-GUID: S0Q1U9kiuesuFKIWy_zJHxQy1oZZ7e_N
X-Proofpoint-ORIG-GUID: S0Q1U9kiuesuFKIWy_zJHxQy1oZZ7e_N
X-Authority-Analysis: v=2.4 cv=Mdxhep/f c=1 sm=1 tr=0 ts=6955198a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=hvIJpKUeI51vVs_MJNsA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310110

On 12/4/25 5:15 AM, Vladimir Zapolskiy wrote:
> Add fixed MCLK pin descriptions for all pins with such supported
> function.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

